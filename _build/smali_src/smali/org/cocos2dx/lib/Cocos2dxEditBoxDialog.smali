.class public Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;
.super Landroid/app/Dialog;
.source "Cocos2dxEditBoxDialog.java"


# instance fields
.field private final kEditBoxInputFlagInitialCapsAllCharacters:I

.field private final kEditBoxInputFlagInitialCapsSentence:I

.field private final kEditBoxInputFlagInitialCapsWord:I

.field private final kEditBoxInputFlagPassword:I

.field private final kEditBoxInputFlagSensitive:I

.field private final kEditBoxInputModeAny:I

.field private final kEditBoxInputModeDecimal:I

.field private final kEditBoxInputModeEmailAddr:I

.field private final kEditBoxInputModeNumeric:I

.field private final kEditBoxInputModePhoneNumber:I

.field private final kEditBoxInputModeSingleLine:I

.field private final kEditBoxInputModeUrl:I

.field private final kKeyboardReturnTypeDefault:I

.field private final kKeyboardReturnTypeDone:I

.field private final kKeyboardReturnTypeGo:I

.field private final kKeyboardReturnTypeSearch:I

.field private final kKeyboardReturnTypeSend:I

.field private mInputEditText:Landroid/widget/EditText;

.field private final mInputFlag:I

.field private mInputFlagConstraints:I

.field private final mInputMode:I

.field private mInputModeContraints:I

.field private mIsMultiline:Z

.field private final mMaxLength:I

.field private final mMessage:Ljava/lang/String;

.field private final mReturnType:I

.field private mTextViewTitle:Landroid/widget/TextView;

.field private final mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IIII)V
    .locals 6
    .param p1, "pContext"    # Landroid/content/Context;
    .param p2, "pTitle"    # Ljava/lang/String;
    .param p3, "pMessage"    # Ljava/lang/String;
    .param p4, "pInputMode"    # I
    .param p5, "pInputFlag"    # I
    .param p6, "pReturnType"    # I
    .param p7, "pMaxLength"    # I

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 140
    const v0, 0x1030011

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 54
    iput v1, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;->kEditBoxInputModeAny:I

    .line 59
    iput v2, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;->kEditBoxInputModeEmailAddr:I

    .line 64
    iput v3, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;->kEditBoxInputModeNumeric:I

    .line 69
    iput v4, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;->kEditBoxInputModePhoneNumber:I

    .line 74
    iput v5, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;->kEditBoxInputModeUrl:I

    .line 79
    const/4 v0, 0x5

    iput v0, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;->kEditBoxInputModeDecimal:I

    .line 84
    const/4 v0, 0x6

    iput v0, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;->kEditBoxInputModeSingleLine:I

    .line 89
    iput v1, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;->kEditBoxInputFlagPassword:I

    .line 94
    iput v2, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;->kEditBoxInputFlagSensitive:I

    .line 99
    iput v3, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;->kEditBoxInputFlagInitialCapsWord:I

    .line 104
    iput v4, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;->kEditBoxInputFlagInitialCapsSentence:I

    .line 109
    iput v5, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;->kEditBoxInputFlagInitialCapsAllCharacters:I

    .line 111
    iput v1, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;->kKeyboardReturnTypeDefault:I

    .line 112
    iput v2, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;->kKeyboardReturnTypeDone:I

    .line 113
    iput v3, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;->kKeyboardReturnTypeSend:I

    .line 114
    iput v4, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;->kKeyboardReturnTypeSearch:I

    .line 115
    iput v5, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;->kKeyboardReturnTypeGo:I

    .line 143
    iput-object p2, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;->mTitle:Ljava/lang/String;

    .line 144
    iput-object p3, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;->mMessage:Ljava/lang/String;

    .line 145
    iput p4, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;->mInputMode:I

    .line 146
    iput p5, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;->mInputFlag:I

    .line 147
    iput p6, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;->mReturnType:I

    .line 148
    iput p7, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;->mMaxLength:I

    .line 149
    return-void
