.class public Lcom/cmplay/internalpush/ipc/IpcVideoHelper;
.super Lcom/cmplay/base/util/ipc/a;
.source "IpcVideoHelper.java"


# static fields
.field private static final GET_STRING:I = 0x4

.field private static final GET_VIDEO_FILE_SIZE:I = 0x3

.field private static final SERVICE_VIDEO_DOWN:I = 0x1

.field private static final SET_STRING:I = 0x5

.field private static final SET_VIDEO_FILE_SIZE:I = 0x2

.field private static mInstance:Lcom/cmplay/internalpush/ipc/IpcVideoHelper;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/cmplay/base/util/ipc/a;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/cmplay/internalpush/ipc/IpcVideoHelper;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/cmplay/internalpush/ipc/IpcVideoHelper;->mInstance:Lcom/cmplay/internalpush/ipc/IpcVideoHelper;

    if-nez v0, :cond_0

    .line 26
    new-instance v0, Lcom/cmplay/internalpush/ipc/IpcVideoHelper;

    invoke-direct {v0}, Lcom/cmplay/internalpush/ipc/IpcVideoHelper;-><init>()V

    sput-object v0, Lcom/cmplay/internalpush/ipc/IpcVideoHelper;->mInstance:Lcom/cmplay/internalpush/ipc/IpcVideoHelper;

    .line 28
    :cond_0
    sget-object v0, Lcom/cmplay/internalpush/ipc/IpcVideoHelper;->mInstance:Lcom/cmplay/internalpush/ipc/IpcVideoHelper;

    return-object v0
.end method


