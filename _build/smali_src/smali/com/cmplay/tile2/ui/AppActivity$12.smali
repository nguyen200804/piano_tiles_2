.class Lcom/cmplay/tile2/ui/AppActivity$12;
.super Ljava/lang/Object;
.source "AppActivity.java"

# interfaces
.implements Lcom/cmplay/internalpush/i$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cmplay/tile2/ui/AppActivity;->h()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cmplay/tile2/ui/AppActivity;


# direct methods
.method constructor <init>(Lcom/cmplay/tile2/ui/AppActivity;)V
    .locals 0

    .prologue
    .line 300
    iput-object p1, p0, Lcom/cmplay/tile2/ui/AppActivity$12;->a:Lcom/cmplay/tile2/ui/AppActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 309
    new-instance v0, Lcom/cmplay/tile2/ui/AppActivity$12$1;

    invoke-direct {v0, p0}, Lcom/cmplay/tile2/ui/AppActivity$12$1;-><init>(Lcom/cmplay/tile2/ui/AppActivity$12;)V

    invoke-static {v0}, Lcom/cmplay/util/i;->a(Ljava/lang/Runnable;)V

    .line 316
    return-void
.end method
