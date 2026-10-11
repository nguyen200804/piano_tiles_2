.class public Lcom/cmplay/base/util/gif/LibraryLoader;
.super Ljava/lang/Object;
.source "LibraryLoader.java"


# static fields
.field static final BASE_LIBRARY_NAME:Ljava/lang/String; = "com_cmplay_base_util_gif"

.field static final SURFACE_LIBRARY_NAME:Ljava/lang/String; = "com_cmplay_base_util_gif_surface"

.field private static sAppContext:Landroid/content/Context;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    return-void
.end method

.method private static getContext()Landroid/content/Context;
    .locals 3

    .prologue
    .line 34
    sget-object v0, Lcom/cmplay/base/util/gif/LibraryLoader;->sAppContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 36
    :try_start_0
    const-string v0, "android.app.ActivityThread"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 37
    const-string v1, "currentApplication"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 38
    const/4 v1, 0x0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    sput-object v0, Lcom/cmplay/base/util/gif/LibraryLoader;->sAppContext:Landroid/content/Context;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    :cond_0
    sget-object v0, Lcom/cmplay/base/util/gif/LibraryLoader;->sAppContext:Landroid/content/Context;

    return-object v0

    .line 39
    :catch_0
    move-exception v0

    .line 40
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "LibraryLoader not initialized. Call LibraryLoader.initialize() before using library classes."

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static initialize(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 30
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/cmplay/base/util/gif/LibraryLoader;->sAppContext:Landroid/content/Context;

    .line 31
    return-void
.end method

.method static loadLibrary(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 48
    :try_start_0
    const-string v0, "loadLibrary"

    const-string v1, "loadLibrary"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    const-string v0, "com_cmplay_base_util_gif"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    :goto_0
    return-void

    .line 50
    :catch_0
    move-exception v0

    .line 51
    const-string v0, "loadLibrary"

    const-string v1, "UnsatisfiedLinkError loadLibrary"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    if-nez p0, :cond_0

    .line 53
    invoke-static {}, Lcom/cmplay/base/util/gif/LibraryLoader;->getContext()Landroid/content/Context;

    move-result-object p0

    .line 55
    :cond_0
    invoke-static {p0}, Lcom/cmplay/base/util/gif/ReLinker;->loadLibrary(Landroid/content/Context;)V

    goto :goto_0
.end method
