.class Lcom/cmplay/tile2/GameApp$2;
.super Ljava/lang/Object;
.source "GameApp.java"

# interfaces
.implements Lorg/cocos2dx/lib/ICloudConfigGetter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cmplay/tile2/GameApp;->q()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cmplay/tile2/GameApp;


# direct methods
.method constructor <init>(Lcom/cmplay/tile2/GameApp;)V
    .locals 0

    .prologue
    .line 513
    iput-object p1, p0, Lcom/cmplay/tile2/GameApp$2;->a:Lcom/cmplay/tile2/GameApp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBooleanValue(ILjava/lang/String;Ljava/lang/String;Z)Z
    .locals 1
    .param p1, "func_tion"    # I
    .param p2, "section"    # Ljava/lang/String;
    .param p3, "key"    # Ljava/lang/String;
    .param p4, "defValue"    # Z

    .prologue
    .line 536
    invoke-static {}, Lcom/cmplay/cloud/a;->a()Lcom/cmplay/cloud/a;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/cmplay/cloud/a;->a(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getData(ILjava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "func_tion"    # I
    .param p2, "section"    # Ljava/lang/String;

    .prologue
    .line 516
    invoke-static {}, Lcom/cmplay/cloud/a;->a()Lcom/cmplay/cloud/a;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/cmplay/cloud/a;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDoubleValue(ILjava/lang/String;Ljava/lang/String;D)D
    .locals 6
    .param p1, "func_tion"    # I
    .param p2, "section"    # Ljava/lang/String;
    .param p3, "key"    # Ljava/lang/String;
    .param p4, "defValue"    # D

    .prologue
    .line 541
    invoke-static {}, Lcom/cmplay/cloud/a;->a()Lcom/cmplay/cloud/a;

    move-result-object v0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/cmplay/cloud/a;->a(ILjava/lang/String;Ljava/lang/String;D)D

    move-result-wide v0

    return-wide v0
.end method

.method public getIntValue(ILjava/lang/String;Ljava/lang/String;I)I
    .locals 1
    .param p1, "func_tion"    # I
    .param p2, "section"    # Ljava/lang/String;
    .param p3, "key"    # Ljava/lang/String;
    .param p4, "defValue"    # I

    .prologue
    .line 526
    invoke-static {}, Lcom/cmplay/cloud/a;->a()Lcom/cmplay/cloud/a;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/cmplay/cloud/a;->a(ILjava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getLongValue(ILjava/lang/String;Ljava/lang/String;J)J
    .locals 6
    .param p1, "func_tion"    # I
    .param p2, "section"    # Ljava/lang/String;
    .param p3, "key"    # Ljava/lang/String;
    .param p4, "defValue"    # J

    .prologue
    .line 531
    invoke-static {}, Lcom/cmplay/cloud/a;->a()Lcom/cmplay/cloud/a;

    move-result-object v0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/cmplay/cloud/a;->a(ILjava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getStringValue(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "func_tion"    # I
    .param p2, "section"    # Ljava/lang/String;
    .param p3, "key"    # Ljava/lang/String;
    .param p4, "defValue"    # Ljava/lang/String;

    .prologue
    .line 521
    invoke-static {}, Lcom/cmplay/cloud/a;->a()Lcom/cmplay/cloud/a;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/cmplay/cloud/a;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
