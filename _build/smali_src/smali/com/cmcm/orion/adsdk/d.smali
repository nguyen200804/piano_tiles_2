.class public final enum Lcom/cmcm/orion/adsdk/d;
.super Ljava/lang/Enum;
.source "InternalAdError.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/cmcm/orion/adsdk/d;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/cmcm/orion/adsdk/d;

.field public static final enum b:Lcom/cmcm/orion/adsdk/d;

.field public static final enum c:Lcom/cmcm/orion/adsdk/d;

.field public static final enum d:Lcom/cmcm/orion/adsdk/d;

.field public static final enum e:Lcom/cmcm/orion/adsdk/d;

.field public static final enum f:Lcom/cmcm/orion/adsdk/d;

.field public static final enum g:Lcom/cmcm/orion/adsdk/d;

.field public static final enum h:Lcom/cmcm/orion/adsdk/d;

.field public static final enum i:Lcom/cmcm/orion/adsdk/d;

.field public static final enum j:Lcom/cmcm/orion/adsdk/d;

.field public static final enum k:Lcom/cmcm/orion/adsdk/d;

.field public static final enum l:Lcom/cmcm/orion/adsdk/d;

.field public static final enum m:Lcom/cmcm/orion/adsdk/d;

.field public static final enum n:Lcom/cmcm/orion/adsdk/d;

.field public static final enum o:Lcom/cmcm/orion/adsdk/d;

.field public static final enum p:Lcom/cmcm/orion/adsdk/d;

.field public static final enum q:Lcom/cmcm/orion/adsdk/d;

.field public static final enum r:Lcom/cmcm/orion/adsdk/d;

.field public static final enum s:Lcom/cmcm/orion/adsdk/d;

.field public static final enum t:Lcom/cmcm/orion/adsdk/d;

