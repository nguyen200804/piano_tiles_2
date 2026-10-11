.class synthetic Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout$3;
.super Ljava/lang/Object;
.source "ShimmerLJYFrameLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic a:[I

.field static final synthetic b:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 845
    invoke-static {}, Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout$b;->values()[Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout$b;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout$3;->b:[I

    :try_start_0
    sget-object v0, Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout$3;->b:[I

    sget-object v1, Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout$b;->a:Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout$b;

    invoke-virtual {v1}, Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout$b;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_5

    :goto_0
    :try_start_1
    sget-object v0, Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout$3;->b:[I

    sget-object v1, Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout$b;->b:Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout$b;

    invoke-virtual {v1}, Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout$b;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_4

    :goto_1
    :try_start_2
    sget-object v0, Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout$3;->b:[I

    sget-object v1, Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout$b;->c:Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout$b;

    invoke-virtual {v1}, Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout$b;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_3

    :goto_2
    :try_start_3
    sget-object v0, Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout$3;->b:[I

    sget-object v1, Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout$b;->d:Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout$b;

    invoke-virtual {v1}, Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout$b;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_2

    .line 81
    :goto_3
    invoke-static {}, Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout$c;->values()[Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout$c;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout$3;->a:[I

    :try_start_4
    sget-object v0, Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout$3;->a:[I

    sget-object v1, Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout$c;->a:Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout$c;

    invoke-virtual {v1}, Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout$c;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_1

    :goto_4
    :try_start_5
    sget-object v0, Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout$3;->a:[I

    sget-object v1, Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout$c;->b:Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout$c;

    invoke-virtual {v1}, Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout$c;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_0

    :goto_5
    return-void

    :catch_0
    move-exception v0

    goto :goto_5

    :catch_1
    move-exception v0

    goto :goto_4

    .line 845
    :catch_2
    move-exception v0

    goto :goto_3

    :catch_3
    move-exception v0

    goto :goto_2

    :catch_4
    move-exception v0

    goto :goto_1

    :catch_5
    move-exception v0

    goto :goto_0
.end method
