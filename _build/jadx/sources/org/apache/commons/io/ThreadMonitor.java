package org.apache.commons.io;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
class ThreadMonitor implements Runnable {
    private final Thread thread;
    private final long timeout;

    public static Thread start(long timeout) {
        return start(Thread.currentThread(), timeout);
    }

    public static Thread start(Thread thread, long timeout) {
        if (timeout <= 0) {
            return null;
        }
        Thread thread2 = new Thread(new ThreadMonitor(thread, timeout), ThreadMonitor.class.getSimpleName());
        thread2.setDaemon(true);
        thread2.start();
        return thread2;
    }

    public static void stop(Thread thread) {
        if (thread != null) {
            thread.interrupt();
        }
    }

    private ThreadMonitor(Thread thread, long timeout) {
        this.thread = thread;
        this.timeout = timeout;
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            Thread.sleep(this.timeout);
            this.thread.interrupt();
        } catch (InterruptedException e) {
        }
    }
}
