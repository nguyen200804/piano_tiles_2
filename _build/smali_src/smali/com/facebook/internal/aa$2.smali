.class final Lcom/facebook/internal/aa$2;
.super Ljava/lang/Object;
.source "Utility.java"

# interfaces
.implements Lcom/facebook/GraphRequest$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/internal/aa;->a(Ljava/lang/String;Lcom/facebook/internal/aa$c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/internal/aa$c;

.field final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/facebook/internal/aa$c;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1277
    iput-object p1, p0, Lcom/facebook/internal/aa$2;->a:Lcom/facebook/internal/aa$c;

    iput-object p2, p0, Lcom/facebook/internal/aa$2;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/facebook/q;)V
    .locals 2

    .prologue
    .line 1280
    invoke-virtual {p1}, Lcom/facebook/q;->a()Lcom/facebook/k;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1281
    iget-object v0, p0, Lcom/facebook/internal/aa$2;->a:Lcom/facebook/internal/aa$c;

    invoke-virtual {p1}, Lcom/facebook/q;->a()Lcom/facebook/k;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/k;->e()Lcom/facebook/i;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/facebook/internal/aa$c;->a(Lcom/facebook/i;)V

    .line 1288
    :goto_0
    return-void

    .line 1283
    :cond_0
    iget-object v0, p0, Lcom/facebook/internal/aa$2;->b:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/facebook/q;->b()Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/internal/x;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 1286
    iget-object v0, p0, Lcom/facebook/internal/aa$2;->a:Lcom/facebook/internal/aa$c;

    invoke-virtual {p1}, Lcom/facebook/q;->b()Lorg/json/JSONObject;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/facebook/internal/aa$c;->a(Lorg/json/JSONObject;)V

    goto :goto_0
.end method
