.class public Lcom/cmplay/internalpush/ipc/IpcCloudHelper;
.super Lcom/cmplay/base/util/ipc/a;
.source "IpcCloudHelper.java"


# static fields
.field public static final GET_CLOUD_URL:I = 0x5

.field public static final GET_CLOUD_VERSION:I = 0x3

.field public static final GET_IS_PULL_DATA_FROM_SERVER:I = 0x6

.field public static final PULL_CLOUD:I = 0x2

.field public static final PULL_CLOUDDATA:I = 0x1

.field public static final SET_CLOUDLANGUAGE:I = 0x4

.field public static final TAG:Ljava/lang/String; = "zzb_ipc"

.field private static mInstance:Lcom/cmplay/internalpush/ipc/IpcCloudHelper;


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/cmplay/base/util/ipc/a;-><init>()V

    .line 29
    invoke-static {}, Lcom/cmplay/base/util/q;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 30
    const-string v0, "zzb_ipc"

    const-string v1, "IpcCloudHelper \u6784\u9020"

    invoke-static {v0, v1}, Lcom/cmplay/base/util/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    :cond_0
    return-void
.end method

.method public static getInstance()Lcom/cmplay/internalpush/ipc/IpcCloudHelper;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/cmplay/internalpush/ipc/IpcCloudHelper;->mInstance:Lcom/cmplay/internalpush/ipc/IpcCloudHelper;

    if-nez v0, :cond_0

    .line 36
    new-instance v0, Lcom/cmplay/internalpush/ipc/IpcCloudHelper;

    invoke-direct {v0}, Lcom/cmplay/internalpush/ipc/IpcCloudHelper;-><init>()V

    sput-object v0, Lcom/cmplay/internalpush/ipc/IpcCloudHelper;->mInstance:Lcom/cmplay/internalpush/ipc/IpcCloudHelper;

    .line 38
    :cond_0
    sget-object v0, Lcom/cmplay/internalpush/ipc/IpcCloudHelper;->mInstance:Lcom/cmplay/internalpush/ipc/IpcCloudHelper;

    return-object v0
.end method


