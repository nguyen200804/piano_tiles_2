.class final Lcom/facebook/appevents/a$5;
.super Ljava/lang/Object;
.source "AppEventsLogger.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/appevents/a;->a(Landroid/content/Context;Lcom/facebook/appevents/a$b;Lcom/facebook/appevents/a$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/facebook/appevents/a$a;

.field final synthetic c:Lcom/facebook/appevents/a$b;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/facebook/appevents/a$a;Lcom/facebook/appevents/a$b;)V
    .locals 0

    .prologue
    .line 863
    iput-object p1, p0, Lcom/facebook/appevents/a$5;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/facebook/appevents/a$5;->b:Lcom/facebook/appevents/a$a;

    iput-object p3, p0, Lcom/facebook/appevents/a$5;->c:Lcom/facebook/appevents/a$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 866
    iget-object v0, p0, Lcom/facebook/appevents/a$5;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/facebook/appevents/a$5;->b:Lcom/facebook/appevents/a$a;

    invoke-static {v0, v1}, Lcom/facebook/appevents/a;->a(Landroid/content/Context;Lcom/facebook/appevents/a$a;)Lcom/facebook/appevents/a$i;

    move-result-object v0

    .line 867
    iget-object v1, p0, Lcom/facebook/appevents/a$5;->c:Lcom/facebook/appevents/a$b;

    invoke-virtual {v0, v1}, Lcom/facebook/appevents/a$i;->a(Lcom/facebook/appevents/a$b;)V

    .line 868
    invoke-static {}, Lcom/facebook/appevents/a;->f()V

    .line 869
    return-void
.end method
