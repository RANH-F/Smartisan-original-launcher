package com.smartisanos.home.settings.icons;

import java.util.Locale;

/** Search terms for installed labels; generated only while building background indexes. */
public final class IconPinyin {
    private IconPinyin() { }
    private static volatile java.util.Map<String,String[]> reviewed = java.util.Collections.emptyMap();

    public static void configure(java.util.Map<String,String[]> values) {
        java.util.HashMap<String,String[]> copy=new java.util.HashMap<String,String[]>();
        for(java.util.Map.Entry<String,String[]> entry:values.entrySet()) copy.put(entry.getKey(),entry.getValue().clone());
        reviewed=java.util.Collections.unmodifiableMap(copy);
    }

    public static String[] terms(String value) {
        String[] override=reviewed.get(value);
        if(override!=null && override.length==3) return new String[]{override[0],override[2],override[1]};
        if (android.os.Build.VERSION.SDK_INT < 24 || value == null) return new String[0];
        boolean hasHan = false;
        for (int i = 0; i < value.length(); i++) {
            char c = value.charAt(i);
            if (c >= '\u3400' && c <= '\u9fff') { hasHan = true; break; }
        }
        if (!hasHan) return new String[0];
        String spaced = Icu.TRANSLITERATOR.transliterate(value).replaceAll("[^A-Za-z0-9]+", " ").trim();
        if (spaced.length() == 0) return new String[0];
        String[] syllables = spaced.split(" +");
        StringBuilder full = new StringBuilder(), initials = new StringBuilder();
        for (String syllable : syllables) {
            String lower=syllable.toLowerCase(Locale.ROOT);
            full.append(lower);
            if(syllable.matches("[A-Z0-9]{2,8}")) initials.append(lower);
            else if (lower.length() != 0) initials.append(lower.charAt(0));
        }
        return new String[] { full.toString(), initials.toString(), spaced.toLowerCase(Locale.ROOT) };
    }

    private static final class Icu {
        private static final android.icu.text.Transliterator TRANSLITERATOR =
                android.icu.text.Transliterator.getInstance("Han-Latin; Latin-ASCII");
    }
}
