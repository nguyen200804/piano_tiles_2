.class Lcom/cmplay/ad/Admob/FBNativeAds$3;
.super Ljava/lang/Object;
.source "FBNativeAds.java"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


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
    .line 154
    iput-object p1, p0, Lcom/cmplay/ad/Admob/FBNativeAds$3;->this$0:Lcom/cmplay/ad/Admob/FBNativeAds;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/cmplay/ad/Admob/FBNativeAds$3;->this$0:Lcom/cmplay/ad/Admob/FBNativeAds;

    invoke-virtual {v0}, Lcom/cmplay/ad/Admob/FBNativeAds;->adRelease()V

    .line 158
    return-void
.end method
