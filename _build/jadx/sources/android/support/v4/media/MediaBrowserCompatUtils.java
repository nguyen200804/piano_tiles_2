package android.support.v4.media;

import android.os.Bundle;
import android.support.v4.media.MediaBrowserCompat;
import java.util.List;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class MediaBrowserCompatUtils {
    public static boolean areSameOptions(Bundle options1, Bundle options2) {
        if (options1 == options2) {
            return true;
        }
        return options1 == null ? options2.getInt(MediaBrowserCompat.EXTRA_PAGE, -1) == -1 && options2.getInt(MediaBrowserCompat.EXTRA_PAGE_SIZE, -1) == -1 : options2 == null ? options1.getInt(MediaBrowserCompat.EXTRA_PAGE, -1) == -1 && options1.getInt(MediaBrowserCompat.EXTRA_PAGE_SIZE, -1) == -1 : options1.getInt(MediaBrowserCompat.EXTRA_PAGE, -1) == options2.getInt(MediaBrowserCompat.EXTRA_PAGE, -1) && options1.getInt(MediaBrowserCompat.EXTRA_PAGE_SIZE, -1) == options2.getInt(MediaBrowserCompat.EXTRA_PAGE_SIZE, -1);
    }

    public static boolean hasDuplicatedItems(Bundle options1, Bundle options2) {
        int i;
        int i2;
        int i3;
        int i4 = Integer.MAX_VALUE;
        int i5 = options1 == null ? -1 : options1.getInt(MediaBrowserCompat.EXTRA_PAGE, -1);
        int i6 = options2 == null ? -1 : options2.getInt(MediaBrowserCompat.EXTRA_PAGE, -1);
        int i7 = options1 == null ? -1 : options1.getInt(MediaBrowserCompat.EXTRA_PAGE_SIZE, -1);
        int i8 = options2 == null ? -1 : options2.getInt(MediaBrowserCompat.EXTRA_PAGE_SIZE, -1);
        if (i5 == -1 || i7 == -1) {
            i = Integer.MAX_VALUE;
            i2 = 0;
        } else {
            int i9 = i7 * (i5 - 1);
            int i10 = (i9 + i7) - 1;
            i2 = i9;
            i = i10;
        }
        if (i6 == -1 || i8 == -1) {
            i3 = 0;
        } else {
            i3 = i8 * (i6 - 1);
            i4 = (i3 + i8) - 1;
        }
        if (i2 > i3 || i3 > i) {
            return i2 <= i4 && i4 <= i;
        }
        return true;
    }

    public static List<MediaBrowserCompat.MediaItem> applyOptions(List<MediaBrowserCompat.MediaItem> list, Bundle options) {
        int i = options.getInt(MediaBrowserCompat.EXTRA_PAGE, -1);
        int i2 = options.getInt(MediaBrowserCompat.EXTRA_PAGE_SIZE, -1);
        if (i != -1 || i2 != -1) {
            int i3 = i2 * (i - 1);
            int i4 = i3 + i2;
            if (i < 1 || i2 < 1 || i3 >= list.size()) {
                return null;
            }
            if (i4 > list.size()) {
                i4 = list.size();
            }
            return list.subList(i3, i4);
        }
        return list;
    }
}
