.class public final Lcom/mnt/impl/e/g$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mnt/impl/e/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Lcom/mnt/impl/e/g$b;

.field public b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public c:I

.field public d:Lcom/mnt/impl/b/b;

.field public e:I

.field public f:J

.field public g:I

.field public h:I


# direct methods
.method public constructor <init>(Lcom/mnt/impl/e/g$b;Ljava/util/Map;ILcom/mnt/impl/b/b;IJII)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mnt/impl/e/g$b;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;I",
            "Lcom/mnt/impl/b/b;",
            "IJII)V"
        }
    .end annotation

    .prologue
    .line 382
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 338
    const/4 v0, -0x1

    iput v0, p0, Lcom/mnt/impl/e/g$a;->c:I

    .line 383
    iput-object p1, p0, Lcom/mnt/impl/e/g$a;->a:Lcom/mnt/impl/e/g$b;

    .line 384
    iput-object p2, p0, Lcom/mnt/impl/e/g$a;->b:Ljava/util/Map;

    .line 385
    iput p3, p0, Lcom/mnt/impl/e/g$a;->c:I

    .line 386
    iput-object p4, p0, Lcom/mnt/impl/e/g$a;->d:Lcom/mnt/impl/b/b;

    .line 387
    iput p5, p0, Lcom/mnt/impl/e/g$a;->e:I

    .line 388
    iput-wide p6, p0, Lcom/mnt/impl/e/g$a;->f:J

    .line 389
    iput p8, p0, Lcom/mnt/impl/e/g$a;->g:I

    .line 390
    iput p9, p0, Lcom/mnt/impl/e/g$a;->h:I

    .line 391
    return-void
.end method
