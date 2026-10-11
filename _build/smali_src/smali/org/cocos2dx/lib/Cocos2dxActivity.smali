.class public abstract Lorg/cocos2dx/lib/Cocos2dxActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "Cocos2dxActivity.java"

# interfaces
.implements Lorg/cocos2dx/lib/Cocos2dxHelper$Cocos2dxHelperListener;
.implements Lorg/cocos2dx/lib/Cocos2dxRenderer$ReportGL;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/cocos2dx/lib/Cocos2dxActivity$Cocos2dxEGLConfigChooser;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static sContext:Lorg/cocos2dx/lib/Cocos2dxActivity;


# instance fields
.field protected mFrameLayout:Landroid/widget/FrameLayout;

.field private mGLContextAttrs:[I

.field public mGLSurfaceView:Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;

.field private mHandler:Lorg/cocos2dx/lib/Cocos2dxHandler;

.field private mVideoHelper:Lorg/cocos2dx/lib/Cocos2dxVideoHelper;

.field private mWebViewHelper:Lorg/cocos2dx/lib/Cocos2dxWebViewHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 55
    const-class v0, Lorg/cocos2dx/lib/Cocos2dxActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/cocos2dx/lib/Cocos2dxActivity;->TAG:Ljava/lang/String;

    .line 64
    const/4 v0, 0x0

    sput-object v0, Lorg/cocos2dx/lib/Cocos2dxActivity;->sContext:Lorg/cocos2dx/lib/Cocos2dxActivity;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 50
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    .line 61
    iput-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxActivity;->mGLSurfaceView:Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;

    .line 62
    iput-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxActivity;->mGLContextAttrs:[I

    .line 63
    iput-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxActivity;->mHandler:Lorg/cocos2dx/lib/Cocos2dxHandler;

    .line 65
    iput-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxActivity;->mVideoHelper:Lorg/cocos2dx/lib/Cocos2dxVideoHelper;

    .line 66
    iput-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxActivity;->mWebViewHelper:Lorg/cocos2dx/lib/Cocos2dxWebViewHelper;

    .line 306
    iput-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxActivity;->mFrameLayout:Landroid/widget/FrameLayout;

    return-void
.end method

.method public static getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 190
    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxActivity;->sContext:Lorg/cocos2dx/lib/Cocos2dxActivity;

    return-object v0
.end method

.method private static native getGLContextAttrs()[I
.end method

.method private static final isAndroidEmulator()Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 358
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 359
    sget-object v2, Lorg/cocos2dx/lib/Cocos2dxActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "model="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    sget-object v1, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    .line 361
    sget-object v2, Lorg/cocos2dx/lib/Cocos2dxActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "product="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    if-eqz v1, :cond_1

    .line 364
    const-string v2, "sdk"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "_sdk"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "sdk_"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 366
    :cond_1
    sget-object v1, Lorg/cocos2dx/lib/Cocos2dxActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isEmulator="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    return v0
.end method


# virtual methods
.method public init()V
    .locals 8

    .prologue
    const/4 v3, -0x1

    const/16 v1, 0x8

    .line 313
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 316
    new-instance v2, Landroid/widget/FrameLayout;

    invoke-direct {v2, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lorg/cocos2dx/lib/Cocos2dxActivity;->mFrameLayout:Landroid/widget/FrameLayout;

    .line 317
    iget-object v2, p0, Lorg/cocos2dx/lib/Cocos2dxActivity;->mFrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 320
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v0, v3, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 323
    new-instance v7, Lorg/cocos2dx/lib/Cocos2dxEditText;

    invoke-direct {v7, p0}, Lorg/cocos2dx/lib/Cocos2dxEditText;-><init>(Landroid/content/Context;)V

    .line 324
    invoke-virtual {v7, v0}, Lorg/cocos2dx/lib/Cocos2dxEditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 327
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxActivity;->mFrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v7}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 330
    invoke-virtual {p0}, Lorg/cocos2dx/lib/Cocos2dxActivity;->onCreateView()Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;

    move-result-object v0

    iput-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxActivity;->mGLSurfaceView:Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;

    .line 333
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxActivity;->mFrameLayout:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lorg/cocos2dx/lib/Cocos2dxActivity;->mGLSurfaceView:Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 336
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxActivity;->isAndroidEmulator()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 337
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxActivity;->mGLSurfaceView:Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;

    const/16 v5, 0x10

    const/4 v6, 0x0

    move v2, v1

    move v3, v1

    move v4, v1

    invoke-virtual/range {v0 .. v6}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->setEGLConfigChooser(IIIIII)V

    .line 339
    :cond_0
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxActivity;->mGLSurfaceView:Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;

    new-instance v1, Lorg/cocos2dx/lib/Cocos2dxRenderer;

    invoke-direct {v1, p0}, Lorg/cocos2dx/lib/Cocos2dxRenderer;-><init>(Lorg/cocos2dx/lib/Cocos2dxRenderer$ReportGL;)V

    invoke-virtual {v0, v1}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->setCocos2dxRenderer(Lorg/cocos2dx/lib/Cocos2dxRenderer;)V

    .line 340
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxActivity;->mGLSurfaceView:Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;

    invoke-virtual {v0, v7}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->setCocos2dxEditText(Lorg/cocos2dx/lib/Cocos2dxEditText;)V

    .line 343
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxActivity;->mFrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v0}, Lorg/cocos2dx/lib/Cocos2dxActivity;->setContentView(Landroid/view/View;)V

    .line 344
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 298
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxHelper;->getOnActivityResultListeners()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceManager$OnActivityResultListener;

    .line 299
    invoke-interface {v0, p1, p2, p3}, Landroid/preference/PreferenceManager$OnActivityResultListener;->onActivityResult(IILandroid/content/Intent;)Z

    goto :goto_0

    .line 302
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 303
    return-void
.end method

# PATCH: pick a 120Hz display mode (same resolution) and set preferredRefreshRate = 120
# (native game clock is patched to be dt-based, see _build/patch_so.ps1)
.method public static forceRefreshRate60(Landroid/app/Activity;)V
    .locals 10

    :try_start_fr
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;
    move-result-object v0
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;
    move-result-object v1
    const/high16 v2, 0x42f00000    # 120.0f
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->preferredRefreshRate:F

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v4, 0x17
    if-lt v3, v4, :apply_fr

    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;
    move-result-object v3
    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;
    move-result-object v3
    invoke-virtual {v3}, Landroid/view/Display;->getMode()Landroid/view/Display$Mode;
    move-result-object v4
    invoke-virtual {v3}, Landroid/view/Display;->getSupportedModes()[Landroid/view/Display$Mode;
    move-result-object v3
    array-length v5, v3
    const/4 v6, 0x0

    :loop_fr
    if-ge v6, v5, :apply_fr
    aget-object v7, v3, v6
    invoke-virtual {v7}, Landroid/view/Display$Mode;->getPhysicalWidth()I
    move-result v8
    invoke-virtual {v4}, Landroid/view/Display$Mode;->getPhysicalWidth()I
    move-result v9
    if-ne v8, v9, :next_fr
    invoke-virtual {v7}, Landroid/view/Display$Mode;->getPhysicalHeight()I
    move-result v8
    invoke-virtual {v4}, Landroid/view/Display$Mode;->getPhysicalHeight()I
    move-result v9
    if-ne v8, v9, :next_fr
    invoke-virtual {v7}, Landroid/view/Display$Mode;->getRefreshRate()F
    move-result v8
    sub-float/2addr v8, v2
    invoke-static {v8}, Ljava/lang/Math;->abs(F)F
    move-result v8
    const/high16 v9, 0x3f800000    # 1.0f
    cmpg-float v8, v8, v9
    if-gez v8, :next_fr
    invoke-virtual {v7}, Landroid/view/Display$Mode;->getModeId()I
    move-result v8
    iput v8, v1, Landroid/view/WindowManager$LayoutParams;->preferredDisplayModeId:I
    goto :apply_fr

    :next_fr
    add-int/lit8 v6, v6, 0x1
    goto :loop_fr

    :apply_fr
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V
    :try_end_fr
    .catch Ljava/lang/Throwable; {:try_start_fr .. :try_end_fr} :catch_fr

    :catch_fr
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 220
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    # PATCH: request 120Hz (game clock patched to follow real frame time)
    invoke-static {p0}, Lorg/cocos2dx/lib/Cocos2dxActivity;->forceRefreshRate60(Landroid/app/Activity;)V

    .line 221
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/chukong/cocosplay/client/CocosPlayClient;->init(Landroid/app/Activity;Z)Z

    .line 225
    sput-object p0, Lorg/cocos2dx/lib/Cocos2dxActivity;->sContext:Lorg/cocos2dx/lib/Cocos2dxActivity;

    .line 226
    new-instance v0, Lorg/cocos2dx/lib/Cocos2dxHandler;

    invoke-direct {v0, p0}, Lorg/cocos2dx/lib/Cocos2dxHandler;-><init>(Lorg/cocos2dx/lib/Cocos2dxActivity;)V

    iput-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxActivity;->mHandler:Lorg/cocos2dx/lib/Cocos2dxHandler;

    .line 228
    invoke-static {p0}, Lorg/cocos2dx/lib/Cocos2dxHelper;->init(Landroid/app/Activity;)V

    .line 230
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxActivity;->getGLContextAttrs()[I

    move-result-object v0

    iput-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxActivity;->mGLContextAttrs:[I

    .line 231
    invoke-virtual {p0}, Lorg/cocos2dx/lib/Cocos2dxActivity;->init()V

    .line 233
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxActivity;->mVideoHelper:Lorg/cocos2dx/lib/Cocos2dxVideoHelper;

    if-nez v0, :cond_0

    .line 234
    new-instance v0, Lorg/cocos2dx/lib/Cocos2dxVideoHelper;

    iget-object v1, p0, Lorg/cocos2dx/lib/Cocos2dxActivity;->mFrameLayout:Landroid/widget/FrameLayout;

    invoke-direct {v0, p0, v1}, Lorg/cocos2dx/lib/Cocos2dxVideoHelper;-><init>(Lorg/cocos2dx/lib/Cocos2dxActivity;Landroid/widget/FrameLayout;)V

    iput-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxActivity;->mVideoHelper:Lorg/cocos2dx/lib/Cocos2dxVideoHelper;

    .line 237
    :cond_0
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxActivity;->mWebViewHelper:Lorg/cocos2dx/lib/Cocos2dxWebViewHelper;

    if-nez v0, :cond_1

    .line 238
    new-instance v0, Lorg/cocos2dx/lib/Cocos2dxWebViewHelper;

    iget-object v1, p0, Lorg/cocos2dx/lib/Cocos2dxActivity;->mFrameLayout:Landroid/widget/FrameLayout;

    invoke-direct {v0, v1}, Lorg/cocos2dx/lib/Cocos2dxWebViewHelper;-><init>(Landroid/widget/FrameLayout;)V

    iput-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxActivity;->mWebViewHelper:Lorg/cocos2dx/lib/Cocos2dxWebViewHelper;

    .line 240
    :cond_1
    return-void
.end method

.method public onCreateView()Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;
    .locals 3

    .prologue
    .line 347
    new-instance v0, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;

    invoke-direct {v0, p0}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;-><init>(Landroid/content/Context;)V

    .line 349
    iget-object v1, p0, Lorg/cocos2dx/lib/Cocos2dxActivity;->mGLContextAttrs:[I

    const/4 v2, 0x3

    aget v1, v1, v2

    if-lez v1, :cond_0

    invoke-virtual {v0}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    const/4 v2, -0x3

    invoke-interface {v1, v2}, Landroid/view/SurfaceHolder;->setFormat(I)V

    .line 351
    :cond_0
    new-instance v1, Lorg/cocos2dx/lib/Cocos2dxActivity$Cocos2dxEGLConfigChooser;

    iget-object v2, p0, Lorg/cocos2dx/lib/Cocos2dxActivity;->mGLContextAttrs:[I

    invoke-direct {v1, p0, v2}, Lorg/cocos2dx/lib/Cocos2dxActivity$Cocos2dxEGLConfigChooser;-><init>(Lorg/cocos2dx/lib/Cocos2dxActivity;[I)V

    .line 352
    invoke-virtual {v0, v1}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->setEGLConfigChooser(Landroid/opengl/GLSurfaceView$EGLConfigChooser;)V

    .line 354
    return-object v0
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 271
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onDestroy()V

    .line 272
    return-void
.end method

.method protected onLoadNativeLibraries()V
    .locals 3

    .prologue
    .line 205
    :try_start_0
    invoke-virtual {p0}, Lorg/cocos2dx/lib/Cocos2dxActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Lorg/cocos2dx/lib/Cocos2dxActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 206
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 207
    const-string v1, "android.app.lib_name"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 208
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 212
    :goto_0
    return-void

    .line 209
    :catch_0
    move-exception v0

    .line 210
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 263
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onPause()V

    .line 265
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxHelper;->onPause()V

    .line 266
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxActivity;->mGLSurfaceView:Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;

    invoke-virtual {v0}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->onPause()V

    .line 267
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 255
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onResume()V

    .line 257
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxHelper;->onResume()V

    .line 258
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxActivity;->mGLSurfaceView:Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;

    invoke-virtual {v0}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->onResume()V

    .line 259
    return-void
.end method

.method public runOnGLThread(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "pRunnable"    # Ljava/lang/Runnable;

    .prologue
    .line 292
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxActivity;->mGLSurfaceView:Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;

    invoke-virtual {v0, p1}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    .line 293
    return-void
.end method

.method public setKeepScreenOn(Z)V
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 194
    .line 195
    new-instance v0, Lorg/cocos2dx/lib/Cocos2dxActivity$1;

    invoke-direct {v0, p0, p1}, Lorg/cocos2dx/lib/Cocos2dxActivity$1;-><init>(Lorg/cocos2dx/lib/Cocos2dxActivity;Z)V

    invoke-virtual {p0, v0}, Lorg/cocos2dx/lib/Cocos2dxActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 201
    return-void
.end method

.method public showDialog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "pTitle"    # Ljava/lang/String;
    .param p2, "pMessage"    # Ljava/lang/String;

    .prologue
    .line 276
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 277
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 278
    new-instance v1, Lorg/cocos2dx/lib/Cocos2dxHandler$DialogMessage;

    invoke-direct {v1, p1, p2}, Lorg/cocos2dx/lib/Cocos2dxHandler$DialogMessage;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 279
    iget-object v1, p0, Lorg/cocos2dx/lib/Cocos2dxActivity;->mHandler:Lorg/cocos2dx/lib/Cocos2dxHandler;

    invoke-virtual {v1, v0}, Lorg/cocos2dx/lib/Cocos2dxHandler;->sendMessage(Landroid/os/Message;)Z

    .line 280
    return-void
.end method

.method public showEditTextDialog(Ljava/lang/String;Ljava/lang/String;IIII)V
    .locals 8
    .param p1, "pTitle"    # Ljava/lang/String;
    .param p2, "pContent"    # Ljava/lang/String;
    .param p3, "pInputMode"    # I
    .param p4, "pInputFlag"    # I
    .param p5, "pReturnType"    # I
    .param p6, "pMaxLength"    # I

    .prologue
    .line 284
    new-instance v7, Landroid/os/Message;

    invoke-direct {v7}, Landroid/os/Message;-><init>()V

    .line 285
    const/4 v0, 0x2

    iput v0, v7, Landroid/os/Message;->what:I

    .line 286
    new-instance v0, Lorg/cocos2dx/lib/Cocos2dxHandler$EditBoxMessage;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v6}, Lorg/cocos2dx/lib/Cocos2dxHandler$EditBoxMessage;-><init>(Ljava/lang/String;Ljava/lang/String;IIII)V

    iput-object v0, v7, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 287
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxActivity;->mHandler:Lorg/cocos2dx/lib/Cocos2dxHandler;

    invoke-virtual {v0, v7}, Lorg/cocos2dx/lib/Cocos2dxHandler;->sendMessage(Landroid/os/Message;)Z

    .line 288
    return-void
.end method
