.class Lcom/cmplay/ad/Admob/FBNativeAds$2;
.super Ljava/lang/Object;
.source "FBNativeAds.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cmplay/ad/Admob/FBNativeAds;->showInterstitial()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cmplay/ad/Admob/FBNativeAds;


# direct methods
.method constructor <init>(Lcom/cmplay/ad/Admob/FBNativeAds;)V
    .locals 0

    .prologue
    .line 136
    iput-object p1, p0, Lcom/cmplay/ad/Admob/FBNativeAds$2;->this$0:Lcom/cmplay/ad/Admob/FBNativeAds;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 139
    const-string v0, "zzb_fb"

    const-string v1, "onClick close ------"

    invoke-static {v0, v1}, Lcom/cmplay/base/util/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    iget-object v0, p0, Lcom/cmplay/ad/Admob/FBNativeAds$2;->this$0:Lcom/cmplay/ad/Admob/FBNativeAds;

    invoke-virtual {v0}, Lcom/cmplay/ad/Admob/FBNativeAds;->dismissWindow()V

    .line 141
    return-void
.end method
