package com.smartisanos.launcher.theme;

import java.io.ByteArrayOutputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.util.zip.CRC32;
import java.util.zip.Deflater;
import java.util.zip.DeflaterOutputStream;

/** Encodes a black 256×256 projection as an indexed PNG with full 8-bit alpha. */
final class ProjectionPng {
    private static final int SIDE = 256;
    private static final byte[] BLACK_PALETTE = new byte[256 * 3];
    private static final byte[] TRANSPARENCY = new byte[256];

    static {
        for (int i = 0; i < TRANSPARENCY.length; i++) TRANSPARENCY[i] = (byte) i;
    }

    private ProjectionPng() {}

    static void write(OutputStream destination, byte[] alpha) throws IOException {
        if (alpha.length != SIDE * SIDE) throw new IOException("Invalid projection dimensions");
        DataOutputStream output = new DataOutputStream(destination);
        output.writeLong(0x89504e470d0a1a0aL);
        ByteArrayOutputStream header = new ByteArrayOutputStream(13);
        DataOutputStream fields = new DataOutputStream(header);
        fields.writeInt(SIDE);
        fields.writeInt(SIDE);
        fields.write(new byte[] {8, 3, 0, 0, 0}); // Indexed, no interlace.
        writeChunk(output, 0x49484452, header.toByteArray()); // IHDR
        writeChunk(output, 0x504c5445, BLACK_PALETTE); // PLTE
        writeChunk(output, 0x74524e53, TRANSPARENCY); // tRNS

        ByteArrayOutputStream payload = new ByteArrayOutputStream();
        Deflater deflater = new Deflater(1);
        try (DeflaterOutputStream compressed = new DeflaterOutputStream(payload, deflater)) {
            for (int row = 0; row < SIDE; row++) {
                compressed.write(0); // PNG filter None.
                compressed.write(alpha, row * SIDE, SIDE);
            }
        } finally {
            deflater.end();
        }
        writeChunk(output, 0x49444154, payload.toByteArray()); // IDAT
        writeChunk(output, 0x49454e44, new byte[0]); // IEND
    }

    private static void writeChunk(DataOutputStream output, int type, byte[] bytes) throws IOException {
        CRC32 crc = new CRC32();
        for (int shift = 24; shift >= 0; shift -= 8) crc.update(type >>> shift);
        crc.update(bytes);
        output.writeInt(bytes.length);
        output.writeInt(type);
        output.write(bytes);
        output.writeInt((int) crc.getValue());
    }
}
