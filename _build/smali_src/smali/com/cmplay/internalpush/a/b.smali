.class public Lcom/cmplay/internalpush/a/b;
.super Ljava/lang/Object;
.source "CommonUtil.java"


# direct methods
.method public static a()J
    .locals 4

    .prologue
    .line 211
    const-wide/16 v0, -0x1

    .line 212
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v2

    const-string v3, "mounted"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 213
    new-instance v0, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    .line 214
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 215
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x12

    if-lt v1, v2, :cond_1

    .line 217
    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSizeLong()J

    move-result-wide v2

    .line 219
    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocksLong()J

    move-result-wide v0

    .line 220
    mul-long/2addr v0, v2

    .line 229
    :cond_0
    :goto_0
    return-wide v0

    .line 222
    :cond_1
    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSize()I

    move-result v1

    int-to-long v2, v1

    .line 223
    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v0

    int-to-long v0, v0

    .line 224
    mul-long/2addr v0, v2

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;)J
    .locals 2

    .prologue
    .line 201
    const-string v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 202
    new-instance v1, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v1}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 203
    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 204
    iget-wide v0, v1, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    return-wide v0
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 71
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    const/4 v0, 0x0

    .line 79
    :goto_0
    return-object v0

    .line 74
    :cond_0
    invoke-static {p0}, Lcom/cmplay/base/util/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 75
    if-nez v0, :cond_1

    .line 76
    const-string v0, ""

    .line 78
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Lcom/cmplay/internalpush/data/d;)V
    .locals 1

    .prologue
    .line 127
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/cmplay/internalpush/a/b;->a(Landroid/content/Context;Lcom/cmplay/internalpush/data/d;Lcom/cmplay/base/util/t;)V

    .line 128
    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/cmplay/internalpush/data/d;Lcom/cmplay/base/util/t;)V
    .locals 4

    .prologue
    .line 95
    invoke-static {p0, p1}, Lcom/cmplay/internalpush/a/b;->b(Landroid/content/Context;Lcom/cmplay/internalpush/data/d;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 96
    invoke-virtual {p1}, Lcom/cmplay/internalpush/data/d;->h()I

    move-result v0

    .line 97
    invoke-virtual {p1}, Lcom/cmplay/internalpush/data/d;->g()Ljava/lang/String;

    move-result-object v1

    .line 98
    invoke-virtual {p1}, Lcom/cmplay/internalpush/data/d;->c()Ljava/lang/String;

    move-result-object v2

    .line 99
    const/4 v3, 0x1

    if-ne v3, v0, :cond_1

    .line 101
    invoke-static {p0, v1, v2, p2}, Lcom/cmplay/base/util/k;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/cmplay/base/util/t;)Z

    .line 120
    :cond_0
    :goto_0
    return-void

    .line 102
    :cond_1
    const/4 v2, 0x2

    if-ne v2, v0, :cond_2

    invoke-static {}, Lcom/cmplay/internalpush/k;->a()Lcom/cmplay/internalpush/h;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 103
    invoke-static {}, Lcom/cmplay/internalpush/k;->a()Lcom/cmplay/internalpush/h;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/cmplay/internalpush/h;->b(Ljava/lang/String;)Z

    move-result v0

    .line 104
    if-nez v0, :cond_0

    .line 105
    invoke-static {p0, v1}, Lcom/cmplay/base/util/k;->d(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 107
    :cond_2
    const/4 v2, 0x3

    if-ne v2, v0, :cond_3

    .line 108
    invoke-static {p0}, Lcom/cmplay/base/util/a/a;->a(Landroid/content/Context;)Lcom/cmplay/base/util/a/a;

    move-result-object v0

    invoke-virtual {p1}, Lcom/cmplay/internalpush/data/d;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/cmplay/base/util/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 109
    :cond_3
    const/4 v2, 0x4

    if-ne v2, v0, :cond_4

    invoke-static {}, Lcom/cmplay/internalpush/k;->a()Lcom/cmplay/internalpush/h;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 110
    invoke-static {}, Lcom/cmplay/internalpush/k;->a()Lcom/cmplay/internalpush/h;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/cmplay/internalpush/h;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 111
    :cond_4
    const/4 v2, 0x6

    if-ne v2, v0, :cond_5

    .line 112
    invoke-virtual {p1}, Lcom/cmplay/internalpush/data/d;->j()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/cmplay/base/util/k;->a(Landroid/content/Context;Ljava/util/ArrayList;)Z

    move-result v0

    .line 113
    if-nez v0, :cond_0

    .line 114
    invoke-static {p0, v1}, Lcom/cmplay/base/util/k;->d(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 117
    :cond_5
    invoke-static {p0, v1}, Lcom/cmplay/base/util/k;->d(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static a(J)Z
    .locals 8

    .prologue
    const/4 v6, 0x5

    const/4 v5, 0x2

    const/4 v0, 0x1

    .line 233
    .line 234
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 235
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 236
    invoke-virtual {v2, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 237
    invoke-virtual {v2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v4

    if-ne v3, v4, :cond_0

    .line 238
    invoke-virtual {v2, v5}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v1, v5}, Ljava/util/Calendar;->get(I)I

    move-result v4

    if-ne v3, v4, :cond_0

    .line 239
    invoke-virtual {v2, v6}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v1, v6}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-ne v2, v1, :cond_0

    .line 240
    :goto_0
    return v0

    .line 239
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 57
    .line 58
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 60
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    const/4 v0, 0x1

    .line 66
    :cond_0
    :goto_0
    return v0

    .line 62
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;Lcom/cmplay/internalpush/data/d;)Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 137
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/cmplay/internalpush/data/d;->h()I

    move-result v0

    const/4 v3, 0x4

    if-eq v0, v3, :cond_0

    invoke-virtual {p1}, Lcom/cmplay/internalpush/data/d;->h()I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_1

    .line 138
    :cond_0
    const-string v0, "internal_push"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CommonUtil.openInnerPushAppIfInstalled  jumpType:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/cmplay/internalpush/data/d;->h()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "    return false"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cmplay/base/util/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v2

    .line 163
    :goto_0
    return v0

    .line 142
    :cond_1
    invoke-virtual {p1}, Lcom/cmplay/internalpush/data/d;->j()Ljava/util/ArrayList;

    move-result-object v0

    .line 143
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    .line 144
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cmplay/base/util/b;

    .line 145
    if-eqz v0, :cond_2

    .line 146
    iget-object v0, v0, Lcom/cmplay/base/util/b;->b:Ljava/lang/String;

    .line 147
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-static {p0, v0}, Lcom/cmplay/internalpush/a/b;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 148
    const-string v2, "internal_push"

    const-string v3, "CommonUtil.openInnerPushAppIfInstalled  1    PackageUtils.openApp"

    invoke-static {v2, v3}, Lcom/cmplay/base/util/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    invoke-static {p0, v0}, Lcom/cmplay/base/util/n;->d(Landroid/content/Context;Ljava/lang/String;)Z

    move v0, v1

    .line 150
    goto :goto_0

    .line 155
    :cond_3
    invoke-virtual {p1}, Lcom/cmplay/internalpush/data/d;->f()Ljava/lang/String;

    move-result-object v0

    .line 156
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    invoke-static {p0, v0}, Lcom/cmplay/internalpush/a/b;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 157
    const-string v2, "internal_push"

    const-string v3, "CommonUtil.openInnerPushAppIfInstalled  2    PackageUtils.openApp"

    invoke-static {v2, v3}, Lcom/cmplay/base/util/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    invoke-static {p0, v0}, Lcom/cmplay/base/util/n;->d(Landroid/content/Context;Ljava/lang/String;)Z

    move v0, v1

    .line 159
    goto :goto_0

    :cond_4
    move v0, v2

    .line 163
    goto :goto_0
.end method

.method public static c(Landroid/content/Context;Lcom/cmplay/internalpush/data/d;)Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 173
    if-nez p1, :cond_0

    move v0, v1

    .line 194
    :goto_0
    return v0

    .line 177
    :cond_0
    invoke-virtual {p1}, Lcom/cmplay/internalpush/data/d;->j()Ljava/util/ArrayList;

    move-result-object v0

    .line 178
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 179
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cmplay/base/util/b;

    .line 180
    if-eqz v0, :cond_1

    .line 181
    iget-object v0, v0, Lcom/cmplay/base/util/b;->b:Ljava/lang/String;

    .line 182
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-static {p0, v0}, Lcom/cmplay/internalpush/a/b;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v2

    .line 183
    goto :goto_0

    .line 188
    :cond_2
    invoke-virtual {p1}, Lcom/cmplay/internalpush/data/d;->f()Ljava/lang/String;

    move-result-object v0

    .line 189
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-static {p0, v0}, Lcom/cmplay/internalpush/a/b;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v2

    .line 190
    goto :goto_0

    :cond_3
    move v0, v1

    .line 194
    goto :goto_0
.end method
