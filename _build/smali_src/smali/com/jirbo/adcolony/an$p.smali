.class Lcom/jirbo/adcolony/an$p;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jirbo/adcolony/an;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "p"
.end annotation


# instance fields
.field a:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method a(Lcom/jirbo/adcolony/a$g;)Z
    .locals 2

    .prologue
    .line 101
    if-nez p1, :cond_0

    const/4 v0, 0x0

    .line 106
    :goto_0
    return v0

    .line 103
    :cond_0
    const-string v0, "type"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/jirbo/adcolony/a$g;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jirbo/adcolony/an$p;->a:Ljava/lang/String;

    .line 104
    iget-object v0, p0, Lcom/jirbo/adcolony/an$p;->a:Ljava/lang/String;

    sput-object v0, Lcom/jirbo/adcolony/t;->V:Ljava/lang/String;

    .line 106
    const/4 v0, 0x1

    goto :goto_0
.end method
