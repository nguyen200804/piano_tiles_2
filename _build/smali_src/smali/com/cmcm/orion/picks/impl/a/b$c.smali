.class public final Lcom/cmcm/orion/picks/impl/a/b$c;
.super Ljava/lang/Object;
.source "DiskLruCache.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cmcm/orion/picks/impl/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/cmcm/orion/picks/impl/a/b;

.field private final b:Ljava/lang/String;

.field private final c:J

.field private final d:[Ljava/io/InputStream;

.field private final e:[J


# direct methods
.method private constructor <init>(Lcom/cmcm/orion/picks/impl/a/b;Ljava/lang/String;J[Ljava/io/InputStream;[J)V
    .locals 1

    .prologue
    .line 682
    iput-object p1, p0, Lcom/cmcm/orion/picks/impl/a/b$c;->a:Lcom/cmcm/orion/picks/impl/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 683
    iput-object p2, p0, Lcom/cmcm/orion/picks/impl/a/b$c;->b:Ljava/lang/String;

    .line 684
    iput-wide p3, p0, Lcom/cmcm/orion/picks/impl/a/b$c;->c:J

    .line 685
    iput-object p5, p0, Lcom/cmcm/orion/picks/impl/a/b$c;->d:[Ljava/io/InputStream;

    .line 686
    iput-object p6, p0, Lcom/cmcm/orion/picks/impl/a/b$c;->e:[J

    .line 687
    return-void
.end method

.method synthetic constructor <init>(Lcom/cmcm/orion/picks/impl/a/b;Ljava/lang/String;J[Ljava/io/InputStream;[JB)V
    .locals 1

    .prologue
    .line 676
    invoke-direct/range {p0 .. p6}, Lcom/cmcm/orion/picks/impl/a/b$c;-><init>(Lcom/cmcm/orion/picks/impl/a/b;Ljava/lang/String;J[Ljava/io/InputStream;[J)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/io/InputStream;
    .locals 2

    .prologue
    .line 700
    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/a/b$c;->d:[Ljava/io/InputStream;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method public final close()V
    .locals 4

    .prologue
    .line 714
    iget-object v1, p0, Lcom/cmcm/orion/picks/impl/a/b$c;->d:[Ljava/io/InputStream;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 715
    invoke-static {v3}, Lcom/cmcm/orion/picks/impl/a/d;->a(Ljava/io/Closeable;)V

    .line 714
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 717
    :cond_0
    return-void
.end method
