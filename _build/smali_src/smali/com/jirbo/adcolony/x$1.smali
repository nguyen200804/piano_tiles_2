.class Lcom/jirbo/adcolony/x$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jirbo/adcolony/x;->a(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/jirbo/adcolony/x;


# direct methods
.method constructor <init>(Lcom/jirbo/adcolony/x;)V
    .locals 0

    .prologue
    .line 578
    iput-object p1, p0, Lcom/jirbo/adcolony/x$1;->a:Lcom/jirbo/adcolony/x;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 581
    iget-object v0, p0, Lcom/jirbo/adcolony/x$1;->a:Lcom/jirbo/adcolony/x;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/jirbo/adcolony/x;->C:Z

    .line 582
    return-void
.end method
