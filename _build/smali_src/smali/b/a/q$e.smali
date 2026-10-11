.class public final enum Lb/a/q$e;
.super Ljava/lang/Enum;
.source "ControlPolicy.java"

# interfaces
.implements Lb/a/bc;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/a/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lb/a/q$e;",
        ">;",
        "Lb/a/bc;"
    }
.end annotation


# static fields
.field public static final enum a:Lb/a/q$e;

.field private static final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lb/a/q$e;",
            ">;"
        }
    .end annotation
.end field

.field private static final synthetic e:[Lb/a/q$e;


# instance fields
.field private final c:S

.field private final d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 46
    new-instance v0, Lb/a/q$e;

    const-string v1, "LATENT"

    const-string v2, "latent"

    invoke-direct {v0, v1, v3, v4, v2}, Lb/a/q$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lb/a/q$e;->a:Lb/a/q$e;

    .line 45
    new-array v0, v4, [Lb/a/q$e;

    sget-object v1, Lb/a/q$e;->a:Lb/a/q$e;

    aput-object v1, v0, v3

    sput-object v0, Lb/a/q$e;->e:[Lb/a/q$e;

    .line 48
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lb/a/q$e;->b:Ljava/util/Map;

    .line 51
    const-class v0, Lb/a/q$e;

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

    check-cast v0, Lb/a/q$e;

    .line 52
    sget-object v2, Lb/a/q$e;->b:Ljava/util/Map;

    invoke-virtual {v0}, Lb/a/q$e;->b()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 54
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
    .line 88
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 89
    iput-short p3, p0, Lb/a/q$e;->c:S

    .line 90
    iput-object p4, p0, Lb/a/q$e;->d:Ljava/lang/String;

    .line 91
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lb/a/q$e;
    .locals 1

    .prologue
    .line 45
    const-class v0, Lb/a/q$e;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lb/a/q$e;

    return-object v0
.end method

.method public static values()[Lb/a/q$e;
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lb/a/q$e;->e:[Lb/a/q$e;

    invoke-virtual {v0}, [Lb/a/q$e;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lb/a/q$e;

    return-object v0
.end method


# virtual methods
.method public a()S
    .locals 1

    .prologue
    .line 94
    iget-short v0, p0, Lb/a/q$e;->c:S

    return v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lb/a/q$e;->d:Ljava/lang/String;

    return-object v0
.end method
