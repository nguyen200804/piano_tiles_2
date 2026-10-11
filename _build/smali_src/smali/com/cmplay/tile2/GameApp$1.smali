.class Lcom/cmplay/tile2/GameApp$1;
.super Ljava/lang/Object;
.source "GameApp.java"

# interfaces
.implements Lcom/cmcm/dmc/sdk/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cmplay/tile2/GameApp;->a(Landroid/content/Context;)V
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
    .line 270
    iput-object p1, p0, Lcom/cmplay/tile2/GameApp$1;->a:Lcom/cmplay/tile2/GameApp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;I)I
    .locals 2

    .prologue
    .line 283
    invoke-static {}, Lcom/cmplay/cloud/a;->a()Lcom/cmplay/cloud/a;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1, p2, p3, p4}, Lcom/cmplay/cloud/a;->a(ILjava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method
