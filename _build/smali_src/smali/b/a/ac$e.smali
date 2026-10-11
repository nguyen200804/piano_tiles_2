.class public final enum Lb/a/ac$e;
.super Ljava/lang/Enum;
.source "Latent.java"

# interfaces
.implements Lb/a/bc;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/a/ac;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lb/a/ac$e;",
        ">;",
        "Lb/a/bc;"
    }
.end annotation


# static fields
.field public static final enum a:Lb/a/ac$e;

.field public static final enum b:Lb/a/ac$e;

.field private static final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lb/a/ac$e;",
            ">;"
        }
    .end annotation
.end field

.field private static final synthetic f:[Lb/a/ac$e;


# instance fields
.field private final d:S

.field private final e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 48
    new-instance v0, Lb/a/ac$e;

    const-string v1, "LATENCY"

    const-string v2, "latency"

    invoke-direct {v0, v1, v4, v3, v2}, Lb/a/ac$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lb/a/ac$e;->a:Lb/a/ac$e;

    .line 49
    new-instance v0, Lb/a/ac$e;

    const-string v1, "INTERVAL"

    const-string v2, "interval"

    invoke-direct {v0, v1, v3, v5, v2}, Lb/a/ac$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lb/a/ac$e;->b:Lb/a/ac$e;

    .line 47
    new-array v0, v5, [Lb/a/ac$e;

    sget-object v1, Lb/a/ac$e;->a:Lb/a/ac$e;

    aput-object v1, v0, v4

    sget-object v1, Lb/a/ac$e;->b:Lb/a/ac$e;

    aput-object v1, v0, v3

    sput-object v0, Lb/a/ac$e;->f:[Lb/a/ac$e;

    .line 51
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lb/a/ac$e;->c:Ljava/util/Map;

    .line 54
    const-class v0, Lb/a/ac$e;

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

    check-cast v0, Lb/a/ac$e;

    .line 55
    sget-object v2, Lb/a/ac$e;->c:Ljava/util/Map;

    invoke-virtual {v0}, Lb/a/ac$e;->b()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 57
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
    .line 93
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 94
    iput-short p3, p0, Lb/a/ac$e;->d:S

    .line 95
    iput-object p4, p0, Lb/a/ac$e;->e:Ljava/lang/String;

    .line 96
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lb/a/ac$e;
    .locals 1

    .prologue
    .line 47
    const-class v0, Lb/a/ac$e;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lb/a/ac$e;

    return-object v0
.end method

.method public static values()[Lb/a/ac$e;
    .locals 1

    .prologue
    .line 47
    sget-object v0, Lb/a/ac$e;->f:[Lb/a/ac$e;

    invoke-virtual {v0}, [Lb/a/ac$e;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lb/a/ac$e;

    return-object v0
.end method


# virtual methods
.method public a()S
    .locals 1

    .prologue
    .line 99
    iget-short v0, p0, Lb/a/ac$e;->d:S

    return v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lb/a/ac$e;->e:Ljava/lang/String;

    return-object v0
.end method
