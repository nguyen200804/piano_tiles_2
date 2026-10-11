.class public Lcom/cmplay/base/util/webview/encode/OpensnsException;
.super Ljava/lang/Exception;
.source "OpensnsException.java"


# static fields
.field private static final serialVersionUID:J = 0x7265786c69616f0aL


# instance fields
.field private code:I


# direct methods
.method public constructor <init>(ILjava/lang/Exception;)V
    .locals 0
    .param p1, "code"    # I
    .param p2, "ex"    # Ljava/lang/Exception;

    .prologue
    .line 38
    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 39
    iput p1, p0, Lcom/cmplay/base/util/webview/encode/OpensnsException;->code:I

    .line 40
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0
    .param p1, "code"    # I
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 27
    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 28
    iput p1, p0, Lcom/cmplay/base/util/webview/encode/OpensnsException;->code:I

    .line 29
    return-void
.end method


# virtual methods
.method public getErrorCode()I
    .locals 1

    .prologue
    .line 47
    iget v0, p0, Lcom/cmplay/base/util/webview/encode/OpensnsException;->code:I

    return v0
.end method
