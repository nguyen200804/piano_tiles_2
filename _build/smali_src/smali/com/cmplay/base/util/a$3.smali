.class final Lcom/cmplay/base/util/a$3;
.super Ljava/lang/Object;
.source "ADLoadingTipsView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cmplay/base/util/a;->a(Landroid/content/Context;IZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:I

.field final synthetic c:Z

.field final synthetic d:Z


# direct methods
.method constructor <init>(Landroid/content/Context;IZZ)V
    .locals 0

    .prologue
    .line 197
    iput-object p1, p0, Lcom/cmplay/base/util/a$3;->a:Landroid/content/Context;

    iput p2, p0, Lcom/cmplay/base/util/a$3;->b:I

    iput-boolean p3, p0, Lcom/cmplay/base/util/a$3;->c:Z

    iput-boolean p4, p0, Lcom/cmplay/base/util/a$3;->d:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 200
    iget-object v0, p0, Lcom/cmplay/base/util/a$3;->a:Landroid/content/Context;

    iget v1, p0, Lcom/cmplay/base/util/a$3;->b:I

    iget-boolean v2, p0, Lcom/cmplay/base/util/a$3;->c:Z

    iget-boolean v3, p0, Lcom/cmplay/base/util/a$3;->d:Z

    invoke-static {v0, v1, v2, v3}, Lcom/cmplay/base/util/a;->b(Landroid/content/Context;IZZ)V

    .line 201
    return-void
.end method
