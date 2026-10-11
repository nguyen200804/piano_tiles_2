package org.apache.commons.io.comparator;

import java.io.File;
import java.io.Serializable;
import java.util.Comparator;
import java.util.List;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class LastModifiedFileComparator extends AbstractFileComparator implements Serializable {
    public static final Comparator<File> LASTMODIFIED_COMPARATOR = new LastModifiedFileComparator();
    public static final Comparator<File> LASTMODIFIED_REVERSE = new ReverseComparator(LASTMODIFIED_COMPARATOR);

    @Override // org.apache.commons.io.comparator.AbstractFileComparator
    public /* bridge */ /* synthetic */ List sort(List x0) {
        return super.sort((List<File>) x0);
    }

    @Override // org.apache.commons.io.comparator.AbstractFileComparator
    public /* bridge */ /* synthetic */ File[] sort(File[] x0) {
        return super.sort(x0);
    }

    @Override // org.apache.commons.io.comparator.AbstractFileComparator
    public /* bridge */ /* synthetic */ String toString() {
        return super.toString();
    }

    @Override // java.util.Comparator
    public int compare(File file1, File file2) {
        long lastModified = file1.lastModified() - file2.lastModified();
        if (lastModified < 0) {
            return -1;
        }
        if (lastModified > 0) {
            return 1;
        }
        return 0;
    }
}
