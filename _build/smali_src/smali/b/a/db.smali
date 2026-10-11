.class public Lb/a/db;
.super Ljava/lang/Object;
.source "SessionTracker.java"


# static fields
.field private static c:Ljava/lang/String;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const/4 v0, 0x0

    sput-object v0, Lb/a/db;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const-string v0, "a_start_time"

    iput-object v0, p0, Lb/a/db;->a:Ljava/lang/String;

    .line 29
    const-string v0, "a_end_time"

    iput-object v0, p0, Lb/a/db;->b:Ljava/lang/String;

    return-void
.end method

.method private a(Landroid/content/Context;Landroid/content/SharedPreferences;)Ljava/lang/String;
    .locals 10

    .prologue
    const-wide/16 v8, 0x0

    .line 177
    invoke-static {p1}, Lb/a/cn;->a(Landroid/content/Context;)Lb/a/cn;

    move-result-object v1

    .line 178
    invoke-virtual {p0, p1}, Lb/a/db;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 180
    invoke-virtual {p0, p1}, Lb/a/db;->a(Landroid/content/Context;)Lb/a/j;

    move-result-object v0

    .line 182
    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 184
    const-string v4, "session_id"

    invoke-interface {v3, v4, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 185
    const-string v4, "session_start_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-interface {v3, v4, v6, v7}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 186
    const-string v4, "session_end_time"

    invoke-interface {v3, v4, v8, v9}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 187
    const-string v4, "a_start_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-interface {v3, v4, v6, v7}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 188
    const-string v4, "a_end_time"

    invoke-interface {v3, v4, v8, v9}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 190
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 192
    if-eqz v0, :cond_0

    .line 193
    invoke-virtual {v1, v0}, Lb/a/cn;->a(Lb/a/cs;)V

    .line 198
    :goto_0
    return-object v2

    .line 195
    :cond_0
    const/4 v0, 0x0

    check-cast v0, Lb/a/j;

    invoke-virtual {v1, v0}, Lb/a/cn;->a(Lb/a/cs;)V

    goto :goto_0
.end method

.method private a(Landroid/content/SharedPreferences;)V
    .locals 3

    .prologue
    .line 86
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 88
    const-string v1, "session_start_time"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 89
    const-string v1, "session_end_time"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 90
    const-string v1, "a_start_time"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 91
    const-string v1, "a_end_time"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 92
    const-string v1, "activities"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 94
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 95
    return-void
.end method

.method private b(Landroid/content/SharedPreferences;)Z
    .locals 10

    .prologue
    const/4 v0, 0x0

    const-wide/16 v8, 0x0

    .line 159
    const-string v1, "a_start_time"

    invoke-interface {p1, v1, v8, v9}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 160
    const-string v1, "a_end_time"

    invoke-interface {p1, v1, v8, v9}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    .line 161
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 164
    cmp-long v1, v2, v8

    if-eqz v1, :cond_1

    sub-long v2, v6, v2

    sget-wide v8, Lcom/b/a/a;->l:J

    cmp-long v1, v2, v8

    if-gez v1, :cond_1

    .line 165
    const-string v1, "MobclickAgent"

    const-string v2, "onResume called before onPause"

    invoke-static {v1, v2}, Lb/a/ap;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    :cond_0
    :goto_0
    return v0

    .line 169
    :cond_1
    sub-long v2, v6, v4

    sget-wide v4, Lcom/b/a/a;->l:J

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    .line 170
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static e(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 253
    sget-object v0, Lb/a/db;->c:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 254
    invoke-static {p0}, Lb/a/cz;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "session_id"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lb/a/db;->c:Ljava/lang/String;

    .line 256
    :cond_0
    sget-object v0, Lb/a/db;->c:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/Context;)Lb/a/j;
    .locals 14

    .prologue
    .line 35
    invoke-static {p1}, Lb/a/cz;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v9

    .line 37
    const-string v0, "session_id"

    const/4 v1, 0x0

    invoke-interface {v9, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 39
    if-nez v2, :cond_0

    const/4 v0, 0x0

    .line 82
    :goto_0
    return-object v0

    .line 41
    :cond_0
    const-string v0, "session_start_time"

    const-wide/16 v4, 0x0

    invoke-interface {v9, v0, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    .line 42
    const-string v0, "session_end_time"

    const-wide/16 v6, 0x0

    invoke-interface {v9, v0, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    .line 43
    const-wide/16 v0, 0x0

    .line 45
    const-wide/16 v10, 0x0

    cmp-long v3, v6, v10

    if-eqz v3, :cond_1

    .line 46
    sub-long v0, v6, v4

    .line 47
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v10

    const-wide/32 v12, 0x5265c00

    cmp-long v3, v10, v12

    if-lez v3, :cond_1

    .line 48
    const-wide/16 v0, 0x0

    .line 52
    :cond_1
    new-instance v8, Lb/a/j;

    invoke-direct {v8}, Lb/a/j;-><init>()V

    .line 54
    invoke-virtual {v8, v2}, Lb/a/j;->a(Ljava/lang/String;)Lb/a/ak;

    .line 55
    invoke-virtual {v8, v4, v5}, Lb/a/j;->a(J)Lb/a/ak;

    .line 56
    invoke-virtual {v8, v6, v7}, Lb/a/j;->b(J)Lb/a/ak;

    .line 57
    invoke-virtual {v8, v0, v1}, Lb/a/j;->c(J)Lb/a/ak;

    .line 59
    invoke-static {}, Lcom/b/a/a;->b()[D

    move-result-object v0

    .line 60
    if-eqz v0, :cond_2

    .line 61
    new-instance v1, Lb/a/ad;

    const/4 v2, 0x0

    aget-wide v2, v0, v2

    const/4 v4, 0x1

    aget-wide v4, v0, v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-direct/range {v1 .. v7}, Lb/a/ad;-><init>(DDJ)V

    .line 62
    invoke-virtual {v8}, Lb/a/j;->f()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 63
    invoke-virtual {v8, v1}, Lb/a/j;->a(Lb/a/ad;)V

    .line 69
    :cond_2
    :goto_1
    invoke-static {p1}, Lb/a/d;->a(Landroid/content/Context;)Lb/a/al;

    move-result-object v0

    .line 70
    if-eqz v0, :cond_3

    .line 71
    invoke-virtual {v8, v0}, Lb/a/j;->a(Lb/a/al;)Lb/a/ak;

    .line 74
    :cond_3
    invoke-static {v9}, Lb/a/e;->a(Landroid/content/SharedPreferences;)Ljava/util/List;

    move-result-object v0

    .line 76
    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_4

    .line 77
    invoke-virtual {v8, v0}, Lb/a/j;->a(Ljava/util/List;)Lb/a/ak;

    .line 80
    :cond_4
    invoke-direct {p0, v9}, Lb/a/db;->a(Landroid/content/SharedPreferences;)V

    move-object v0, v8

    .line 82
    goto :goto_0

    .line 65
    :cond_5
    const/4 v0, 0x1

    new-array v0, v0, [Lb/a/ad;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v8, v0}, Lb/a/j;->b(Ljava/util/List;)Lb/a/ak;

    goto :goto_1
.end method

.method public b(Landroid/content/Context;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 99
    invoke-static {p1}, Lb/a/ao;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 100
    invoke-static {p1}, Lcom/b/a/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 101
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 103
    if-nez v1, :cond_0

    .line 104
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Appkey is null or empty, Please check AndroidManifest.xml"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 107
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 108
    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 109
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 110
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lb/a/av;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lb/a/db;->c:Ljava/lang/String;

    .line 112
    sget-object v0, Lb/a/db;->c:Ljava/lang/String;

    return-object v0
.end method

.method public c(Landroid/content/Context;)V
    .locals 6

    .prologue
    .line 117
    invoke-static {p1}, Lb/a/cz;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 118
    if-nez v0, :cond_0

    .line 133
    :goto_0
    return-void

    .line 122
    :cond_0
    invoke-direct {p0, v0}, Lb/a/db;->b(Landroid/content/SharedPreferences;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 123
    invoke-direct {p0, p1, v0}, Lb/a/db;->a(Landroid/content/Context;Landroid/content/SharedPreferences;)Ljava/lang/String;

    move-result-object v0

    .line 124
    const-string v1, "MobclickAgent"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Start new session: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lb/a/ap;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 126
    :cond_1
    const-string v1, "session_id"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 127
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 128
    const-string v2, "a_start_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-interface {v0, v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 129
    const-string v2, "a_end_time"

    const-wide/16 v4, 0x0

    invoke-interface {v0, v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 130
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 131
    const-string v0, "MobclickAgent"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Extend current session: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lb/a/ap;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public d(Landroid/content/Context;)V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 136
    invoke-static {p1}, Lb/a/cz;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 137
    if-nez v0, :cond_0

    .line 156
    :goto_0
    return-void

    .line 141
    :cond_0
    const-string v1, "a_start_time"

    invoke-interface {v0, v1, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 143
    cmp-long v1, v2, v4

    if-nez v1, :cond_1

    sget-boolean v1, Lcom/b/a/a;->h:Z

    if-eqz v1, :cond_1

    .line 144
    const-string v0, "MobclickAgent"

    const-string v1, "onPause called before onResume"

    invoke-static {v0, v1}, Lb/a/ap;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 146
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 148
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 150
    const-string v1, "a_start_time"

    invoke-interface {v0, v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 151
    const-string v1, "a_end_time"

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 152
    const-string v1, "session_end_time"

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 154
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method
