.class public final Lcom/mnt/a/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Ljava/lang/String;

.field private static b:I

.field private static c:Ljava/lang/String;

.field private static d:Ljava/lang/String;

.field private static e:Z

.field private static f:Ljava/lang/String;

.field private static g:Ljava/lang/String;

.field private static h:Ljava/lang/String;

.field private static i:Ljava/lang/String;

.field private static final j:Ljava/lang/String;

.field private static final k:Ljava/lang/String;

.field private static final l:Ljava/lang/String;

.field private static final m:Ljava/lang/String;

.field private static n:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 53
    const-class v0, Lcom/mnt/a/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 55
    const/4 v0, -0x2

    sput v0, Lcom/mnt/a/a;->b:I

    .line 56
    sput-object v1, Lcom/mnt/a/a;->c:Ljava/lang/String;

    .line 58
    const-string v0, ""

    sput-object v0, Lcom/mnt/a/a;->d:Ljava/lang/String;

    .line 61
    const-string v0, ""

    sput-object v0, Lcom/mnt/a/a;->f:Ljava/lang/String;

    .line 65
    sput-object v1, Lcom/mnt/a/a;->g:Ljava/lang/String;

    .line 67
    sget-object v0, Lcom/mnt/impl/e;->m:Ljava/lang/String;

    sput-object v0, Lcom/mnt/a/a;->h:Ljava/lang/String;

    .line 68
    sget-object v0, Lcom/mnt/impl/e;->n:Ljava/lang/String;

    .line 69
    sget-object v0, Lcom/mnt/impl/e;->o:Ljava/lang/String;

    .line 70
    sget-object v0, Lcom/mnt/impl/e;->p:Ljava/lang/String;

    .line 71
    sget-object v0, Lcom/mnt/impl/e;->q:Ljava/lang/String;

    sput-object v0, Lcom/mnt/a/a;->i:Ljava/lang/String;

    .line 72
    sget-object v0, Lcom/mnt/impl/e;->r:Ljava/lang/String;

    sput-object v0, Lcom/mnt/a/a;->j:Ljava/lang/String;

    .line 73
    sget-object v0, Lcom/mnt/impl/e;->s:Ljava/lang/String;

    sput-object v0, Lcom/mnt/a/a;->k:Ljava/lang/String;

    .line 74
    sget-object v0, Lcom/mnt/impl/e;->t:Ljava/lang/String;

    sput-object v0, Lcom/mnt/a/a;->l:Ljava/lang/String;

    .line 75
    sget-object v0, Lcom/mnt/impl/e;->u:Ljava/lang/String;

    sput-object v0, Lcom/mnt/a/a;->m:Ljava/lang/String;

    .line 700
    sput-object v1, Lcom/mnt/a/a;->n:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2

    .prologue
    .line 618
    if-eqz p1, :cond_1

    .line 620
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xa

    if-le v0, v1, :cond_0

    .line 621
    const/4 v0, 0x4

    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 626
    :goto_0
    return-object v0

    .line 623
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    goto :goto_0

    .line 626
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 150
    sget-object v0, Lcom/mnt/a/a;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 151
    sget-object v0, Lcom/mnt/impl/e;->v:Ljava/lang/String;

    invoke-static {v0}, Lcom/mnt/a/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 152
    sput-object v0, Lcom/mnt/a/a;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 153
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sput-object v0, Lcom/mnt/a/a;->f:Ljava/lang/String;

    .line 156
    :cond_0
    sget-object v0, Lcom/mnt/a/a;->f:Ljava/lang/String;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 84
    sget-object v0, Lcom/mnt/a/a;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android_id"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mnt/a/a;->c:Ljava/lang/String;

    .line 88
    :cond_0
    sget-object v0, Lcom/mnt/a/a;->c:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 52
    sput-object p0, Lcom/mnt/a/a;->n:Ljava/lang/String;

    return-object p0
.end method

