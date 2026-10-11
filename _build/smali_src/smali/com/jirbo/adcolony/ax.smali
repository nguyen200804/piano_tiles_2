.class Lcom/jirbo/adcolony/ax;
.super Lcom/jirbo/adcolony/y;
.source "SourceFile"


# instance fields
.field c:Ljava/lang/StringBuilder;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 4
    invoke-direct {p0}, Lcom/jirbo/adcolony/y;-><init>()V

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/jirbo/adcolony/ax;->c:Ljava/lang/StringBuilder;

    return-void
.end method


# virtual methods
.method a(C)V
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/jirbo/adcolony/ax;->c:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 17
    return-void
.end method

.method c()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 10
    iget-object v0, p0, Lcom/jirbo/adcolony/ax;->c:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 11
    iput v1, p0, Lcom/jirbo/adcolony/ax;->b:I

    .line 12
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/jirbo/adcolony/ax;->c:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
