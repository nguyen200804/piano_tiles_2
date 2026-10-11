.class Lcom/jirbo/adcolony/ADCVideo$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jirbo/adcolony/ADCVideo;->a(Lcom/jirbo/adcolony/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/jirbo/adcolony/ADCVideo;


# direct methods
.method constructor <init>(Lcom/jirbo/adcolony/ADCVideo;)V
    .locals 0

    .prologue
    .line 607
    iput-object p1, p0, Lcom/jirbo/adcolony/ADCVideo$2;->a:Lcom/jirbo/adcolony/ADCVideo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 610
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCVideo$2;->a:Lcom/jirbo/adcolony/ADCVideo;

    iget-object v0, v0, Lcom/jirbo/adcolony/ADCVideo;->E:Lcom/jirbo/adcolony/x;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/x;->c()V

    .line 611
    return-void
.end method