.field private static final synthetic w:[Lcom/cmcm/orion/adsdk/d;


# instance fields
.field private u:I

.field private v:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 10
    new-instance v0, Lcom/cmcm/orion/adsdk/d;

    const-string v1, "NOT_WIFI_ERROR"

    const/16 v2, 0x64

    const-string v3, "no wifi error"

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/cmcm/orion/adsdk/d;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/cmcm/orion/adsdk/d;->a:Lcom/cmcm/orion/adsdk/d;

    .line 11
    new-instance v0, Lcom/cmcm/orion/adsdk/d;

    const-string v1, "NO_MEDIA_URL_ERROR"

    const/16 v2, 0x66

    const-string v3, "no media url"

    invoke-direct {v0, v1, v6, v2, v3}, Lcom/cmcm/orion/adsdk/d;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/cmcm/orion/adsdk/d;->b:Lcom/cmcm/orion/adsdk/d;

    .line 12
    new-instance v0, Lcom/cmcm/orion/adsdk/d;

    const-string v1, "WRAPPER_LIMIT_ERROR"

    const/16 v2, 0x67

    const-string v3, "wapper limit"

    invoke-direct {v0, v1, v7, v2, v3}, Lcom/cmcm/orion/adsdk/d;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/cmcm/orion/adsdk/d;->c:Lcom/cmcm/orion/adsdk/d;

    .line 13
    new-instance v0, Lcom/cmcm/orion/adsdk/d;

    const-string v1, "XML_NO_AD_DATA_ERROR"

    const/16 v2, 0x68

    const-string v3, "xml is empty string"

    invoke-direct {v0, v1, v8, v2, v3}, Lcom/cmcm/orion/adsdk/d;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/cmcm/orion/adsdk/d;->d:Lcom/cmcm/orion/adsdk/d;

    .line 14
    new-instance v0, Lcom/cmcm/orion/adsdk/d;

    const-string v1, "MEDIA_TYPE_ERROR"

    const/16 v2, 0x69

    const-string v3, "media_type_error"

    invoke-direct {v0, v1, v9, v2, v3}, Lcom/cmcm/orion/adsdk/d;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/cmcm/orion/adsdk/d;->e:Lcom/cmcm/orion/adsdk/d;

    .line 15
    new-instance v0, Lcom/cmcm/orion/adsdk/d;

    const-string v1, "APP_EXISTED_ERROR"

    const/4 v2, 0x5

    const/16 v3, 0x6a

    const-string v4, "app exist error"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/cmcm/orion/adsdk/d;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/cmcm/orion/adsdk/d;->f:Lcom/cmcm/orion/adsdk/d;

    .line 18
    new-instance v0, Lcom/cmcm/orion/adsdk/d;

    const-string v1, "NETWORK_OTHER_ERROR"

    const/4 v2, 0x6

    const/16 v3, 0xc8

    const-string v4, "network other error"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/cmcm/orion/adsdk/d;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/cmcm/orion/adsdk/d;->g:Lcom/cmcm/orion/adsdk/d;

    .line 19
    new-instance v0, Lcom/cmcm/orion/adsdk/d;

    const-string v1, "NETWORK_ENCODING_ERROR"

    const/4 v2, 0x7

    const/16 v3, 0xc9

    const-string v4, "network encoding error"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/cmcm/orion/adsdk/d;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/cmcm/orion/adsdk/d;->h:Lcom/cmcm/orion/adsdk/d;

    .line 20
    new-instance v0, Lcom/cmcm/orion/adsdk/d;

    const-string v1, "NETWORK_PROTOCOL_ERROR"

    const/16 v2, 0x8

    const/16 v3, 0xca

    const-string v4, "network protocol error"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/cmcm/orion/adsdk/d;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/cmcm/orion/adsdk/d;->i:Lcom/cmcm/orion/adsdk/d;

    .line 21
    new-instance v0, Lcom/cmcm/orion/adsdk/d;

    const-string v1, "NETWORK_REDIRECT_ERROR"

    const/16 v2, 0x9

    const/16 v3, 0xcb

    const-string v4, "network redirect error"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/cmcm/orion/adsdk/d;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/cmcm/orion/adsdk/d;->j:Lcom/cmcm/orion/adsdk/d;

    .line 22
    new-instance v0, Lcom/cmcm/orion/adsdk/d;

    const-string v1, "NETWORK_RESPONSE_ERROR"

    const/16 v2, 0xa

    const/16 v3, 0xcc

    const-string v4, "network response error"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/cmcm/orion/adsdk/d;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/cmcm/orion/adsdk/d;->k:Lcom/cmcm/orion/adsdk/d;

    .line 23
    new-instance v0, Lcom/cmcm/orion/adsdk/d;

    const-string v1, "NETWORK_TIMEOUT_ERROR"

    const/16 v2, 0xb

    const/16 v3, 0xcd

    const-string v4, "network timeout error"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/cmcm/orion/adsdk/d;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/cmcm/orion/adsdk/d;->l:Lcom/cmcm/orion/adsdk/d;

    .line 24
    new-instance v0, Lcom/cmcm/orion/adsdk/d;

    const-string v1, "NETWORK_MAX_SIZE_ERROR"

    const/16 v2, 0xc

    const/16 v3, 0xce

    const-string v4, "network max size error"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/cmcm/orion/adsdk/d;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/cmcm/orion/adsdk/d;->m:Lcom/cmcm/orion/adsdk/d;

    .line 25
    new-instance v0, Lcom/cmcm/orion/adsdk/d;

    const-string v1, "NETWORK_DISK_SPACE_ERROR"

    const/16 v2, 0xd

    const/16 v3, 0xcf

    const-string v4, "network_disk_space_error"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/cmcm/orion/adsdk/d;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/cmcm/orion/adsdk/d;->n:Lcom/cmcm/orion/adsdk/d;

    .line 26
    new-instance v0, Lcom/cmcm/orion/adsdk/d;

    const-string v1, "NETWORK_URL_ERROR"

    const/16 v2, 0xe

    const/16 v3, 0xd0

    const-string v4, "network_url_error"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/cmcm/orion/adsdk/d;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/cmcm/orion/adsdk/d;->o:Lcom/cmcm/orion/adsdk/d;

    .line 28
    new-instance v0, Lcom/cmcm/orion/adsdk/d;

    const-string v1, "LUR_INIT_ERROR"

    const/16 v2, 0xf

    const/16 v3, 0x12c

    const-string v4, "lru init error"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/cmcm/orion/adsdk/d;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/cmcm/orion/adsdk/d;->p:Lcom/cmcm/orion/adsdk/d;

    .line 29
    new-instance v0, Lcom/cmcm/orion/adsdk/d;

    const-string v1, "LRU_PUT_ERROR"

    const/16 v2, 0x10

    const/16 v3, 0x12d

    const-string v4, "lru put error"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/cmcm/orion/adsdk/d;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/cmcm/orion/adsdk/d;->q:Lcom/cmcm/orion/adsdk/d;

    .line 30
    new-instance v0, Lcom/cmcm/orion/adsdk/d;

    const-string v1, "LRU_GET_ERROR"

    const/16 v2, 0x11

    const/16 v3, 0x12e

    const-string v4, "lru get error"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/cmcm/orion/adsdk/d;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/cmcm/orion/adsdk/d;->r:Lcom/cmcm/orion/adsdk/d;

    .line 31
    new-instance v0, Lcom/cmcm/orion/adsdk/d;

    const-string v1, "EXCEPTION_ERROR"

    const/16 v2, 0x12

    const/4 v3, -0x1

    const-string v4, ""

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/cmcm/orion/adsdk/d;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/cmcm/orion/adsdk/d;->s:Lcom/cmcm/orion/adsdk/d;

    .line 32
    new-instance v0, Lcom/cmcm/orion/adsdk/d;

    const-string v1, "UNKNOWN_ERROR"

    const/16 v2, 0x13

    const-string v3, ""

    invoke-direct {v0, v1, v2, v5, v3}, Lcom/cmcm/orion/adsdk/d;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/cmcm/orion/adsdk/d;->t:Lcom/cmcm/orion/adsdk/d;

    .line 7
    const/16 v0, 0x14

    new-array v0, v0, [Lcom/cmcm/orion/adsdk/d;

    sget-object v1, Lcom/cmcm/orion/adsdk/d;->a:Lcom/cmcm/orion/adsdk/d;

    aput-object v1, v0, v5

    sget-object v1, Lcom/cmcm/orion/adsdk/d;->b:Lcom/cmcm/orion/adsdk/d;

    aput-object v1, v0, v6

    sget-object v1, Lcom/cmcm/orion/adsdk/d;->c:Lcom/cmcm/orion/adsdk/d;

    aput-object v1, v0, v7

    sget-object v1, Lcom/cmcm/orion/adsdk/d;->d:Lcom/cmcm/orion/adsdk/d;

    aput-object v1, v0, v8

    sget-object v1, Lcom/cmcm/orion/adsdk/d;->e:Lcom/cmcm/orion/adsdk/d;

    aput-object v1, v0, v9

    const/4 v1, 0x5

    sget-object v2, Lcom/cmcm/orion/adsdk/d;->f:Lcom/cmcm/orion/adsdk/d;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/cmcm/orion/adsdk/d;->g:Lcom/cmcm/orion/adsdk/d;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/cmcm/orion/adsdk/d;->h:Lcom/cmcm/orion/adsdk/d;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/cmcm/orion/adsdk/d;->i:Lcom/cmcm/orion/adsdk/d;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/cmcm/orion/adsdk/d;->j:Lcom/cmcm/orion/adsdk/d;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/cmcm/orion/adsdk/d;->k:Lcom/cmcm/orion/adsdk/d;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/cmcm/orion/adsdk/d;->l:Lcom/cmcm/orion/adsdk/d;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/cmcm/orion/adsdk/d;->m:Lcom/cmcm/orion/adsdk/d;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/cmcm/orion/adsdk/d;->n:Lcom/cmcm/orion/adsdk/d;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/cmcm/orion/adsdk/d;->o:Lcom/cmcm/orion/adsdk/d;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/cmcm/orion/adsdk/d;->p:Lcom/cmcm/orion/adsdk/d;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/cmcm/orion/adsdk/d;->q:Lcom/cmcm/orion/adsdk/d;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/cmcm/orion/adsdk/d;->r:Lcom/cmcm/orion/adsdk/d;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/cmcm/orion/adsdk/d;->s:Lcom/cmcm/orion/adsdk/d;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/cmcm/orion/adsdk/d;->t:Lcom/cmcm/orion/adsdk/d;

    aput-object v2, v0, v1

    sput-object v0, Lcom/cmcm/orion/adsdk/d;->w:[Lcom/cmcm/orion/adsdk/d;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 37
    iput p3, p0, Lcom/cmcm/orion/adsdk/d;->u:I

    .line 38
    iput-object p4, p0, Lcom/cmcm/orion/adsdk/d;->v:Ljava/lang/String;

    .line 39
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/cmcm/orion/adsdk/d;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 7
    const-class v0, Lcom/cmcm/orion/adsdk/d;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/cmcm/orion/adsdk/d;

    return-object v0
.end method

.method public static values()[Lcom/cmcm/orion/adsdk/d;
    .locals 1

    .prologue
    .line 7
    sget-object v0, Lcom/cmcm/orion/adsdk/d;->w:[Lcom/cmcm/orion/adsdk/d;

    invoke-virtual {v0}, [Lcom/cmcm/orion/adsdk/d;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/cmcm/orion/adsdk/d;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 42
    iget v0, p0, Lcom/cmcm/orion/adsdk/d;->u:I

    return v0
.end method

.method public final a(Ljava/lang/String;)Lcom/cmcm/orion/adsdk/d;
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lcom/cmcm/orion/adsdk/d;->v:Ljava/lang/String;

    .line 51
    return-object p0
.end method

.method public final a(Ljava/lang/Throwable;)Lcom/cmcm/orion/adsdk/d;
    .locals 1

    .prologue
    .line 55
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cmcm/orion/adsdk/d;->v:Ljava/lang/String;

    .line 56
    return-object p0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/cmcm/orion/adsdk/d;->v:Ljava/lang/String;

    return-object v0
.end method
