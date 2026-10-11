.class public final enum Lb/a/aa$e;
.super Ljava/lang/Enum;
.source "ImprintValue.java"

# interfaces
.implements Lb/a/bc;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/a/aa;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lb/a/aa$e;",
        ">;",
        "Lb/a/bc;"
    }
.end annotation


# static fields
.field public static final enum a:Lb/a/aa$e;

.field public static final enum b:Lb/a/aa$e;

.field public static final enum c:Lb/a/aa$e;

.field private static final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lb/a/aa$e;",
            ">;"
        }
    .end annotation
.end field

.field private static final synthetic g:[Lb/a/aa$e;


# instance fields
.field private final e:S

.field private final f:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x0

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 51
    new-instance v0, Lb/a/aa$e;

    const-string v1, "VALUE"

    const-string v2, "value"

    invoke-direct {v0, v1, v5, v3, v2}, Lb/a/aa$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lb/a/aa$e;->a:Lb/a/aa$e;

    .line 52
    new-instance v0, Lb/a/aa$e;

    const-string v1, "TS"

    const-string v2, "ts"

    invoke-direct {v0, v1, v3, v4, v2}, Lb/a/aa$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lb/a/aa$e;->b:Lb/a/aa$e;

    .line 53
    new-instance v0, Lb/a/aa$e;

    const-string v1, "GUID"

    const-string v2, "guid"

    invoke-direct {v0, v1, v4, v6, v2}, Lb/a/aa$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lb/a/aa$e;->c:Lb/a/aa$e;

    .line 50
    new-array v0, v6, [Lb/a/aa$e;

    sget-object v1, Lb/a/aa$e;->a:Lb/a/aa$e;

    aput-object v1, v0, v5

    sget-object v1, Lb/a/aa$e;->b:Lb/a/aa$e;

    aput-object v1, v0, v3

    sget-object v1, Lb/a/aa$e;->c:Lb/a/aa$e;

    aput-object v1, v0, v4

    sput-object v0, Lb/a/aa$e;->g:[Lb/a/aa$e;

    .line 55
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lb/a/aa$e;->d:Ljava/util/Map;

    .line 58
    const-class v0, Lb/a/aa$e;

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

    check-cast v0, Lb/a/aa$e;

    .line 59
    sget-object v2, Lb/a/aa$e;->d:Ljava/util/Map;

    invoke-virtual {v0}, Lb/a/aa$e;->b()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 61
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
    .line 99
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 100
    iput-short p3, p0, Lb/a/aa$e;->e:S

    .line 101
    iput-object p4, p0, Lb/a/aa$e;->f:Ljava/lang/String;

    .line 102
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lb/a/aa$e;
    .locals 1

    .prologue
    .line 50
    const-class v0, Lb/a/aa$e;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lb/a/aa$e;

    return-object v0
.end method

.method public static values()[Lb/a/aa$e;
    .locals 1

    .prologue
    .line 50
    sget-object v0, Lb/a/aa$e;->g:[Lb/a/aa$e;

    invoke-virtual {v0}, [Lb/a/aa$e;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lb/a/aa$e;

    return-object v0
.end method


# virtual methods
.method public a()S
    .locals 1

    .prologue
    .line 105
    iget-short v0, p0, Lb/a/aa$e;->e:S

    return v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lb/a/aa$e;->f:Ljava/lang/String;

    return-object v0
.end method
