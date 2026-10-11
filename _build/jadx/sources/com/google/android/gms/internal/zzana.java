package com.google.android.gms.internal;

import java.io.IOException;
import java.io.Reader;
import java.io.StringReader;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public final class zzana {
    public zzamv zza(Reader reader) throws zzamw, zzane {
        try {
            zzaom zzaomVar = new zzaom(reader);
            zzamv zzh = zzh(zzaomVar);
            if (zzh.zzczj() || zzaomVar.b() == zzaon.END_DOCUMENT) {
                return zzh;
            }
            throw new zzane("Did not consume the entire document.");
        } catch (zzaop e) {
            throw new zzane(e);
        } catch (IOException e2) {
            throw new zzamw(e2);
        } catch (NumberFormatException e3) {
            throw new zzane(e3);
        }
    }

    public zzamv zzh(zzaom zzaomVar) throws zzamw, zzane {
        boolean isLenient = zzaomVar.isLenient();
        zzaomVar.setLenient(true);
        try {
            try {
                return zzanw.zzh(zzaomVar);
            } catch (OutOfMemoryError e) {
                String valueOf = String.valueOf(zzaomVar);
                throw new zzamz(new StringBuilder(String.valueOf(valueOf).length() + 36).append("Failed parsing JSON source: ").append(valueOf).append(" to Json").toString(), e);
            } catch (StackOverflowError e2) {
                String valueOf2 = String.valueOf(zzaomVar);
                throw new zzamz(new StringBuilder(String.valueOf(valueOf2).length() + 36).append("Failed parsing JSON source: ").append(valueOf2).append(" to Json").toString(), e2);
            }
        } finally {
            zzaomVar.setLenient(isLenient);
        }
    }

    public zzamv zztp(String str) throws zzane {
        return zza(new StringReader(str));
    }
}
