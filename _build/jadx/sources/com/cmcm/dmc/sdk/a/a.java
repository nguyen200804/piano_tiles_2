package com.cmcm.dmc.sdk.a;

import android.util.Log;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class a {

    /* renamed from: a, reason: collision with root package name */
    private final File f655a;

    /* renamed from: b, reason: collision with root package name */
    private final File f656b;

    public a(File file) {
        this.f655a = file;
        this.f656b = new File(file.getPath() + ".bak");
    }

    static boolean c(FileOutputStream fileOutputStream) {
        if (fileOutputStream != null) {
            try {
                fileOutputStream.getFD().sync();
            } catch (IOException e) {
                return false;
            }
        }
        return true;
    }

    public void a() {
        this.f655a.delete();
        this.f656b.delete();
    }

    public void a(FileOutputStream fileOutputStream) {
        if (fileOutputStream != null) {
            c(fileOutputStream);
            try {
                fileOutputStream.close();
                this.f656b.delete();
            } catch (IOException e) {
                Log.w("AtomicFile", "finishWrite: Got exception:", e);
            }
        }
    }

    public FileOutputStream b() {
        if (this.f655a.exists()) {
            if (this.f656b.exists()) {
                this.f655a.delete();
            } else if (!this.f655a.renameTo(this.f656b)) {
                Log.w("AtomicFile", "Couldn't rename file " + this.f655a + " to backup file " + this.f656b);
            }
        }
        try {
            return new FileOutputStream(this.f655a);
        } catch (FileNotFoundException e) {
            if (!this.f655a.getParentFile().mkdir()) {
                throw new IOException("Couldn't create directory " + this.f655a);
            }
            try {
                return new FileOutputStream(this.f655a);
            } catch (FileNotFoundException e2) {
                throw new IOException("Couldn't create " + this.f655a);
            }
        }
    }

    public void b(FileOutputStream fileOutputStream) {
        if (fileOutputStream != null) {
            c(fileOutputStream);
            try {
                fileOutputStream.close();
                this.f655a.delete();
                this.f656b.renameTo(this.f655a);
            } catch (IOException e) {
                Log.w("AtomicFile", "failWrite: Got exception:", e);
            }
        }
    }

    public FileInputStream c() {
        if (this.f656b.exists()) {
            this.f655a.delete();
            this.f656b.renameTo(this.f655a);
        }
        return new FileInputStream(this.f655a);
    }
}