# virtual methods
.method public handler(Landroid/content/ContentValues;)Ljava/lang/String;
    .locals 5
    .param p1, "cv"    # Landroid/content/ContentValues;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 43
    invoke-virtual {p0, p1}, Lcom/cmplay/internalpush/ipc/IpcCloudHelper;->getMid(Landroid/content/ContentValues;)I

    move-result v0

    .line 44
    invoke-virtual {p0, p1}, Lcom/cmplay/internalpush/ipc/IpcCloudHelper;->getParams(Landroid/content/ContentValues;)[Ljava/lang/String;

    move-result-object v1

    .line 45
    packed-switch v0, :pswitch_data_0

    .line 72
    :cond_0
    :goto_0
    const/4 v0, 0x0

    :goto_1
    return-object v0

    .line 47
    :pswitch_0
    array-length v0, v1

    const/4 v2, 0x2

    if-lt v0, v2, :cond_0

    .line 48
    aget-object v0, v1, v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aget-object v1, v1, v4

    invoke-virtual {p0, v0, v1}, Lcom/cmplay/internalpush/ipc/IpcCloudHelper;->innpush_pullCloudData(ILjava/lang/String;)V

    goto :goto_0

    .line 52
    :pswitch_1
    invoke-virtual {p0}, Lcom/cmplay/internalpush/ipc/IpcCloudHelper;->innpush_pullCloud()V

    goto :goto_0

    .line 56
    :pswitch_2
    array-length v0, v1

    if-lt v0, v4, :cond_0

    .line 57
    aget-object v0, v1, v3

    invoke-virtual {p0, v0}, Lcom/cmplay/internalpush/ipc/IpcCloudHelper;->innpush_getCloudVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 60
    :pswitch_3
    array-length v0, v1

    if-lt v0, v4, :cond_0

    .line 61
    aget-object v0, v1, v3

    invoke-virtual {p0, v0}, Lcom/cmplay/internalpush/ipc/IpcCloudHelper;->innpush_setCloudLanguage(Ljava/lang/String;)V

    goto :goto_0

    .line 65
    :pswitch_4
    array-length v0, v1

    if-lt v0, v4, :cond_0

    .line 66
    aget-object v0, v1, v3

    invoke-virtual {p0, v0}, Lcom/cmplay/internalpush/ipc/IpcCloudHelper;->innpush_getUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 69
    :pswitch_5
    invoke-virtual {p0}, Lcom/cmplay/internalpush/ipc/IpcCloudHelper;->innpush_isPullDataFromServer()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 45
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public innpush_getCloudVersion(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "defValue"    # Ljava/lang/String;

    .prologue
    .line 105
    invoke-static {}, Lcom/cmplay/base/util/q;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 106
    invoke-static {}, Lcom/ijinshan/cloudconfig/a;->a()Ljava/lang/String;

    move-result-object v0

    .line 109
    :goto_0
    return-object v0

    .line 108
    :cond_0
    const/4 v0, 0x3

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/cmplay/internalpush/ipc/IpcCloudHelper;->createParams(I[Ljava/lang/Object;)Landroid/content/ContentValues;

    move-result-object v0

    .line 109
    invoke-virtual {p0, v0, p1}, Lcom/cmplay/internalpush/ipc/IpcCloudHelper;->invoke(Landroid/content/ContentValues;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public innpush_getUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "defValue"    # Ljava/lang/String;

    .prologue
    .line 114
    invoke-static {}, Lcom/cmplay/base/util/q;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 115
    invoke-static {}, Lcom/ijinshan/cloudconfig/a;->b()Ljava/lang/String;

    move-result-object v0

    .line 118
    :goto_0
    return-object v0

    .line 117
    :cond_0
    const/4 v0, 0x5

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/cmplay/internalpush/ipc/IpcCloudHelper;->createParams(I[Ljava/lang/Object;)Landroid/content/ContentValues;

    move-result-object v0

    .line 118
    invoke-virtual {p0, v0, p1}, Lcom/cmplay/internalpush/ipc/IpcCloudHelper;->invoke(Landroid/content/ContentValues;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public innpush_isPullDataFromServer()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 123
    .line 124
    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    .line 125
    invoke-static {}, Lcom/cmplay/base/util/q;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 126
    invoke-static {}, Lcom/ijinshan/cloudconfig/a;->c()Z

    move-result v0

    .line 132
    :goto_0
    return v0

    .line 128
    :cond_0
    const/4 v1, 0x6

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/cmplay/internalpush/ipc/IpcCloudHelper;->createParams(I[Ljava/lang/Object;)Landroid/content/ContentValues;

    move-result-object v1

    .line 129
    invoke-virtual {p0, v1, v0}, Lcom/cmplay/internalpush/ipc/IpcCloudHelper;->invoke(Landroid/content/ContentValues;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 130
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public innpush_pullCloud()V
    .locals 3

    .prologue
    const/4 v2, 0x2

    .line 85
    invoke-static {}, Lcom/cmplay/base/util/q;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 86
    sget-object v0, Lcom/cmplay/base/util/q;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/ijinshan/cloudconfig/c/a;->a(Landroid/content/Context;)V

    .line 87
    invoke-static {}, Lcom/ijinshan/cloudconfig/a;->a()Ljava/lang/String;

    move-result-object v0

    .line 88
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 89
    const-string v0, "none"

    .line 91
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "none"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lcom/cmplay/base/util/q;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/cmplay/internalpush/f;->b(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 92
    :cond_1
    const-string v0, "innpush_pullCloud \u5f3a\u5236\u62c9\u53d6"

    invoke-static {v0}, Lcom/cmplay/base/util/g;->a(Ljava/lang/String;)V

    .line 93
    const-string v0, ""

    invoke-static {v2, v0}, Lcom/ijinshan/cloudconfig/a;->a(ILjava/lang/String;)V

    .line 102
    :goto_0
    return-void

    .line 95
    :cond_2
    const-string v1, "innpush_pullCloud \u6309\u7248\u672c\u62c9\u53d6"

    invoke-static {v1}, Lcom/cmplay/base/util/g;->a(Ljava/lang/String;)V

    .line 96
    const/4 v1, 0x3

    invoke-static {v1, v0}, Lcom/ijinshan/cloudconfig/a;->a(ILjava/lang/String;)V

    goto :goto_0

    .line 99
    :cond_3
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v2, v0}, Lcom/cmplay/internalpush/ipc/IpcCloudHelper;->createParams(I[Ljava/lang/Object;)Landroid/content/ContentValues;

    move-result-object v0

    .line 100
    invoke-virtual {p0, v0}, Lcom/cmplay/internalpush/ipc/IpcCloudHelper;->invoke(Landroid/content/ContentValues;)Ljava/lang/String;

    goto :goto_0
.end method

.method public innpush_pullCloudData(ILjava/lang/String;)V
    .locals 4
    .param p1, "pullType"    # I
    .param p2, "version"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    .line 76
    invoke-static {}, Lcom/cmplay/base/util/q;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    invoke-static {p1, p2}, Lcom/ijinshan/cloudconfig/a;->a(ILjava/lang/String;)V

    .line 82
    :goto_0
    return-void

    .line 79
    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    aput-object p2, v0, v3

    invoke-virtual {p0, v3, v0}, Lcom/cmplay/internalpush/ipc/IpcCloudHelper;->createParams(I[Ljava/lang/Object;)Landroid/content/ContentValues;

    move-result-object v0

    .line 80
    invoke-virtual {p0, v0}, Lcom/cmplay/internalpush/ipc/IpcCloudHelper;->invoke(Landroid/content/ContentValues;)Ljava/lang/String;

    goto :goto_0
.end method

.method public innpush_setCloudLanguage(Ljava/lang/String;)V
    .locals 3
    .param p1, "language"    # Ljava/lang/String;

    .prologue
    .line 136
    invoke-static {}, Lcom/cmplay/base/util/q;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 137
    invoke-static {p1}, Lcom/ijinshan/cloudconfig/a;->a(Ljava/lang/String;)V

    .line 142
    :goto_0
    return-void

    .line 139
    :cond_0
    const/4 v0, 0x4

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/cmplay/internalpush/ipc/IpcCloudHelper;->createParams(I[Ljava/lang/Object;)Landroid/content/ContentValues;

    move-result-object v0

    .line 140
    invoke-virtual {p0, v0}, Lcom/cmplay/internalpush/ipc/IpcCloudHelper;->invoke(Landroid/content/ContentValues;)Ljava/lang/String;

    goto :goto_0
.end method
