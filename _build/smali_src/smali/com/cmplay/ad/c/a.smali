.class public Lcom/cmplay/ad/c/a;
.super Lcom/cmplay/ad/b;
.source "InnerPushVideoAds.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cmplay/ad/c/a$a;
    }
.end annotation


# instance fields
.field private a:Lcom/cmplay/ad/c;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/cmplay/ad/b;-><init>()V

    .line 25
    return-void
.end method

.method public static a()Lcom/cmplay/ad/c/a;
    .locals 1

    .prologue
    .line 28
    invoke-static {}, Lcom/cmplay/ad/c/a$a;->a()Lcom/cmplay/ad/c/a;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/cmplay/ad/c/a;)Lcom/cmplay/ad/c;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/cmplay/ad/c/a;->a:Lcom/cmplay/ad/c;

    return-object v0
.end method


# virtual methods
.method public a(Z)V
    .locals 0

    .prologue
    .line 33
    invoke-static {p1}, Lcom/cmplay/internalpush/video/e;->a(Z)V

    .line 34
    return-void
.end method

.method public canShow(I)Z
    .locals 1
    .param p1, "reportFrom"    # I

    .prologue
    .line 84
    sget-boolean v0, Lcom/cmplay/ad/a;->g:Z

    invoke-static {p1, v0}, Lcom/cmplay/internalpush/b;->a(IZ)Z

    move-result v0

    .line 86
    return v0
.end method

.method public onCreate(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 42
    invoke-super {p0, p1}, Lcom/cmplay/ad/b;->onCreate(Landroid/app/Activity;)V

    .line 46
    new-instance v0, Lcom/cmplay/ad/c/a$1;

    invoke-direct {v0, p0}, Lcom/cmplay/ad/c/a$1;-><init>(Lcom/cmplay/ad/c/a;)V

    invoke-static {v0}, Lcom/cmplay/internalpush/video/e;->a(Lcom/cmplay/internalpush/video/b/d;)V

    .line 75
    return-void
.end method

.method public onResume(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 80
    return-void
.end method

.method public setListener(Lcom/cmplay/ad/c;)V
    .locals 0
    .param p1, "l"    # Lcom/cmplay/ad/c;

    .prologue
    .line 95
    iput-object p1, p0, Lcom/cmplay/ad/c/a;->a:Lcom/cmplay/ad/c;

    .line 96
    return-void
.end method

.method public show(I)Z
    .locals 1
    .param p1, "reportFrom"    # I

    .prologue
    .line 91
    invoke-static {p1}, Lcom/cmplay/internalpush/b;->a(I)Z

    move-result v0

    return v0
.end method
