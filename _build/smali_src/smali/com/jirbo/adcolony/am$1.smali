.class Lcom/jirbo/adcolony/am$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jirbo/adcolony/am;-><init>(Lcom/jirbo/adcolony/ADCVideo;Landroid/webkit/WebView;Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/jirbo/adcolony/am;


# direct methods
.method constructor <init>(Lcom/jirbo/adcolony/am;)V
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lcom/jirbo/adcolony/am$1;->a:Lcom/jirbo/adcolony/am;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 58
    const/4 v0, 0x0

    sput-boolean v0, Lcom/jirbo/adcolony/t;->y:Z

    .line 59
    return-void
.end method