.method public static a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 869
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-object p2

    :cond_0
    invoke-virtual {p0, p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0
.end method

.method public static varargs a([Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 874
    if-eqz p0, :cond_0

    array-length v0, p0

    if-gtz v0, :cond_1

    .line 875
    :cond_0
    const/4 v0, 0x0

    .line 881
    :goto_0
    return-object v0

    .line 877
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 878
    array-length v3, p0

    move v0, v1

    :goto_1
    if-ge v0, v3, :cond_2

    aget-object v4, p0, v0

    .line 879
    const/16 v5, 0x2c

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 878
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 881
    :cond_2
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;J)V
    .locals 3

    .prologue
    .line 779
    if-eqz p0, :cond_0

    const-wide/16 v0, 0x1

    cmp-long v0, p1, v0

    if-gez v0, :cond_1

    .line 785
    :cond_0
    :goto_0
    return-void

    .line 782
    :cond_1
    sget-object v0, Lcom/mnt/a/a;->m:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/mnt/a/a;->a(Ljava/lang/String;Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 783
    sget-object v1, Lcom/mnt/a/a;->k:Ljava/lang/String;

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 784
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 750
    if-eqz p0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 757
    :cond_0
    :goto_0
    return-void

    .line 753
    :cond_1
    sput-object p1, Lcom/mnt/a/a;->n:Ljava/lang/String;

    .line 754
    sget-object v0, Lcom/mnt/a/a;->m:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/mnt/a/a;->a(Ljava/lang/String;Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 755
    sget-object v1, Lcom/mnt/a/a;->j:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 756
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method public static a(Landroid/view/View;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 855
    move v2, v1

    .line 856
    :goto_0
    if-eqz p0, :cond_2

    .line 857
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_1
    and-int/2addr v2, v0

    .line 858
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 859
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v3

    if-eq v0, v3, :cond_1

    .line 860
    check-cast v0, Landroid/view/View;

    move-object p0, v0

    goto :goto_0

    .line 857
    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    .line 862
    :cond_1
    const/4 p0, 0x0

    .line 864
    goto :goto_0

    .line 865
    :cond_2
    return v2
.end method

.method public static b()J
    .locals 9

    .prologue
    .line 188
    sget-object v0, Lcom/mnt/impl/e;->y:Ljava/lang/String;

    .line 191
    const-wide/16 v2, 0x0

    .line 192
    const/4 v1, 0x0

    .line 194
    :try_start_0
    new-instance v5, Ljava/io/FileReader;

    invoke-direct {v5, v0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .line 195
    new-instance v4, Ljava/io/BufferedReader;

    const/16 v0, 0x2000

    invoke-direct {v4, v5, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 196
    :try_start_1
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 197
    sget-object v1, Lcom/mnt/impl/e;->z:Ljava/lang/String;

    .line 198
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 200
    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v0

    int-to-long v0, v0

    .line 201
    :try_start_2
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 208
    :try_start_3
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 215
    :cond_0
    :goto_0
    const-wide/16 v2, 0x400

    div-long/2addr v0, v2

    return-wide v0

    .line 210
    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 204
    :catch_1
    move-exception v0

    move-object v6, v0

    move-wide v7, v2

    move-object v2, v6

    move-object v3, v1

    move-wide v0, v7

    :goto_1
    :try_start_4
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 206
    if-eqz v3, :cond_0

    .line 208
    :try_start_5
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_0

    .line 210
    :catch_2
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 206
    :catchall_0
    move-exception v0

    move-object v4, v1

    :goto_2
    if-eqz v4, :cond_1

    .line 208
    :try_start_6
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 211
    :cond_1
    :goto_3
    throw v0

    .line 210
    :catch_3
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 206
    :catchall_1
    move-exception v0

    goto :goto_2

    :catchall_2
    move-exception v0

    move-object v4, v3

    goto :goto_2

    .line 204
    :catch_4
    move-exception v0

    move-object v6, v0

    move-wide v0, v2

    move-object v2, v6

    move-object v3, v4

    goto :goto_1

    :catch_5
    move-exception v2

    move-object v3, v4

    goto :goto_1
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .locals 2

    .prologue
    .line 844
    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Lcom/mnt/a/a;->o(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static b(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 98
    const-string v1, ""

    .line 101
    :try_start_0
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 102
    if-eqz v0, :cond_1

    .line 103
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 109
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 110
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 113
    :cond_0
    return-object v0

    .line 106
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method private static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 161
    :try_start_0
    sget-object v0, Lcom/mnt/impl/e;->w:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 162
    sget-object v1, Lcom/mnt/impl/e;->x:Ljava/lang/String;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 163
    const/4 v1, 0x0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    const-string v4, ""

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_5

    .line 179
    :goto_0
    return-object v0

    .line 166
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V

    .line 179
    :goto_1
    const-string v0, ""

    goto :goto_0

    .line 168
    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_1

    .line 170
    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_1

    .line 172
    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_1

    .line 174
    :catch_4
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_1

    .line 176
    :catch_5
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_1
.end method

.method public static c()I
    .locals 1

    .prologue
    .line 225
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 229
    :goto_0
    return v0

    .line 227
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 229
    const/4 v0, 0x3

    goto :goto_0
.end method

.method public static c(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 258
    if-nez p0, :cond_0

    .line 259
    const-string v0, ""

    .line 265
    :goto_0
    return-object v0

    .line 262
    :cond_0
    const-string v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 263
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v1

    .line 264
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    .line 265
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/mnt/impl/e;->A:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static d()Ljava/lang/String;
    .locals 5

    .prologue
    .line 240
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    .line 241
    new-instance v1, Landroid/os/StatFs;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 242
    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockCount()I

    move-result v0

    int-to-long v2, v0

    .line 243
    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSize()I

    move-result v0

    int-to-long v0, v0

    .line 244
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    mul-long/2addr v0, v2

    const-wide/16 v2, 0x400

    div-long/2addr v0, v2

    const-wide/16 v2, 0x400

    div-long/2addr v0, v2

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 248
    :goto_0
    return-object v0

    .line 246
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 248
    const-string v0, ""

    goto :goto_0
.end method

.method public static d(Landroid/content/Context;)Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 275
    if-nez p0, :cond_0

    .line 288
    :goto_0
    return v1

    .line 280
    :cond_0
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 281
    if-eqz v0, :cond_1

    .line 282
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 283
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 284
    const/4 v0, 0x1

    :goto_1
    move v1, v0

    .line 288
    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public static e()Ljava/lang/String;
    .locals 5

    .prologue
    .line 361
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 362
    sget-object v1, Lcom/mnt/impl/e;->R:Ljava/lang/String;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 363
    return-object v0
.end method

.method public static e(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 299
    :try_start_0
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 300
    if-eqz v0, :cond_0

    .line 301
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 302
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v1

    sget-object v2, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v1, v2, :cond_0

    .line 303
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 357
    :cond_0
    sget-object v0, Lcom/mnt/a/a;->i:Ljava/lang/String;

    :goto_0
    return-object v0

    .line 305
    :pswitch_0
    :try_start_1
    sget-object v0, Lcom/mnt/a/a;->h:Ljava/lang/String;

    goto :goto_0

    .line 307
    :pswitch_1
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v0

    packed-switch v0, :pswitch_data_1

    .line 348
    :pswitch_2
    sget-object v0, Lcom/mnt/a/a;->i:Ljava/lang/String;

    goto :goto_0

    .line 309
    :pswitch_3
    sget-object v0, Lcom/mnt/impl/e;->B:Ljava/lang/String;

    goto :goto_0

    .line 311
    :pswitch_4
    sget-object v0, Lcom/mnt/impl/e;->C:Ljava/lang/String;

    goto :goto_0

    .line 313
    :pswitch_5
    sget-object v0, Lcom/mnt/impl/e;->D:Ljava/lang/String;

    goto :goto_0

    .line 315
    :pswitch_6
    sget-object v0, Lcom/mnt/impl/e;->E:Ljava/lang/String;

    goto :goto_0

    .line 317
    :pswitch_7
    sget-object v0, Lcom/mnt/impl/e;->F:Ljava/lang/String;

    goto :goto_0

    .line 319
    :pswitch_8
    sget-object v0, Lcom/mnt/impl/e;->G:Ljava/lang/String;

    goto :goto_0

    .line 321
    :pswitch_9
    sget-object v0, Lcom/mnt/impl/e;->H:Ljava/lang/String;

    goto :goto_0

    .line 323
    :pswitch_a
    sget-object v0, Lcom/mnt/impl/e;->I:Ljava/lang/String;

    goto :goto_0

    .line 325
    :pswitch_b
    sget-object v0, Lcom/mnt/impl/e;->J:Ljava/lang/String;

    goto :goto_0

    .line 327
    :pswitch_c
    sget-object v0, Lcom/mnt/impl/e;->K:Ljava/lang/String;

    goto :goto_0

    .line 329
    :pswitch_d
    sget-object v0, Lcom/mnt/impl/e;->L:Ljava/lang/String;

    goto :goto_0

    .line 331
    :pswitch_e
    sget-object v0, Lcom/mnt/impl/e;->M:Ljava/lang/String;

    goto :goto_0

    .line 333
    :pswitch_f
    sget-object v0, Lcom/mnt/impl/e;->N:Ljava/lang/String;

    goto :goto_0

    .line 335
    :pswitch_10
    sget-object v0, Lcom/mnt/impl/e;->O:Ljava/lang/String;

    goto :goto_0

    .line 337
    :pswitch_11
    sget-object v0, Lcom/mnt/impl/e;->P:Ljava/lang/String;

    goto :goto_0

    .line 339
    :pswitch_12
    sget-object v0, Lcom/mnt/impl/e;->Q:Ljava/lang/String;

    goto :goto_0

    .line 341
    :pswitch_13
    sget-object v0, Lcom/mnt/a/a;->i:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 353
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 354
    sget-object v0, Lcom/mnt/a/a;->i:Ljava/lang/String;

    goto :goto_0

    .line 303
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch

    .line 307
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_13
        :pswitch_3
        :pswitch_4
        :pswitch_8
        :pswitch_5
        :pswitch_9
        :pswitch_a
        :pswitch_6
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_7
        :pswitch_e
        :pswitch_11
        :pswitch_f
        :pswitch_10
        :pswitch_12
    .end packed-switch
.end method

.method public static f()I
    .locals 1

    .prologue
    .line 383
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    return v0
.end method

.method public static f(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 373
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public static g(Landroid/content/Context;)I
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 403
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v2, v2, 0xf

    const/4 v3, 0x3

    if-lt v2, v3, :cond_0

    move v2, v0

    .line 404
    :goto_0
    if-eqz v2, :cond_1

    .line 407
    :goto_1
    return v0

    :cond_0
    move v2, v1

    .line 403
    goto :goto_0

    :cond_1
    move v0, v1

    .line 407
    goto :goto_1
.end method

.method public static g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 393
    sget-object v0, Lcom/mnt/impl/e;->S:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static h()Ljava/lang/String;
    .locals 3

    .prologue
    .line 555
    :try_start_0
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    .line 556
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/TimeZone;->getDisplayName(ZI)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 559
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v0, ""

    goto :goto_0
.end method

.method public static h(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 499
    sget-object v0, Lcom/mnt/a/a;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 1506
    if-nez p0, :cond_1

    .line 1507
    sget-object v0, Lcom/mnt/impl/e;->T:Ljava/lang/String;

    sput-object v0, Lcom/mnt/a/a;->a:Ljava/lang/String;

    .line 502
    :cond_0
    :goto_0
    sget-object v0, Lcom/mnt/a/a;->a:Ljava/lang/String;

    return-object v0

    .line 1511
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    sput-object v0, Lcom/mnt/a/a;->a:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1514
    :catch_0
    move-exception v0

    sget-object v0, Lcom/mnt/impl/e;->U:Ljava/lang/String;

    sput-object v0, Lcom/mnt/a/a;->a:Ljava/lang/String;

    goto :goto_0
.end method

.method public static i(Landroid/content/Context;)I
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 525
    sget v0, Lcom/mnt/a/a;->b:I

    if-gez v0, :cond_0

    .line 1535
    if-nez p0, :cond_1

    .line 1536
    sput v3, Lcom/mnt/a/a;->b:I

    .line 528
    :cond_0
    :goto_0
    sget v0, Lcom/mnt/a/a;->b:I

    return v0

    .line 1540
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    sput v0, Lcom/mnt/a/a;->b:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1543
    :catch_0
    move-exception v0

    sput v3, Lcom/mnt/a/a;->b:I

    goto :goto_0
.end method

.method static synthetic i()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    sget-object v0, Lcom/mnt/a/a;->j:Ljava/lang/String;

    return-object v0
.end method

.method public static j(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 569
    sget-boolean v0, Lcom/mnt/a/a;->e:Z

    if-nez v0, :cond_1

    .line 1576
    if-eqz p0, :cond_0

    .line 1580
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 1582
    if-eqz v0, :cond_0

    .line 1586
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    .line 1587
    sput-object v0, Lcom/mnt/a/a;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1588
    const-string v0, ""

    sput-object v0, Lcom/mnt/a/a;->d:Ljava/lang/String;

    .line 1590
    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/mnt/a/a;->e:Z

    .line 572
    :cond_1
    sget-object v0, Lcom/mnt/a/a;->d:Ljava/lang/String;

    return-object v0
.end method

.method public static k(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 662
    sget-object v0, Lcom/mnt/a/a;->g:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 1794
    :try_start_0
    sget-object v0, Lcom/mnt/a/a;->m:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/mnt/a/a;->a(Ljava/lang/String;Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 664
    sget-object v1, Lcom/mnt/a/a;->l:Ljava/lang/String;

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 665
    sput-object v0, Lcom/mnt/a/a;->g:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 666
    invoke-static {p0}, Lcom/mnt/impl/d;->a(Landroid/content/Context;)Lcom/mnt/a/c;

    move-result-object v0

    .line 2037
    iget-object v0, v0, Lcom/mnt/a/c;->a:Ljava/lang/String;

    .line 666
    sput-object v0, Lcom/mnt/a/a;->g:Ljava/lang/String;

    .line 2794
    sget-object v0, Lcom/mnt/a/a;->m:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/mnt/a/a;->a(Ljava/lang/String;Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 668
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 669
    sget-object v1, Lcom/mnt/a/a;->l:Ljava/lang/String;

    sget-object v2, Lcom/mnt/a/a;->g:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 670
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 676
    :cond_0
    :goto_0
    sget-object v0, Lcom/mnt/a/a;->g:Ljava/lang/String;

    return-object v0

    .line 673
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public static l(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 709
    if-nez p0, :cond_0

    .line 710
    const/4 v0, 0x0

    .line 725
    :goto_0
    return-object v0

    .line 712
    :cond_0
    sget-object v0, Lcom/mnt/a/a;->n:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 713
    sget-object v0, Lcom/mnt/a/a;->m:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/mnt/a/a;->a(Ljava/lang/String;Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 714
    new-instance v1, Lcom/mnt/a/b;

    invoke-direct {v1}, Lcom/mnt/a/b;-><init>()V

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 723
    sget-object v1, Lcom/mnt/a/a;->j:Ljava/lang/String;

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mnt/a/a;->n:Ljava/lang/String;

    .line 725
    :cond_1
    sget-object v0, Lcom/mnt/a/a;->n:Ljava/lang/String;

    goto :goto_0
.end method

.method public static m(Landroid/content/Context;)J
    .locals 4

    .prologue
    const-wide/16 v0, 0x0

    .line 765
    if-nez p0, :cond_0

    .line 769
    :goto_0
    return-wide v0

    .line 768
    :cond_0
    sget-object v2, Lcom/mnt/a/a;->m:Ljava/lang/String;

    invoke-static {v2, p0}, Lcom/mnt/a/a;->a(Ljava/lang/String;Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 769
    sget-object v3, Lcom/mnt/a/a;->k:Ljava/lang/String;

    invoke-interface {v2, v3, v0, v1}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    goto :goto_0
.end method

.method public static n(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 1

    .prologue
    .line 794
    sget-object v0, Lcom/mnt/a/a;->m:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/mnt/a/a;->a(Ljava/lang/String;Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public static o(Landroid/content/Context;)Ljava/io/File;
    .locals 3

    .prologue
    .line 829
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 830
    new-instance v1, Ljava/io/File;

    sget-object v2, Lcom/mnt/impl/e;->V:Ljava/lang/String;

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 831
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 832
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 834
    :cond_0
    return-object v1
.end method
