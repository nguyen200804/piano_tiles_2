.class Lcom/cmplay/gaid/a$a;
.super Ljava/lang/Object;
.source "AdvertisingIdHelper.java"

# interfaces
.implements Lcom/cmplay/gaid/AdvertisingIdInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cmplay/gaid/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private a:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/cmplay/gaid/a$a;->a:Landroid/os/IBinder;

    .line 44
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 51
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 52
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 55
    :try_start_0
    const-string v0, "com.google.android.gms.ads.identifier.internal.IAdvertisingIdService"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 57
    iget-object v0, p0, Lcom/cmplay/gaid/a$a;->a:Landroid/os/IBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 58
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 59
    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 61
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 62
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 64
    return-object v0

    .line 61
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 62
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public a(Z)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 68
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    .line 69
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v4

    .line 72
    :try_start_0
    const-string v2, "com.google.android.gms.ads.identifier.internal.IAdvertisingIdService"

    invoke-virtual {v3, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 73
    if-eqz p1, :cond_0

    move v2, v0

    :goto_0
    invoke-virtual {v3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 74
    iget-object v2, p0, Lcom/cmplay/gaid/a$a;->a:Landroid/os/IBinder;

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-interface {v2, v5, v3, v4, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 75
    invoke-virtual {v4}, Landroid/os/Parcel;->readException()V

    .line 76
    invoke-virtual {v4}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_1

    .line 80
    :goto_1
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    .line 81
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 83
    :goto_2
    return v0

    :cond_0
    move v2, v1

    .line 73
    goto :goto_0

    :cond_1
    move v0, v1

    .line 76
    goto :goto_1

    .line 77
    :catch_0
    move-exception v0

    .line 80
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    .line 81
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    move v0, v1

    .line 82
    goto :goto_2

    .line 80
    :catchall_0
    move-exception v0

    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    .line 81
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/cmplay/gaid/a$a;->a:Landroid/os/IBinder;

    return-object v0
.end method
