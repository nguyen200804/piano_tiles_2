package com.google.android.gms.common.data;

import android.os.Bundle;
import com.example.luckywheel.ad.f;
import java.util.ArrayList;
import java.util.Iterator;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public final class DataBufferUtils {
    private DataBufferUtils() {
    }

    public static <T, E extends Freezable<T>> ArrayList<T> freezeAndClose(DataBuffer<E> dataBuffer) {
        f fVar = (ArrayList<T>) new ArrayList(dataBuffer.getCount());
        try {
            Iterator<E> it = dataBuffer.iterator();
            while (it.hasNext()) {
                fVar.add(it.next().freeze());
            }
            return fVar;
        } finally {
            dataBuffer.close();
        }
    }

    public static boolean hasData(DataBuffer<?> dataBuffer) {
        return dataBuffer != null && dataBuffer.getCount() > 0;
    }

    public static boolean hasNextPage(DataBuffer<?> dataBuffer) {
        Bundle zzarc = dataBuffer.zzarc();
        return (zzarc == null || zzarc.getString("next_page_token") == null) ? false : true;
    }

    public static boolean hasPrevPage(DataBuffer<?> dataBuffer) {
        Bundle zzarc = dataBuffer.zzarc();
        return (zzarc == null || zzarc.getString("prev_page_token") == null) ? false : true;
    }
}
