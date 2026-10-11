.class Lcom/jirbo/adcolony/an$x;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jirbo/adcolony/an;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "x"
.end annotation


# instance fields
.field a:Z

.field b:Z

.field c:Ljava/lang/String;

.field d:Ljava/lang/String;

.field e:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1075
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method a(Lcom/jirbo/adcolony/a$g;)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1085
    if-nez p1, :cond_1

    const/4 v0, 0x0

    .line 1096
    :cond_0
    :goto_0
    return v0

    .line 1087
    :cond_1
    const-string v1, "enabled"

    invoke-virtual {p1, v1}, Lcom/jirbo/adcolony/a$g;->g(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/jirbo/adcolony/an$x;->a:Z

    .line 1089
    iget-boolean v1, p0, Lcom/jirbo/adcolony/an$x;->a:Z

    if-eqz v1, :cond_0

    .line 1091
    const-string v1, "in_app"

    invoke-virtual {p1, v1}, Lcom/jirbo/adcolony/a$g;->g(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/jirbo/adcolony/an$x;->b:Z

    .line 1092
    const-string v1, "click_action_type"

    invoke-virtual {p1, v1}, Lcom/jirbo/adcolony/a$g;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/jirbo/adcolony/an$x;->c:Ljava/lang/String;

    .line 1093
    const-string v1, "click_action"

    invoke-virtual {p1, v1}, Lcom/jirbo/adcolony/a$g;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/jirbo/adcolony/an$x;->e:Ljava/lang/String;

    .line 1094
    const-string v1, "label"

    invoke-virtual {p1, v1}, Lcom/jirbo/adcolony/a$g;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/jirbo/adcolony/an$x;->d:Ljava/lang/String;

    goto :goto_0
.end method
