/*
 * Derived from Android 10 Skia SkBlurImageFilter.cpp.
 * Copyright 2011 The Android Open Source Project.
 * Copyright (c) 2011 Google Inc. All rights reserved.
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions are met:
 * Redistributions of source code must retain the above copyright notice,
 * this list of conditions and the following disclaimer.
 * Redistributions in binary form must reproduce the above copyright notice,
 * this list of conditions and the following disclaimer in the documentation
 * and/or other materials provided with the distribution.
 * Neither the name of Google Inc. nor the names of its contributors may be
 * used to endorse or promote products derived from this software without
 * specific prior written permission.
 *
 * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
 * AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
 * IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
 * ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT OWNER OR CONTRIBUTORS BE
 * LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR
 * CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF
 * SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS
 * INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN
 * CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE)
 * ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
 * POSSIBILITY OF SUCH DAMAGE.
 */
package com.smartisanos.launcher.theme;

/** Alpha-only raster equivalent of the Android 10 Skia image blur.
 * The sigma, three box windows and per-axis integer rounding are intentional.
 * Unlike BlurMaskFilter this API does not convert radius to sigma.
 */
public final class IconProjectionBlur {
    private IconProjectionBlur() {}

    public static byte[] blur(byte[] source, int width, int height, float sigma) {
        if (width <= 0 || height <= 0 || source.length != width * height
                || Float.isNaN(sigma) || sigma < 0 || sigma > 20) {
            throw new IllegalArgumentException("Invalid projection mask");
        }
        int window = Math.max(1, (int) Math.floor(
                sigma * 3 * Math.sqrt(2 * Math.PI) / 4 + 0.5));
        if (window == 1) return source.clone();
        byte[] horizontal = new byte[source.length];
        byte[] result = new byte[source.length];
        for (int row = 0; row < height; row++) {
            axis(source, horizontal, row * width, 1, width, window);
        }
        for (int column = 0; column < width; column++) {
            axis(horizontal, result, column, width, height, window);
        }
        return result;
    }

    private static void axis(byte[] source, byte[] destination, int start,
                             int stride, int count, int window) {
        int lastCount = (window & 1) == 1 ? window - 1 : window;
        long[] first = new long[window - 1];
        long[] second = new long[window - 1];
        long[] third = new long[lastCount];
        long divisor = (long) window * window * (lastCount + 1);
        long weight = Math.round(4294967296.0 / divisor);
        long sum0 = 0, sum1 = 0, sum2 = (divisor + 1) / 2;
        int cursor01 = 0, cursor2 = 0;
        int border = (window & 1) == 1
                ? 3 * ((window - 1) / 2) : 3 * (window / 2) - 1;
        for (int index = 0; index < count + border; index++) {
            int leading = index < count ? source[start + index * stride] & 255 : 0;
            sum0 += leading;
            sum1 += sum0;
            sum2 += sum1;
            if (index >= border) {
                destination[start + (index - border) * stride] =
                        (byte) ((sum2 * weight) >>> 32);
            }
            sum2 -= third[cursor2];
            third[cursor2] = sum1;
            sum1 -= second[cursor01];
            second[cursor01] = sum0;
            sum0 -= first[cursor01];
            first[cursor01] = leading;
            if (++cursor01 == first.length) cursor01 = 0;
            if (++cursor2 == third.length) cursor2 = 0;
        }
    }
}
