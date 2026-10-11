.class public Lcom/cmplay/util/b/d;
.super Ljava/lang/Object;
.source "ServicePreferencesHelper.java"

# interfaces
.implements Lcom/cmplay/util/k;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cmplay/util/b/d$b;,
        Lcom/cmplay/util/b/d$a;
    }
.end annotation


# static fields
.field private static e:Ljava/lang/String;

.field private static f:Ljava/lang/String;

.field private static g:Ljava/lang/String;

.field private static h:Ljava/lang/String;

.field private static i:Ljava/lang/String;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/content/SharedPreferences;

.field private c:Ljava/lang/String;

.field private d:Lcom/cmplay/util/b/d$b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 181
    const-string v0, "pref_name"

    sput-object v0, Lcom/cmplay/util/b/d;->e:Ljava/lang/String;

    .line 182
    const-string v0, "action"

    sput-object v0, Lcom/cmplay/util/b/d;->f:Ljava/lang/String;

    .line 183
    const-string v0, "type"

    sput-object v0, Lcom/cmplay/util/b/d;->g:Ljava/lang/String;

    .line 184
    const-string v0, "key"

    sput-object v0, Lcom/cmplay/util/b/d;->h:Ljava/lang/String;

    .line 185
    const-string v0, "value"

    sput-object v0, Lcom/cmplay/util/b/d;->i:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cmplay/util/b/d;->d:Lcom/cmplay/util/b/d$b;

    .line 29
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 30
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 32
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/cmplay/util/b/d;->a:Landroid/content/Context;

    .line 33
    iput-object p2, p0, Lcom/cmplay/util/b/d;->c:Ljava/lang/String;

    .line 34
    new-instance v0, Lcom/cmplay/util/b/d$b;

    iget-object v1, p0, Lcom/cmplay/util/b/d;->c:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/cmplay/util/b/d$b;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/cmplay/util/b/d;->d:Lcom/cmplay/util/b/d$b;

    .line 35
    invoke-static {}, Lcom/cmplay/i/c;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 36
    iget-object v0, p0, Lcom/cmplay/util/b/d;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/cmplay/util/b/d;->c:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/cmplay/util/b/d;->b:Landroid/content/SharedPreferences;

    .line 38
    :cond_1
    return-void
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/cmplay/util/b/d;->e:Ljava/lang/String;

    return-object v0
.end method

.method private a(Landroid/content/SharedPreferences$Editor;)V
    .locals 2

    .prologue
    .line 174
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-lt v0, v1, :cond_0

    .line 175
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 179
    :goto_0
    return-void

    .line 177
    :cond_0
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method static synthetic b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/cmplay/util/b/d;->f:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/cmplay/util/b/d;->g:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/cmplay/util/b/d;->h:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/cmplay/util/b/d;->i:Ljava/lang/String;

    return-object v0
.end method

.method private f()Landroid/content/SharedPreferences;
    .locals 3

    .prologue
    .line 41
    invoke-static {}, Lcom/cmplay/i/c;->d()V

    .line 42
    iget-object v0, p0, Lcom/cmplay/util/b/d;->b:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 43
    iget-object v0, p0, Lcom/cmplay/util/b/d;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/cmplay/util/b/d;->c:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/cmplay/util/b/d;->b:Landroid/content/SharedPreferences;

    .line 45
    :cond_0
    iget-object v0, p0, Lcom/cmplay/util/b/d;->b:Landroid/content/SharedPreferences;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;F)F
    .locals 1

    .prologue
    .line 90
    invoke-static {}, Lcom/cmplay/i/c;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 91
    invoke-direct {p0}, Lcom/cmplay/util/b/d;->f()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 92
    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result p2

    .line 94
    :cond_0
    :goto_0
    return p2

    :cond_1
    iget-object v0, p0, Lcom/cmplay/util/b/d;->d:Lcom/cmplay/util/b/d$b;

    invoke-virtual {v0, p1, p2}, Lcom/cmplay/util/b/d$b;->a(Ljava/lang/String;F)F

    move-result p2

    goto :goto_0
.end method

.method public a(Ljava/lang/String;I)I
    .locals 1

    .prologue
    .line 70
    invoke-static {}, Lcom/cmplay/i/c;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 71
    invoke-direct {p0}, Lcom/cmplay/util/b/d;->f()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 72
    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p2

    .line 74
    :cond_0
    :goto_0
    return p2

    :cond_1
    iget-object v0, p0, Lcom/cmplay/util/b/d;->d:Lcom/cmplay/util/b/d$b;

    invoke-virtual {v0, p1, p2}, Lcom/cmplay/util/b/d$b;->a(Ljava/lang/String;I)I

    move-result p2

    goto :goto_0
.end method

