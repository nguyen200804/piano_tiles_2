.class public final enum Lb/a/s$e;
.super Ljava/lang/Enum;
.source "Error.java"

# interfaces
.implements Lb/a/bc;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/a/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lb/a/s$e;",
        ">;",
        "Lb/a/bc;"
    }
.end annotation


# static fields
.field public static final enum a:Lb/a/s$e;

.field public static final enum b:Lb/a/s$e;

.field public static final enum c:Lb/a/s$e;

.field private static final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lb/a/s$e;",
            ">;"
        }
    .end annotation
.end field

.field private static final synthetic g:[Lb/a/s$e;


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

    .line 55
    new-instance v0, Lb/a/s$e;

    const-string v1, "TS"

    const-string v2, "ts"

    invoke-direct {v0, v1, v5, v3, v2}, Lb/a/s$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lb/a/s$e;->a:Lb/a/s$e;

    .line 56
    new-instance v0, Lb/a/s$e;

    const-string v1, "CONTEXT"

    const-string v2, "context"

    invoke-direct {v0, v1, v3, v4, v2}, Lb/a/s$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lb/a/s$e;->b:Lb/a/s$e;

    .line 61
    new-instance v0, Lb/a/s$e;

    const-string v1, "SOURCE"

    const-string v2, "source"

    invoke-direct {v0, v1, v4, v6, v2}, Lb/a/s$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lb/a/s$e;->c:Lb/a/s$e;

    .line 54
    new-array v0, v6, [Lb/a/s$e;

    sget-object v1, Lb/a/s$e;->a:Lb/a/s$e;

    aput-object v1, v0, v5

    sget-object v1, Lb/a/s$e;->b:Lb/a/s$e;

    aput-object v1, v0, v3

    sget-object v1, Lb/a/s$e;->c:Lb/a/s$e;

    aput-object v1, v0, v4

    sput-object v0, Lb/a/s$e;->g:[Lb/a/s$e;

    .line 63
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lb/a/s$e;->d:Ljava/util/Map;

    .line 66
    const-class v0, Lb/a/s$e;

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

    check-cast v0, Lb/a/s$e;

    .line 67
    sget-object v2, Lb/a/s$e;->d:Ljava/util/Map;

    invoke-virtual {v0}, Lb/a/s$e;->b()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 69
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
    .line 107
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 108
    iput-short p3, p0, Lb/a/s$e;->e:S

    .line 109
    iput-object p4, p0, Lb/a/s$e;->f:Ljava/lang/String;

    .line 110
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lb/a/s$e;
    .locals 1

    .prologue
    .line 54
    const-class v0, Lb/a/s$e;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lb/a/s$e;

    return-object v0
.end method

.method public static values()[Lb/a/s$e;
    .locals 1

    .prologue
    .line 54
    sget-object v0, Lb/a/s$e;->g:[Lb/a/s$e;

    invoke-virtual {v0}, [Lb/a/s$e;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lb/a/s$e;

    return-object v0
.end method


# virtual methods
.method public a()S
    .locals 1

    .prologue
    .line 113
    iget-short v0, p0, Lb/a/s$e;->e:S

    return v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lb/a/s$e;->f:Ljava/lang/String;

    return-object v0
.end method
