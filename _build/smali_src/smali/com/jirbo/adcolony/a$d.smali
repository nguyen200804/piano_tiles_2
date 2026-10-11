.class Lcom/jirbo/adcolony/a$d;
.super Lcom/jirbo/adcolony/a$i;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jirbo/adcolony/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "d"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 107
    invoke-direct {p0}, Lcom/jirbo/adcolony/a$i;-><init>()V

    return-void
.end method


# virtual methods
.method a(Lcom/jirbo/adcolony/y;)V
    .locals 1

    .prologue
    .line 112
    const-string v0, "null"

    invoke-virtual {p1, v0}, Lcom/jirbo/adcolony/y;->a(Ljava/lang/String;)V

    return-void
.end method

.method b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 111
    const-string v0, "null"

    return-object v0
.end method
