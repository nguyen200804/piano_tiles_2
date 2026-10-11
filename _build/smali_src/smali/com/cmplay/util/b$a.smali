.class Lcom/cmplay/util/b$a;
.super Ljava/lang/Object;
.source "AsyncTaskEx.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cmplay/util/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Data:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final a:Lcom/cmplay/util/b;

.field final b:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TData;"
        }
    .end annotation
.end field


# direct methods
.method varargs constructor <init>(Lcom/cmplay/util/b;[Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cmplay/util/b;",
            "[TData;)V"
        }
    .end annotation

    .prologue
    .line 633
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 634
    iput-object p1, p0, Lcom/cmplay/util/b$a;->a:Lcom/cmplay/util/b;

    .line 635
    iput-object p2, p0, Lcom/cmplay/util/b$a;->b:[Ljava/lang/Object;

    .line 636
    return-void
.end method
