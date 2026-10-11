.class public Lcom/cmplay/internalpush/ipc/IpcSpHelper;
.super Lcom/cmplay/base/util/ipc/a;
.source "IpcSpHelper.java"


# static fields
.field private static final GET_BOOLEAN_VALUE:I = 0x2

.field private static final GET_INT_VALUE:I = 0x3

.field private static final GET_LONG_VALUE:I = 0x1

.field private static final GET_STRING_VALUE:I = 0x4

.field private static final REMOVE_KEY:I = 0x9

.field private static final SET_BOOLEAN_VALUE:I = 0x6

.field private static final SET_INT_VALUE:I = 0x7

.field private static final SET_LONG_VALUE:I = 0x5

.field private static final SET_STRING_VALUE:I = 0x8

.field private static final TAG:Ljava/lang/String; = "zzb_ipc"

.field private static mInstance:Lcom/cmplay/internalpush/ipc/IpcSpHelper;


# instance fields
.field private mShardPreferences:Landroid/content/SharedPreferences;


# direct methods
.method private constructor <init>()V
    .locals 3

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/cmplay/base/util/ipc/a;-><init>()V

    .line 41
    invoke-static {}, Lcom/cmplay/base/util/q;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 42
    sget-object v0, Lcom/cmplay/base/util/q;->a:Landroid/content/Context;

    const-string v1, "openscreen_save_data_service"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/cmplay/internalpush/ipc/IpcSpHelper;->mShardPreferences:Landroid/content/SharedPreferences;

    .line 45
    :cond_0
    return-void
.end method

.method public static getInstance()Lcom/cmplay/internalpush/ipc/IpcSpHelper;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lcom/cmplay/internalpush/ipc/IpcSpHelper;->mInstance:Lcom/cmplay/internalpush/ipc/IpcSpHelper;

    if-nez v0, :cond_0

    .line 49
    new-instance v0, Lcom/cmplay/internalpush/ipc/IpcSpHelper;

    invoke-direct {v0}, Lcom/cmplay/internalpush/ipc/IpcSpHelper;-><init>()V

    sput-object v0, Lcom/cmplay/internalpush/ipc/IpcSpHelper;->mInstance:Lcom/cmplay/internalpush/ipc/IpcSpHelper;

    .line 51
    :cond_0
    sget-object v0, Lcom/cmplay/internalpush/ipc/IpcSpHelper;->mInstance:Lcom/cmplay/internalpush/ipc/IpcSpHelper;

    return-object v0
.end method

