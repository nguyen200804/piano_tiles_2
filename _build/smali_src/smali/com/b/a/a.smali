.class public Lcom/b/a/a;
.super Ljava/lang/Object;
.source "AnalyticsConfig.java"


# static fields
.field public static a:Ljava/lang/String;

.field public static b:Ljava/lang/String;

.field public static c:I

.field public static d:Ljava/lang/String;

.field public static e:Ljava/lang/String;

.field public static f:Z

.field public static g:I

.field public static h:Z

.field public static i:Z

.field public static j:Z

.field public static k:Z

.field public static l:J

.field private static m:Ljava/lang/String;

.field private static n:Ljava/lang/String;

.field private static o:[D


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 8
    sput-object v1, Lcom/b/a/a;->m:Ljava/lang/String;

    .line 9
    sput-object v1, Lcom/b/a/a;->n:Ljava/lang/String;

    .line 11
    sput-object v1, Lcom/b/a/a;->a:Ljava/lang/String;

    .line 12
    sput-object v1, Lcom/b/a/a;->b:Ljava/lang/String;

    .line 16
    const-string v0, ""

    sput-object v0, Lcom/b/a/a;->d:Ljava/lang/String;

    .line 17
    const-string v0, ""

    sput-object v0, Lcom/b/a/a;->e:Ljava/lang/String;

    .line 19
    const/4 v0, 0x0

    sput-boolean v0, Lcom/b/a/a;->f:Z

    .line 62
    sput-object v1, Lcom/b/a/a;->o:[D

    .line 81
    sput-boolean v2, Lcom/b/a/a;->h:Z

    .line 82
    sput-boolean v2, Lcom/b/a/a;->i:Z

    .line 83
    sput-boolean v2, Lcom/b/a/a;->j:Z

    .line 84
    sput-boolean v2, Lcom/b/a/a;->k:Z

    .line 85
    const-wide/16 v0, 0x7530

    sput-wide v0, Lcom/b/a/a;->l:J

    return-void
.end method

.method public static a()Ljava/lang/String;
    .locals 2

    .prologue
    .line 52
    sget v0, Lcom/b/a/a;->c:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 53
    const-string v0, "5.5.3.0"

    .line 55
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "5.5.3"

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcom/b/a/a;->m:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 38
    invoke-static {p0}, Lb/a/ao;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/b/a/a;->m:Ljava/lang/String;

    .line 41
    :cond_0
    sget-object v0, Lcom/b/a/a;->m:Ljava/lang/String;

    return-object v0
.end method

.method public static a(Z)V
    .locals 0

    .prologue
    .line 22
    sput-boolean p0, Lcom/b/a/a;->f:Z

    .line 23
    return-void
.end method

.method public static b(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lcom/b/a/a;->n:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 46
    invoke-static {p0}, Lb/a/ao;->n(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/b/a/a;->n:Ljava/lang/String;

    .line 48
    :cond_0
    sget-object v0, Lcom/b/a/a;->n:Ljava/lang/String;

    return-object v0
.end method

.method public static b()[D
    .locals 1

    .prologue
    .line 65
    sget-object v0, Lcom/b/a/a;->o:[D

    return-object v0
.end method
