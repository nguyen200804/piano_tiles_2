.class public Lcom/cmplay/crashreport/t;
.super Ljava/lang/Object;


# static fields
.field private static a:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/cmplay/crashreport/t;->a:Z

    return-void
.end method

.method public static a(Ljava/lang/Throwable;)Z
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v2, p0, Ljava/lang/OutOfMemoryError;

    if-eqz v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    instance-of v2, p0, Landroid/database/sqlite/SQLiteDatabaseCorruptException;

    if-eqz v2, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    instance-of v2, p0, Landroid/view/WindowManager$BadTokenException;

    if-eqz v2, :cond_4

    move v0, v1

    goto :goto_0

    :cond_4
    instance-of v2, p0, Ljava/lang/VerifyError;

    if-eqz v2, :cond_5

    move v0, v1

    goto :goto_0

    :cond_5
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xf

    if-lt v2, v3, :cond_6

    instance-of v2, p0, Landroid/database/CursorWindowAllocationException;

    if-eqz v2, :cond_6

    move v0, v1

    goto :goto_0

    :cond_6
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    instance-of v3, p0, Ljava/lang/SecurityException;

    if-eqz v3, :cond_8

    if-eqz v2, :cond_8

    const-string v3, "Not allowed to start service Intent"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_7

    const-string v3, "Service process is bad"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_7

    move v0, v1

    goto :goto_0

    :cond_7
    const-string v3, "when starting service"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_8

    const-string v3, "com.cleanmaster.service.FloatService"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_8

    move v0, v1

    goto :goto_0

    :cond_8
    instance-of v3, p0, Ljava/lang/IllegalArgumentException;

    if-eqz v3, :cond_9

    if-eqz v2, :cond_9

    const-string v3, "Unknown URL"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_9

    move v0, v1

    goto :goto_0

    :cond_9
    if-eqz v2, :cond_0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Couldn\'t expand RemoteViews for"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_a

    move v0, v1

    goto :goto_0

    :cond_a
    const-string v3, "Bad notification posted from"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_b

    move v0, v1

    goto :goto_0

    :cond_b
    const-string v3, "CRITICAL ERROR"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_c

    move v0, v1

    goto/16 :goto_0

    :cond_c
    const-string v3, "infoc data format error"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto/16 :goto_0
.end method

.method public static b(Ljava/lang/Throwable;)Z
    .locals 2

    instance-of v0, p0, Ljava/util/concurrent/TimeoutException;

    if-eqz v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "timed out after 10 seconds"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static c(Ljava/lang/Throwable;)Z
    .locals 3

    const/4 v0, 0x1

    instance-of v1, p0, Ljava/lang/NoClassDefFoundError;

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v1, p0, Ljava/lang/ClassNotFoundException;

    if-nez v1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_2

    instance-of v2, v1, Ljava/lang/NoClassDefFoundError;

    if-nez v2, :cond_0

    instance-of v1, v1, Ljava/lang/ClassNotFoundException;

    if-nez v1, :cond_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
