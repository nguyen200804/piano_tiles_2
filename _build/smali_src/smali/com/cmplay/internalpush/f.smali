.class public Lcom/cmplay/internalpush/f;
.super Ljava/lang/Object;
.source "CloudHeplerProxy.java"


# static fields
.field public static a:Landroid/content/Context;


# direct methods
.method public static a(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;I)I
    .locals 1

    .prologue
    .line 114
    invoke-static {p0, p1, p2, p3}, Lcom/ijinshan/cloudconfig/a;->a(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static a()V
    .locals 2

    .prologue
    .line 73
    const-string v0, "zzb_CloudHeplerProxy"

    const-string v1, "pullCloudData----"

    invoke-static {v0, v1}, Lcom/cmplay/base/util/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    invoke-static {}, Lcom/cmplay/internalpush/ipc/IpcCloudHelper;->getInstance()Lcom/cmplay/internalpush/ipc/IpcCloudHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cmplay/internalpush/ipc/IpcCloudHelper;->innpush_pullCloud()V

    .line 75
    return-void
.end method

.method public static a(Landroid/content/BroadcastReceiver;)V
    .locals 0

    .prologue
    .line 156
    invoke-static {p0}, Lcom/ijinshan/cloudconfig/a;->a(Landroid/content/BroadcastReceiver;)V

    .line 157
    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 60
    const-string v0, "zzb_CloudHeplerProxy"

    const-string v1, "startServicePullCloudConfig"

    invoke-static {v0, v1}, Lcom/cmplay/base/util/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    invoke-static {}, Lcom/cmplay/base/util/q;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62
    invoke-static {}, Lcom/cmplay/internalpush/ipc/IpcSpHelper;->getInstance()Lcom/cmplay/internalpush/ipc/IpcSpHelper;

    move-result-object v0

    const-string v1, "cloud_current_language"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/cmplay/internalpush/ipc/IpcSpHelper;->sp_getStringValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 63
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 64
    invoke-static {}, Lcom/cmplay/internalpush/f;->a()V

    .line 67
    :cond_0
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 4

    .prologue
    .line 37
    sput-object p0, Lcom/cmplay/internalpush/f;->a:Landroid/content/Context;

    .line 39
    invoke-static {p0, p1, p2, p3, p4}, Lcom/ijinshan/cloudconfig/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 42
    new-instance v0, Lcom/cmplay/internalpush/f$1;

    invoke-direct {v0}, Lcom/cmplay/internalpush/f$1;-><init>()V

    invoke-static {v0}, Lcom/ijinshan/cloudconfig/a;->a(Lcom/ijinshan/cloudconfig/a$a;)V

    .line 49
    invoke-static {}, Lcom/cmplay/internalpush/ipc/IpcSpHelper;->getInstance()Lcom/cmplay/internalpush/ipc/IpcSpHelper;

    move-result-object v0

    const-string v1, "cloud_current_language"

    const-string v2, "en"

    invoke-virtual {v0, v1, v2}, Lcom/cmplay/internalpush/ipc/IpcSpHelper;->sp_getStringValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 50
    const-string v1, "zzb_cloud"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CloudHeplerProxy.initCloud  \u5f53\u524d\u8bed\u8a00\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/cmplay/base/util/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    invoke-static {}, Lcom/cmplay/internalpush/ipc/IpcCloudHelper;->getInstance()Lcom/cmplay/internalpush/ipc/IpcCloudHelper;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/cmplay/internalpush/ipc/IpcCloudHelper;->innpush_setCloudLanguage(Ljava/lang/String;)V

    .line 53
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7

    .prologue
    const/4 v0, 0x1

    .line 171
    invoke-static {}, Lcom/cmplay/internalpush/ipc/IpcSpHelper;->getInstance()Lcom/cmplay/internalpush/ipc/IpcSpHelper;

    move-result-object v1

    const-string v2, "cloud_current_language"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Lcom/cmplay/internalpush/ipc/IpcSpHelper;->sp_getStringValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 173
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 175
    invoke-static {}, Lcom/cmplay/internalpush/ipc/IpcSpHelper;->getInstance()Lcom/cmplay/internalpush/ipc/IpcSpHelper;

    move-result-object v2

    const-string v3, "cloud_current_language"

    invoke-virtual {v2, v3, p0}, Lcom/cmplay/internalpush/ipc/IpcSpHelper;->sp_setStringValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    const-string v2, "zzb_CloudHeplerProxy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u4fdd\u5b58\u8bed\u8a00-----currentLanguage:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "   \u4fdd\u5b58\u540e\u7684\u8bed\u8a00\u4e3a:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/cmplay/internalpush/ipc/IpcSpHelper;->getInstance()Lcom/cmplay/internalpush/ipc/IpcSpHelper;

    move-result-object v4

    const-string v5, "cloud_current_language"

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Lcom/cmplay/internalpush/ipc/IpcSpHelper;->sp_getStringValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/cmplay/base/util/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    move-object p1, p0

    .line 184
    :goto_0
    invoke-static {}, Lcom/cmplay/internalpush/ipc/IpcCloudHelper;->getInstance()Lcom/cmplay/internalpush/ipc/IpcCloudHelper;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/cmplay/internalpush/ipc/IpcCloudHelper;->innpush_setCloudLanguage(Ljava/lang/String;)V

    .line 186
    const-string v2, "zzb_CloudHeplerProxy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "currentLanguage\uff1a"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", oldLan ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/cmplay/base/util/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 190
    const-string v1, "zzb_CloudHeplerProxy"

    const-string v2, "\u6ca1\u6709\u8bbe\u7f6e\u8fc7\u8bed\u8a00\uff0c\u5373\u7b2c\u4e00\u6b21\u62c9\u53d6"

    invoke-static {v1, v2}, Lcom/cmplay/base/util/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    invoke-static {}, Lcom/cmplay/internalpush/f;->a()V

    .line 200
    :goto_1
    return v0

    .line 178
    :cond_0
    const-string v2, "zzb_CloudHeplerProxy"

    const-string v3, "\u83b7\u53d6\u6e38\u620f\u8bed\u8a00\u4e3a\u7a7a-----------\u90a3\u5c31\u9ed8\u8ba4"

    invoke-static {v2, v3}, Lcom/cmplay/base/util/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    invoke-static {}, Lcom/cmplay/internalpush/ipc/IpcSpHelper;->getInstance()Lcom/cmplay/internalpush/ipc/IpcSpHelper;

    move-result-object v2

    const-string v3, "cloud_current_language"

    invoke-virtual {v2, v3, p1}, Lcom/cmplay/internalpush/ipc/IpcSpHelper;->sp_setStringValue(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 193
    :cond_1
    invoke-static {v1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 194
    const-string v1, "zzb_CloudHeplerProxy"

    const-string v2, "\u8bed\u8a00\u6709\u5207\u6362"

    invoke-static {v1, v2}, Lcom/cmplay/base/util/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    invoke-static {}, Lcom/cmplay/internalpush/f;->b()V

    goto :goto_1

    .line 200
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static b()V
    .locals 4

    .prologue
    .line 207
    invoke-static {}, Lcom/cmplay/internalpush/ipc/IpcCloudHelper;->getInstance()Lcom/cmplay/internalpush/ipc/IpcCloudHelper;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/cmplay/internalpush/ipc/IpcCloudHelper;->innpush_getCloudVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 208
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 209
    const-string v0, "zzb_CloudHeplerProxy"

    const-string v1, "\u5207\u8bed\u8a00\uff0c\u7248\u672c\u4e3a\u7a7a\uff0c\u5f3a\u5236\u62c9\u53d6\u9b54\u65b9"

    invoke-static {v0, v1}, Lcom/cmplay/base/util/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    invoke-static {}, Lcom/cmplay/internalpush/ipc/IpcCloudHelper;->getInstance()Lcom/cmplay/internalpush/ipc/IpcCloudHelper;

    move-result-object v0

    const/4 v1, 0x2

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/cmplay/internalpush/ipc/IpcCloudHelper;->innpush_pullCloudData(ILjava/lang/String;)V

    .line 215
    :goto_0
    return-void

    .line 212
    :cond_0
    const-string v1, "zzb_CloudHeplerProxy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/cmplay/internalpush/f;->a:Landroid/content/Context;

    invoke-static {v3}, Lcom/cmplay/base/util/q;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " \u4e3b\u52a8\u62c9\u53d6 getConfig(cloudVersion)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/cmplay/base/util/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    invoke-static {}, Lcom/cmplay/internalpush/ipc/IpcCloudHelper;->getInstance()Lcom/cmplay/internalpush/ipc/IpcCloudHelper;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2, v0}, Lcom/cmplay/internalpush/ipc/IpcCloudHelper;->innpush_pullCloudData(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;)Z
    .locals 4

    .prologue
    .line 222
    invoke-static {p0}, Lcom/cmplay/base/util/h;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 224
    invoke-static {}, Lcom/cmplay/internalpush/ipc/IpcSpHelper;->getInstance()Lcom/cmplay/internalpush/ipc/IpcSpHelper;

    move-result-object v1

    const-string v2, "local_app_version"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Lcom/cmplay/internalpush/ipc/IpcSpHelper;->sp_getStringValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 225
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 226
    const/4 v0, 0x0

    .line 230
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static c(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 234
    invoke-static {p0}, Lcom/cmplay/base/util/h;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 235
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 236
    invoke-static {}, Lcom/cmplay/internalpush/ipc/IpcSpHelper;->getInstance()Lcom/cmplay/internalpush/ipc/IpcSpHelper;

    move-result-object v1

    const-string v2, "local_app_version"

    invoke-virtual {v1, v2, v0}, Lcom/cmplay/internalpush/ipc/IpcSpHelper;->sp_setStringValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    :cond_0
    return-void
.end method
