.class public Lcom/cmplay/base/util/s;
.super Ljava/lang/Object;
.source "SharePreferenceUtil.java"


# direct methods
.method public static a(Landroid/content/SharedPreferences$Editor;)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 10
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-lt v0, v1, :cond_0

    .line 11
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 15
    :goto_0
    return-void

    .line 13
    :cond_0
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method
