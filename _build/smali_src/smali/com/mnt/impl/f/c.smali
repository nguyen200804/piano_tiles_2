.class public final Lcom/mnt/impl/f/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mnt/impl/f/h$a;


# static fields
.field public static final a:Ljava/lang/String;


# instance fields
.field private b:Landroid/content/Context;

.field private c:I

.field private d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcom/mnt/impl/e;->dd:Ljava/lang/String;

    .line 21
    sget-object v0, Lcom/mnt/impl/e;->de:Ljava/lang/String;

    sput-object v0, Lcom/mnt/impl/f/c;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/mnt/impl/f/c;->b:Landroid/content/Context;

    .line 36
    iput p3, p0, Lcom/mnt/impl/f/c;->c:I

    .line 37
    iput-object p2, p0, Lcom/mnt/impl/f/c;->d:Ljava/lang/String;

    .line 38
    return-void
.end method


# virtual methods
.method public final a(Lcom/mnt/impl/e/b;)V
    .locals 5

    .prologue
    .line 43
    .line 1044
    :try_start_0
    iget-object v0, p1, Lcom/mnt/impl/e/b;->c:Ljava/lang/String;

    .line 43
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 45
    iget v0, p0, Lcom/mnt/impl/f/c;->c:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 46
    invoke-virtual {p1}, Lcom/mnt/impl/e/b;->b()Ljava/lang/String;

    move-result-object v0

    .line 49
    iget-object v1, p0, Lcom/mnt/impl/f/c;->b:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/mnt/impl/f/c;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mnt/impl/f/c;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/mnt/impl/b/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    :cond_0
    new-instance v0, Lcom/mnt/impl/f/l;

    iget-object v1, p0, Lcom/mnt/impl/f/c;->b:Landroid/content/Context;

    .line 2040
    iget-object v2, p1, Lcom/mnt/impl/e/b;->b:Ljava/lang/String;

    .line 2044
    iget-object v3, p1, Lcom/mnt/impl/e/b;->c:Ljava/lang/String;

    .line 51
    iget v4, p0, Lcom/mnt/impl/f/c;->c:I

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/mnt/impl/f/l;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 52
    invoke-static {v0}, Lcom/mnt/impl/l/c;->a(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    :cond_1
    :goto_0
    return-void

    .line 57
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
