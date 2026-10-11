.class public Lcom/cmplay/i/c;
.super Ljava/lang/Object;
.source "RuntimeCheck.java"


# static fields
.field private static a:Ljava/lang/String;

.field private static b:Ljava/lang/String;

.field private static c:Ljava/lang/String;

.field private static d:Ljava/lang/String;

.field private static e:Ljava/lang/String;

.field private static f:Z

.field private static g:Z

.field private static h:Z

.field private static i:Z

.field private static j:Z

.field private static k:Z

.field private static l:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    const-string v0, ":service"

    sput-object v0, Lcom/cmplay/i/c;->a:Ljava/lang/String;

    .line 11
    const-string v0, ":"

    sput-object v0, Lcom/cmplay/i/c;->b:Ljava/lang/String;

    .line 12
    const-string v0, ":web"

    sput-object v0, Lcom/cmplay/i/c;->c:Ljava/lang/String;

    .line 13
    const-string v0, ":crashReport"

    sput-object v0, Lcom/cmplay/i/c;->d:Ljava/lang/String;

    .line 14
    const-string v0, ":ads"

    sput-object v0, Lcom/cmplay/i/c;->e:Ljava/lang/String;

    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 57
    sget-boolean v0, Lcom/cmplay/i/c;->k:Z

    if-eqz v0, :cond_1

    .line 77
    :cond_0
    :goto_0
    return-void

    .line 60
    :cond_1
    invoke-static {p0}, Lcom/cmplay/i/d;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 61
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 64
    sput-object v0, Lcom/cmplay/i/c;->l:Ljava/lang/String;

    .line 65
    sget-object v1, Lcom/cmplay/i/c;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 66
    sput-boolean v2, Lcom/cmplay/i/c;->f:Z

    .line 76
    :cond_2
    :goto_1
    sput-boolean v2, Lcom/cmplay/i/c;->k:Z

    goto :goto_0

    .line 67
    :cond_3
    sget-object v1, Lcom/cmplay/i/c;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 68
    sput-boolean v2, Lcom/cmplay/i/c;->g:Z

    goto :goto_1

    .line 69
    :cond_4
    sget-object v1, Lcom/cmplay/i/c;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 70
    sput-boolean v2, Lcom/cmplay/i/c;->h:Z

    goto :goto_1

    .line 71
    :cond_5
    sget-object v1, Lcom/cmplay/i/c;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 72
    sput-boolean v2, Lcom/cmplay/i/c;->i:Z

    goto :goto_1

    .line 73
    :cond_6
    sget-object v1, Lcom/cmplay/i/c;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 74
    sput-boolean v2, Lcom/cmplay/i/c;->j:Z

    goto :goto_1
.end method

.method public static a()Z
    .locals 1

    .prologue
    .line 27
    sget-boolean v0, Lcom/cmplay/i/c;->f:Z

    return v0
.end method

.method public static b()Z
    .locals 1

    .prologue
    .line 35
    sget-boolean v0, Lcom/cmplay/i/c;->g:Z

    return v0
.end method

.method public static c()Z
    .locals 1

    .prologue
    .line 39
    sget-boolean v0, Lcom/cmplay/i/c;->h:Z

    return v0
.end method

.method public static d()V
    .locals 2

    .prologue
    .line 45
    invoke-static {}, Lcom/cmplay/i/c;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 46
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Must run in Service Process"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 48
    :cond_0
    return-void
.end method

.method public static e()V
    .locals 2

    .prologue
    .line 51
    invoke-static {}, Lcom/cmplay/i/c;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 52
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Must run in Web Process"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 54
    :cond_0
    return-void
.end method

.method public static f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    sget-object v0, Lcom/cmplay/i/c;->l:Ljava/lang/String;

    return-object v0
.end method
