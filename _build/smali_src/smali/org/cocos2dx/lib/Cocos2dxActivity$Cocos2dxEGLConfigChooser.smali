.class public Lorg/cocos2dx/lib/Cocos2dxActivity$Cocos2dxEGLConfigChooser;
.super Ljava/lang/Object;
.source "Cocos2dxActivity.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$EGLConfigChooser;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/cocos2dx/lib/Cocos2dxActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Cocos2dxEGLConfigChooser"
.end annotation


# instance fields
.field protected configAttribs:[I

.field final synthetic this$0:Lorg/cocos2dx/lib/Cocos2dxActivity;


# direct methods
.method public constructor <init>(Lorg/cocos2dx/lib/Cocos2dxActivity;IIIIII)V
    .locals 2
    .param p2, "redSize"    # I
    .param p3, "greenSize"    # I
    .param p4, "blueSize"    # I
    .param p5, "alphaSize"    # I
    .param p6, "depthSize"    # I
    .param p7, "stencilSize"    # I

    .prologue
    .line 72
    iput-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxActivity$Cocos2dxEGLConfigChooser;->this$0:Lorg/cocos2dx/lib/Cocos2dxActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    const/4 v0, 0x6

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p2, v0, v1

    const/4 v1, 0x1

    aput p3, v0, v1

    const/4 v1, 0x2

    aput p4, v0, v1

    const/4 v1, 0x3

    aput p5, v0, v1

    const/4 v1, 0x4

    aput p6, v0, v1

    const/4 v1, 0x5

    aput p7, v0, v1

    iput-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxActivity$Cocos2dxEGLConfigChooser;->configAttribs:[I

    .line 74
    return-void
.end method

.method public constructor <init>(Lorg/cocos2dx/lib/Cocos2dxActivity;[I)V
    .locals 0
    .param p2, "attribs"    # [I

    .prologue
    .line 76
    iput-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxActivity$Cocos2dxEGLConfigChooser;->this$0:Lorg/cocos2dx/lib/Cocos2dxActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput-object p2, p0, Lorg/cocos2dx/lib/Cocos2dxActivity$Cocos2dxEGLConfigChooser;->configAttribs:[I

    .line 78
    return-void
.end method

.method private findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I
    .locals 2
    .param p1, "egl"    # Ljavax/microedition/khronos/egl/EGL10;
    .param p2, "display"    # Ljavax/microedition/khronos/egl/EGLDisplay;
    .param p3, "config"    # Ljavax/microedition/khronos/egl/EGLConfig;
    .param p4, "attribute"    # I
    .param p5, "defaultValue"    # I

    .prologue
    .line 107
    const/4 v0, 0x1

    new-array v0, v0, [I

    .line 108
    invoke-interface {p1, p2, p3, p4, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 109
    const/4 v1, 0x0

    aget p5, v0, v1

    .line 111
    .end local p5    # "defaultValue":I
    :cond_0
    return p5
.end method


# virtual methods
.method public chooseConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;)Ljavax/microedition/khronos/egl/EGLConfig;
    .locals 11
    .param p1, "egl"    # Ljavax/microedition/khronos/egl/EGL10;
    .param p2, "display"    # Ljavax/microedition/khronos/egl/EGLDisplay;

    .prologue
    const/4 v10, 0x6

    const/4 v7, 0x4

    const/4 v9, 0x3

    const/4 v5, 0x1

    const/4 v8, 0x0

    .line 117
    new-array v6, v5, [I

    .line 118
    const/4 v0, 0x0

    invoke-interface {p1, p2, v0, v8, v6}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigs(Ljavax/microedition/khronos/egl/EGLDisplay;[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 120
    aget v0, v6, v8

    new-array v3, v0, [Ljavax/microedition/khronos/egl/EGLConfig;

    .line 121
    const/16 v0, 0xf

    new-array v2, v0, [I

    const/16 v0, 0x3024

    aput v0, v2, v8

    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxActivity$Cocos2dxEGLConfigChooser;->configAttribs:[I

    aget v0, v0, v8

    aput v0, v2, v5

    const/4 v0, 0x2

    const/16 v1, 0x3023

    aput v1, v2, v0

    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxActivity$Cocos2dxEGLConfigChooser;->configAttribs:[I

    aget v0, v0, v5

    aput v0, v2, v9

    const/16 v0, 0x3022

    aput v0, v2, v7

    const/4 v0, 0x5

    iget-object v1, p0, Lorg/cocos2dx/lib/Cocos2dxActivity$Cocos2dxEGLConfigChooser;->configAttribs:[I

    const/4 v4, 0x2

    aget v1, v1, v4

    aput v1, v2, v0

    const/16 v0, 0x3021

    aput v0, v2, v10

    const/4 v0, 0x7

    iget-object v1, p0, Lorg/cocos2dx/lib/Cocos2dxActivity$Cocos2dxEGLConfigChooser;->configAttribs:[I

    aget v1, v1, v9

    aput v1, v2, v0

    const/16 v0, 0x8

    const/16 v1, 0x3025

    aput v1, v2, v0

    const/16 v0, 0x9

    iget-object v1, p0, Lorg/cocos2dx/lib/Cocos2dxActivity$Cocos2dxEGLConfigChooser;->configAttribs:[I

    aget v1, v1, v7

    aput v1, v2, v0

    const/16 v0, 0xa

    const/16 v1, 0x3026

    aput v1, v2, v0

    const/16 v0, 0xb

    iget-object v1, p0, Lorg/cocos2dx/lib/Cocos2dxActivity$Cocos2dxEGLConfigChooser;->configAttribs:[I

    const/4 v4, 0x5

    aget v1, v1, v4

    aput v1, v2, v0

    const/16 v0, 0xc

    const/16 v1, 0x3040

    aput v1, v2, v0

    const/16 v0, 0xd

    aput v7, v2, v0

    const/16 v0, 0xe

    const/16 v1, 0x3038

    aput v1, v2, v0

    .line 131
    new-array v5, v5, [I

    .line 133
    aget v4, v6, v8

    move-object v0, p1

    move-object v1, p2

    invoke-interface/range {v0 .. v5}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 134
    aget v0, v5, v8

    if-lez v0, :cond_0

    .line 136
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxActivity$Cocos2dxEGLConfigChooser;->configAttribs:[I

    invoke-virtual {p0, p1, p2, v3, v0}, Lorg/cocos2dx/lib/Cocos2dxActivity$Cocos2dxEGLConfigChooser;->selectConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;[Ljavax/microedition/khronos/egl/EGLConfig;[I)Ljavax/microedition/khronos/egl/EGLConfig;

    move-result-object v0

    .line 184
    :goto_0
    return-object v0

    .line 140
    :cond_0
    const/16 v0, 0xf

    new-array v2, v0, [I

    fill-array-data v2, :array_0

    .line 150
    const/16 v0, 0xf

    new-array v7, v0, [I

    fill-array-data v7, :array_1

    .line 162
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxActivity$Cocos2dxEGLConfigChooser;->configAttribs:[I

    aget v0, v0, v9

    if-nez v0, :cond_1

    .line 164
    aget v4, v6, v8

    move-object v0, p1

    move-object v1, p2

    invoke-interface/range {v0 .. v5}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 165
    new-array v0, v10, [I

    fill-array-data v0, :array_2

    .line 172
    :goto_1
    aget v1, v5, v8

    if-lez v1, :cond_2

    .line 174
    invoke-virtual {p0, p1, p2, v3, v0}, Lorg/cocos2dx/lib/Cocos2dxActivity$Cocos2dxEGLConfigChooser;->selectConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;[Ljavax/microedition/khronos/egl/EGLConfig;[I)Ljavax/microedition/khronos/egl/EGLConfig;

    move-result-object v0

    goto :goto_0

    .line 169
    :cond_1
    aget v4, v6, v8

    move-object v0, p1

    move-object v1, p2

    move-object v2, v7

    invoke-interface/range {v0 .. v5}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 170
    new-array v0, v10, [I

    fill-array-data v0, :array_3

    goto :goto_1

    .line 178
    :cond_2
    const-string v0, "device_policy"

    const-string v1, "Can not select an EGLConfig for rendering."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    const/4 v0, 0x0

    goto :goto_0

    .line 183
    :cond_3
    const-string v0, "device_policy"

    const-string v1, "Can not select an EGLConfig for rendering."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    const/4 v0, 0x0

    goto :goto_0

    .line 140
    :array_0
    .array-data 4
        0x3024
        0x5
        0x3023
        0x6
        0x3022
        0x5
        0x3021
        0x0
        0x3025
        0x0
        0x3026
        0x0
        0x3040
        0x4
        0x3038
    .end array-data

    .line 150
    :array_1
    .array-data 4
        0x3024
        0x4
        0x3023
        0x4
        0x3022
        0x4
        0x3021
        0x4
        0x3025
        0x0
        0x3026
        0x0
        0x3040
        0x4
        0x3038
    .end array-data

    .line 165
    :array_2
    .array-data 4
        0x5
        0x6
        0x5
        0x0
        0x0
        0x0
    .end array-data

    .line 170
    :array_3
    .array-data 4
        0x4
        0x4
        0x4
        0x4
        0x0
        0x0
    .end array-data
.end method

.method public selectConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;[Ljavax/microedition/khronos/egl/EGLConfig;[I)Ljavax/microedition/khronos/egl/EGLConfig;
    .locals 11
    .param p1, "egl"    # Ljavax/microedition/khronos/egl/EGL10;
    .param p2, "display"    # Ljavax/microedition/khronos/egl/EGLDisplay;
    .param p3, "configs"    # [Ljavax/microedition/khronos/egl/EGLConfig;
    .param p4, "attribs"    # [I

    .prologue
    const/4 v5, 0x0

    .line 82
    array-length v7, p3

    move v6, v5

    :goto_0
    if-ge v6, v7, :cond_1

    aget-object v3, p3, v6

    .line 83
    const/16 v4, 0x3025

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lorg/cocos2dx/lib/Cocos2dxActivity$Cocos2dxEGLConfigChooser;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v8

    .line 85
    const/16 v4, 0x3026

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lorg/cocos2dx/lib/Cocos2dxActivity$Cocos2dxEGLConfigChooser;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v0

    .line 87
    const/4 v1, 0x4

    aget v1, p4, v1

    if-lt v8, v1, :cond_0

    const/4 v1, 0x5

    aget v1, p4, v1

    if-lt v0, v1, :cond_0

    .line 88
    const/16 v4, 0x3024

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lorg/cocos2dx/lib/Cocos2dxActivity$Cocos2dxEGLConfigChooser;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v8

    .line 90
    const/16 v4, 0x3023

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lorg/cocos2dx/lib/Cocos2dxActivity$Cocos2dxEGLConfigChooser;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v9

    .line 92
    const/16 v4, 0x3022

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lorg/cocos2dx/lib/Cocos2dxActivity$Cocos2dxEGLConfigChooser;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v10

    .line 94
    const/16 v4, 0x3021

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lorg/cocos2dx/lib/Cocos2dxActivity$Cocos2dxEGLConfigChooser;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v0

    .line 96
    aget v1, p4, v5

    if-lt v8, v1, :cond_0

    const/4 v1, 0x1

    aget v1, p4, v1

    if-lt v9, v1, :cond_0

    const/4 v1, 0x2

    aget v1, p4, v1

    if-lt v10, v1, :cond_0

    const/4 v1, 0x3

    aget v1, p4, v1

    if-lt v0, v1, :cond_0

    .line 102
    :goto_1
    return-object v3

    .line 82
    :cond_0
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_0

    .line 102
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method
