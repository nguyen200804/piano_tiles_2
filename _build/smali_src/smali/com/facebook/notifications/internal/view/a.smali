.class public Lcom/facebook/notifications/internal/view/a;
.super Landroid/widget/RelativeLayout;
.source "ActionsView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ViewConstructor"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/notifications/internal/view/a$2;,
        Lcom/facebook/notifications/internal/view/a$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/facebook/notifications/internal/view/a$a;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final b:Lcom/facebook/notifications/internal/configuration/ActionsConfiguration;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final c:Lcom/facebook/notifications/internal/utilities/d;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final d:Lcom/facebook/notifications/internal/view/b;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final e:Landroid/widget/LinearLayout;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final f:[Lcom/facebook/notifications/internal/view/ActionButton;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/facebook/notifications/internal/asset/a;Lcom/facebook/notifications/internal/view/a$a;Lcom/facebook/notifications/internal/configuration/CardConfiguration;)V
    .locals 18
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/facebook/notifications/internal/asset/a;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/facebook/notifications/internal/view/a$a;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/facebook/notifications/internal/configuration/CardConfiguration;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 58
    invoke-direct/range {p0 .. p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 59
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/facebook/notifications/internal/view/a;->a:Lcom/facebook/notifications/internal/view/a$a;

    .line 60
    invoke-virtual/range {p4 .. p4}, Lcom/facebook/notifications/internal/configuration/CardConfiguration;->h()Lcom/facebook/notifications/internal/configuration/ActionsConfiguration;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/facebook/notifications/internal/view/a;->b:Lcom/facebook/notifications/internal/configuration/ActionsConfiguration;

    .line 62
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/facebook/notifications/internal/view/a;->b:Lcom/facebook/notifications/internal/configuration/ActionsConfiguration;

    if-nez v2, :cond_1

    .line 63
    new-instance v2, Lcom/facebook/notifications/internal/utilities/d;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-direct {v2, v0, v3, v4}, Lcom/facebook/notifications/internal/utilities/d;-><init>(Landroid/content/Context;FI)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/facebook/notifications/internal/view/a;->c:Lcom/facebook/notifications/internal/utilities/d;

    .line 64
    new-instance v2, Lcom/facebook/notifications/internal/view/b;

    const/4 v3, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-direct {v2, v0, v1, v3}, Lcom/facebook/notifications/internal/view/b;-><init>(Landroid/content/Context;Lcom/facebook/notifications/internal/asset/a;Lcom/facebook/notifications/internal/asset/Asset;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/facebook/notifications/internal/view/a;->d:Lcom/facebook/notifications/internal/view/b;

    .line 65
    new-instance v2, Landroid/widget/LinearLayout;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/facebook/notifications/internal/view/a;->e:Landroid/widget/LinearLayout;

    .line 66
    const/4 v2, 0x0

    new-array v2, v2, [Lcom/facebook/notifications/internal/view/ActionButton;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/facebook/notifications/internal/view/a;->f:[Lcom/facebook/notifications/internal/view/ActionButton;

    .line 142
    :cond_0
    :goto_0
    return-void

    .line 70
    :cond_1
    new-instance v2, Lcom/facebook/notifications/internal/utilities/d;

    invoke-virtual/range {p4 .. p4}, Lcom/facebook/notifications/internal/configuration/CardConfiguration;->c()F

    move-result v3

    invoke-static/range {p4 .. p4}, Lcom/facebook/notifications/internal/view/a;->a(Lcom/facebook/notifications/internal/configuration/CardConfiguration;)I

    move-result v4

    move-object/from16 v0, p1

    invoke-direct {v2, v0, v3, v4}, Lcom/facebook/notifications/internal/utilities/d;-><init>(Landroid/content/Context;FI)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/facebook/notifications/internal/view/a;->c:Lcom/facebook/notifications/internal/utilities/d;

    .line 71
    new-instance v2, Lcom/facebook/notifications/internal/view/b;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/facebook/notifications/internal/view/a;->b:Lcom/facebook/notifications/internal/configuration/ActionsConfiguration;

    invoke-virtual {v3}, Lcom/facebook/notifications/internal/configuration/ActionsConfiguration;->d()Lcom/facebook/notifications/internal/asset/Asset;

    move-result-object v3

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-direct {v2, v0, v1, v3}, Lcom/facebook/notifications/internal/view/b;-><init>(Landroid/content/Context;Lcom/facebook/notifications/internal/asset/a;Lcom/facebook/notifications/internal/asset/Asset;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/facebook/notifications/internal/view/a;->d:Lcom/facebook/notifications/internal/view/b;

    .line 73
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/facebook/notifications/internal/view/a;->b:Lcom/facebook/notifications/internal/configuration/ActionsConfiguration;

    invoke-virtual {v2}, Lcom/facebook/notifications/internal/configuration/ActionsConfiguration;->h()[Lcom/facebook/notifications/internal/configuration/ActionConfiguration;

    move-result-object v10

    .line 74
    array-length v2, v10

    new-array v2, v2, [Lcom/facebook/notifications/internal/view/ActionButton;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/facebook/notifications/internal/view/a;->f:[Lcom/facebook/notifications/internal/view/ActionButton;

    .line 76
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/notifications/internal/view/a;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    .line 78
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/facebook/notifications/internal/view/a;->b:Lcom/facebook/notifications/internal/configuration/ActionsConfiguration;

    invoke-virtual {v2}, Lcom/facebook/notifications/internal/configuration/ActionsConfiguration;->f()F

    move-result v2

    iget v3, v7, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v5

    .line 79
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/facebook/notifications/internal/view/a;->b:Lcom/facebook/notifications/internal/configuration/ActionsConfiguration;

    invoke-virtual {v2}, Lcom/facebook/notifications/internal/configuration/ActionsConfiguration;->e()F

    move-result v2

    iget v3, v7, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v11

    .line 80
    const/4 v6, 0x0

    const/4 v4, 0x0

    .line 81
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 82
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/facebook/notifications/internal/view/a;->b:Lcom/facebook/notifications/internal/configuration/ActionsConfiguration;

    invoke-virtual {v8}, Lcom/facebook/notifications/internal/configuration/ActionsConfiguration;->i()F

    move-result v8

    iget v7, v7, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v12

    .line 84
    new-instance v7, Landroid/widget/LinearLayout;

    move-object/from16 v0, p1

    invoke-direct {v7, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/facebook/notifications/internal/view/a;->e:Landroid/widget/LinearLayout;

    .line 85
    sget-object v7, Lcom/facebook/notifications/internal/view/a$2;->a:[I

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/facebook/notifications/internal/view/a;->b:Lcom/facebook/notifications/internal/configuration/ActionsConfiguration;

    invoke-virtual {v8}, Lcom/facebook/notifications/internal/configuration/ActionsConfiguration;->c()Lcom/facebook/notifications/internal/configuration/ActionsConfiguration$ActionsLayoutStyle;

    move-result-object v8

    invoke-virtual {v8}, Lcom/facebook/notifications/internal/configuration/ActionsConfiguration$ActionsLayoutStyle;->ordinal()I

    move-result v8

    aget v7, v7, v8

    packed-switch v7, :pswitch_data_0

    .line 99
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown layout style: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/facebook/notifications/internal/view/a;->b:Lcom/facebook/notifications/internal/configuration/ActionsConfiguration;

    invoke-virtual {v4}, Lcom/facebook/notifications/internal/configuration/ActionsConfiguration;->c()Lcom/facebook/notifications/internal/configuration/ActionsConfiguration$ActionsLayoutStyle;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 87
    :pswitch_0
    const/4 v3, -0x1

    .line 89
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/facebook/notifications/internal/view/a;->e:Landroid/widget/LinearLayout;

    const/4 v7, 0x1

    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    move v4, v5

    .line 102
    :goto_1
    const/4 v8, 0x1

    .line 103
    const/4 v7, 0x0

    :goto_2
    array-length v9, v10

    if-ge v7, v9, :cond_5

    .line 104
    aget-object v9, v10, v7

    .line 106
    invoke-virtual {v9}, Lcom/facebook/notifications/internal/configuration/ActionConfiguration;->f()Landroid/net/Uri;

    move-result-object v9

    if-eqz v9, :cond_4

    .line 107
    if-eqz v8, :cond_3

    sget-object v8, Lcom/facebook/notifications/internal/view/ActionButton$a;->a:Lcom/facebook/notifications/internal/view/ActionButton$a;

    .line 108
    :goto_3
    const/4 v9, 0x0

    move-object/from16 v17, v8

    move v8, v9

    move-object/from16 v9, v17

    .line 113
    :goto_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/facebook/notifications/internal/view/a;->f:[Lcom/facebook/notifications/internal/view/ActionButton;

    new-instance v14, Lcom/facebook/notifications/internal/view/ActionButton;

    aget-object v15, v10, v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/notifications/internal/view/a;->b:Lcom/facebook/notifications/internal/configuration/ActionsConfiguration;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/facebook/notifications/internal/configuration/ActionsConfiguration;->g()F

    move-result v16

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-direct {v14, v0, v15, v9, v1}, Lcom/facebook/notifications/internal/view/ActionButton;-><init>(Landroid/content/Context;Lcom/facebook/notifications/internal/configuration/ActionConfiguration;Lcom/facebook/notifications/internal/view/ActionButton$a;F)V

    aput-object v14, v13, v7

    .line 114
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/facebook/notifications/internal/view/a;->f:[Lcom/facebook/notifications/internal/view/ActionButton;

    aget-object v9, v9, v7

    move-object/from16 v0, p0

    invoke-virtual {v9, v0}, Lcom/facebook/notifications/internal/view/ActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 116
    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v9, v3, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 117
    int-to-float v13, v2

    iput v13, v9, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 119
    if-lez v7, :cond_2

    .line 120
    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual {v9, v6, v4, v13, v14}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 122
    :cond_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/facebook/notifications/internal/view/a;->e:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/facebook/notifications/internal/view/a;->f:[Lcom/facebook/notifications/internal/view/ActionButton;

    aget-object v14, v14, v7

    invoke-virtual {v13, v14, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 103
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 93
    :pswitch_1
    const/4 v2, 0x1

    .line 95
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/facebook/notifications/internal/view/a;->e:Landroid/widget/LinearLayout;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    move v6, v5

    .line 96
    goto :goto_1

    .line 107
    :cond_3
    sget-object v8, Lcom/facebook/notifications/internal/view/ActionButton$a;->b:Lcom/facebook/notifications/internal/view/ActionButton$a;

    goto :goto_3

    .line 110
    :cond_4
    sget-object v9, Lcom/facebook/notifications/internal/view/ActionButton$a;->c:Lcom/facebook/notifications/internal/view/ActionButton$a;

    goto :goto_4

    .line 125
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/facebook/notifications/internal/view/a;->d:Lcom/facebook/notifications/internal/view/b;

    const v3, 0x78d5c27b

    invoke-virtual {v2, v3}, Lcom/facebook/notifications/internal/view/b;->setId(I)V

    .line 126
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/facebook/notifications/internal/view/a;->e:Landroid/widget/LinearLayout;

    const v3, 0x7cc9a8c8

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setId(I)V

    .line 128
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/facebook/notifications/internal/view/a;->d:Lcom/facebook/notifications/internal/view/b;

    new-instance v3, Lcom/facebook/notifications/internal/view/a$1;

    const/4 v4, -0x1

    const/4 v6, -0x2

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v4, v6}, Lcom/facebook/notifications/internal/view/a$1;-><init>(Lcom/facebook/notifications/internal/view/a;II)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/facebook/notifications/internal/view/a;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 133
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/facebook/notifications/internal/view/a;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v5, v11, v5, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 134
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/facebook/notifications/internal/view/a;->e:Landroid/widget/LinearLayout;

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-direct {v3, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/facebook/notifications/internal/view/a;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 136
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/facebook/notifications/internal/view/a;->setWillNotDraw(Z)V

    .line 139
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x12

    if-ge v2, v3, :cond_0

    .line 140
    const/4 v2, 0x1

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/facebook/notifications/internal/view/a;->setLayerType(ILandroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 85
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static a(Lcom/facebook/notifications/internal/configuration/CardConfiguration;)I
    .locals 2
    .param p0    # Lcom/facebook/notifications/internal/configuration/CardConfiguration;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 145
    invoke-virtual {p0}, Lcom/facebook/notifications/internal/configuration/CardConfiguration;->h()Lcom/facebook/notifications/internal/configuration/ActionsConfiguration;

    move-result-object v0

    if-nez v0, :cond_1

    .line 146
    const/4 v0, 0x0

    .line 155
    :cond_0
    :goto_0
    return v0

    .line 149
    :cond_1
    const/16 v0, 0xc

    .line 150
    invoke-virtual {p0}, Lcom/facebook/notifications/internal/configuration/CardConfiguration;->f()Lcom/facebook/notifications/internal/configuration/HeroConfiguration;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/facebook/notifications/internal/configuration/CardConfiguration;->g()Lcom/facebook/notifications/internal/configuration/BodyConfiguration;

    move-result-object v1

    if-nez v1, :cond_0

    .line 152
    const/16 v0, 0xf

    goto :goto_0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 166
    iget-object v0, p0, Lcom/facebook/notifications/internal/view/a;->c:Lcom/facebook/notifications/internal/utilities/d;

    invoke-virtual {v0, p1}, Lcom/facebook/notifications/internal/utilities/d;->a(Landroid/graphics/Canvas;)V

    .line 167
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->draw(Landroid/graphics/Canvas;)V

    .line 168
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 172
    check-cast p1, Lcom/facebook/notifications/internal/view/ActionButton;

    .line 173
    .end local p1    # "v":Landroid/view/View;
    iget-object v0, p0, Lcom/facebook/notifications/internal/view/a;->a:Lcom/facebook/notifications/internal/view/a$a;

    invoke-virtual {p1}, Lcom/facebook/notifications/internal/view/ActionButton;->b()Lcom/facebook/notifications/internal/view/ActionButton$a;

    move-result-object v1

    invoke-virtual {p1}, Lcom/facebook/notifications/internal/view/ActionButton;->a()Lcom/facebook/notifications/internal/configuration/ActionConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/notifications/internal/configuration/ActionConfiguration;->f()Landroid/net/Uri;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/facebook/notifications/internal/view/a$a;->a(Lcom/facebook/notifications/internal/view/ActionButton$a;Landroid/net/Uri;)V

    .line 174
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 6
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 160
    invoke-super/range {p0 .. p5}, Landroid/widget/RelativeLayout;->onLayout(ZIIII)V

    .line 161
    iget-object v0, p0, Lcom/facebook/notifications/internal/view/a;->c:Lcom/facebook/notifications/internal/utilities/d;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/facebook/notifications/internal/utilities/d;->a(ZIIII)V

    .line 162
    return-void
.end method
