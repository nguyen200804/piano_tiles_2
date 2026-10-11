.class public Lb/a/ck;
.super Lb/a/a;
.source "UMIdTracker.java"


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 12
    const-string v0, "idmd5"

    invoke-direct {p0, v0}, Lb/a/a;-><init>(Ljava/lang/String;)V

    .line 13
    iput-object p1, p0, Lb/a/ck;->a:Landroid/content/Context;

    .line 14
    return-void
.end method


# virtual methods
.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lb/a/ck;->a:Landroid/content/Context;

    invoke-static {v0}, Lb/a/ao;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
