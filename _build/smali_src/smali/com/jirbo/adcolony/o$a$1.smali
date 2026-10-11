.class Lcom/jirbo/adcolony/o$a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jirbo/adcolony/o$a;->onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/jirbo/adcolony/o$a;


# direct methods
.method constructor <init>(Lcom/jirbo/adcolony/o$a;)V
    .locals 0

    .prologue
    .line 1135
    iput-object p1, p0, Lcom/jirbo/adcolony/o$a$1;->a:Lcom/jirbo/adcolony/o$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1138
    iget-object v0, p0, Lcom/jirbo/adcolony/o$a$1;->a:Lcom/jirbo/adcolony/o$a;

    iget-object v0, v0, Lcom/jirbo/adcolony/o$a;->c:Lcom/jirbo/adcolony/o;

    iget-boolean v0, v0, Lcom/jirbo/adcolony/o;->t:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/jirbo/adcolony/o$a$1;->a:Lcom/jirbo/adcolony/o$a;

    iget-object v0, v0, Lcom/jirbo/adcolony/o$a;->c:Lcom/jirbo/adcolony/o;

    iget-boolean v0, v0, Lcom/jirbo/adcolony/o;->u:Z

    if-nez v0, :cond_0

    .line 1140
    iget-object v0, p0, Lcom/jirbo/adcolony/o$a$1;->a:Lcom/jirbo/adcolony/o$a;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/jirbo/adcolony/o$a;->b:Z

    .line 1141
    iget-object v0, p0, Lcom/jirbo/adcolony/o$a$1;->a:Lcom/jirbo/adcolony/o$a;

    iget-object v0, v0, Lcom/jirbo/adcolony/o$a;->c:Lcom/jirbo/adcolony/o;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/jirbo/adcolony/o;->p:Z

    .line 1142
    iget-object v0, p0, Lcom/jirbo/adcolony/o$a$1;->a:Lcom/jirbo/adcolony/o$a;

    iget-object v0, v0, Lcom/jirbo/adcolony/o$a;->c:Lcom/jirbo/adcolony/o;

    iget-object v0, v0, Lcom/jirbo/adcolony/o;->K:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1144
    :cond_0
    return-void
.end method
