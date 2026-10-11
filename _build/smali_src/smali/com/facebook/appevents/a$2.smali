.class final Lcom/facebook/appevents/a$2;
.super Ljava/lang/Object;
.source "AppEventsLogger.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/appevents/a;->b(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/appevents/a;

.field final synthetic b:J


# direct methods
.method constructor <init>(Lcom/facebook/appevents/a;J)V
    .locals 0

    .prologue
    .line 352
    iput-object p1, p0, Lcom/facebook/appevents/a$2;->a:Lcom/facebook/appevents/a;

    iput-wide p2, p0, Lcom/facebook/appevents/a$2;->b:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 355
    iget-object v0, p0, Lcom/facebook/appevents/a$2;->a:Lcom/facebook/appevents/a;

    iget-wide v2, p0, Lcom/facebook/appevents/a$2;->b:J

    invoke-static {v0, v2, v3}, Lcom/facebook/appevents/a;->a(Lcom/facebook/appevents/a;J)V

    .line 356
    return-void
.end method
