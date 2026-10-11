package com.cmplay.base.util.gif;

import android.content.ContentResolver;
import android.content.res.AssetFileDescriptor;
import android.content.res.AssetManager;
import android.content.res.Resources;
import android.net.Uri;
import android.support.annotation.IntRange;
import android.support.annotation.Nullable;
import com.cmplay.base.util.gif.GifDrawableInit;
import com.cmplay.base.util.gif.InputSource;
import com.cmplay.base.util.gif.annotations.Beta;
import java.io.File;
import java.io.FileDescriptor;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.concurrent.ScheduledThreadPoolExecutor;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public abstract class GifDrawableInit<T extends GifDrawableInit<T>> {
    private ScheduledThreadPoolExecutor mExecutor;
    private InputSource mInputSource;
    private GifDrawable mOldDrawable;
    private boolean mIsRenderingTriggeredOnDraw = true;
    private GifOptions mOptions = new GifOptions();

    protected abstract T self();

    public T sampleSize(@IntRange(from = 1, to = 65535) int sampleSize) {
        this.mOptions.setInSampleSize(sampleSize);
        return self();
    }

    public GifDrawable build() throws IOException {
        if (this.mInputSource == null) {
            throw new NullPointerException("Source is not set");
        }
        return this.mInputSource.build(this.mOldDrawable, this.mExecutor, this.mIsRenderingTriggeredOnDraw, this.mOptions);
    }

    public T with(GifDrawable drawable) {
        this.mOldDrawable = drawable;
        return self();
    }

    public T threadPoolSize(int threadPoolSize) {
        this.mExecutor = new ScheduledThreadPoolExecutor(threadPoolSize);
        return self();
    }

    public T taskExecutor(ScheduledThreadPoolExecutor executor) {
        this.mExecutor = executor;
        return self();
    }

    public T renderingTriggeredOnDraw(boolean isRenderingTriggeredOnDraw) {
        this.mIsRenderingTriggeredOnDraw = isRenderingTriggeredOnDraw;
        return self();
    }

    public T setRenderingTriggeredOnDraw(boolean isRenderingTriggeredOnDraw) {
        return renderingTriggeredOnDraw(isRenderingTriggeredOnDraw);
    }

    @Beta
    public T options(@Nullable GifOptions options) {
        this.mOptions.setFrom(options);
        return self();
    }

    public T from(InputStream inputStream) {
        this.mInputSource = new InputSource.InputStreamSource(inputStream);
        return self();
    }

    public T from(AssetFileDescriptor assetFileDescriptor) {
        this.mInputSource = new InputSource.AssetFileDescriptorSource(assetFileDescriptor);
        return self();
    }

    public T from(FileDescriptor fileDescriptor) {
        this.mInputSource = new InputSource.FileDescriptorSource(fileDescriptor);
        return self();
    }

    public T from(AssetManager assetManager, String assetName) {
        this.mInputSource = new InputSource.AssetSource(assetManager, assetName);
        return self();
    }

    public T from(ContentResolver contentResolver, Uri uri) {
        this.mInputSource = new InputSource.UriSource(contentResolver, uri);
        return self();
    }

    public T from(File file) {
        this.mInputSource = new InputSource.FileSource(file);
        return self();
    }

    public T from(String filePath) {
        this.mInputSource = new InputSource.FileSource(filePath);
        return self();
    }

    public T from(byte[] bytes) {
        this.mInputSource = new InputSource.ByteArraySource(bytes);
        return self();
    }

    public T from(ByteBuffer byteBuffer) {
        this.mInputSource = new InputSource.DirectByteBufferSource(byteBuffer);
        return self();
    }

    public T from(Resources resources, int resourceId) {
        this.mInputSource = new InputSource.ResourcesSource(resources, resourceId);
        return self();
    }

    public InputSource getInputSource() {
        return this.mInputSource;
    }

    public GifDrawable getOldDrawable() {
        return this.mOldDrawable;
    }

    public ScheduledThreadPoolExecutor getExecutor() {
        return this.mExecutor;
    }

    public boolean isRenderingTriggeredOnDraw() {
        return this.mIsRenderingTriggeredOnDraw;
    }

    public GifOptions getOptions() {
        return this.mOptions;
    }
}
