.class Lcom/cmplay/tile2/ui/AppActivity$7;
.super Ljava/lang/Object;
.source "AppActivity.java"

# interfaces
.implements Lcom/cmplay/f/c$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cmplay/tile2/ui/AppActivity;
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
    .line 1042
    iput-object p1, p0, Lcom/cmplay/tile2/ui/AppActivity$7;->a:Lcom/cmplay/tile2/ui/AppActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1049
    invoke-static {p1}, Lcom/cmplay/util/NativeUtil;->reqPlayGamesUserInfoCallBackOnGLThread(Ljava/lang/String;)V

    .line 1058
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1066
    invoke-static {p1}, Lcom/cmplay/util/NativeUtil;->reqPlayGamesUserInfoCallBackOnGLThread(Ljava/lang/String;)V

    .line 1075
    return-void
.end method
