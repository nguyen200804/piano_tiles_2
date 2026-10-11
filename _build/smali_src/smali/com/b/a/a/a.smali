.class public Lcom/b/a/a/a;
.super Lcom/b/a/b;
.source "UMGameAgent.java"


# static fields
.field private static final a:Lcom/b/a/a/d;

.field private static b:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    new-instance v0, Lcom/b/a/a/d;

    invoke-direct {v0}, Lcom/b/a/a/d;-><init>()V

    sput-object v0, Lcom/b/a/a/a;->a:Lcom/b/a/a/d;

    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 111
    invoke-static {p0}, Lcom/b/a/a/a;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 112
    const-string v0, "MobclickAgent"

    const-string v1, "Input string is null or empty"

    invoke-static {v0, v1}, Lb/a/ap;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    :goto_0
    return-void

    .line 116
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x40

    if-le v0, v1, :cond_1

    .line 117
    const-string v0, "MobclickAgent"

    const-string v1, "Input string must be less than 64 chars"

    invoke-static {v0, v1}, Lb/a/ap;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 120
    :cond_1
    sget-object v0, Lcom/b/a/a/a;->a:Lcom/b/a/a/d;

    invoke-virtual {v0, p0}, Lcom/b/a/a/d;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 128
    invoke-static {p0}, Lcom/b/a/a/a;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 129
    const-string v0, "MobclickAgent"

    const-string v1, "Input string is null or empty"

    invoke-static {v0, v1}, Lb/a/ap;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    :goto_0
    return-void

    .line 132
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x40

    if-le v0, v1, :cond_1

    .line 133
    const-string v0, "MobclickAgent"

    const-string v1, "Input string must be less than 64 chars"

    invoke-static {v0, v1}, Lb/a/ap;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 136
    :cond_1
    sget-object v0, Lcom/b/a/a/a;->a:Lcom/b/a/a/d;

    invoke-virtual {v0, p0}, Lcom/b/a/a/d;->b(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static c(Ljava/lang/String;)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 285
    if-nez p0, :cond_1

    .line 291
    :cond_0
    :goto_0
    return v0

    .line 289
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 291
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static d(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/b/a/a/a;->a:Lcom/b/a/a/d;

    invoke-virtual {v0, p0}, Lcom/b/a/a/d;->a(Landroid/content/Context;)V

    .line 28
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/b/a/a/a;->b:Landroid/content/Context;

    .line 29
    return-void
.end method
