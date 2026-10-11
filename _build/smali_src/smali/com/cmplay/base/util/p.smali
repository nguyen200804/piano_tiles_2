.class public Lcom/cmplay/base/util/p;
.super Ljava/lang/Object;
.source "PhoneModelUtils.java"


# direct methods
.method public static a()Z
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 93
    const-string v0, "ro.build.version.emui"

    const-string v3, "unkonw"

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 94
    if-nez v0, :cond_1

    .line 118
    :cond_0
    :goto_0
    return v2

    .line 96
    :cond_1
    const-string v3, "_"

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 97
    array-length v3, v0

    if-le v3, v1, :cond_0

    .line 98
    aget-object v3, v0, v2

    const-string v4, "EmotionUI"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 99
    aget-object v0, v0, v1

    const-string v3, "\\."

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 100
    const-string v0, "2.3"

    const-string v3, "\\."

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 101
    array-length v0, v4

    array-length v3, v5

    if-le v0, v3, :cond_2

    array-length v0, v5

    :goto_1
    move v3, v2

    .line 102
    :goto_2
    if-ge v3, v0, :cond_5

    .line 104
    :try_start_0
    aget-object v6, v4, v3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 105
    aget-object v7, v5, v3

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    .line 106
    if-ne v6, v7, :cond_3

    .line 102
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 101
    :cond_2
    array-length v0, v4

    goto :goto_1

    .line 109
    :cond_3
    if-le v6, v7, :cond_4

    move v0, v1

    :goto_3
    move v2, v0

    goto :goto_0

    :cond_4
    move v0, v2

    goto :goto_3

    :cond_5
    move v2, v1

    .line 115
    goto :goto_0

    .line 111
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 69
    invoke-static {}, Lcom/cmplay/base/util/p;->b()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Lcom/cmplay/base/util/p;->a()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 70
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 73
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 75
    invoke-static {}, Lcom/cmplay/base/util/p;->a()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-static {}, Lcom/cmplay/base/util/p;->c()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 76
    :cond_1
    iget v0, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {p0, v0, v2}, Lcom/cmplay/base/util/p;->a(Landroid/content/Context;ILjava/lang/String;)Z

    move-result v0

    .line 87
    :cond_2
    :goto_0
    return v0

    .line 78
    :cond_3
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x13

    if-lt v2, v4, :cond_4

    .line 79
    const/high16 v2, 0x2000000

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v2, v3

    if-eqz v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 81
    :cond_4
    const/high16 v2, 0x8000000

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    and-int/2addr v2, v3

    if-eqz v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 84
    :catch_0
    move-exception v0

    :cond_5
    move v0, v1

    .line 87
    goto :goto_0
.end method

.method private static a(Landroid/content/Context;ILjava/lang/String;)Z
    .locals 9

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 23
    .line 26
    :try_start_0
    const-string v0, "android.content.Context"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 27
    const-string v0, "APP_OPS_SERVICE"

    invoke-virtual {v3, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 28
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 29
    invoke-virtual {v0, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 30
    const-string v4, ""

    .line 31
    instance-of v4, v0, Ljava/lang/String;

    if-eqz v4, :cond_1

    .line 32
    check-cast v0, Ljava/lang/String;

    .line 33
    const-string v4, "getSystemService"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 34
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-virtual {v3, p0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 35
    const-string v3, "android.app.AppOpsManager"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 36
    const-string v4, "MODE_ALLOWED"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    .line 37
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 38
    invoke-virtual {v4, v3}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v4

    .line 40
    const-string v5, "checkOp"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v6, v7

    const/4 v7, 0x1

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v6, v7

    const/4 v7, 0x2

    const-class v8, Ljava/lang/String;

    aput-object v8, v6, v7

    invoke-virtual {v3, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 41
    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const/16 v7, 0x18

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    aput-object p2, v5, v6

    invoke-virtual {v3, v0, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 42
    if-eq v0, v4, :cond_0

    move v0, v1

    .line 46
    :goto_0
    return v0

    :cond_0
    move v0, v2

    .line 42
    goto :goto_0

    .line 44
    :catch_0
    move-exception v0

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_0
.end method

.method public static b()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 122
    const-string v1, "ro.miui.ui.version.name"

    const-string v2, "unkonw"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 123
    if-nez v1, :cond_1

    .line 129
    :cond_0
    :goto_0
    return v0

    .line 126
    :cond_1
    const-string v2, "V5"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "V6"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 127
    :cond_2
    invoke-static {}, Lcom/cmplay/base/util/p;->d()Z

    move-result v0

    goto :goto_0
.end method

.method public static c()Z
    .locals 2

    .prologue
    .line 137
    const-string v0, "ro.miui.ui.version.name"

    const-string v1, "unkonw"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 138
    const-string v1, "V6"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 139
    invoke-static {}, Lcom/cmplay/base/util/p;->d()Z

    move-result v0

    .line 141
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static d()Z
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 159
    :try_start_0
    const-string v2, "ro.build.version.incremental"

    const-string v3, "unkonw"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 160
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 193
    :goto_0
    return v0

    .line 164
    :cond_0
    const-string v3, "(?i)[a-z]"

    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    .line 165
    if-eqz v3, :cond_2

    .line 167
    const-string v3, "JLB"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 168
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    .line 169
    const/4 v4, 0x3

    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 170
    invoke-static {v2}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    .line 171
    const/high16 v3, 0x41b00000    # 22.0f

    cmpg-float v2, v2, v3

    if-gez v2, :cond_5

    :goto_1
    move v1, v0

    :cond_1
    :goto_2
    move v0, v1

    .line 193
    goto :goto_0

    .line 177
    :cond_2
    const-string v3, "\\."

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 178
    const-string v2, "3.3.29"

    const-string v3, "\\."

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 179
    array-length v2, v4

    array-length v3, v5

    if-le v2, v3, :cond_3

    array-length v2, v5

    :goto_3
    move v3, v0

    .line 180
    :goto_4
    if-ge v3, v2, :cond_1

    .line 181
    aget-object v6, v4, v3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 182
    aget-object v7, v5, v3

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 183
    if-ne v6, v7, :cond_4

    .line 180
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 179
    :cond_3
    array-length v2, v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 186
    :cond_4
    if-gt v6, v7, :cond_1

    move v1, v0

    goto :goto_2

    .line 191
    :catch_0
    move-exception v0

    goto :goto_2

    :cond_5
    move v0, v1

    goto :goto_1
.end method
