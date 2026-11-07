package com.smartisanos.launcher.gesture;

import android.graphics.RectF;

/** Pure coordinate arithmetic; callers must first prove the source artwork/viewport semantics. */
final class HomeIconGeometry {
    private HomeIconGeometry() { }

    /** Already projected artwork corners, GL bottom origin, no second parent transform. */
    static RectF fromProjectedArtwork(float[] corners, float viewportWidth, float viewportHeight,
            float viewWidth, float viewHeight, float screenX, float screenY,
            float screenWidth, float screenHeight) {
        if (corners == null || corners.length != 8 || !positive(viewportWidth)
                || !positive(viewportHeight) || !positive(viewWidth) || !positive(viewHeight)
                || !positive(screenWidth) || !positive(screenHeight)
                || !finite(screenX) || !finite(screenY)) return null;
        float left = Float.POSITIVE_INFINITY, top = Float.POSITIVE_INFINITY;
        float right = Float.NEGATIVE_INFINITY, bottom = Float.NEGATIVE_INFINITY;
        for (int i = 0; i < 8; i += 2) {
            if (!finite(corners[i]) || !finite(corners[i + 1])) return null;
            float x = screenX + corners[i] * viewWidth / viewportWidth;
            float y = screenY + (viewportHeight - corners[i + 1]) * viewHeight / viewportHeight;
            left = Math.min(left, x); right = Math.max(right, x);
            top = Math.min(top, y); bottom = Math.max(bottom, y);
        }
        RectF result = new RectF(left, top, right, bottom);
        if (!HomeGestureContract.validPosition(result) || right > screenWidth || bottom > screenHeight
                || left < screenX || top < screenY || right > screenX + viewWidth
                || bottom > screenY + viewHeight) return null;
        return result;
    }

    /** Restricted identity/orthographic static-composer path, calibrated with real GL evidence.
     * Cell is a unit quad; the artwork node is projected in the compositor's centered camera.
     * The caller rejects rotation, skew, animated/scaled parents and unverified representations.
     */
    static RectF staticComposite(float[] cell, float[] node, float artwork, float texture,
            int width, int height) {
        if (cell == null || node == null || cell.length < 6 || node.length < 6
                || width <= 0 || height <= 0 || !positive(artwork) || !positive(texture)
                || artwork > texture) return null;
        for (int i=0;i<6;i++) if (!finite(cell[i]) || !finite(node[i])) return null;
        // Two corners cannot recover arbitrary orientation. Accept only the measured unit basis.
        if (Math.abs(cell[3]-cell[0]-2f)>.01f || Math.abs(cell[4]-cell[1]-2f)>.01f
                || Math.abs(cell[2]-cell[5])>.00001f || Math.abs(node[2]-node[5])>.00001f
                || Math.abs(cell[2]-node[2])>.00001f
                || Math.abs(node[3]-node[0]-texture)>.01f
                || Math.abs(node[4]-node[1]-texture)>.01f) return null;
        float cx=(cell[0]+cell[3])*0.5f, cy=(cell[1]+cell[4])*0.5f;
        float left=cx+node[0]-width*0.5f;
        float top=height-(cy+node[4]-height*0.5f);
        // Original compositor body placement, independent of the alpha silhouette.
        float padding=texture-artwork;
        left+=padding*0.5f; top+=padding*0.25f;
        RectF r=new RectF(left,top,left+artwork,top+artwork);
        return HomeGestureContract.validPosition(r) && r.right<=width && r.bottom<=height ? r:null;
    }

    private static boolean positive(float value) { return finite(value) && value > 0; }
    private static boolean finite(float value) { return !Float.isNaN(value) && !Float.isInfinite(value); }
}
