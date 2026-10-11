.class Lcom/cmplay/internalpush/d$1;
.super Ljava/lang/Object;
.source "CMPPromotionVideoCallBack.java"

# interfaces
.implements Lcom/cmplay/base/util/c/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cmplay/internalpush/d;->a(Ljava/lang/String;Lcom/cmplay/base/util/c/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cmplay/base/util/c/b;

.field final synthetic b:Lcom/cmplay/internalpush/d;


# direct methods
.method constructor <init>(Lcom/cmplay/internalpush/d;Lcom/cmplay/base/util/c/b;)V
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lcom/cmplay/internalpush/d$1;->b:Lcom/cmplay/internalpush/d;

    iput-object p2, p0, Lcom/cmplay/internalpush/d$1;->a:Lcom/cmplay/base/util/c/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/cmplay/internalpush/d$1;->a:Lcom/cmplay/base/util/c/b;

    invoke-interface {v0, p1, p2, p3}, Lcom/cmplay/base/util/c/b;->a(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/cmplay/internalpush/d$1;->a:Lcom/cmplay/base/util/c/b;

    invoke-interface {v0, p1, p2}, Lcom/cmplay/base/util/c/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    return-void
.end method
