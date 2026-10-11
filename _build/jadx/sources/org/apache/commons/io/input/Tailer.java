package org.apache.commons.io.input;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.RandomAccessFile;
import org.apache.commons.io.FileUtils;
import org.apache.commons.io.IOUtils;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class Tailer implements Runnable {
    private static final int DEFAULT_BUFSIZE = 4096;
    private static final int DEFAULT_DELAY_MILLIS = 1000;
    private static final String RAF_MODE = "r";
    private final long delayMillis;
    private final boolean end;
    private final File file;
    private final byte[] inbuf;
    private final TailerListener listener;
    private final boolean reOpen;
    private volatile boolean run;

    public Tailer(File file, TailerListener listener) {
        this(file, listener, 1000L);
    }

    public Tailer(File file, TailerListener listener, long delayMillis) {
        this(file, listener, delayMillis, false);
    }

    public Tailer(File file, TailerListener listener, long delayMillis, boolean end) {
        this(file, listener, delayMillis, end, 4096);
    }

    public Tailer(File file, TailerListener listener, long delayMillis, boolean end, boolean reOpen) {
        this(file, listener, delayMillis, end, reOpen, 4096);
    }

    public Tailer(File file, TailerListener listener, long delayMillis, boolean end, int bufSize) {
        this(file, listener, delayMillis, end, false, bufSize);
    }

    public Tailer(File file, TailerListener listener, long delayMillis, boolean end, boolean reOpen, int bufSize) {
        this.run = true;
        this.file = file;
        this.delayMillis = delayMillis;
        this.end = end;
        this.inbuf = new byte[bufSize];
        this.listener = listener;
        listener.init(this);
        this.reOpen = reOpen;
    }

    public static Tailer create(File file, TailerListener listener, long delayMillis, boolean end, int bufSize) {
        Tailer tailer = new Tailer(file, listener, delayMillis, end, bufSize);
        Thread thread = new Thread(tailer);
        thread.setDaemon(true);
        thread.start();
        return tailer;
    }

    public static Tailer create(File file, TailerListener listener, long delayMillis, boolean end, boolean reOpen, int bufSize) {
        Tailer tailer = new Tailer(file, listener, delayMillis, end, reOpen, bufSize);
        Thread thread = new Thread(tailer);
        thread.setDaemon(true);
        thread.start();
        return tailer;
    }

    public static Tailer create(File file, TailerListener listener, long delayMillis, boolean end) {
        return create(file, listener, delayMillis, end, 4096);
    }

    public static Tailer create(File file, TailerListener listener, long delayMillis, boolean end, boolean reOpen) {
        return create(file, listener, delayMillis, end, reOpen, 4096);
    }

    public static Tailer create(File file, TailerListener listener, long delayMillis) {
        return create(file, listener, delayMillis, false);
    }

    public static Tailer create(File file, TailerListener listener) {
        return create(file, listener, 1000L, false);
    }

    public File getFile() {
        return this.file;
    }

    public long getDelay() {
        return this.delayMillis;
    }

    @Override // java.lang.Runnable
    public void run() {
        RandomAccessFile randomAccessFile;
        long j;
        RandomAccessFile randomAccessFile2;
        RandomAccessFile randomAccessFile3;
        RandomAccessFile randomAccessFile4 = null;
        long j2 = 0;
        long j3 = 0;
        while (this.run && randomAccessFile4 == null) {
            try {
                try {
                    try {
                        randomAccessFile4 = new RandomAccessFile(this.file, RAF_MODE);
                    } catch (FileNotFoundException e) {
                        this.listener.fileNotFound();
                    }
                    if (randomAccessFile4 == null) {
                        try {
                            Thread.sleep(this.delayMillis);
                        } catch (InterruptedException e2) {
                        }
                    } else {
                        j2 = this.end ? this.file.length() : 0L;
                        j3 = System.currentTimeMillis();
                        randomAccessFile4.seek(j2);
                    }
                } catch (Throwable th) {
                    th = th;
                }
            } catch (Exception e3) {
                e = e3;
            }
        }
        while (this.run) {
            boolean isFileNewer = FileUtils.isFileNewer(this.file, j3);
            long length = this.file.length();
            if (length < j2) {
                this.listener.fileRotated();
                try {
                    randomAccessFile2 = new RandomAccessFile(this.file, RAF_MODE);
                } catch (FileNotFoundException e4) {
                    long j4 = j2;
                    randomAccessFile = randomAccessFile4;
                    j = j4;
                }
                try {
                    IOUtils.closeQuietly(randomAccessFile4);
                    j2 = 0;
                    randomAccessFile4 = randomAccessFile2;
                } catch (FileNotFoundException e5) {
                    randomAccessFile = randomAccessFile2;
                    j = 0;
                    try {
                        this.listener.fileNotFound();
                        randomAccessFile4 = randomAccessFile;
                        j2 = j;
                    } catch (Exception e6) {
                        e = e6;
                        randomAccessFile4 = randomAccessFile;
                        this.listener.handle(e);
                        IOUtils.closeQuietly(randomAccessFile4);
                        return;
                    } catch (Throwable th2) {
                        th = th2;
                        randomAccessFile4 = randomAccessFile;
                        IOUtils.closeQuietly(randomAccessFile4);
                        throw th;
                    }
                } catch (Exception e7) {
                    randomAccessFile4 = randomAccessFile2;
                    e = e7;
                    this.listener.handle(e);
                    IOUtils.closeQuietly(randomAccessFile4);
                    return;
                } catch (Throwable th3) {
                    randomAccessFile4 = randomAccessFile2;
                    th = th3;
                    IOUtils.closeQuietly(randomAccessFile4);
                    throw th;
                }
            } else {
                if (length > j2) {
                    j2 = readLines(randomAccessFile4);
                    j3 = System.currentTimeMillis();
                } else if (isFileNewer) {
                    randomAccessFile4.seek(0L);
                    j2 = readLines(randomAccessFile4);
                    j3 = System.currentTimeMillis();
                }
                if (this.reOpen) {
                    IOUtils.closeQuietly(randomAccessFile4);
                }
                try {
                    Thread.sleep(this.delayMillis);
                } catch (InterruptedException e8) {
                }
                if (this.run && this.reOpen) {
                    randomAccessFile3 = new RandomAccessFile(this.file, RAF_MODE);
                    try {
                        randomAccessFile3.seek(j2);
                    } catch (Exception e9) {
                        randomAccessFile4 = randomAccessFile3;
                        e = e9;
                        this.listener.handle(e);
                        IOUtils.closeQuietly(randomAccessFile4);
                        return;
                    } catch (Throwable th4) {
                        randomAccessFile4 = randomAccessFile3;
                        th = th4;
                        IOUtils.closeQuietly(randomAccessFile4);
                        throw th;
                    }
                } else {
                    randomAccessFile3 = randomAccessFile4;
                }
                randomAccessFile4 = randomAccessFile3;
            }
        }
        IOUtils.closeQuietly(randomAccessFile4);
    }

    public void stop() {
        this.run = false;
    }

    private long readLines(RandomAccessFile reader) throws IOException {
        int read;
        StringBuilder sb = new StringBuilder();
        long filePointer = reader.getFilePointer();
        boolean z = false;
        long j = filePointer;
        while (this.run && (read = reader.read(this.inbuf)) != -1) {
            for (int i = 0; i < read; i++) {
                byte b2 = this.inbuf[i];
                switch (b2) {
                    case 10:
                        this.listener.handle(sb.toString());
                        sb.setLength(0);
                        filePointer = i + j + 1;
                        z = false;
                        break;
                    case 11:
                    case 12:
                    default:
                        if (z) {
                            this.listener.handle(sb.toString());
                            sb.setLength(0);
                            filePointer = i + j + 1;
                            z = false;
                        }
                        sb.append((char) b2);
                        break;
                    case 13:
                        if (z) {
                            sb.append('\r');
                        }
                        z = true;
                        break;
                }
            }
            j = reader.getFilePointer();
        }
        reader.seek(filePointer);
        return filePointer;
    }
}
