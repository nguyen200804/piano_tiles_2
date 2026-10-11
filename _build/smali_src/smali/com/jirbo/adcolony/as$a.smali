.class Lcom/jirbo/adcolony/as$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jirbo/adcolony/as;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field d:Ljava/lang/String;

.field e:D

.field f:I

.field g:I

.field h:I

.field i:I

.field j:Z

.field k:Z

.field l:Z


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 399
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 409
    const/4 v0, -0x1

    iput v0, p0, Lcom/jirbo/adcolony/as$a;->i:I

    return-void
.end method
