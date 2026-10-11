package org.apache.commons.io.filefilter;

import java.util.List;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public interface ConditionalFileFilter {
    void addFileFilter(IOFileFilter iOFileFilter);

    List<IOFileFilter> getFileFilters();

    boolean removeFileFilter(IOFileFilter iOFileFilter);

    void setFileFilters(List<IOFileFilter> list);
}
