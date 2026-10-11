.class public Lcom/cmplay/f/d;
.super Lcom/cmplay/f/a;
.source "GetInfoInForeground.java"


# direct methods
.method public constructor <init>(Lcom/cmplay/f/b;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0, p1, p2, p3}, Lcom/cmplay/f/a;-><init>(Lcom/cmplay/f/b;Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    return-void
.end method


# virtual methods
.method protected a()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 51
    :try_start_0
    sget-object v0, Lcom/cmplay/tile2/GameApp;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/cmplay/f/d;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/cmplay/f/d;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/auth/GoogleAuthUtil;->getToken(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/google/android/gms/auth/UserRecoverableAuthException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/android/gms/auth/GoogleAuthException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 64
    :goto_0
    return-object v0

    .line 52
    :catch_0
    move-exception v0

    .line 55
    iget-object v1, p0, Lcom/cmplay/f/d;->a:Lcom/cmplay/f/b;

    invoke-virtual {v1, v0}, Lcom/cmplay/f/b;->a(Ljava/lang/Exception;)V

    .line 57
    iget-object v0, p0, Lcom/cmplay/f/d;->a:Lcom/cmplay/f/b;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/cmplay/f/b;->b(Z)V

    .line 59
    const-string v0, "key_req_grant_access_account_count"

    invoke-static {v0}, Lcom/cmplay/util/aa;->b(Ljava/lang/String;)I

    move-result v0

    .line 60
    const-string v1, "key_req_grant_access_account_count"

    add-int/lit8 v0, v0, 0x1

    invoke-static {v1, v0}, Lcom/cmplay/util/aa;->a(Ljava/lang/String;I)V

    .line 64
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 61
    :catch_1
    move-exception v0

    .line 62
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unrecoverable error "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/gms/auth/GoogleAuthException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/cmplay/f/d;->a(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_1
.end method
