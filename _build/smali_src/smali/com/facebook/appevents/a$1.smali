.class final Lcom/facebook/appevents/a$1;
.super Ljava/lang/Object;
.source "AppEventsLogger.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/appevents/a;->a(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/appevents/a;

.field final synthetic b:J

.field final synthetic c:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/facebook/appevents/a;JLjava/lang/String;)V
    .locals 0

    .prologue
    .line 312
    iput-object p1, p0, Lcom/facebook/appevents/a$1;->a:Lcom/facebook/appevents/a;

    iput-wide p2, p0, Lcom/facebook/appevents/a$1;->b:J

    iput-object p4, p0, Lcom/facebook/appevents/a$1;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 315
    iget-object v0, p0, Lcom/facebook/appevents/a$1;->a:Lcom/facebook/appevents/a;

    iget-wide v2, p0, Lcom/facebook/appevents/a$1;->b:J

    iget-object v1, p0, Lcom/facebook/appevents/a$1;->c:Ljava/lang/String;

    invoke-static {v0, v2, v3, v1}, Lcom/facebook/appevents/a;->a(Lcom/facebook/appevents/a;JLjava/lang/String;)V

    .line 316
    return-void
.end method
