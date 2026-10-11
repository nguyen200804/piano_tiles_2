.class Lcom/jirbo/adcolony/an$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jirbo/adcolony/an;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "c"
.end annotation


# instance fields
.field a:I

.field b:I

.field c:I


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1350
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method a(Lcom/jirbo/adcolony/a$g;)Z
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 1360
    if-nez p1, :cond_0

    const/4 v0, 0x0

    .line 1366
    :goto_0
    return v0

    .line 1362
    :cond_0
    iput v0, p0, Lcom/jirbo/adcolony/an$c;->a:I

    .line 1363
    iput v0, p0, Lcom/jirbo/adcolony/an$c;->b:I

    .line 1364
    iput v0, p0, Lcom/jirbo/adcolony/an$c;->c:I

    .line 1366
    const/4 v0, 0x1

    goto :goto_0
.end method