.method private declared-synchronized getSharedPreference()Landroid/content/SharedPreferences;
    .locals 1

    .prologue
    .line 55
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/cmplay/base/util/q;->e()V

    .line 56
    iget-object v0, p0, Lcom/cmplay/internalpush/ipc/IpcSpHelper;->mShardPreferences:Landroid/content/SharedPreferences;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 55
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public handler(Landroid/content/ContentValues;)Ljava/lang/String;
    .locals 6
    .param p1, "cv"    # Landroid/content/ContentValues;

    .prologue
    const/4 v2, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 61
    invoke-virtual {p0, p1}, Lcom/cmplay/internalpush/ipc/IpcSpHelper;->getMid(Landroid/content/ContentValues;)I

    move-result v0

    .line 62
    invoke-virtual {p0, p1}, Lcom/cmplay/internalpush/ipc/IpcSpHelper;->getParams(Landroid/content/ContentValues;)[Ljava/lang/String;

    move-result-object v1

    .line 63
    packed-switch v0, :pswitch_data_0

    .line 106
    :cond_0
    :goto_0
    const/4 v0, 0x0

    :goto_1
    return-object v0

    .line 66
    :pswitch_0
    array-length v0, v1

    if-lt v0, v2, :cond_0

    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-object v2, v1, v3

    aget-object v1, v1, v4

    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {p0, v2, v4, v5}, Lcom/cmplay/internalpush/ipc/IpcSpHelper;->sp_getLongValue(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 70
    :pswitch_1
    array-length v0, v1

    if-lt v0, v2, :cond_0

    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-object v2, v1, v3

    aget-object v1, v1, v4

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p0, v2, v1}, Lcom/cmplay/internalpush/ipc/IpcSpHelper;->sp_getBooleanValue(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 73
    :pswitch_2
    array-length v0, v1

    if-lt v0, v2, :cond_0

    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-object v2, v1, v3

    aget-object v1, v1, v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v2, v1}, Lcom/cmplay/internalpush/ipc/IpcSpHelper;->sp_getIntValue(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 77
    :pswitch_3
    array-length v0, v1

    if-lt v0, v2, :cond_0

    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-object v2, v1, v3

    aget-object v1, v1, v4

    invoke-virtual {p0, v2, v1}, Lcom/cmplay/internalpush/ipc/IpcSpHelper;->sp_getStringValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 83
    :pswitch_4
    array-length v0, v1

    if-lt v0, v2, :cond_0

    .line 84
    aget-object v0, v1, v3

    aget-object v1, v1, v4

    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p0, v0, v2, v3}, Lcom/cmplay/internalpush/ipc/IpcSpHelper;->sp_setLongValue(Ljava/lang/String;J)V

    goto/16 :goto_0

    .line 87
    :pswitch_5
    array-length v0, v1

    if-lt v0, v2, :cond_0

    .line 88
    aget-object v0, v1, v3

    aget-object v1, v1, v4

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/cmplay/internalpush/ipc/IpcSpHelper;->sp_setBooleanValue(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 92
    :pswitch_6
    array-length v0, v1

    if-lt v0, v2, :cond_0

    .line 93
    aget-object v0, v1, v3

    aget-object v1, v1, v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/cmplay/internalpush/ipc/IpcSpHelper;->sp_setIntValue(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 97
    :pswitch_7
    array-length v0, v1

    if-lt v0, v2, :cond_0

    .line 98
    aget-object v0, v1, v3

    aget-object v1, v1, v4

    invoke-virtual {p0, v0, v1}, Lcom/cmplay/internalpush/ipc/IpcSpHelper;->sp_setStringValue(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 102
    :pswitch_8
    array-length v0, v1

    if-lt v0, v2, :cond_0

    .line 103
    aget-object v0, v1, v3

    aget-object v1, v1, v4

    invoke-virtual {p0, v0, v1}, Lcom/cmplay/internalpush/ipc/IpcSpHelper;->sp_removeSomeKey(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 63
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public removeKey(Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 222
    invoke-static {}, Lcom/cmplay/base/util/q;->e()V

    .line 223
    invoke-direct {p0}, Lcom/cmplay/internalpush/ipc/IpcSpHelper;->getSharedPreference()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 224
    invoke-interface {v0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 225
    invoke-static {v0}, Lcom/cmplay/base/util/s;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 226
    return-void
.end method

.method public sp_getBooleanValue(Ljava/lang/String;Z)Z
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defValue"    # Z

    .prologue
    const/4 v3, 0x2

    .line 120
    invoke-static {}, Lcom/cmplay/base/util/q;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 121
    invoke-direct {p0}, Lcom/cmplay/internalpush/ipc/IpcSpHelper;->getSharedPreference()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 124
    :goto_0
    return v0

    .line 123
    :cond_0
    new-array v0, v3, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, v3, v0}, Lcom/cmplay/internalpush/ipc/IpcSpHelper;->createParams(I[Ljava/lang/Object;)Landroid/content/ContentValues;

    move-result-object v0

    .line 124
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/cmplay/internalpush/ipc/IpcSpHelper;->invoke(Landroid/content/ContentValues;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method public declared-synchronized sp_getIntValue(Ljava/lang/String;I)I
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defValue"    # I

    .prologue
    .line 129
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/cmplay/base/util/q;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 130
    invoke-direct {p0}, Lcom/cmplay/internalpush/ipc/IpcSpHelper;->getSharedPreference()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 133
    :goto_0
    monitor-exit p0

    return v0

    .line 132
    :cond_0
    const/4 v0, 0x3

    const/4 v1, 0x2

    :try_start_1
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/cmplay/internalpush/ipc/IpcSpHelper;->createParams(I[Ljava/lang/Object;)Landroid/content/ContentValues;

    move-result-object v0

    .line 133
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/cmplay/internalpush/ipc/IpcSpHelper;->invoke(Landroid/content/ContentValues;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    .line 129
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public sp_getLongValue(Ljava/lang/String;J)J
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defValue"    # J

    .prologue
    const/4 v2, 0x1

    .line 111
    invoke-static {}, Lcom/cmplay/base/util/q;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 112
    invoke-direct {p0}, Lcom/cmplay/internalpush/ipc/IpcSpHelper;->getSharedPreference()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 115
    :goto_0
    return-wide v0

    .line 114
    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-virtual {p0, v2, v0}, Lcom/cmplay/internalpush/ipc/IpcSpHelper;->createParams(I[Ljava/lang/Object;)Landroid/content/ContentValues;

    move-result-object v0

    .line 115
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/cmplay/internalpush/ipc/IpcSpHelper;->invoke(Landroid/content/ContentValues;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_0
.end method

.method public sp_getStringValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defValue"    # Ljava/lang/String;

    .prologue
    .line 138
    invoke-static {}, Lcom/cmplay/base/util/q;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 139
    invoke-direct {p0}, Lcom/cmplay/internalpush/ipc/IpcSpHelper;->getSharedPreference()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 142
    :goto_0
    return-object v0

    .line 141
    :cond_0
    const/4 v0, 0x4

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/cmplay/internalpush/ipc/IpcSpHelper;->createParams(I[Ljava/lang/Object;)Landroid/content/ContentValues;

    move-result-object v0

    .line 142
    invoke-virtual {p0, v0, p2}, Lcom/cmplay/internalpush/ipc/IpcSpHelper;->invoke(Landroid/content/ContentValues;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public sp_removeSomeKey(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "startFlag"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 192
    invoke-static {}, Lcom/cmplay/base/util/q;->a()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 193
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 194
    invoke-virtual {p0, p2}, Lcom/cmplay/internalpush/ipc/IpcSpHelper;->removeKey(Ljava/lang/String;)V

    .line 196
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 218
    :cond_1
    :goto_0
    return-void

    .line 199
    :cond_2
    invoke-direct {p0}, Lcom/cmplay/internalpush/ipc/IpcSpHelper;->getSharedPreference()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    .line 200
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 201
    if-eqz v0, :cond_3

    invoke-virtual {v0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 203
    :try_start_0
    new-instance v2, Ljava/io/File;

    const-string v3, ""

    invoke-virtual {p0, v0, v3}, Lcom/cmplay/internalpush/ipc/IpcSpHelper;->sp_getStringValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 204
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_3

    .line 205
    invoke-virtual {p0, v0}, Lcom/cmplay/internalpush/ipc/IpcSpHelper;->removeKey(Ljava/lang/String;)V

    .line 206
    const-string v2, "zzb"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u6e05\u7406key ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/cmplay/base/util/g;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 208
    :catch_0
    move-exception v2

    .line 209
    invoke-virtual {p0, v0}, Lcom/cmplay/internalpush/ipc/IpcSpHelper;->removeKey(Ljava/lang/String;)V

    .line 210
    const-string v2, "zzb"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u6e05\u7406key ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/cmplay/base/util/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 215
    :cond_4
    const/16 v0, 0x9

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/cmplay/internalpush/ipc/IpcSpHelper;->createParams(I[Ljava/lang/Object;)Landroid/content/ContentValues;

    move-result-object v0

    .line 216
    invoke-virtual {p0, v0}, Lcom/cmplay/internalpush/ipc/IpcSpHelper;->invoke(Landroid/content/ContentValues;)Ljava/lang/String;

    goto/16 :goto_0
.end method

.method public sp_setBooleanValue(Ljava/lang/String;Z)V
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .prologue
    .line 148
    invoke-static {}, Lcom/cmplay/base/util/q;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 149
    invoke-direct {p0}, Lcom/cmplay/internalpush/ipc/IpcSpHelper;->getSharedPreference()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 150
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 151
    invoke-static {v0}, Lcom/cmplay/base/util/s;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 156
    :goto_0
    return-void

    .line 153
    :cond_0
    const/4 v0, 0x6

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/cmplay/internalpush/ipc/IpcSpHelper;->createParams(I[Ljava/lang/Object;)Landroid/content/ContentValues;

    move-result-object v0

    .line 154
    invoke-virtual {p0, v0}, Lcom/cmplay/internalpush/ipc/IpcSpHelper;->invoke(Landroid/content/ContentValues;)Ljava/lang/String;

    goto :goto_0
.end method

.method public declared-synchronized sp_setIntValue(Ljava/lang/String;I)V
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 170
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/cmplay/base/util/q;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 171
    invoke-direct {p0}, Lcom/cmplay/internalpush/ipc/IpcSpHelper;->getSharedPreference()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 172
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 173
    invoke-static {v0}, Lcom/cmplay/base/util/s;->a(Landroid/content/SharedPreferences$Editor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 178
    :goto_0
    monitor-exit p0

    return-void

    .line 175
    :cond_0
    const/4 v0, 0x7

    const/4 v1, 0x2

    :try_start_1
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/cmplay/internalpush/ipc/IpcSpHelper;->createParams(I[Ljava/lang/Object;)Landroid/content/ContentValues;

    move-result-object v0

    .line 176
    invoke-virtual {p0, v0}, Lcom/cmplay/internalpush/ipc/IpcSpHelper;->invoke(Landroid/content/ContentValues;)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 170
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public sp_setLongValue(Ljava/lang/String;J)V
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # J

    .prologue
    .line 159
    invoke-static {}, Lcom/cmplay/base/util/q;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 160
    invoke-direct {p0}, Lcom/cmplay/internalpush/ipc/IpcSpHelper;->getSharedPreference()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 161
    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 162
    invoke-static {v0}, Lcom/cmplay/base/util/s;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 167
    :goto_0
    return-void

    .line 164
    :cond_0
    const/4 v0, 0x5

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/cmplay/internalpush/ipc/IpcSpHelper;->createParams(I[Ljava/lang/Object;)Landroid/content/ContentValues;

    move-result-object v0

    .line 165
    invoke-virtual {p0, v0}, Lcom/cmplay/internalpush/ipc/IpcSpHelper;->invoke(Landroid/content/ContentValues;)Ljava/lang/String;

    goto :goto_0
.end method

.method public declared-synchronized sp_setStringValue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 181
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/cmplay/base/util/q;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 182
    invoke-direct {p0}, Lcom/cmplay/internalpush/ipc/IpcSpHelper;->getSharedPreference()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 183
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 184
    invoke-static {v0}, Lcom/cmplay/base/util/s;->a(Landroid/content/SharedPreferences$Editor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 189
    :goto_0
    monitor-exit p0

    return-void

    .line 186
    :cond_0
    const/16 v0, 0x8

    const/4 v1, 0x2

    :try_start_1
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/cmplay/internalpush/ipc/IpcSpHelper;->createParams(I[Ljava/lang/Object;)Landroid/content/ContentValues;

    move-result-object v0

    .line 187
    invoke-virtual {p0, v0}, Lcom/cmplay/internalpush/ipc/IpcSpHelper;->invoke(Landroid/content/ContentValues;)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 181
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
