.class public final Lcom/mnt/impl/dsp/c$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mnt/impl/dsp/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:I

.field public d:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 138
    return-void
.end method

.method constructor <init>(Lorg/json/JSONObject;)V
    .locals 1

    .prologue
    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 141
    if-nez p1, :cond_0

    .line 150
    :goto_0
    return-void

    .line 145
    :cond_0
    sget-object v0, Lcom/mnt/impl/e;->aB:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mnt/impl/dsp/c$a;->a:Ljava/lang/String;

    .line 146
    sget-object v0, Lcom/mnt/impl/e;->aC:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 147
    sget-object v0, Lcom/mnt/impl/e;->aD:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mnt/impl/dsp/c$a;->b:Ljava/lang/String;

    .line 148
    sget-object v0, Lcom/mnt/impl/e;->aE:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/mnt/impl/dsp/c$a;->c:I

    .line 149
    sget-object v0, Lcom/mnt/impl/e;->aF:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mnt/impl/dsp/c$a;->d:Ljava/lang/String;

    goto :goto_0
.end method
