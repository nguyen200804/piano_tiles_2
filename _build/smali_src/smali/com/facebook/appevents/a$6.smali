.class final Lcom/facebook/appevents/a$6;
.super Ljava/lang/Object;
.source "AppEventsLogger.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/appevents/a;->b(Lcom/facebook/appevents/a$d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/appevents/a$d;


# direct methods
.method constructor <init>(Lcom/facebook/appevents/a$d;)V
    .locals 0

    .prologue
    .line 950
    iput-object p1, p0, Lcom/facebook/appevents/a$6;->a:Lcom/facebook/appevents/a$d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 953
    iget-object v0, p0, Lcom/facebook/appevents/a$6;->a:Lcom/facebook/appevents/a$d;

    invoke-static {v0}, Lcom/facebook/appevents/a;->a(Lcom/facebook/appevents/a$d;)V

    .line 954
    return-void
.end method
