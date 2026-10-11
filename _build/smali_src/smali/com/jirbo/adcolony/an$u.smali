.class Lcom/jirbo/adcolony/an$u;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jirbo/adcolony/an;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "u"
.end annotation


# instance fields
.field a:I

.field b:I

.field c:I

.field d:I

.field e:I

.field f:I

.field g:I

.field h:I


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1206
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method a(Lcom/jirbo/adcolony/a$g;)Z
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 1221
    if-nez p1, :cond_0

    const/4 v0, 0x0

    .line 1232
    :goto_0
    return v0

    .line 1223
    :cond_0
    iput v0, p0, Lcom/jirbo/adcolony/an$u;->a:I

    .line 1224
    iput v0, p0, Lcom/jirbo/adcolony/an$u;->b:I

    .line 1225
    iput v0, p0, Lcom/jirbo/adcolony/an$u;->c:I

    .line 1226
    iput v0, p0, Lcom/jirbo/adcolony/an$u;->d:I

    .line 1227
    iput v0, p0, Lcom/jirbo/adcolony/an$u;->e:I

    .line 1228
    iput v0, p0, Lcom/jirbo/adcolony/an$u;->f:I

    .line 1229
    iput v0, p0, Lcom/jirbo/adcolony/an$u;->g:I

    .line 1230
    iput v0, p0, Lcom/jirbo/adcolony/an$u;->h:I

    .line 1232
    const/4 v0, 0x1

    goto :goto_0
.end method
