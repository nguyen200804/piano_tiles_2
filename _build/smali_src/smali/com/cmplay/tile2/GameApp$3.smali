.class Lcom/cmplay/tile2/GameApp$3;
.super Ljava/lang/Object;
.source "GameApp.java"

# interfaces
.implements Lcom/cmplay/crashreport/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cmplay/tile2/GameApp;
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
    .line 574
    iput-object p1, p0, Lcom/cmplay/tile2/GameApp$3;->a:Lcom/cmplay/tile2/GameApp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 577
    invoke-static {}, Lcom/cmplay/i/c;->f()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 582
    sget-object v0, Lcom/cmplay/tile2/GameApp;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmplay/i/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
