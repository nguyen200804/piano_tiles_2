.class Lcom/android/volley/toolbox/h$2;
.super Ljava/lang/Object;
.source "ImageLoader.java"

# interfaces
.implements Lcom/android/volley/n$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/volley/toolbox/h;->a(Ljava/lang/String;IILandroid/widget/ImageView$ScaleType;Ljava/lang/String;)Lcom/android/volley/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/android/volley/toolbox/h;


# direct methods
.method constructor <init>(Lcom/android/volley/toolbox/h;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 296
    iput-object p1, p0, Lcom/android/volley/toolbox/h$2;->b:Lcom/android/volley/toolbox/h;

    iput-object p2, p0, Lcom/android/volley/toolbox/h$2;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/android/volley/s;)V
    .locals 2

    .prologue
    .line 299
    iget-object v0, p0, Lcom/android/volley/toolbox/h$2;->b:Lcom/android/volley/toolbox/h;

    iget-object v1, p0, Lcom/android/volley/toolbox/h$2;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/android/volley/toolbox/h;->a(Ljava/lang/String;Lcom/android/volley/s;)V

    .line 300
    return-void
.end method
