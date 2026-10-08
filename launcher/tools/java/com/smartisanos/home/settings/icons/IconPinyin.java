package com.smartisanos.home.settings.icons;

import java.util.Locale;

/** Search terms for installed labels; generated only while building background indexes. */
public final class IconPinyin {
    private IconPinyin() { }

    public static String[] terms(String value) {
        if (android.os.Build.VERSION.SDK_INT < 24 || value == null) return new String[0];
        boolean hasHan = false;
        for (int i = 0; i < value.length(); i++) {
            char c = value.charAt(i);
            if (c >= '\u3400' && c <= '\u9fff') { hasHan = true; break; }
        }
        if (!hasHan) return new String[0];
        String spaced = Icu.TRANSLITERATOR.transliterate(value).toLowerCase(Locale.ROOT)
                .replaceAll("[^a-z0-9]+", " ").trim();
        if (spaced.length() == 0) return new String[0];
        String[] syllables = spaced.split(" +");
        StringBuilder full = new StringBuilder(), initials = new StringBuilder();
        for (String syllable : syllables) {
            full.append(syllable);
            if (syllable.length() != 0) initials.append(syllable.charAt(0));
        }
        return new String[] { full.toString(), initials.toString() };
    }

    private static final class Icu {
        private static final android.icu.text.Transliterator TRANSLITERATOR =
                android.icu.text.Transliterator.getInstance("Han-Latin; Latin-ASCII");
    }
}