# virtual methods
.method public handler(Landroid/content/ContentValues;)Ljava/lang/String;
    .locals 6
    .param p1, "cv"    # Landroid/content/ContentValues;

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 34
    invoke-virtual {p0, p1}, Lcom/cmplay/internalpush/ipc/IpcVideoHelper;->getMid(Landroid/content/ContentValues;)I

    move-result v0

    .line 35
    invoke-virtual {p0, p1}, Lcom/cmplay/internalpush/ipc/IpcVideoHelper;->getParams(Landroid/content/ContentValues;)[Ljava/lang/String;

    move-result-object v1

    .line 36
    packed-switch v0, :pswitch_data_0

    .line 60
    :cond_0
    :goto_0
    const/4 v0, 0x0

    :goto_1
    return-object v0

    .line 38
    :pswitch_0
    array-length v0, v1

    const/4 v2, 0x4

    if-lt v0, v2, :cond_0

    .line 39
    aget-object v0, v1, v3

    aget-object v2, v1, v4

    aget-object v3, v1, v5

    const/4 v4, 0x3

    aget-object v1, v1, v4

    invoke-virtual {p0, v0, v2, v3, v1}, Lcom/cmplay/internalpush/ipc/IpcVideoHelper;->ipcServiceStartDown(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 43
    :pswitch_1
    array-length v0, v1

    if-lt v0, v5, :cond_0

    .line 44
    aget-object v0, v1, v3

    aget-object v1, v1, v4

    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p0, v0, v2, v3}, Lcom/cmplay/internalpush/ipc/IpcVideoHelper;->ipcSetLong(Ljava/lang/String;J)V

    goto :goto_0

    .line 48
    :pswitch_2
    array-length v0, v1

    if-lt v0, v5, :cond_0

    .line 49
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

    invoke-virtual {p0, v2, v4, v5}, Lcom/cmplay/internalpush/ipc/IpcVideoHelper;->ipcGetLong(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 52
    :pswitch_3
    array-length v0, v1

    if-lt v0, v5, :cond_0

    .line 53
    aget-object v0, v1, v3

    aget-object v1, v1, v4

    invoke-virtual {p0, v0, v1}, Lcom/cmplay/internalpush/ipc/IpcVideoHelper;->ipcGetString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 56
    :pswitch_4
    array-length v0, v1

    if-lt v0, v5, :cond_0

    .line 57
    aget-object v0, v1, v3

    aget-object v1, v1, v4

    invoke-virtual {p0, v0, v1}, Lcom/cmplay/internalpush/ipc/IpcVideoHelper;->ipcSetString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 36
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public ipcGetLong(Ljava/lang/String;J)J
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defValue"    # J

    .prologue
    .line 82
    invoke-static {}, Lcom/cmplay/base/util/q;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    invoke-static {p1, p2, p3}, Lcom/cmplay/internalpush/a/e;->a(Ljava/lang/String;J)J

    move-result-wide v0

    .line 86
    :goto_0
    return-wide v0

    .line 85
    :cond_0
    const/4 v0, 0x3

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/cmplay/internalpush/ipc/IpcVideoHelper;->createParams(I[Ljava/lang/Object;)Landroid/content/ContentValues;

    move-result-object v0

    .line 86
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/cmplay/internalpush/ipc/IpcVideoHelper;->invoke(Landroid/content/ContentValues;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_0
.end method

.method public ipcGetString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defValue"    # Ljava/lang/String;

    .prologue
    .line 91
    invoke-static {}, Lcom/cmplay/base/util/q;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    invoke-static {p1, p2}, Lcom/cmplay/internalpush/a/e;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 95
    :goto_0
    return-object v0

    .line 94
    :cond_0
    const/4 v0, 0x4

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/cmplay/internalpush/ipc/IpcVideoHelper;->createParams(I[Ljava/lang/Object;)Landroid/content/ContentValues;

    move-result-object v0

    .line 95
    invoke-virtual {p0, v0, p2}, Lcom/cmplay/internalpush/ipc/IpcVideoHelper;->invoke(Landroid/content/ContentValues;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public ipcServiceStartDown(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "fileName"    # Ljava/lang/String;
    .param p3, "bgImgUrl"    # Ljava/lang/String;
    .param p4, "iconUrl"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 64
    invoke-static {}, Lcom/cmplay/base/util/q;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    invoke-static {p1, p2, p3, p4}, Lcom/cmplay/internalpush/video/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    :goto_0
    return-void

    .line 67
    :cond_0
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    aput-object p2, v0, v2

    const/4 v1, 0x2

    aput-object p3, v0, v1

    const/4 v1, 0x3

    aput-object p4, v0, v1

    invoke-virtual {p0, v2, v0}, Lcom/cmplay/internalpush/ipc/IpcVideoHelper;->createParams(I[Ljava/lang/Object;)Landroid/content/ContentValues;

    move-result-object v0

    .line 68
    invoke-virtual {p0, v0}, Lcom/cmplay/internalpush/ipc/IpcVideoHelper;->invoke(Landroid/content/ContentValues;)Ljava/lang/String;

    goto :goto_0
.end method

.method public ipcSetLong(Ljava/lang/String;J)V
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # J

    .prologue
    const/4 v3, 0x2

    .line 73
    invoke-static {}, Lcom/cmplay/base/util/q;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    invoke-static {p1, p2, p3}, Lcom/cmplay/internalpush/a/e;->b(Ljava/lang/String;J)V

    .line 79
    :goto_0
    return-void

    .line 76
    :cond_0
    new-array v0, v3, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, v3, v0}, Lcom/cmplay/internalpush/ipc/IpcVideoHelper;->createParams(I[Ljava/lang/Object;)Landroid/content/ContentValues;

    move-result-object v0

    .line 77
    invoke-virtual {p0, v0}, Lcom/cmplay/internalpush/ipc/IpcVideoHelper;->invoke(Landroid/content/ContentValues;)Ljava/lang/String;

    goto :goto_0
.end method

.method public ipcSetString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defValue"    # Ljava/lang/String;

    .prologue
    .line 100
    invoke-static {}, Lcom/cmplay/base/util/q;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    invoke-static {p1, p2}, Lcom/cmplay/internalpush/a/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    :goto_0
    return-void

    .line 103
    :cond_0
    const/4 v0, 0x4

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/cmplay/internalpush/ipc/IpcVideoHelper;->createParams(I[Ljava/lang/Object;)Landroid/content/ContentValues;

    move-result-object v0

    .line 104
    invoke-virtual {p0, v0, p2}, Lcom/cmplay/internalpush/ipc/IpcVideoHelper;->invoke(Landroid/content/ContentValues;Ljava/lang/Object;)Ljava/lang/String;

    goto :goto_0
.end method
