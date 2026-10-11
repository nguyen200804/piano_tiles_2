.class public final Lcom/duapps/ad/base/g;
.super Ljava/lang/Object;
.source "HttpParamsHelper.java"


# static fields
.field private static final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;"
        }
    .end annotation
.end field

.field private static b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/duapps/ad/base/g;->a:Ljava/util/List;

    .line 69
    const/4 v0, 0x0

    sput-boolean v0, Lcom/duapps/ad/base/g;->b:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Z)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;"
        }
    .end annotation

    .prologue
    .line 108
    invoke-static {p0}, Lcom/duapps/ad/base/g;->a(Landroid/content/Context;)V

    .line 110
    new-instance v0, Ljava/util/ArrayList;

    sget-object v1, Lcom/duapps/ad/base/g;->a:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 112
    invoke-static {p0}, Lcom/duapps/ad/base/b;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 113
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 114
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "op"

    invoke-direct {v2, v3, v1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 117
    :cond_0
    invoke-static {p0}, Lcom/duapps/ad/base/f;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 118
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 119
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "RSB_"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 120
    invoke-static {v1}, Lcom/duapps/ad/c/b/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "goid"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v3, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 124
    :cond_1
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "locale"

    invoke-static {p0}, Lcom/duapps/ad/base/b;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 125
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "ntt"

    invoke-static {p0}, Lcom/duapps/ad/base/b;->i(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 126
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "ls"

    invoke-direct {v1, v2, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 128
    invoke-static {p0}, Lcom/duapps/ad/c/b/c;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 129
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 130
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "aid"

    invoke-direct {v2, v3, v1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 132
    :cond_2
    if-eqz p2, :cond_3

    .line 133
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "pk"

    invoke-static {p0}, Lcom/duapps/ad/base/m;->y(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 135
    :cond_3
    invoke-static {}, Lcom/duapps/ad/base/a;->a()Ljava/lang/String;

    move-result-object v1

    .line 136
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 137
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "lc"

    invoke-direct {v2, v3, v1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 139
    :cond_4
    return-object v0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 5

    .prologue
    .line 75
    const-class v1, Lcom/duapps/ad/base/g;

    monitor-enter v1

    .line 76
    :try_start_0
    sget-boolean v0, Lcom/duapps/ad/base/g;->b:Z

    if-eqz v0, :cond_0

    .line 77
    monitor-exit v1

    .line 105
    :goto_0
    return-void

    .line 79
    :cond_0
    sget-object v0, Lcom/duapps/ad/base/g;->a:Ljava/util/List;

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "h"

    invoke-static {p0}, Lcom/duapps/ad/base/b;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    sget-object v0, Lcom/duapps/ad/base/g;->a:Ljava/util/List;

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "w"

    invoke-static {p0}, Lcom/duapps/ad/base/b;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 82
    sget-object v0, Lcom/duapps/ad/base/g;->a:Ljava/util/List;

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "model"

    invoke-static {}, Lcom/duapps/ad/base/b;->b()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 83
    sget-object v0, Lcom/duapps/ad/base/g;->a:Ljava/util/List;

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "vendor"

    .line 84
    invoke-static {}, Lcom/duapps/ad/base/b;->a()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 85
    sget-object v0, Lcom/duapps/ad/base/g;->a:Ljava/util/List;

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "sdk"

    .line 87
    invoke-static {}, Lcom/duapps/ad/base/b;->c()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    sget-object v0, Lcom/duapps/ad/base/g;->a:Ljava/util/List;

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "dpi"

    invoke-static {p0}, Lcom/duapps/ad/base/b;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
    sget-object v0, Lcom/duapps/ad/base/g;->a:Ljava/util/List;

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "sv"

    const-string v4, "1.0.9.7"

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 91
    sget-object v0, Lcom/duapps/ad/base/g;->a:Ljava/util/List;

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "svn"

    const-string v4, "CW-1.0.9.7"

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 93
    sget-object v0, Lcom/duapps/ad/base/g;->a:Ljava/util/List;

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "pkg"

    invoke-static {p0}, Lcom/duapps/ad/base/b;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 94
    invoke-static {p0}, Lcom/duapps/ad/base/b;->e(Landroid/content/Context;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 95
    sget-object v2, Lcom/duapps/ad/base/g;->a:Ljava/util/List;

    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "v"

    invoke-direct {v3, v4, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 96
    sget-object v0, Lcom/duapps/ad/base/g;->a:Ljava/util/List;

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "vn"

    .line 97
    invoke-static {p0}, Lcom/duapps/ad/base/b;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 103
    const/4 v0, 0x1

    sput-boolean v0, Lcom/duapps/ad/base/g;->b:Z

    .line 104
    monitor-exit v1

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
