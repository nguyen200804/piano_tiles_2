.class public Lcom/example/luckywheel/d/f;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Landroid/content/SharedPreferences;

.field private c:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/example/luckywheel/d/f;->a:Ljava/lang/String;

    iput-object v1, p0, Lcom/example/luckywheel/d/f;->b:Landroid/content/SharedPreferences;

    iput-boolean v0, p0, Lcom/example/luckywheel/d/f;->c:Z

    invoke-direct {p0, p1, p2, v0, v0}, Lcom/example/luckywheel/d/f;->a(Ljava/lang/String;Landroid/content/Context;IZ)V

    return-void
.end method

.method private a(Landroid/content/SharedPreferences$Editor;)V
    .locals 2

    iget-boolean v0, p0, Lcom/example/luckywheel/d/f;->c:Z

    if-eqz v0, :cond_0

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :goto_0
    return-void

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-lt v0, v1, :cond_1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    :cond_1
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Landroid/content/Context;IZ)V
    .locals 1

    if-eqz p2, :cond_0

    invoke-virtual {p2, p1, p3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/example/luckywheel/d/f;->b:Landroid/content/SharedPreferences;

    :cond_0
    iput-object p1, p0, Lcom/example/luckywheel/d/f;->a:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/example/luckywheel/d/f;->c:Z

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;I)I
    .locals 1

    iget-object v0, p0, Lcom/example/luckywheel/d/f;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public b(Ljava/lang/String;I)V
    .locals 1

    iget-object v0, p0, Lcom/example/luckywheel/d/f;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-direct {p0, v0}, Lcom/example/luckywheel/d/f;->a(Landroid/content/SharedPreferences$Editor;)V

    return-void
.end method
