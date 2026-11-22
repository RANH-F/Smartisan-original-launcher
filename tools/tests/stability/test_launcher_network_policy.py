import argparse
from pathlib import Path
import subprocess
import tempfile


ROOT = Path(__file__).resolve().parents[3]
POLICY = ROOT / "launcher/tools/java/com/smartisanos/launcher/theme/LauncherNetworkPolicy.java"
STUBS = {
    "android/content/Context.java": """
        package android.content;
        public class Context {
            public static final int MODE_PRIVATE = 0;
            public static final String DOWNLOAD_SERVICE = "download";
            public final SharedPreferences prefs;
            public final android.app.DownloadManager downloads;
            public Context(boolean enabled, android.app.DownloadManager downloads) {
                this.prefs = new SharedPreferences(enabled); this.downloads = downloads;
            }
            public SharedPreferences getSharedPreferences(String name, int mode) { return prefs; }
            public Object getSystemService(String name) { return downloads; }
        }
    """,
    "android/content/SharedPreferences.java": """
        package android.content;
        public class SharedPreferences {
            private volatile boolean enabled;
            public SharedPreferences(boolean enabled) { this.enabled = enabled; }
            public boolean getBoolean(String key, boolean fallback) { return enabled; }
            public SharedPreferences edit() { return this; }
            public SharedPreferences putBoolean(String key, boolean value) { enabled = value; return this; }
            public void apply() {}
        }
    """,
    "android/util/Log.java": """
        package android.util;
        public class Log {
            public static int w(String tag, String message, Throwable error) { throw new AssertionError(error); }
        }
    """,
    "android/database/Cursor.java": """
        package android.database;
        public interface Cursor extends AutoCloseable {
            int getColumnIndexOrThrow(String name);
            boolean moveToNext();
            long getLong(int index);
            void close();
        }
    """,
    "android/app/DownloadManager.java": """
        package android.app;
        import java.util.*;
        import java.util.concurrent.*;
        import android.database.Cursor;
        public class DownloadManager {
            public static final int STATUS_PENDING = 1, STATUS_RUNNING = 2, STATUS_PAUSED = 4;
            public static final String COLUMN_ID = "_id";
            public static class Request {}
            public static class Query {
                public Query setFilterByStatus(int status) {
                    if (status != 7) throw new AssertionError("unexpected status mask");
                    return this;
                }
            }
            public final Set<Long> ids = ConcurrentHashMap.newKeySet();
            public final CountDownLatch queryStarted = new CountDownLatch(1);
            public final CountDownLatch allowQuery = new CountDownLatch(1);
            public final CountDownLatch queryClosed = new CountDownLatch(1);
            private long next = 100;
            public long enqueue(Request request) { ids.add(++next); return next; }
            public void remove(long id) { ids.remove(id); }
            public Cursor query(Query query) {
                queryStarted.countDown();
                try {
                    if (!allowQuery.await(3, TimeUnit.SECONDS)) throw new AssertionError("query blocked");
                } catch (InterruptedException error) { throw new AssertionError(error); }
                Iterator<Long> result = new ArrayList<>(ids).iterator();
                return new Cursor() {
                    long id;
                    public int getColumnIndexOrThrow(String name) { return 0; }
                    public boolean moveToNext() {
                        if (!result.hasNext()) return false;
                        id = result.next();
                        return true;
                    }
                    public long getLong(int index) { return id; }
                    public void close() { queryClosed.countDown(); }
                };
            }
        }
    """,
}
PROBE = """
    import android.app.DownloadManager;
    import android.content.Context;
    import com.smartisanos.launcher.theme.LauncherNetworkPolicy;
    import java.io.IOException;
    import java.net.*;
    import java.util.Set;
    import java.util.concurrent.*;
    public class NetworkPolicyProbe {
        static void check(boolean result, String message) {
            if (!result) throw new AssertionError(message);
        }
        public static void main(String[] args) throws Exception {
            DownloadManager queue = new DownloadManager();
            Context context = new Context(true, queue);
            LauncherNetworkPolicy.initialize(context);
            long old = LauncherNetworkPolicy.currentGeneration();
            CountDownLatch disconnected = new CountDownLatch(1);
            URL url = new URL(null, "https://test.invalid/", new URLStreamHandler() {
                protected URLConnection openConnection(URL remote) {
                    return new HttpURLConnection(remote) {
                        public void disconnect() { disconnected.countDown(); }
                        public boolean usingProxy() { return false; }
                        public void connect() {}
                    };
                }
            });
            LauncherNetworkPolicy.open(url, old);
            queue.ids.add(1L);
            LauncherNetworkPolicy.enqueue(queue, new DownloadManager.Request());
            LauncherNetworkPolicy.setEnabled(context, false);
            check(LauncherNetworkPolicy.currentGeneration() == -1, "disabled generation");
            try {
                LauncherNetworkPolicy.enqueue(queue, new DownloadManager.Request());
                throw new AssertionError("disabled download accepted");
            } catch (IOException expected) {}
            LauncherNetworkPolicy.setEnabled(context, true);
            long fresh = LauncherNetworkPolicy.enqueue(queue, new DownloadManager.Request());
            check(LauncherNetworkPolicy.isCurrent(LauncherNetworkPolicy.currentGeneration()), "new request allowed");
            try {
                LauncherNetworkPolicy.open(url, old);
                throw new AssertionError("old generation reopened");
            } catch (IOException expected) {}
            queue.allowQuery.countDown();
            check(queue.queryClosed.await(3, TimeUnit.SECONDS), "DownloadManager queried after re-enable");
            check(queue.ids.equals(Set.of(fresh)), "only previous downloads removed");
            check(disconnected.await(3, TimeUnit.SECONDS), "active HTTP disconnected");
            DownloadManager inherited = new DownloadManager();
            inherited.ids.add(2L);
            inherited.allowQuery.countDown();
            LauncherNetworkPolicy.initialize(new Context(false, inherited));
            check(inherited.queryClosed.await(3, TimeUnit.SECONDS), "offline startup scanned inherited jobs");
            check(inherited.ids.isEmpty(), "inherited running job removed");
            System.out.println("PASS disabled admission, quick re-enable, newer jobs, stale HTTP and offline startup");
            System.exit(0);
        }
    }
"""


if __name__ == "__main__":
    parser = argparse.ArgumentParser()
    parser.add_argument("--jdk", type=Path, required=True)
    jdk = parser.parse_args().jdk
    with tempfile.TemporaryDirectory() as temporary:
        work = Path(temporary)
        files = []
        for name, content in {**STUBS, "NetworkPolicyProbe.java": PROBE}.items():
            path = work / name
            path.parent.mkdir(parents=True, exist_ok=True)
            path.write_text(content, encoding="utf-8")
            files.append(str(path))
        subprocess.run([str(jdk / "bin/javac.exe"), "-encoding", "UTF-8", "-d", str(work),
                        str(POLICY), *files], check=True)
        subprocess.run([str(jdk / "bin/java.exe"), "-cp", str(work), "NetworkPolicyProbe"],
                       check=True, timeout=15)
