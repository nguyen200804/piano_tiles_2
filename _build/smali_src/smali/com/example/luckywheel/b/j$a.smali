.class public Lcom/example/luckywheel/b/j$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/example/luckywheel/b/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field a:I
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field b:I
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/example/luckywheel/b/j$a;->a:I

    iput p2, p0, Lcom/example/luckywheel/b/j$a;->b:I

    return-void
.end method
