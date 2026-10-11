.class public final enum Lb/a/m$e;
.super Ljava/lang/Enum;
.source "ActivateMsg.java"

# interfaces
.implements Lb/a/bc;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/a/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lb/a/m$e;",
        ">;",
        "Lb/a/bc;"
    }
.end annotation


# static fields
.field public static final enum a:Lb/a/m$e;

.field private static final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lb/a/m$e;",
            ">;"
        }
    .end annotation
.end field

.field private static final synthetic e:[Lb/a/m$e;


# instance fields
.field private final c:S

.field private final d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 47
    new-instance v0, Lb/a/m$e;

    const-string v1, "TS"

    const-string v2, "ts"

    invoke-direct {v0, v1, v3, v4, v2}, Lb/a/m$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lb/a/m$e;->a:Lb/a/m$e;

    .line 46
    new-array v0, v4, [Lb/a/m$e;

    sget-object v1, Lb/a/m$e;->a:Lb/a/m$e;

    aput-object v1, v0, v3

    sput-object v0, Lb/a/m$e;->e:[Lb/a/m$e;

    .line 49
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lb/a/m$e;->b:Ljava/util/Map;

    .line 52
    const-class v0, Lb/a/m$e;

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

    check-cast v0, Lb/a/m$e;

    .line 53
    sget-object v2, Lb/a/m$e;->b:Ljava/util/Map;

    invoke-virtual {v0}, Lb/a/m$e;->b()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 55
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
    .line 89
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 90
    iput-short p3, p0, Lb/a/m$e;->c:S

    .line 91
    iput-object p4, p0, Lb/a/m$e;->d:Ljava/lang/String;

    .line 92
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lb/a/m$e;
    .locals 1

    .prologue
    .line 46
    const-class v0, Lb/a/m$e;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lb/a/m$e;

    return-object v0
.end method

.method public static values()[Lb/a/m$e;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lb/a/m$e;->e:[Lb/a/m$e;

    invoke-virtual {v0}, [Lb/a/m$e;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lb/a/m$e;

    return-object v0
.end method


# virtual methods
.method public a()S
    .locals 1

    .prologue
    .line 95
    iget-short v0, p0, Lb/a/m$e;->c:S

    return v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lb/a/m$e;->d:Ljava/lang/String;

    return-object v0
.end method
