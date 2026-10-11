.class public Lcom/b/a/b;
.super Ljava/lang/Object;
.source "MobclickAgent.java"


# static fields
.field private static final a:Lcom/b/a/g;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    new-instance v0, Lcom/b/a/g;

    invoke-direct {v0}, Lcom/b/a/g;-><init>()V

    sput-object v0, Lcom/b/a/b;->a:Lcom/b/a/g;

    return-void
.end method

.method public static a()Lcom/b/a/g;
    .locals 1

    .prologue
    .line 71
    sget-object v0, Lcom/b/a/b;->a:Lcom/b/a/g;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 131
    sget-object v0, Lcom/b/a/b;->a:Lcom/b/a/g;

    invoke-virtual {v0, p0}, Lcom/b/a/g;->c(Landroid/content/Context;)V

    .line 132
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 205
    sget-object v0, Lcom/b/a/b;->a:Lcom/b/a/g;

    const/4 v3, 0x0

    const-wide/16 v4, -0x1

    const/4 v6, 0x1

    move-object v1, p0

    move-object v2, p1

    invoke-virtual/range {v0 .. v6}, Lcom/b/a/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JI)V

    .line 206
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 257
    if-nez p2, :cond_0

    .line 258
    const-string v0, "MobclickAgent"

    const-string v1, "input map is null"

    invoke-static {v0, v1}, Lb/a/ap;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    :goto_0
    return-void

    .line 261
    :cond_0
    sget-object v0, Lcom/b/a/b;->a:Lcom/b/a/g;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3, p2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    const-wide/16 v4, -0x1

    move-object v1, p0

    move-object v2, p1

    invoke-virtual/range {v0 .. v5}, Lcom/b/a/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;J)V

    goto :goto_0
.end method

.method public static a(Z)V
    .locals 0

    .prologue
    .line 124
    sput-boolean p0, Lb/a/ap;->a:Z

    .line 125
    sput-boolean p0, Lcom/b/a/c/a;->b:Z

    .line 126
    return-void
.end method

.method public static b(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 139
    if-nez p0, :cond_0

    .line 140
    const-string v0, "MobclickAgent"

    const-string v1, "unexpected null context in onResume"

    invoke-static {v0, v1}, Lb/a/ap;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    :goto_0
    return-void

    .line 144
    :cond_0
    sget-object v0, Lcom/b/a/b;->a:Lcom/b/a/g;

    invoke-virtual {v0, p0}, Lcom/b/a/g;->b(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static c(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 464
    sget-object v0, Lcom/b/a/b;->a:Lcom/b/a/g;

    invoke-virtual {v0, p0}, Lcom/b/a/g;->a(Landroid/content/Context;)V

    .line 465
    return-void
.end method
