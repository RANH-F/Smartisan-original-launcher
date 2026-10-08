package com.smartisanos.home.settings.icons;

/** Immutable chooser metadata. Artwork remains owned by IconPreviewRepository. */
public final class AppIconCandidate {
    public static final int TYPE_ORIGINAL = 0;
    public static final int TYPE_LIBRARY = 1;
    public static final int TYPE_CUSTOM = 2;
    public static final int TYPE_PACKED = 3;
    public final int type;
    public final String sourceId;
    public final String packPackage;
    public final String packLabel;
    public final String packDrawableName;
    public final long packVersion;
    public final boolean explicitPackDrawable;
    public final String stableKey;
    public final boolean selected;

    public AppIconCandidate(int type, String sourceId, String label, boolean selected) {
        this(type, sourceId, label, selected, "", 0L);
    }

    public AppIconCandidate(int type, String sourceId, String label, boolean selected,
                            String packDrawableName, long packVersion) {
        this(type, sourceId, label, selected, packDrawableName, packVersion, false);
    }

    public AppIconCandidate(int type, String sourceId, String label, boolean selected,
                            String packDrawableName, long packVersion, boolean explicitPackDrawable) {
        this.type = type;
        this.sourceId = sourceId == null ? "" : sourceId;
        this.packPackage = type == TYPE_PACKED ? this.sourceId : "";
        this.packLabel = label == null ? "" : label;
        this.packDrawableName = packDrawableName == null ? "" : packDrawableName;
        this.packVersion = packVersion;
        this.explicitPackDrawable = explicitPackDrawable;
        this.stableKey = type == TYPE_PACKED ? "PACK:" + this.sourceId + (explicitPackDrawable ? "#" + this.packDrawableName : "")
                : type == TYPE_LIBRARY ? "IMPROVED:" + this.sourceId
                : type == TYPE_CUSTOM ? "CUSTOM" : "DEFAULT";
        this.selected = selected;
    }
}
