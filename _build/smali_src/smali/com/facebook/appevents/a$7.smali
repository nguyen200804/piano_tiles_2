.class final Lcom/facebook/appevents/a$7;
.super Ljava/lang/Object;
.source "AppEventsLogger.java"

# interfaces
.implements Lcom/facebook/GraphRequest$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/appevents/a;->a(Lcom/facebook/appevents/a$a;Lcom/facebook/appevents/a$i;ZLcom/facebook/appevents/a$f;)Lcom/facebook/GraphRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/appevents/a$a;

.field final synthetic b:Lcom/facebook/GraphRequest;

.field final synthetic c:Lcom/facebook/appevents/a$i;

.field final synthetic d:Lcom/facebook/appevents/a$f;


# direct methods
.method constructor <init>(Lcom/facebook/appevents/a$a;Lcom/facebook/GraphRequest;Lcom/facebook/appevents/a$i;Lcom/facebook/appevents/a$f;)V
    .locals 0

    .prologue
    .line 1077
    iput-object p1, p0, Lcom/facebook/appevents/a$7;->a:Lcom/facebook/appevents/a$a;

    iput-object p2, p0, Lcom/facebook/appevents/a$7;->b:Lcom/facebook/GraphRequest;

    iput-object p3, p0, Lcom/facebook/appevents/a$7;->c:Lcom/facebook/appevents/a$i;

    iput-object p4, p0, Lcom/facebook/appevents/a$7;->d:Lcom/facebook/appevents/a$f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/facebook/q;)V
    .locals 4

    .prologue
    .line 1080
    iget-object v0, p0, Lcom/facebook/appevents/a$7;->a:Lcom/facebook/appevents/a$a;

    iget-object v1, p0, Lcom/facebook/appevents/a$7;->b:Lcom/facebook/GraphRequest;

    iget-object v2, p0, Lcom/facebook/appevents/a$7;->c:Lcom/facebook/appevents/a$i;

    iget-object v3, p0, Lcom/facebook/appevents/a$7;->d:Lcom/facebook/appevents/a$f;

    invoke-static {v0, v1, p1, v2, v3}, Lcom/facebook/appevents/a;->a(Lcom/facebook/appevents/a$a;Lcom/facebook/GraphRequest;Lcom/facebook/q;Lcom/facebook/appevents/a$i;Lcom/facebook/appevents/a$f;)V

    .line 1081
    return-void
.end method
