.class Lcom/cmplay/f/b$1;
.super Ljava/lang/Object;
.source "AuthWithGoogleForRestAPIs.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cmplay/f/b;->a(Ljava/lang/Exception;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Exception;

.field final synthetic b:Lcom/cmplay/f/b;


# direct methods
.method constructor <init>(Lcom/cmplay/f/b;Ljava/lang/Exception;)V
    .locals 0

    .prologue
    .line 261
    iput-object p1, p0, Lcom/cmplay/f/b$1;->b:Lcom/cmplay/f/b;

    iput-object p2, p0, Lcom/cmplay/f/b$1;->a:Ljava/lang/Exception;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/16 v2, 0x3ea

    .line 264
    iget-object v0, p0, Lcom/cmplay/f/b$1;->a:Ljava/lang/Exception;

    instance-of v0, v0, Lcom/google/android/gms/auth/GooglePlayServicesAvailabilityException;

    if-eqz v0, :cond_1

    .line 268
    iget-object v0, p0, Lcom/cmplay/f/b$1;->a:Ljava/lang/Exception;

    check-cast v0, Lcom/google/android/gms/auth/GooglePlayServicesAvailabilityException;

    invoke-virtual {v0}, Lcom/google/android/gms/auth/GooglePlayServicesAvailabilityException;->getConnectionStatusCode()I

    move-result v0

    .line 270
    iget-object v1, p0, Lcom/cmplay/f/b$1;->b:Lcom/cmplay/f/b;

    iget-object v1, v1, Lcom/cmplay/f/b;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->getErrorDialog(ILandroid/app/Activity;I)Landroid/app/Dialog;

    move-result-object v0

    .line 273
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 282
    :cond_0
    :goto_0
    return-void

    .line 274
    :cond_1
    iget-object v0, p0, Lcom/cmplay/f/b$1;->a:Ljava/lang/Exception;

    instance-of v0, v0, Lcom/google/android/gms/auth/UserRecoverableAuthException;

    if-eqz v0, :cond_0

    .line 278
    iget-object v0, p0, Lcom/cmplay/f/b$1;->a:Ljava/lang/Exception;

    check-cast v0, Lcom/google/android/gms/auth/UserRecoverableAuthException;

    invoke-virtual {v0}, Lcom/google/android/gms/auth/UserRecoverableAuthException;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 279
    iget-object v1, p0, Lcom/cmplay/f/b$1;->b:Lcom/cmplay/f/b;

    iget-object v1, v1, Lcom/cmplay/f/b;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v1, v0, v2}, Landroid/support/v4/app/FragmentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method
