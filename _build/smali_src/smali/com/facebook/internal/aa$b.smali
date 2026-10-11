.class public Lcom/facebook/internal/aa$b;
.super Ljava/lang/Object;
.source "Utility.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/internal/aa;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field private a:Z

.field private b:Ljava/lang/String;

.field private c:Z

.field private d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/facebook/internal/aa$a;",
            ">;>;"
        }
    .end annotation
.end field

.field private e:Lcom/facebook/internal/i;


# direct methods
.method private constructor <init>(ZLjava/lang/String;ZLjava/util/Map;Lcom/facebook/internal/i;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/facebook/internal/aa$a;",
            ">;>;",
            "Lcom/facebook/internal/i;",
            ")V"
        }
    .end annotation

    .prologue
    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 146
    iput-boolean p1, p0, Lcom/facebook/internal/aa$b;->a:Z

    .line 147
    iput-object p2, p0, Lcom/facebook/internal/aa$b;->b:Ljava/lang/String;

    .line 148
    iput-boolean p3, p0, Lcom/facebook/internal/aa$b;->c:Z

    .line 149
    iput-object p4, p0, Lcom/facebook/internal/aa$b;->d:Ljava/util/Map;

    .line 150
    iput-object p5, p0, Lcom/facebook/internal/aa$b;->e:Lcom/facebook/internal/i;

    .line 151
    return-void
.end method

.method synthetic constructor <init>(ZLjava/lang/String;ZLjava/util/Map;Lcom/facebook/internal/i;Lcom/facebook/internal/aa$1;)V
    .locals 0

    .prologue
    .line 134
    invoke-direct/range {p0 .. p5}, Lcom/facebook/internal/aa$b;-><init>(ZLjava/lang/String;ZLjava/util/Map;Lcom/facebook/internal/i;)V

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .prologue
    .line 154
    iget-boolean v0, p0, Lcom/facebook/internal/aa$b;->a:Z

    return v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/facebook/internal/aa$b;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 162
    iget-boolean v0, p0, Lcom/facebook/internal/aa$b;->c:Z

    return v0
.end method

.method public d()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/facebook/internal/aa$a;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 166
    iget-object v0, p0, Lcom/facebook/internal/aa$b;->d:Ljava/util/Map;

    return-object v0
.end method

.method public e()Lcom/facebook/internal/i;
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/facebook/internal/aa$b;->e:Lcom/facebook/internal/i;

    return-object v0
.end method