.method public a(Ljava/lang/String;J)J
    .locals 2

    .prologue
    .line 50
    invoke-static {}, Lcom/cmplay/i/c;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 51
    invoke-direct {p0}, Lcom/cmplay/util/b/d;->f()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 52
    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide p2

    .line 54
    :cond_0
    :goto_0
    return-wide p2

    :cond_1
    iget-object v0, p0, Lcom/cmplay/util/b/d;->d:Lcom/cmplay/util/b/d$b;

    invoke-virtual {v0, p1, p2, p3}, Lcom/cmplay/util/b/d$b;->a(Ljava/lang/String;J)J

    move-result-wide p2

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    invoke-static {}, Lcom/cmplay/i/c;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 81
    invoke-direct {p0}, Lcom/cmplay/util/b/d;->f()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 82
    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 84
    :cond_0
    :goto_0
    return-object p2

    :cond_1
    iget-object v0, p0, Lcom/cmplay/util/b/d;->d:Lcom/cmplay/util/b/d$b;

    invoke-virtual {v0, p1, p2}, Lcom/cmplay/util/b/d$b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Z)Z
    .locals 1

    .prologue
    .line 60
    invoke-static {}, Lcom/cmplay/i/c;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 61
    invoke-direct {p0}, Lcom/cmplay/util/b/d;->f()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 62
    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    .line 64
    :cond_0
    :goto_0
    return p2

    :cond_1
    iget-object v0, p0, Lcom/cmplay/util/b/d;->d:Lcom/cmplay/util/b/d$b;

    invoke-virtual {v0, p1, p2}, Lcom/cmplay/util/b/d$b;->a(Ljava/lang/String;Z)Z

    move-result p2

    goto :goto_0
.end method

.method public b(Ljava/lang/String;F)V
    .locals 1

    .prologue
    .line 160
    invoke-static {}, Lcom/cmplay/i/c;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 161
    invoke-direct {p0}, Lcom/cmplay/util/b/d;->f()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 162
    if-nez v0, :cond_0

    .line 171
    :goto_0
    return-void

    .line 165
    :cond_0
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 166
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 167
    invoke-direct {p0, v0}, Lcom/cmplay/util/b/d;->a(Landroid/content/SharedPreferences$Editor;)V

    goto :goto_0

    .line 169
    :cond_1
    iget-object v0, p0, Lcom/cmplay/util/b/d;->d:Lcom/cmplay/util/b/d$b;

    invoke-virtual {v0, p1, p2}, Lcom/cmplay/util/b/d$b;->b(Ljava/lang/String;F)V

    goto :goto_0
.end method

.method public b(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 130
    invoke-static {}, Lcom/cmplay/i/c;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 131
    invoke-direct {p0}, Lcom/cmplay/util/b/d;->f()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 132
    if-nez v0, :cond_0

    .line 141
    :goto_0
    return-void

    .line 135
    :cond_0
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 136
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 137
    invoke-direct {p0, v0}, Lcom/cmplay/util/b/d;->a(Landroid/content/SharedPreferences$Editor;)V

    goto :goto_0

    .line 139
    :cond_1
    iget-object v0, p0, Lcom/cmplay/util/b/d;->d:Lcom/cmplay/util/b/d$b;

    invoke-virtual {v0, p1, p2}, Lcom/cmplay/util/b/d$b;->b(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public b(Ljava/lang/String;J)V
    .locals 2

    .prologue
    .line 115
    invoke-static {}, Lcom/cmplay/i/c;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 116
    invoke-direct {p0}, Lcom/cmplay/util/b/d;->f()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 117
    if-nez v0, :cond_0

    .line 126
    :goto_0
    return-void

    .line 120
    :cond_0
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 121
    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 122
    invoke-direct {p0, v0}, Lcom/cmplay/util/b/d;->a(Landroid/content/SharedPreferences$Editor;)V

    goto :goto_0

    .line 124
    :cond_1
    iget-object v0, p0, Lcom/cmplay/util/b/d;->d:Lcom/cmplay/util/b/d$b;

    invoke-virtual {v0, p1, p2, p3}, Lcom/cmplay/util/b/d$b;->b(Ljava/lang/String;J)V

    goto :goto_0
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 145
    invoke-static {}, Lcom/cmplay/i/c;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 146
    invoke-direct {p0}, Lcom/cmplay/util/b/d;->f()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 147
    if-nez v0, :cond_0

    .line 156
    :goto_0
    return-void

    .line 150
    :cond_0
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 151
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 152
    invoke-direct {p0, v0}, Lcom/cmplay/util/b/d;->a(Landroid/content/SharedPreferences$Editor;)V

    goto :goto_0

    .line 154
    :cond_1
    iget-object v0, p0, Lcom/cmplay/util/b/d;->d:Lcom/cmplay/util/b/d$b;

    invoke-virtual {v0, p1, p2}, Lcom/cmplay/util/b/d$b;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public b(Ljava/lang/String;Z)V
    .locals 1

    .prologue
    .line 100
    invoke-static {}, Lcom/cmplay/i/c;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 101
    invoke-direct {p0}, Lcom/cmplay/util/b/d;->f()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 102
    if-nez v0, :cond_0

    .line 111
    :goto_0
    return-void

    .line 105
    :cond_0
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 106
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 107
    invoke-direct {p0, v0}, Lcom/cmplay/util/b/d;->a(Landroid/content/SharedPreferences$Editor;)V

    goto :goto_0

    .line 109
    :cond_1
    iget-object v0, p0, Lcom/cmplay/util/b/d;->d:Lcom/cmplay/util/b/d$b;

    invoke-virtual {v0, p1, p2}, Lcom/cmplay/util/b/d$b;->b(Ljava/lang/String;Z)V

    goto :goto_0
.end method
