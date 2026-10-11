.class Lcom/jirbo/adcolony/an$f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jirbo/adcolony/an;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "f"
.end annotation


# instance fields
.field a:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 815
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method a(Lcom/jirbo/adcolony/a$g;)Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 823
    if-nez p1, :cond_0

    .line 827
    :goto_0
    return v2

    .line 825
    :cond_0
    const-string v0, "request"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/jirbo/adcolony/a$g;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jirbo/adcolony/an$f;->a:Ljava/lang/String;

    goto :goto_0
.end method