.end method

.method static synthetic access$000(Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;

    .prologue
    .line 46
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;->mInputEditText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$100(Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;)V
    .locals 0
    .param p0, "x0"    # Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;

    .prologue
    .line 46
    invoke-direct {p0}, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;->openKeyboard()V

    return-void
.end method

.method static synthetic access$200(Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;)V
    .locals 0
    .param p0, "x0"    # Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;

    .prologue
    .line 46
    invoke-direct {p0}, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;->closeKeyboard()V

    return-void
.end method

.method private closeKeyboard()V
    .locals 3

    .prologue
    .line 314
    invoke-virtual {p0}, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 315
    iget-object v1, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;->mInputEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 316
    return-void
.end method

.method private convertDipsToPixels(F)I
    .locals 1
    .param p1, "pDIPs"    # F

    .prologue
    .line 304
    invoke-virtual {p0}, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 305
    mul-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method private openKeyboard()V
    .locals 3

    .prologue
    .line 309
    invoke-virtual {p0}, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 310
    iget-object v1, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;->mInputEditText:Landroid/widget/EditText;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 311
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "pSavedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/high16 v8, 0x41200000    # 10.0f

    const/4 v7, -0x1

    const/4 v6, -0x2

    const/4 v5, 0x1

    .line 153
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 155
    invoke-virtual {p0}, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/high16 v2, -0x80000000

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 157
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 158
    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 160
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v7, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 162
    new-instance v2, Landroid/widget/TextView;

    invoke-virtual {p0}, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;->mTextViewTitle:Landroid/widget/TextView;

    .line 163
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 164
    invoke-direct {p0, v8}, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;->convertDipsToPixels(F)I

    move-result v3

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 165
    iget-object v3, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;->mTextViewTitle:Landroid/widget/TextView;

    const/high16 v4, 0x41a00000    # 20.0f

    invoke-virtual {v3, v5, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 166
    iget-object v3, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;->mTextViewTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 168
    new-instance v2, Landroid/widget/EditText;

    invoke-virtual {p0}, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;->mInputEditText:Landroid/widget/EditText;

    .line 169
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v7, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 170
    invoke-direct {p0, v8}, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;->convertDipsToPixels(F)I

    move-result v3

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 172
    iget-object v3, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;->mInputEditText:Landroid/widget/EditText;

    invoke-virtual {v0, v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 174
    invoke-virtual {p0, v0, v1}, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 176
    invoke-virtual {p0}, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 178
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;->mTextViewTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 179
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;->mInputEditText:Landroid/widget/EditText;

    iget-object v1, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;->mMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 181
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;->mInputEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getImeOptions()I

    move-result v0

    .line 182
    iget-object v1, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;->mInputEditText:Landroid/widget/EditText;

    const/high16 v2, 0x10000000

    or-int/2addr v0, v2

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 183
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;->mInputEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getImeOptions()I

    move-result v0

    .line 185
    iget v1, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;->mInputMode:I

    packed-switch v1, :pswitch_data_0

    .line 212
    :goto_0
    iget-boolean v1, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;->mIsMultiline:Z

    if-eqz v1, :cond_0

    .line 213
    iget v1, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;->mInputModeContraints:I

    const/high16 v2, 0x20000

    or-int/2addr v1, v2

    iput v1, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;->mInputModeContraints:I

    .line 216
    :cond_0
    iget-object v1, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;->mInputEditText:Landroid/widget/EditText;

    iget v2, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;->mInputModeContraints:I

    iget v3, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;->mInputFlagConstraints:I

    or-int/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setInputType(I)V

    .line 218
    iget v1, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;->mInputFlag:I

    packed-switch v1, :pswitch_data_1

    .line 238
    :goto_1
    iget-object v1, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;->mInputEditText:Landroid/widget/EditText;

    iget v2, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;->mInputFlagConstraints:I

    iget v3, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;->mInputModeContraints:I

    or-int/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setInputType(I)V

    .line 240
    iget v1, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;->mReturnType:I

    packed-switch v1, :pswitch_data_2

    .line 257
    iget-object v1, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;->mInputEditText:Landroid/widget/EditText;

    or-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 261
    :goto_2
    iget v0, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;->mMaxLength:I

    if-lez v0, :cond_1

    .line 262
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;->mInputEditText:Landroid/widget/EditText;

    new-array v1, v5, [Landroid/text/InputFilter;

    const/4 v2, 0x0

    new-instance v3, Landroid/text/InputFilter$LengthFilter;

    iget v4, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;->mMaxLength:I

    invoke-direct {v3, v4}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 265
    :cond_1
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 266
    new-instance v1, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog$1;

    invoke-direct {v1, p0}, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog$1;-><init>(Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 275
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;->mInputEditText:Landroid/widget/EditText;

    new-instance v1, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog$2;

    invoke-direct {v1, p0}, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog$2;-><init>(Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 288
    return-void

    .line 187
    :pswitch_0
    const v1, 0x20001

    iput v1, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;->mInputModeContraints:I

    goto :goto_0

    .line 190
    :pswitch_1
    const/16 v1, 0x21

    iput v1, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;->mInputModeContraints:I

    goto :goto_0

    .line 193
    :pswitch_2
    const/16 v1, 0x1002

    iput v1, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;->mInputModeContraints:I

    goto :goto_0

    .line 196
    :pswitch_3
    const/4 v1, 0x3

    iput v1, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;->mInputModeContraints:I

    goto :goto_0

    .line 199
    :pswitch_4
    const/16 v1, 0x11

    iput v1, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;->mInputModeContraints:I

    goto :goto_0

    .line 202
    :pswitch_5
    const/16 v1, 0x3002

    iput v1, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;->mInputModeContraints:I

    goto :goto_0

    .line 205
    :pswitch_6
    iput v5, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;->mInputModeContraints:I

    goto :goto_0

    .line 220
    :pswitch_7
    const/16 v1, 0x81

    iput v1, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;->mInputFlagConstraints:I

    goto :goto_1

    .line 223
    :pswitch_8
    const/high16 v1, 0x80000

    iput v1, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;->mInputFlagConstraints:I

    goto :goto_1

    .line 226
    :pswitch_9
    const/16 v1, 0x2000

    iput v1, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;->mInputFlagConstraints:I

    goto :goto_1

    .line 229
    :pswitch_a
    const/16 v1, 0x4000

    iput v1, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;->mInputFlagConstraints:I

    goto :goto_1

    .line 232
    :pswitch_b
    const/16 v1, 0x1000

    iput v1, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;->mInputFlagConstraints:I

    goto :goto_1

    .line 242
    :pswitch_c
    iget-object v1, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;->mInputEditText:Landroid/widget/EditText;

    or-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setImeOptions(I)V

    goto :goto_2

    .line 245
    :pswitch_d
    iget-object v1, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;->mInputEditText:Landroid/widget/EditText;

    or-int/lit8 v0, v0, 0x6

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setImeOptions(I)V

    goto :goto_2

    .line 248
    :pswitch_e
    iget-object v1, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;->mInputEditText:Landroid/widget/EditText;

    or-int/lit8 v0, v0, 0x4

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setImeOptions(I)V

    goto :goto_2

    .line 251
    :pswitch_f
    iget-object v1, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;->mInputEditText:Landroid/widget/EditText;

    or-int/lit8 v0, v0, 0x3

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setImeOptions(I)V

    goto/16 :goto_2

    .line 254
    :pswitch_10
    iget-object v1, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;->mInputEditText:Landroid/widget/EditText;

    or-int/lit8 v0, v0, 0x2

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setImeOptions(I)V

    goto/16 :goto_2

    .line 185
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch

    .line 218
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch

    .line 240
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
    .end packed-switch
.end method
