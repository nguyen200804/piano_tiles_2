.class final Lcom/cmplay/g/d$1;
.super Ljava/lang/Object;
.source "whitetile2_neitui_mofang.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cmplay/g/d;->a(IILjava/lang/String;ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:I

.field final synthetic e:Ljava/lang/String;


# direct methods
.method constructor <init>(IILjava/lang/String;ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 66
    iput p1, p0, Lcom/cmplay/g/d$1;->a:I

    iput p2, p0, Lcom/cmplay/g/d$1;->b:I

    iput-object p3, p0, Lcom/cmplay/g/d$1;->c:Ljava/lang/String;

    iput p4, p0, Lcom/cmplay/g/d$1;->d:I

    iput-object p5, p0, Lcom/cmplay/g/d$1;->e:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 69
    new-instance v0, Lcom/cmplay/g/d;

    invoke-direct {v0}, Lcom/cmplay/g/d;-><init>()V

    iget v1, p0, Lcom/cmplay/g/d$1;->a:I

    int-to-byte v1, v1

    iget v2, p0, Lcom/cmplay/g/d$1;->b:I

    iget-object v3, p0, Lcom/cmplay/g/d$1;->c:Ljava/lang/String;

    iget v4, p0, Lcom/cmplay/g/d$1;->d:I

    int-to-byte v4, v4

    iget-object v5, p0, Lcom/cmplay/g/d$1;->e:Ljava/lang/String;

    invoke-static/range {v0 .. v5}, Lcom/cmplay/g/d;->a(Lcom/cmplay/g/d;BILjava/lang/String;BLjava/lang/String;)V

    .line 70
    return-void
.end method
