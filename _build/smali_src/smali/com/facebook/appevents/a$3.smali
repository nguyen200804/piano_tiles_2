.class final Lcom/facebook/appevents/a$3;
.super Ljava/lang/Object;
.source "AppEventsLogger.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/appevents/a;->j()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 807
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 810
    invoke-static {}, Lcom/facebook/appevents/a;->a()Lcom/facebook/appevents/a$c;

    move-result-object v0

    sget-object v1, Lcom/facebook/appevents/a$c;->b:Lcom/facebook/appevents/a$c;

    if-eq v0, v1, :cond_0

    .line 811
    sget-object v0, Lcom/facebook/appevents/a$d;->b:Lcom/facebook/appevents/a$d;

    invoke-static {v0}, Lcom/facebook/appevents/a;->a(Lcom/facebook/appevents/a$d;)V

    .line 813
    :cond_0
    return-void
.end method
