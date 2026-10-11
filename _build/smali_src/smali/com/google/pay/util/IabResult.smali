.class public Lcom/google/pay/util/IabResult;
.super Ljava/lang/Object;
.source "IabResult.java"


# instance fields
.field private mError:I

.field mMessage:Ljava/lang/String;

.field mResponse:I


# direct methods
.method public constructor <init>(IILjava/lang/String;)V
    .locals 0
    .param p1, "error"    # I
    .param p2, "response"    # I
    .param p3, "message"    # Ljava/lang/String;

    .prologue
    .line 35
    invoke-direct {p0, p2, p3}, Lcom/google/pay/util/IabResult;-><init>(ILjava/lang/String;)V

    .line 36
    iput p1, p0, Lcom/google/pay/util/IabResult;->mError:I

    .line 37
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 2
    .param p1, "response"    # I
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/pay/util/IabResult;->mError:I

    .line 39
    iput p1, p0, Lcom/google/pay/util/IabResult;->mResponse:I

    .line 40
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 41
    :cond_0
    invoke-static {p1}, Lcom/google/pay/util/IabHelper;->getResponseDesc(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/pay/util/IabResult;->mMessage:Ljava/lang/String;

    .line 46
    :goto_0
    return-void

    .line 44
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " (response: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/google/pay/util/IabHelper;->getResponseDesc(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/pay/util/IabResult;->mMessage:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public getError()I
    .locals 2

    .prologue
    .line 48
    iget v0, p0, Lcom/google/pay/util/IabResult;->mError:I

    .line 49
    const/4 v1, -0x1

    iput v1, p0, Lcom/google/pay/util/IabResult;->mError:I

    .line 50
    return v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/google/pay/util/IabResult;->mMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getResponse()I
    .locals 1

    .prologue
    .line 52
    iget v0, p0, Lcom/google/pay/util/IabResult;->mResponse:I

    return v0
.end method

.method public isFailure()Z
    .locals 1

    .prologue
    .line 55
    invoke-virtual {p0}, Lcom/google/pay/util/IabResult;->isSuccess()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSuccess()Z
    .locals 1

    .prologue
    .line 54
    iget v0, p0, Lcom/google/pay/util/IabResult;->mResponse:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IabResult: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/pay/util/IabResult;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
