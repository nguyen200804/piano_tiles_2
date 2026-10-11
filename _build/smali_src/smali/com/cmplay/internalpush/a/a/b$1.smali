.class Lcom/cmplay/internalpush/a/a/b$1;
.super Ljava/lang/Object;
.source "ImagePathUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cmplay/internalpush/a/a/b;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cmplay/internalpush/a/a/a;

.field final synthetic b:Lcom/cmplay/internalpush/a/a/b;


# direct methods
.method constructor <init>(Lcom/cmplay/internalpush/a/a/b;Lcom/cmplay/internalpush/a/a/a;)V
    .locals 0

    .prologue
    .line 81
    iput-object p1, p0, Lcom/cmplay/internalpush/a/a/b$1;->b:Lcom/cmplay/internalpush/a/a/b;

    iput-object p2, p0, Lcom/cmplay/internalpush/a/a/b$1;->a:Lcom/cmplay/internalpush/a/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/cmplay/internalpush/a/a/b$1;->a:Lcom/cmplay/internalpush/a/a/a;

    invoke-interface {v0}, Lcom/cmplay/internalpush/a/a/a;->d()V

    .line 85
    return-void
.end method
