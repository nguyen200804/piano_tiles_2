package org.apache.commons.io.comparator;

import java.io.File;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class CompositeFileComparator extends AbstractFileComparator implements Serializable {
    private static final Comparator<?>[] NO_COMPARATORS = new Comparator[0];
    private final Comparator<File>[] delegates;

    @Override // org.apache.commons.io.comparator.AbstractFileComparator
    public /* bridge */ /* synthetic */ List sort(List x0) {
        return super.sort((List<File>) x0);
    }

    @Override // org.apache.commons.io.comparator.AbstractFileComparator
    public /* bridge */ /* synthetic */ File[] sort(File[] x0) {
        return super.sort(x0);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public CompositeFileComparator(Comparator<File>... delegates) {
        if (delegates == null) {
            this.delegates = NO_COMPARATORS;
        } else {
            this.delegates = new Comparator[delegates.length];
            System.arraycopy(delegates, 0, this.delegates, 0, delegates.length);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public CompositeFileComparator(Iterable<Comparator<File>> delegates) {
        if (delegates == null) {
            this.delegates = NO_COMPARATORS;
            return;
        }
        ArrayList arrayList = new ArrayList();
        Iterator<Comparator<File>> it = delegates.iterator();
        while (it.hasNext()) {
            arrayList.add(it.next());
        }
        this.delegates = (Comparator[]) arrayList.toArray(new Comparator[arrayList.size()]);
    }

    @Override // java.util.Comparator
    public int compare(File file1, File file2) {
        int i = 0;
        for (Comparator<File> comparator : this.delegates) {
            i = comparator.compare(file1, file2);
            if (i != 0) {
                break;
            }
        }
        return i;
    }

    @Override // org.apache.commons.io.comparator.AbstractFileComparator
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(super.toString());
        sb.append('{');
        for (int i = 0; i < this.delegates.length; i++) {
            if (i > 0) {
                sb.append(',');
            }
            sb.append(this.delegates[i]);
        }
        sb.append('}');
        return sb.toString();
    }
}
