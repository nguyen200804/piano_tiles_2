.class Lcom/jirbo/adcolony/an$af;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jirbo/adcolony/an;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "af"
.end annotation


# instance fields
.field a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field d:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 281
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 284
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jirbo/adcolony/an$af;->a:Ljava/util/ArrayList;

    .line 285
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jirbo/adcolony/an$af;->b:Ljava/util/ArrayList;

    .line 286
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jirbo/adcolony/an$af;->c:Ljava/util/ArrayList;

    .line 288
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/jirbo/adcolony/an$af;->d:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method a(Lcom/jirbo/adcolony/a$g;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 293
    if-nez p1, :cond_1

    .line 304
    :cond_0
    :goto_0
    return v0

    .line 295
    :cond_1
    const-string v1, "update"

    invoke-virtual {p1, v1}, Lcom/jirbo/adcolony/a$g;->c(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/jirbo/adcolony/an$af;->a:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 296
    const-string v1, "install"

    invoke-virtual {p1, v1}, Lcom/jirbo/adcolony/a$g;->c(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/jirbo/adcolony/an$af;->b:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 297
    const-string v1, "session_start"

    invoke-virtual {p1, v1}, Lcom/jirbo/adcolony/a$g;->c(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/jirbo/adcolony/an$af;->c:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 300
    iget-object v0, p0, Lcom/jirbo/adcolony/an$af;->d:Ljava/util/HashMap;

    const-string v1, "update"

    iget-object v2, p0, Lcom/jirbo/adcolony/an$af;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    iget-object v0, p0, Lcom/jirbo/adcolony/an$af;->d:Ljava/util/HashMap;

    const-string v1, "install"

    iget-object v2, p0, Lcom/jirbo/adcolony/an$af;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 302
    iget-object v0, p0, Lcom/jirbo/adcolony/an$af;->d:Ljava/util/HashMap;

    const-string v1, "session_start"

    iget-object v2, p0, Lcom/jirbo/adcolony/an$af;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    const/4 v0, 0x1

    goto :goto_0
.end method
