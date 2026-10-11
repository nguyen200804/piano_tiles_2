.class public Lcom/cmplay/ad/a/a;
.super Lcom/cmplay/ad/b;
.source "AdColonyAds.java"

# interfaces
.implements Lcom/jirbo/adcolony/h;
.implements Lcom/jirbo/adcolony/i;
.implements Lcom/jirbo/adcolony/q;


# static fields
.field private static e:Lcom/cmplay/ad/a/a;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private c:Lcom/cmplay/ad/c;

.field private d:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x0

    sput-object v0, Lcom/cmplay/ad/a/a;->e:Lcom/cmplay/ad/a/a;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/cmplay/ad/b;-><init>()V

    .line 29
    const-string v0, "app3de8e4a1fb3148c191"

    iput-object v0, p0, Lcom/cmplay/ad/a/a;->a:Ljava/lang/String;

    .line 30
    const-string v0, "vzf0da13c6e25c4973ba"

    iput-object v0, p0, Lcom/cmplay/ad/a/a;->b:Ljava/lang/String;

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cmplay/ad/a/a;->d:Landroid/content/Context;

    .line 36
    return-void
.end method

.method public static a()Lcom/cmplay/ad/a/a;
    .locals 2

    .prologue
    .line 41
    sget-object v0, Lcom/cmplay/ad/a/a;->e:Lcom/cmplay/ad/a/a;

    if-nez v0, :cond_1

    .line 42
    const-class v1, Lcom/cmplay/ad/a/a;

    monitor-enter v1

    .line 43
    :try_start_0
    sget-object v0, Lcom/cmplay/ad/a/a;->e:Lcom/cmplay/ad/a/a;

    if-nez v0, :cond_0

    .line 44
    new-instance v0, Lcom/cmplay/ad/a/a;

    invoke-direct {v0}, Lcom/cmplay/ad/a/a;-><init>()V

    sput-object v0, Lcom/cmplay/ad/a/a;->e:Lcom/cmplay/ad/a/a;

    .line 46
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    :cond_1
    sget-object v0, Lcom/cmplay/ad/a/a;->e:Lcom/cmplay/ad/a/a;

    return-object v0

    .line 46
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public a(Lcom/jirbo/adcolony/g;)V
    .locals 2

    .prologue
    .line 74
    iget-object v0, p0, Lcom/cmplay/ad/a/a;->c:Lcom/cmplay/ad/c;

    if-eqz v0, :cond_1

    .line 75
    iget-object v1, p0, Lcom/cmplay/ad/a/a;->c:Lcom/cmplay/ad/c;

    invoke-virtual {p1}, Lcom/jirbo/adcolony/g;->a()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/jirbo/adcolony/g;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-interface {v1, v0}, Lcom/cmplay/ad/c;->a(Z)V

    .line 78
    :cond_1
    return-void

    .line 75
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Lcom/jirbo/adcolony/s;)V
    .locals 0

    .prologue
    .line 92
    invoke-virtual {p1}, Lcom/jirbo/adcolony/s;->b()I

    .line 93
    invoke-virtual {p1}, Lcom/jirbo/adcolony/s;->a()Ljava/lang/String;

    .line 95
    return-void
.end method

.method public a(ZLjava/lang/String;)V
    .locals 0

    .prologue
    .line 68
    return-void
.end method

.method public b(Lcom/jirbo/adcolony/g;)V
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/cmplay/ad/a/a;->c:Lcom/cmplay/ad/c;

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/cmplay/ad/a/a;->c:Lcom/cmplay/ad/c;

    invoke-interface {v0}, Lcom/cmplay/ad/c;->a()V

    .line 87
    :cond_0
    return-void
.end method

.method public canShow(I)Z
    .locals 2
    .param p1, "reportFrom"    # I

    .prologue
    .line 104
    const-string v0, "vzf0da13c6e25c4973ba"

    invoke-static {v0}, Lcom/jirbo/adcolony/f;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "active"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    const/4 v0, 0x1

    .line 107
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreate(Landroid/app/Activity;)V
    .locals 6
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 53
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/cmplay/ad/a/a;->d:Landroid/content/Context;

    .line 55
    invoke-virtual {p1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/cmplay/util/v;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 56
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "version:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ",store:google"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "app3de8e4a1fb3148c191"

    new-array v4, v1, [Ljava/lang/String;

    const-string v5, "vzf0da13c6e25c4973ba"

    aput-object v5, v4, v2

    invoke-static {p1, v0, v3, v4}, Lcom/jirbo/adcolony/f;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 58
    invoke-static {p0}, Lcom/jirbo/adcolony/f;->a(Lcom/jirbo/adcolony/h;)V

    .line 60
    invoke-static {p0}, Lcom/jirbo/adcolony/f;->a(Lcom/jirbo/adcolony/q;)V

    .line 61
    new-instance v0, Lcom/cmplay/util/c/a/e;

    invoke-direct {v0}, Lcom/cmplay/util/c/a/e;-><init>()V

    const/4 v4, 0x5

    sget v5, Lcom/cmplay/ad/a;->f:I

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Lcom/cmplay/util/c/a/e;->a(IIIII)V

    .line 62
    return-void
.end method

.method public onPaused(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 131
    invoke-static {}, Lcom/jirbo/adcolony/f;->c()V

    .line 132
    return-void
.end method

.method public onResume(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 126
    invoke-static {p1}, Lcom/jirbo/adcolony/f;->a(Landroid/app/Activity;)V

    .line 127
    return-void
.end method

.method public setListener(Lcom/cmplay/ad/c;)V
    .locals 0
    .param p1, "l"    # Lcom/cmplay/ad/c;

    .prologue
    .line 99
    iput-object p1, p0, Lcom/cmplay/ad/a/a;->c:Lcom/cmplay/ad/c;

    .line 100
    return-void
.end method

.method public show(I)Z
    .locals 1
    .param p1, "reportFrom"    # I

    .prologue
    .line 112
    invoke-virtual {p0, p1}, Lcom/cmplay/ad/a/a;->canShow(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 113
    new-instance v0, Lcom/jirbo/adcolony/p;

    invoke-direct {v0}, Lcom/jirbo/adcolony/p;-><init>()V

    invoke-virtual {v0, p0}, Lcom/jirbo/adcolony/p;->a(Lcom/jirbo/adcolony/i;)Lcom/jirbo/adcolony/p;

    move-result-object v0

    .line 117
    invoke-virtual {v0}, Lcom/jirbo/adcolony/p;->k()V

    .line 118
    const/4 v0, 0x1

    .line 121
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
