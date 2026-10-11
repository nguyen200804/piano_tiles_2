.class public Lb/a/bg;
.super Ljava/lang/Object;
.source "FieldMetaData.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lb/a/ay;",
            ">;",
            "Ljava/util/Map",
            "<+",
            "Lb/a/bc;",
            "Lb/a/bg;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:B

.field public final c:Lb/a/bh;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lb/a/bg;->d:Ljava/util/Map;

    .line 44
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;BLb/a/bh;)V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lb/a/bg;->a:Ljava/lang/String;

    .line 48
    iput-byte p2, p0, Lb/a/bg;->b:B

    .line 49
    iput-object p3, p0, Lb/a/bg;->c:Lb/a/bh;

    .line 50
    return-void
.end method

.method public static a(Ljava/lang/Class;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lb/a/ay;",
            ">;",
            "Ljava/util/Map",
            "<+",
            "Lb/a/bc;",
            "Lb/a/bg;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 53
    sget-object v0, Lb/a/bg;->d:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    return-void
.end method
