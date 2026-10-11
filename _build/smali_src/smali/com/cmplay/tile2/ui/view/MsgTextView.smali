.class public Lcom/cmplay/tile2/ui/view/MsgTextView;
.super Landroid/widget/TextView;
.source "MsgTextView.java"


# instance fields
.field private a:Landroid/graphics/Typeface;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 20
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 17
    const-string v0, "fonts/Futura condensed.ttf"

    iput-object v0, p0, Lcom/cmplay/tile2/ui/view/MsgTextView;->b:Ljava/lang/String;

    .line 21
    invoke-direct {p0}, Lcom/cmplay/tile2/ui/view/MsgTextView;->a()V

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 17
    const-string v0, "fonts/Futura condensed.ttf"

    iput-object v0, p0, Lcom/cmplay/tile2/ui/view/MsgTextView;->b:Ljava/lang/String;

    .line 26
    invoke-direct {p0}, Lcom/cmplay/tile2/ui/view/MsgTextView;->a()V

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 30
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 17
    const-string v0, "fonts/Futura condensed.ttf"

    iput-object v0, p0, Lcom/cmplay/tile2/ui/view/MsgTextView;->b:Ljava/lang/String;

    .line 31
    invoke-direct {p0}, Lcom/cmplay/tile2/ui/view/MsgTextView;->a()V

    .line 32
    return-void
.end method

.method private a()V
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/cmplay/tile2/ui/view/MsgTextView;->a:Landroid/graphics/Typeface;

    invoke-virtual {p0, v0}, Lcom/cmplay/tile2/ui/view/MsgTextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 36
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p0, v0}, Lcom/cmplay/tile2/ui/view/MsgTextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 37
    return-void
.end method


# virtual methods
.method public getTypeface()Landroid/graphics/Typeface;
    .locals 2

    .prologue
    .line 45
    iget-object v0, p0, Lcom/cmplay/tile2/ui/view/MsgTextView;->a:Landroid/graphics/Typeface;

    if-nez v0, :cond_1

    .line 46
    iget-object v0, p0, Lcom/cmplay/tile2/ui/view/MsgTextView;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 47
    sget-object v0, Lcom/cmplay/tile2/GameApp;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 48
    iget-object v1, p0, Lcom/cmplay/tile2/ui/view/MsgTextView;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lcom/cmplay/tile2/ui/view/MsgTextView;->a:Landroid/graphics/Typeface;

    .line 50
    :cond_0
    iget-object v0, p0, Lcom/cmplay/tile2/ui/view/MsgTextView;->a:Landroid/graphics/Typeface;

    if-nez v0, :cond_1

    .line 51
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    iput-object v0, p0, Lcom/cmplay/tile2/ui/view/MsgTextView;->a:Landroid/graphics/Typeface;

    .line 54
    :cond_1
    iget-object v0, p0, Lcom/cmplay/tile2/ui/view/MsgTextView;->a:Landroid/graphics/Typeface;

    return-object v0
.end method
