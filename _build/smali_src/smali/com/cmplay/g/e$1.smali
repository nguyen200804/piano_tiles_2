.class final Lcom/cmplay/g/e$1;
.super Ljava/lang/Object;
.source "whitetile2_neitui_popup.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cmplay/g/e;->a(Ljava/lang/String;IILjava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:I

.field final synthetic c:I

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:I


# direct methods
.method constructor <init>(Ljava/lang/String;IILjava/lang/String;I)V
    .locals 0

    .prologue
    .line 77
    iput-object p1, p0, Lcom/cmplay/g/e$1;->a:Ljava/lang/String;

    iput p2, p0, Lcom/cmplay/g/e$1;->b:I

    iput p3, p0, Lcom/cmplay/g/e$1;->c:I

    iput-object p4, p0, Lcom/cmplay/g/e$1;->d:Ljava/lang/String;

    iput p5, p0, Lcom/cmplay/g/e$1;->e:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 80
    new-instance v0, Lcom/cmplay/g/e;

    invoke-direct {v0}, Lcom/cmplay/g/e;-><init>()V

    iget-object v1, p0, Lcom/cmplay/g/e$1;->a:Ljava/lang/String;

    iget v2, p0, Lcom/cmplay/g/e$1;->b:I

    iget v3, p0, Lcom/cmplay/g/e$1;->c:I

    iget-object v4, p0, Lcom/cmplay/g/e$1;->d:Ljava/lang/String;

    iget v5, p0, Lcom/cmplay/g/e$1;->e:I

    invoke-static/range {v0 .. v5}, Lcom/cmplay/g/e;->a(Lcom/cmplay/g/e;Ljava/lang/String;IILjava/lang/String;I)V

    .line 81
    return-void
.end method
