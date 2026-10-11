package com.cmplay.base.util.gif;

import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.ThreadPoolExecutor;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
final class GifRenderingExecutor extends ScheduledThreadPoolExecutor {

    private static final class InstanceHolder {
        private static final GifRenderingExecutor INSTANCE = new GifRenderingExecutor();

        private InstanceHolder() {
        }
    }

    static GifRenderingExecutor getInstance() {
        return InstanceHolder.INSTANCE;
    }

    private GifRenderingExecutor() {
        super(1, new ThreadPoolExecutor.DiscardPolicy());
    }
}
