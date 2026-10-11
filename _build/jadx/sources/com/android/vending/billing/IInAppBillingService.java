package com.android.vending.billing;

import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import java.util.List;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public interface IInAppBillingService extends IInterface {
    int a(int i, String str, String str2) throws RemoteException;

    Bundle a(int i, String str, String str2, Bundle bundle) throws RemoteException;

    Bundle a(int i, String str, String str2, String str3) throws RemoteException;

    Bundle a(int i, String str, String str2, String str3, String str4) throws RemoteException;

    Bundle a(int i, String str, List<String> list, String str2, String str3, String str4) throws RemoteException;

    int b(int i, String str, String str2) throws RemoteException;

    int c(int i, String str, String str2) throws RemoteException;

    public static abstract class Stub extends Binder implements IInAppBillingService {
        public Stub() {
            attachInterface(this, "com.android.vending.billing.IInAppBillingService");
        }

        public static IInAppBillingService a(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.android.vending.billing.IInAppBillingService");
            if (queryLocalInterface != null && (queryLocalInterface instanceof IInAppBillingService)) {
                return (IInAppBillingService) queryLocalInterface;
            }
            return new a(iBinder);
        }

        @Override // android.os.Binder
        public boolean onTransact(int code, Parcel data, Parcel reply, int flags) throws RemoteException {
            Bundle bundle;
            switch (code) {
                case 1:
                    data.enforceInterface("com.android.vending.billing.IInAppBillingService");
                    int a2 = a(data.readInt(), data.readString(), data.readString());
                    reply.writeNoException();
                    reply.writeInt(a2);
                    return true;
                case 2:
                    data.enforceInterface("com.android.vending.billing.IInAppBillingService");
                    int readInt = data.readInt();
                    String readString = data.readString();
                    String readString2 = data.readString();
                    if (data.readInt() != 0) {
                        bundle = (Bundle) Bundle.CREATOR.createFromParcel(data);
                    } else {
                        bundle = null;
                    }
                    Bundle a3 = a(readInt, readString, readString2, bundle);
                    reply.writeNoException();
                    if (a3 != null) {
                        reply.writeInt(1);
                        a3.writeToParcel(reply, 1);
                    } else {
                        reply.writeInt(0);
                    }
                    return true;
                case 3:
                    data.enforceInterface("com.android.vending.billing.IInAppBillingService");
                    Bundle a4 = a(data.readInt(), data.readString(), data.readString(), data.readString(), data.readString());
                    reply.writeNoException();
                    if (a4 != null) {
                        reply.writeInt(1);
                        a4.writeToParcel(reply, 1);
                    } else {
                        reply.writeInt(0);
                    }
                    return true;
                case 4:
                    data.enforceInterface("com.android.vending.billing.IInAppBillingService");
                    Bundle a5 = a(data.readInt(), data.readString(), data.readString(), data.readString());
                    reply.writeNoException();
                    if (a5 != null) {
                        reply.writeInt(1);
                        a5.writeToParcel(reply, 1);
                    } else {
                        reply.writeInt(0);
                    }
                    return true;
                case 5:
                    data.enforceInterface("com.android.vending.billing.IInAppBillingService");
                    int b2 = b(data.readInt(), data.readString(), data.readString());
                    reply.writeNoException();
                    reply.writeInt(b2);
                    return true;
                case 6:
                    data.enforceInterface("com.android.vending.billing.IInAppBillingService");
                    int c = c(data.readInt(), data.readString(), data.readString());
                    reply.writeNoException();
                    reply.writeInt(c);
                    return true;
                case 7:
                    data.enforceInterface("com.android.vending.billing.IInAppBillingService");
                    Bundle a6 = a(data.readInt(), data.readString(), data.createStringArrayList(), data.readString(), data.readString(), data.readString());
                    reply.writeNoException();
                    if (a6 != null) {
                        reply.writeInt(1);
                        a6.writeToParcel(reply, 1);
                    } else {
                        reply.writeInt(0);
                    }
                    return true;
                case 1598968902:
                    reply.writeString("com.android.vending.billing.IInAppBillingService");
                    return true;
                default:
                    return super.onTransact(code, data, reply, flags);
            }
        }

        private static class a implements IInAppBillingService {

            /* renamed from: a, reason: collision with root package name */
            private IBinder f226a;

            a(IBinder iBinder) {
                this.f226a = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f226a;
            }

            @Override // com.android.vending.billing.IInAppBillingService
            public int a(int i, String str, String str2) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.android.vending.billing.IInAppBillingService");
                    obtain.writeInt(i);
                    obtain.writeString(str);
                    obtain.writeString(str2);
                    this.f226a.transact(1, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.android.vending.billing.IInAppBillingService
            public Bundle a(int i, String str, String str2, Bundle bundle) throws RemoteException {
                Bundle bundle2;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.android.vending.billing.IInAppBillingService");
                    obtain.writeInt(i);
                    obtain.writeString(str);
                    obtain.writeString(str2);
                    if (bundle != null) {
                        obtain.writeInt(1);
                        bundle.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.f226a.transact(2, obtain, obtain2, 0);
                    obtain2.readException();
                    if (obtain2.readInt() != 0) {
                        bundle2 = (Bundle) Bundle.CREATOR.createFromParcel(obtain2);
                    } else {
                        bundle2 = null;
                    }
                    return bundle2;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.android.vending.billing.IInAppBillingService
            public Bundle a(int i, String str, String str2, String str3, String str4) throws RemoteException {
                Bundle bundle;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.android.vending.billing.IInAppBillingService");
                    obtain.writeInt(i);
                    obtain.writeString(str);
                    obtain.writeString(str2);
                    obtain.writeString(str3);
                    obtain.writeString(str4);
                    this.f226a.transact(3, obtain, obtain2, 0);
                    obtain2.readException();
                    if (obtain2.readInt() != 0) {
                        bundle = (Bundle) Bundle.CREATOR.createFromParcel(obtain2);
                    } else {
                        bundle = null;
                    }
                    return bundle;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.android.vending.billing.IInAppBillingService
            public Bundle a(int i, String str, String str2, String str3) throws RemoteException {
                Bundle bundle;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.android.vending.billing.IInAppBillingService");
                    obtain.writeInt(i);
                    obtain.writeString(str);
                    obtain.writeString(str2);
                    obtain.writeString(str3);
                    this.f226a.transact(4, obtain, obtain2, 0);
                    obtain2.readException();
                    if (obtain2.readInt() != 0) {
                        bundle = (Bundle) Bundle.CREATOR.createFromParcel(obtain2);
                    } else {
                        bundle = null;
                    }
                    return bundle;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.android.vending.billing.IInAppBillingService
            public int b(int i, String str, String str2) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.android.vending.billing.IInAppBillingService");
                    obtain.writeInt(i);
                    obtain.writeString(str);
                    obtain.writeString(str2);
                    this.f226a.transact(5, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.android.vending.billing.IInAppBillingService
            public int c(int i, String str, String str2) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.android.vending.billing.IInAppBillingService");
                    obtain.writeInt(i);
                    obtain.writeString(str);
                    obtain.writeString(str2);
                    this.f226a.transact(6, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.android.vending.billing.IInAppBillingService
            public Bundle a(int i, String str, List<String> list, String str2, String str3, String str4) throws RemoteException {
                Bundle bundle;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.android.vending.billing.IInAppBillingService");
                    obtain.writeInt(i);
                    obtain.writeString(str);
                    obtain.writeStringList(list);
                    obtain.writeString(str2);
                    obtain.writeString(str3);
                    obtain.writeString(str4);
                    this.f226a.transact(7, obtain, obtain2, 0);
                    obtain2.readException();
                    if (obtain2.readInt() != 0) {
                        bundle = (Bundle) Bundle.CREATOR.createFromParcel(obtain2);
                    } else {
                        bundle = null;
                    }
                    return bundle;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }
        }
    }
}
