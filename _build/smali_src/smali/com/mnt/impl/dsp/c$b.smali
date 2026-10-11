.class public final Lcom/mnt/impl/dsp/c$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mnt/impl/dsp/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field public b:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 197
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 198
    return-void
.end method

.method constructor <init>(Lorg/json/JSONObject;)V
    .locals 1

    .prologue
    .line 200
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 201
    if-nez p1, :cond_0

    .line 207
    :goto_0
    return-void

    .line 205
    :cond_0
    sget-object v0, Lcom/mnt/impl/e;->aG:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mnt/impl/dsp/c$b;->a:Ljava/lang/String;

    .line 206
    sget-object v0, Lcom/mnt/impl/e;->aH:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mnt/impl/dsp/c$b;->b:Ljava/lang/String;

    goto :goto_0
.end method
