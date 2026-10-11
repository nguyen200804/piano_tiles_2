.class public Lcom/mnt/impl/a/a;
.super Lcom/mnt/impl/a;
.source "SourceFile"

# interfaces
.implements Lcom/mnt/impl/f/h$a;


# static fields
.field private static final b:Ljava/lang/String;


# instance fields
.field private c:Lcom/mnt/Ad;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/mnt/impl/e;->pW:Ljava/lang/String;

    sput-object v0, Lcom/mnt/impl/a/a;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/mnt/impl/a;-><init>(Landroid/app/Activity;)V

    .line 38
    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/mnt/Ad;)V
    .locals 2

    .prologue
    .line 90
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 99
    :cond_0
    :goto_0
    return-void

    .line 93
    :cond_1
    :try_start_0
    const-class v0, Lcom/mnt/impl/a/a;

    invoke-static {p0, v0}, Lcom/mnt/MntActivity;->getIntent(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 94
    sget-object v1, Lcom/mnt/impl/a/a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 95
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 97
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public final a(Lcom/mnt/impl/e/b;)V
    .locals 1

    .prologue
    .line 78
    .line 8033
    iget-object v0, p0, Lcom/mnt/impl/a;->a:Landroid/app/Activity;

    .line 78
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 9033
    iget-object v0, p0, Lcom/mnt/impl/a;->a:Landroid/app/Activity;

    .line 79
    invoke-static {v0, p1}, Lcom/mnt/impl/b/k;->a(Landroid/content/Context;Lcom/mnt/impl/e/b;)V

    .line 80
    return-void
.end method

.method public final b(Landroid/os/Bundle;)V
    .locals 9

    .prologue
    .line 43
    .line 1033
    :try_start_0
    iget-object v2, p0, Lcom/mnt/impl/a;->a:Landroid/app/Activity;

    .line 43
    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    sget-object v3, Lcom/mnt/impl/a/a;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/mnt/Ad;

    iput-object v2, p0, Lcom/mnt/impl/a/a;->c:Lcom/mnt/Ad;

    .line 44
    iget-object v2, p0, Lcom/mnt/impl/a/a;->c:Lcom/mnt/Ad;

    if-nez v2, :cond_0

    .line 2033
    iget-object v2, p0, Lcom/mnt/impl/a;->a:Landroid/app/Activity;

    .line 45
    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    .line 57
    :goto_0
    return-void

    .line 48
    :cond_0
    iget-object v2, p0, Lcom/mnt/impl/a/a;->c:Lcom/mnt/Ad;

    move-object v0, v2

    check-cast v0, Lcom/mnt/impl/e/c;

    move-object v8, v0

    .line 2065
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x1

    invoke-direct {v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 2066
    const/16 v3, 0xd

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 2067
    new-instance v3, Lcom/mnt/impl/view/TitleView;

    .line 3033
    iget-object v4, p0, Lcom/mnt/impl/a;->a:Landroid/app/Activity;

    .line 2067
    invoke-direct {v3, v4}, Lcom/mnt/impl/view/TitleView;-><init>(Landroid/content/Context;)V

    .line 2068
    new-instance v4, Landroid/widget/RelativeLayout;

    .line 4033
    iget-object v5, p0, Lcom/mnt/impl/a;->a:Landroid/app/Activity;

    .line 2068
    invoke-direct {v4, v5}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 2069
    invoke-virtual {v4, v3, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2070
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    const/high16 v3, -0x1000000

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 2071
    const/16 v3, 0xa0

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/ColorDrawable;->setAlpha(I)V

    .line 2072
    invoke-virtual {v4, v2}, Landroid/widget/RelativeLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 5033
    iget-object v2, p0, Lcom/mnt/impl/a;->a:Landroid/app/Activity;

    .line 50
    invoke-virtual {v2, v4}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    .line 51
    new-instance v2, Lcom/mnt/impl/e/b;

    invoke-virtual {v8}, Lcom/mnt/impl/e/c;->getCampId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8}, Lcom/mnt/impl/e/c;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 5036
    iget-object v5, v8, Lcom/mnt/impl/e/c;->a:Ljava/lang/String;

    .line 5052
    iget-wide v6, v8, Lcom/mnt/impl/e/c;->e:J

    .line 5080
    iget v8, v8, Lcom/mnt/impl/e/c;->j:I

    .line 51
    invoke-direct/range {v2 .. v8}, Lcom/mnt/impl/e/b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JI)V

    .line 6033
    iget-object v3, p0, Lcom/mnt/impl/a;->a:Landroid/app/Activity;

    .line 52
    const/4 v4, 0x0

    invoke-static {v3, v2, p0, v4}, Lcom/mnt/impl/f/h;->a(Landroid/content/Context;Lcom/mnt/impl/e/b;Lcom/mnt/impl/f/h$a;Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 54
    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 7033
    iget-object v2, p0, Lcom/mnt/impl/a;->a:Landroid/app/Activity;

    .line 55
    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method
