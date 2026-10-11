package com.google.android.gms.iid;

import android.annotation.TargetApi;
import android.os.Binder;
import android.os.Build;
import android.os.Handler;
import android.os.IBinder;
import android.os.Message;
import android.os.Messenger;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.RemoteException;
import android.support.v4.view.MotionEventCompat;
import com.google.android.gms.iid.zzb;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class MessengerCompat implements Parcelable {
    public static final Parcelable.Creator<MessengerCompat> CREATOR = new Parcelable.Creator<MessengerCompat>() { // from class: com.google.android.gms.iid.MessengerCompat.1
        @Override // android.os.Parcelable.Creator
        /* renamed from: zzmo, reason: merged with bridge method [inline-methods] */
        public MessengerCompat createFromParcel(Parcel parcel) {
            IBinder readStrongBinder = parcel.readStrongBinder();
            if (readStrongBinder != null) {
                return new MessengerCompat(readStrongBinder);
            }
            return null;
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: zzsv, reason: merged with bridge method [inline-methods] */
        public MessengerCompat[] newArray(int i) {
            return new MessengerCompat[i];
        }
    };
    Messenger aaD;
    zzb aaE;

    private final class zza extends zzb.zza {
        Handler handler;

        zza(Handler handler) {
            this.handler = handler;
        }

        @Override // com.google.android.gms.iid.zzb
        public void send(Message message) throws RemoteException {
            message.arg2 = Binder.getCallingUid();
            this.handler.dispatchMessage(message);
        }
    }

    public MessengerCompat(Handler handler) {
        if (Build.VERSION.SDK_INT >= 21) {
            this.aaD = new Messenger(handler);
        } else {
            this.aaE = new zza(handler);
        }
    }

    public MessengerCompat(IBinder iBinder) {
        if (Build.VERSION.SDK_INT >= 21) {
            this.aaD = new Messenger(iBinder);
        } else {
            this.aaE = zzb.zza.zzgq(iBinder);
        }
    }

    public static int zzc(Message message) {
        return Build.VERSION.SDK_INT >= 21 ? zzd(message) : message.arg2;
    }

    @TargetApi(MotionEventCompat.AXIS_WHEEL)
    private static int zzd(Message message) {
        return message.sendingUid;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        try {
            return getBinder().equals(((MessengerCompat) obj).getBinder());
        } catch (ClassCastException e) {
            return false;
        }
    }

    public IBinder getBinder() {
        return this.aaD != null ? this.aaD.getBinder() : this.aaE.asBinder();
    }

    public int hashCode() {
        return getBinder().hashCode();
    }

    public void send(Message message) throws RemoteException {
        if (this.aaD != null) {
            this.aaD.send(message);
        } else {
            this.aaE.send(message);
        }
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        if (this.aaD != null) {
            parcel.writeStrongBinder(this.aaD.getBinder());
        } else {
            parcel.writeStrongBinder(this.aaE.asBinder());
        }
    }
}
