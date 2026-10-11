.class public final enum Lb/a/ae$e;
.super Ljava/lang/Enum;
.source "MiscInfo.java"

# interfaces
.implements Lb/a/bc;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/a/ae;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lb/a/ae$e;",
        ">;",
        "Lb/a/bc;"
    }
.end annotation


# static fields
.field public static final enum a:Lb/a/ae$e;

.field public static final enum b:Lb/a/ae$e;

.field public static final enum c:Lb/a/ae$e;

.field public static final enum d:Lb/a/ae$e;

.field public static final enum e:Lb/a/ae$e;

.field public static final enum f:Lb/a/ae$e;

.field public static final enum g:Lb/a/ae$e;

.field public static final enum h:Lb/a/ae$e;

.field public static final enum i:Lb/a/ae$e;

.field public static final enum j:Lb/a/ae$e;

.field private static final k:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lb/a/ae$e;",
            ">;"
        }
    .end annotation
.end field

.field private static final synthetic n:[Lb/a/ae$e;


# instance fields
.field private final l:S

.field private final m:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x5

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 68
    new-instance v0, Lb/a/ae$e;

    const-string v1, "TIME_ZONE"

    const/4 v2, 0x0

    const-string v3, "time_zone"

    invoke-direct {v0, v1, v2, v5, v3}, Lb/a/ae$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lb/a/ae$e;->a:Lb/a/ae$e;

    .line 69
    new-instance v0, Lb/a/ae$e;

    const-string v1, "LANGUAGE"

    const-string v2, "language"

    invoke-direct {v0, v1, v5, v6, v2}, Lb/a/ae$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lb/a/ae$e;->b:Lb/a/ae$e;

    .line 70
    new-instance v0, Lb/a/ae$e;

    const-string v1, "COUNTRY"

    const-string v2, "country"

    invoke-direct {v0, v1, v6, v7, v2}, Lb/a/ae$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lb/a/ae$e;->c:Lb/a/ae$e;

    .line 71
    new-instance v0, Lb/a/ae$e;

    const-string v1, "LATITUDE"

    const-string v2, "latitude"

    invoke-direct {v0, v1, v7, v8, v2}, Lb/a/ae$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lb/a/ae$e;->d:Lb/a/ae$e;

    .line 72
    new-instance v0, Lb/a/ae$e;

    const-string v1, "LONGITUDE"

    const-string v2, "longitude"

    invoke-direct {v0, v1, v8, v9, v2}, Lb/a/ae$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lb/a/ae$e;->e:Lb/a/ae$e;

    .line 73
    new-instance v0, Lb/a/ae$e;

    const-string v1, "CARRIER"

    const/4 v2, 0x6

    const-string v3, "carrier"

    invoke-direct {v0, v1, v9, v2, v3}, Lb/a/ae$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lb/a/ae$e;->f:Lb/a/ae$e;

    .line 74
    new-instance v0, Lb/a/ae$e;

    const-string v1, "LATENCY"

    const/4 v2, 0x6

    const/4 v3, 0x7

    const-string v4, "latency"

    invoke-direct {v0, v1, v2, v3, v4}, Lb/a/ae$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lb/a/ae$e;->g:Lb/a/ae$e;

    .line 75
    new-instance v0, Lb/a/ae$e;

    const-string v1, "DISPLAY_NAME"

    const/4 v2, 0x7

    const/16 v3, 0x8

    const-string v4, "display_name"

    invoke-direct {v0, v1, v2, v3, v4}, Lb/a/ae$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lb/a/ae$e;->h:Lb/a/ae$e;

    .line 80
    new-instance v0, Lb/a/ae$e;

    const-string v1, "ACCESS_TYPE"

    const/16 v2, 0x8

    const/16 v3, 0x9

    const-string v4, "access_type"

    invoke-direct {v0, v1, v2, v3, v4}, Lb/a/ae$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lb/a/ae$e;->i:Lb/a/ae$e;

    .line 81
    new-instance v0, Lb/a/ae$e;

    const-string v1, "ACCESS_SUBTYPE"

    const/16 v2, 0x9

    const/16 v3, 0xa

    const-string v4, "access_subtype"

    invoke-direct {v0, v1, v2, v3, v4}, Lb/a/ae$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lb/a/ae$e;->j:Lb/a/ae$e;

    .line 67
    const/16 v0, 0xa

    new-array v0, v0, [Lb/a/ae$e;

    const/4 v1, 0x0

    sget-object v2, Lb/a/ae$e;->a:Lb/a/ae$e;

    aput-object v2, v0, v1

    sget-object v1, Lb/a/ae$e;->b:Lb/a/ae$e;

    aput-object v1, v0, v5

    sget-object v1, Lb/a/ae$e;->c:Lb/a/ae$e;

    aput-object v1, v0, v6

    sget-object v1, Lb/a/ae$e;->d:Lb/a/ae$e;

    aput-object v1, v0, v7

    sget-object v1, Lb/a/ae$e;->e:Lb/a/ae$e;

    aput-object v1, v0, v8

    sget-object v1, Lb/a/ae$e;->f:Lb/a/ae$e;

    aput-object v1, v0, v9

    const/4 v1, 0x6

    sget-object v2, Lb/a/ae$e;->g:Lb/a/ae$e;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lb/a/ae$e;->h:Lb/a/ae$e;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lb/a/ae$e;->i:Lb/a/ae$e;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lb/a/ae$e;->j:Lb/a/ae$e;

    aput-object v2, v0, v1

    sput-object v0, Lb/a/ae$e;->n:[Lb/a/ae$e;

    .line 83
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lb/a/ae$e;->k:Ljava/util/Map;

    .line 86
    const-class v0, Lb/a/ae$e;

    invoke-static {v0}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/EnumSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/a/ae$e;

    .line 87
    sget-object v2, Lb/a/ae$e;->k:Ljava/util/Map;

    invoke-virtual {v0}, Lb/a/ae$e;->b()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 89
    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ISLjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(S",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 141
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 142
    iput-short p3, p0, Lb/a/ae$e;->l:S

    .line 143
    iput-object p4, p0, Lb/a/ae$e;->m:Ljava/lang/String;

    .line 144
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lb/a/ae$e;
    .locals 1

    .prologue
    .line 67
    const-class v0, Lb/a/ae$e;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lb/a/ae$e;

    return-object v0
.end method

.method public static values()[Lb/a/ae$e;
    .locals 1

    .prologue
    .line 67
    sget-object v0, Lb/a/ae$e;->n:[Lb/a/ae$e;

    invoke-virtual {v0}, [Lb/a/ae$e;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lb/a/ae$e;

    return-object v0
.end method


# virtual methods
.method public a()S
    .locals 1

    .prologue
    .line 147
    iget-short v0, p0, Lb/a/ae$e;->l:S

    return v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lb/a/ae$e;->m:Ljava/lang/String;

    return-object v0
.end method
