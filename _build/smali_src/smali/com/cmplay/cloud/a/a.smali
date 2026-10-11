.class public Lcom/cmplay/cloud/a/a;
.super Ljava/lang/Object;
.source "CloudCfgGetterIPCInvoker.java"

# interfaces
.implements Lcom/cmplay/cloud/c;
.implements Lcom/cmplay/ipc/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cmplay/cloud/a/a$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 194
    const/4 v0, 0x1

    return v0
.end method

.method public a(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 207
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 208
    const-string v1, "func_type"

    const/16 v2, 0x9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 209
    invoke-static {v0, p0}, Lcom/cmplay/ipc/IpcProvider;->a(Landroid/content/ContentValues;Lcom/cmplay/ipc/c;)Ljava/lang/String;

    .line 210
    return-void
.end method

.method public a(Landroid/content/Context;Z)V
    .locals 3

    .prologue
    .line 199
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 200
    const-string v1, "func_type"

    const/16 v2, 0x8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 201
    const-string v1, "arg1"

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 202
    invoke-static {v0, p0}, Lcom/cmplay/ipc/IpcProvider;->a(Landroid/content/ContentValues;Lcom/cmplay/ipc/c;)Ljava/lang/String;

    .line 203
    return-void
.end method
