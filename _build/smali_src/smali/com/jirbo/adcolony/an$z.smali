.class Lcom/jirbo/adcolony/an$z;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jirbo/adcolony/an;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "z"
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method a(Lcom/jirbo/adcolony/a$g;)Z
    .locals 1

    .prologue
    .line 1127
    if-nez p1, :cond_0

    const/4 v0, 0x0

    .line 1132
    :goto_0
    return v0

    .line 1129
    :cond_0
    const-string v0, "image"

    invoke-virtual {p1, v0}, Lcom/jirbo/adcolony/a$g;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jirbo/adcolony/an$z;->a:Ljava/lang/String;

    .line 1130
    const-string v0, "last_modified"

    invoke-virtual {p1, v0}, Lcom/jirbo/adcolony/a$g;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jirbo/adcolony/an$z;->b:Ljava/lang/String;

    .line 1132
    const/4 v0, 0x1

    goto :goto_0
.end method
