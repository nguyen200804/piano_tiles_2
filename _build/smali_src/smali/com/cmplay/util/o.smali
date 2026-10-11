.class public Lcom/cmplay/util/o;
.super Ljava/lang/Object;
.source "MemUtil.java"


# direct methods
.method public static a(Landroid/content/Context;)I
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 66
    const-string v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 67
    if-nez v0, :cond_0

    move v0, v1

    .line 75
    :goto_0
    return v0

    .line 70
    :cond_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    .line 71
    new-array v3, v4, [I

    aput v2, v3, v1

    invoke-virtual {v0, v3}, Landroid/app/ActivityManager;->getProcessMemoryInfo([I)[Landroid/os/Debug$MemoryInfo;

    move-result-object v0

    .line 72
    if-eqz v0, :cond_1

    array-length v2, v0

    if-ge v2, v4, :cond_2

    :cond_1
    move v0, v1

    .line 73
    goto :goto_0

    .line 75
    :cond_2
    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/os/Debug$MemoryInfo;->getTotalPss()I

    move-result v0

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 58
    return-void
.end method
