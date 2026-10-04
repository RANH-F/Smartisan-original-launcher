package com.smartisanos.smengine;

import com.smartisanos.smengine.a.j;
import java.lang.reflect.Field;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;

/** Runs extracted production methods. Rendering/lifecycle owners are explicit fixtures. */
public final class SensorHandoffProbe {
    static volatile boolean armed;
    static CountDownLatch copiedX, continueCopy;
    static int checks;
    public static void afterCopyX(j source) {
        if (!armed || source != Ra.getInstance().GU) return;
        armed = false;
        copiedX.countDown();
        await(continueCopy);
    }
    static void await(CountDownLatch latch) {
        try { if (!latch.await(5, TimeUnit.SECONDS)) throw new AssertionError("barrier timeout"); }
        catch (InterruptedException e) { throw new AssertionError(e); }
    }
    static void check(boolean value, String message) {
        checks++;
        if (!value) throw new AssertionError(message);
    }
    static j origin(Ra world) throws Exception {
        Field line = Ra.class.getField("JU");
        Field origin = line.get(world).getClass().getDeclaredField("mV");
        origin.setAccessible(true);
        return (j) origin.get(line.get(world));
    }
    public static void main(String[] args) throws Exception {
        boolean baseline = args[0].equals("baseline");
        Ra world = Ra.getInstance();
        world.k(new j(1, 2, 3));
        Runnable queued = n.events.remove(0);
        copiedX = new CountDownLatch(1); continueCopy = new CountDownLatch(1); armed = true;
        Thread gl = new Thread(queued, "fixture-gl"); gl.start(); await(copiedX);
        CountDownLatch writerStarted = new CountDownLatch(1), writerDone = new CountDownLatch(1);
        Thread sensor = new Thread(new Runnable() {public void run() {
            writerStarted.countDown(); world.k(new j(4, 5, 6)); writerDone.countDown();
        }}, "fixture-sensor");
        sensor.start(); await(writerStarted);
        if (baseline) {
            await(writerDone); continueCopy.countDown(); gl.join(5000);
            j output = origin(world);
            check(output.x == 1 && output.y == -5 && output.z == 6, "mixed vector not reproduced");
            System.out.println("BASELINE_MIXED_VECTOR=1,-5,6 (neither input pose)");
            return;
        }
        // The reader pauses while holding the production vector monitor. No production delay.
        check(!writerDone.await(150, TimeUnit.MILLISECONDS), "writer crossed reader monitor");
        continueCopy.countDown(); gl.join(5000); sensor.join(5000);
        check(!gl.isAlive() && !sensor.isAlive(), "handoff deadlock");
        j output = origin(world);
        check(output.x == 1 && output.y == -2 && output.z == 3, "first pose mixed");
        n.events.remove(0).run(); output = origin(world);
        check(output.x == 4 && output.y == -5 && output.z == 6, "latest pose lost");
        check(world.displays == 2 && world.wakes == 2, "original invalidation route changed");
        for (int index = 0; index < 1000; index++) {
            float x = index / 1000f, y = (1000 - index) / 1000f, z = .5f;
            world.k(new j(x, y, z)); n.events.remove(0).run(); output = origin(world);
            check(Float.floatToIntBits(output.x) == Float.floatToIntBits(x), "x changed");
            check(Float.floatToIntBits(output.y) == Float.floatToIntBits(-y), "y sign changed");
            check(Float.floatToIntBits(output.z) == Float.floatToIntBits(z), "z changed");
        }
        // Throw during the exact vector copy and prove catch-all releases the monitor.
        com.smartisanos.smengine.a.c.fail = true;
        world.k(new j(7, 8, 9));
        try { n.events.remove(0).run(); throw new AssertionError("failure not injected"); }
        catch (IllegalStateException expected) { checks++; }
        com.smartisanos.smengine.a.c.fail = false;
        Thread retry = new Thread(new Runnable() {public void run() {world.k(new j(10, 11, 12));}});
        retry.start(); retry.join(5000); check(!retry.isAlive(), "monitor leaked after failure");
        n.events.remove(0).run(); output = origin(world);
        check(output.x == 10 && output.y == -11 && output.z == 12, "retry pose failed");
        try { world.k(null); throw new AssertionError("writer failure not injected"); }
        catch (NullPointerException expected) { checks++; }
        Thread writerRetry = new Thread(new Runnable() {public void run() {world.k(new j(1, 2, 3));}});
        writerRetry.start(); writerRetry.join(5000);
        check(!writerRetry.isAlive(), "writer monitor leaked after failure");
        n.events.clear();
        Thread stress = new Thread(new Runnable() {public void run() {
            for (int i = 1; i <= 20000; i++) world.k(new j(i, 2*i, 3*i));
        }}, "fixture-sensor-stress");
        stress.start();
        for (int i = 0; i < 20000; i++) {
            world.YU.run(); output = origin(world);
            check(output.y == -2*output.x && output.z == 3*output.x, "concurrent mixed pose");
        }
        stress.join(5000); check(!stress.isAlive(), "stress writer blocked");
        System.out.println("PASS SENSOR_HANDOFF_CHECKS=" + checks);
    }
}
