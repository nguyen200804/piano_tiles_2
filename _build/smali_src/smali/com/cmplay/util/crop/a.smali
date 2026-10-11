.class public Lcom/cmplay/util/crop/a;
.super Ljava/lang/Object;
.source "Crop.java"


# instance fields
.field private a:Landroid/content/Intent;


# direct methods
.method private constructor <init>(Landroid/net/Uri;Landroid/net/Uri;)V
    .locals 2

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iput-object v0, p0, Lcom/cmplay/util/crop/a;->a:Landroid/content/Intent;

    .line 43
    iget-object v0, p0, Lcom/cmplay/util/crop/a;->a:Landroid/content/Intent;

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 44
    iget-object v0, p0, Lcom/cmplay/util/crop/a;->a:Landroid/content/Intent;

    const-string v1, "output"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 45
    return-void
.end method

.method public static a(Landroid/net/Uri;Landroid/net/Uri;)Lcom/cmplay/util/crop/a;
    .locals 1

    .prologue
    .line 38
    new-instance v0, Lcom/cmplay/util/crop/a;

    invoke-direct {v0, p0, p1}, Lcom/cmplay/util/crop/a;-><init>(Landroid/net/Uri;Landroid/net/Uri;)V

    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 88
    iget-object v0, p0, Lcom/cmplay/util/crop/a;->a:Landroid/content/Intent;

    const-class v1, Lcom/cmplay/util/crop/CropImageActivity;

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 89
    iget-object v0, p0, Lcom/cmplay/util/crop/a;->a:Landroid/content/Intent;

    return-object v0
.end method

.method public a()Lcom/cmplay/util/crop/a;
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 63
    iget-object v0, p0, Lcom/cmplay/util/crop/a;->a:Landroid/content/Intent;

    const-string v1, "aspect_x"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 64
    iget-object v0, p0, Lcom/cmplay/util/crop/a;->a:Landroid/content/Intent;

    const-string v1, "aspect_y"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 65
    return-object p0
.end method

.method public a(II)Lcom/cmplay/util/crop/a;
    .locals 2

    .prologue
    .line 75
    iget-object v0, p0, Lcom/cmplay/util/crop/a;->a:Landroid/content/Intent;

    const-string v1, "max_x"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 76
    iget-object v0, p0, Lcom/cmplay/util/crop/a;->a:Landroid/content/Intent;

    const-string v1, "max_y"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 77
    return-object p0
.end method
