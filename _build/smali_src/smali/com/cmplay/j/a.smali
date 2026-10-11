.class public Lcom/cmplay/j/a;
.super Landroid/app/Dialog;
.source "EditTextDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cmplay/j/a$4;,
        Lcom/cmplay/j/a$a;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcom/cmplay/j/a$a;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/EditText;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 68
    return-void
.end method

.method static synthetic a(Lcom/cmplay/j/a;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/cmplay/j/a;->d:Landroid/widget/EditText;

    return-object v0
.end method

.method private a()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 88
    const v0, 0x7f0800ae

    invoke-virtual {p0, v0}, Lcom/cmplay/j/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/cmplay/j/a;->c:Landroid/widget/TextView;

    .line 89
    iget-object v0, p0, Lcom/cmplay/j/a;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/cmplay/j/a;->c:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/cmplay/j/a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    :cond_0
    const v0, 0x7f0800af

    invoke-virtual {p0, v0}, Lcom/cmplay/j/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 94
    new-instance v1, Lcom/cmplay/j/a$1;

    invoke-direct {v1, p0}, Lcom/cmplay/j/a$1;-><init>(Lcom/cmplay/j/a;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 101
    const v0, 0x7f0800b1

    invoke-virtual {p0, v0}, Lcom/cmplay/j/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 102
    new-instance v1, Lcom/cmplay/j/a$2;

    invoke-direct {v1, p0}, Lcom/cmplay/j/a$2;-><init>(Lcom/cmplay/j/a;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 116
    invoke-virtual {v0, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 117
    const/high16 v1, 0x3f000000    # 0.5f

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setAlpha(F)V

    .line 118
    const v1, 0x7f050070

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 120
    const v1, 0x7f0800b0

    invoke-virtual {p0, v1}, Lcom/cmplay/j/a;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/cmplay/j/a;->d:Landroid/widget/EditText;

    .line 121
    iget-object v1, p0, Lcom/cmplay/j/a;->d:Landroid/widget/EditText;

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/text/InputFilter;

    new-instance v3, Landroid/text/InputFilter$LengthFilter;

    const/16 v4, 0x14

    invoke-direct {v3, v4}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v3, v2, v5

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 122
    iget-object v1, p0, Lcom/cmplay/j/a;->b:Lcom/cmplay/j/a$a;

    if-eqz v1, :cond_1

    .line 123
    iget-object v1, p0, Lcom/cmplay/j/a;->b:Lcom/cmplay/j/a$a;

    invoke-virtual {p0, v1}, Lcom/cmplay/j/a;->a(Lcom/cmplay/j/a$a;)V

    .line 125
    :cond_1
    iget-object v1, p0, Lcom/cmplay/j/a;->d:Landroid/widget/EditText;

    const v2, -0x694c3b

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 126
    iget-object v1, p0, Lcom/cmplay/j/a;->d:Landroid/widget/EditText;

    const-string v2, "favorites_diy_txt10"

    invoke-static {v2}, Lcom/cmplay/util/NativeUtil;->getLanguageTextByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 127
    iget-object v1, p0, Lcom/cmplay/j/a;->d:Landroid/widget/EditText;

    new-instance v2, Lcom/cmplay/j/a$3;

    invoke-direct {v2, p0, v0}, Lcom/cmplay/j/a$3;-><init>(Lcom/cmplay/j/a;Landroid/widget/Button;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 151
    return-void
.end method

.method public static a(Landroid/app/Activity;Ljava/lang/String;Lcom/cmplay/j/a$a;)V
    .locals 1

    .prologue
    .line 180
    if-nez p0, :cond_0

    .line 187
    :goto_0
    return-void

    .line 183
    :cond_0
    new-instance v0, Lcom/cmplay/j/a;

    invoke-direct {v0, p0}, Lcom/cmplay/j/a;-><init>(Landroid/content/Context;)V

    .line 184
    invoke-virtual {v0, p2}, Lcom/cmplay/j/a;->a(Lcom/cmplay/j/a$a;)V

    .line 185
    invoke-virtual {v0, p1}, Lcom/cmplay/j/a;->a(Ljava/lang/String;)V

    .line 186
    invoke-virtual {v0}, Lcom/cmplay/j/a;->show()V

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/cmplay/j/a$a;)V
    .locals 3

    .prologue
    .line 161
    iput-object p1, p0, Lcom/cmplay/j/a;->b:Lcom/cmplay/j/a$a;

    .line 162
    iget-object v0, p0, Lcom/cmplay/j/a;->d:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 163
    sget-object v0, Lcom/cmplay/j/a$4;->a:[I

    invoke-virtual {p1}, Lcom/cmplay/j/a$a;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 177
    :cond_0
    :goto_0
    return-void

    .line 165
    :pswitch_0
    iget-object v0, p0, Lcom/cmplay/j/a;->d:Landroid/widget/EditText;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroid/text/method/DigitsKeyListener;->getInstance(ZZ)Landroid/text/method/DigitsKeyListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    goto :goto_0

    .line 168
    :pswitch_1
    iget-object v0, p0, Lcom/cmplay/j/a;->d:Landroid/widget/EditText;

    const-string v1, "0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"

    invoke-static {v1}, Landroid/text/method/DigitsKeyListener;->getInstance(Ljava/lang/String;)Landroid/text/method/DigitsKeyListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    goto :goto_0

    .line 171
    :pswitch_2
    iget-object v0, p0, Lcom/cmplay/j/a;->d:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/TextKeyListener;->getInstance()Landroid/text/method/TextKeyListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    goto :goto_0

    .line 163
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 154
    iput-object p1, p0, Lcom/cmplay/j/a;->a:Ljava/lang/String;

    .line 155
    iget-object v0, p0, Lcom/cmplay/j/a;->c:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 156
    iget-object v0, p0, Lcom/cmplay/j/a;->c:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/cmplay/j/a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 158
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 72
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 73
    const v0, 0x7f030033

    invoke-virtual {p0, v0}, Lcom/cmplay/j/a;->setContentView(I)V

    .line 75
    invoke-virtual {p0}, Lcom/cmplay/j/a;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 76
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    const v2, 0x106000d

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 78
    invoke-virtual {p0}, Lcom/cmplay/j/a;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 79
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 80
    int-to-double v4, v1

    const-wide v6, 0x3feccccccccccccdL    # 0.9

    mul-double/2addr v4, v6

    double-to-int v1, v4

    iput v1, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 81
    invoke-virtual {v0, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 83
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/cmplay/j/a;->setCanceledOnTouchOutside(Z)V

    .line 84
    invoke-direct {p0}, Lcom/cmplay/j/a;->a()V

    .line 85
    return-void
.end method
