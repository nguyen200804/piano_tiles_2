.class public final Lcom/cmcm/orion/utils/internal/a/b;
.super Ljava/lang/Object;
.source "AdvertisingIdInterface.java"

# interfaces
.implements Landroid/os/IInterface;


# instance fields
.field private a:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    .prologue
    .line 2058
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2059
    iput-object p1, p0, Lcom/cmcm/orion/utils/internal/a/b;->a:Landroid/os/IBinder;

    .line 2060
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1067
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1068
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 1071
    :try_start_0
    const-string v0, "com.google.android.gms.ads.identifier.internal.IAdvertisingIdService"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1073
    iget-object v0, p0, Lcom/cmcm/orion/utils/internal/a/b;->a:Landroid/os/IBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1074
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 1075
    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 1077
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1078
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1080
    return-object v0

    .line 1077
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1078
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public final asBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 2063
    iget-object v0, p0, Lcom/cmcm/orion/utils/internal/a/b;->a:Landroid/os/IBinder;

    return-object v0
.end method

.method public final b()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 1084
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1085
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 1088
    :try_start_0
    const-string v3, "com.google.android.gms.ads.identifier.internal.IAdvertisingIdService"

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1089
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1090
    iget-object v3, p0, Lcom/cmcm/orion/utils/internal/a/b;->a:Landroid/os/IBinder;

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-interface {v3, v4, v1, v2, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1091
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 1092
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    .line 1096
    :cond_0
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1097
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1099
    :goto_0
    return v0

    .line 1096
    :catch_0
    move-exception v3

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1097
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    goto :goto_0

    .line 1096
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1097
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method
