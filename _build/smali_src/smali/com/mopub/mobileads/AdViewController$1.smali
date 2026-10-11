.class Lcom/mopub/mobileads/AdViewController$1;
.super Ljava/lang/Object;
.source "AdViewController.java"

# interfaces
.implements Lcom/mopub/network/AdRequest$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mopub/mobileads/AdViewController;-><init>(Landroid/content/Context;Lcom/mopub/mobileads/MoPubView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mopub/mobileads/AdViewController;


# direct methods
.method constructor <init>(Lcom/mopub/mobileads/AdViewController;)V
    .locals 0

    .prologue
    .line 151
    iput-object p1, p0, Lcom/mopub/mobileads/AdViewController$1;->a:Lcom/mopub/mobileads/AdViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/mopub/volley/VolleyError;)V
    .locals 1
    .param p1, "volleyError"    # Lcom/mopub/volley/VolleyError;

    .prologue
    .line 159
    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController$1;->a:Lcom/mopub/mobileads/AdViewController;

    invoke-virtual {v0, p1}, Lcom/mopub/mobileads/AdViewController;->a(Lcom/mopub/volley/VolleyError;)V

    .line 160
    return-void
.end method

.method public onSuccess(Lcom/mopub/network/AdResponse;)V
    .locals 1
    .param p1, "response"    # Lcom/mopub/network/AdResponse;

    .prologue
    .line 154
    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController$1;->a:Lcom/mopub/mobileads/AdViewController;

    invoke-virtual {v0, p1}, Lcom/mopub/mobileads/AdViewController;->a(Lcom/mopub/network/AdResponse;)V

    .line 155
    return-void
.end method
