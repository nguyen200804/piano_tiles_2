.class final Lcom/cmplay/e/b$1;
.super Ljava/lang/Object;
.source "MsgBoxImageUtils.java"

# interfaces
.implements Lcom/cmplay/e/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cmplay/e/b;->a(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 115
    iput-object p1, p0, Lcom/cmplay/e/b$1;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/cmplay/e/b$1;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Bitmap;)V
    .locals 2

    .prologue
    .line 118
    if-eqz p1, :cond_0

    .line 119
    iget-object v0, p0, Lcom/cmplay/e/b$1;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/cmplay/e/b$1;->b:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/cmplay/e/b;->a(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)Z

    .line 121
    :cond_0
    return-void
.end method
