.class public final enum Lcom/cmplay/h/a;
.super Ljava/lang/Enum;
.source "EPlatform.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/cmplay/h/a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/cmplay/h/a;

.field public static final enum b:Lcom/cmplay/h/a;

.field public static final enum c:Lcom/cmplay/h/a;

.field public static final enum d:Lcom/cmplay/h/a;

.field public static final enum e:Lcom/cmplay/h/a;

.field public static final enum f:Lcom/cmplay/h/a;

.field public static final enum g:Lcom/cmplay/h/a;

.field private static final synthetic j:[Lcom/cmplay/h/a;


# instance fields
.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 11
    new-instance v0, Lcom/cmplay/h/a;

    const-string v1, "Facebook"

    const-string v2, "com.facebook.katana"

    const-string v3, "com.facebook.composer.shareintent.ImplicitShareIntentHandlerDefaultAlias"

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/cmplay/h/a;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/cmplay/h/a;->a:Lcom/cmplay/h/a;

    .line 12
    new-instance v0, Lcom/cmplay/h/a;

    const-string v1, "Twitter"

    const-string v2, "com.twitter.android"

    const-string v3, "com.twitter.android.composer.ComposerActivity"

    invoke-direct {v0, v1, v6, v2, v3}, Lcom/cmplay/h/a;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/cmplay/h/a;->b:Lcom/cmplay/h/a;

    .line 13
    new-instance v0, Lcom/cmplay/h/a;

    const-string v1, "Messenger"

    const-string v2, "com.facebook.orca"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v7, v2, v3}, Lcom/cmplay/h/a;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/cmplay/h/a;->c:Lcom/cmplay/h/a;

    .line 15
    new-instance v0, Lcom/cmplay/h/a;

    const-string v1, "QQ"

    const-string v2, "com.tencent.mobileqq"

    const-string v3, "com.tencent.mobileqq.activity.JumpActivity"

    invoke-direct {v0, v1, v8, v2, v3}, Lcom/cmplay/h/a;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/cmplay/h/a;->d:Lcom/cmplay/h/a;

    .line 16
    new-instance v0, Lcom/cmplay/h/a;

    const-string v1, "QQZone"

    const-string v2, "com.qzone"

    const-string v3, "com.qzonex.module.operation.ui.QZonePublishMoodActivity"

    invoke-direct {v0, v1, v9, v2, v3}, Lcom/cmplay/h/a;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/cmplay/h/a;->e:Lcom/cmplay/h/a;

    .line 17
    new-instance v0, Lcom/cmplay/h/a;

    const-string v1, "WeChat"

    const/4 v2, 0x5

    const-string v3, "com.tencent.mm"

    const-string v4, "com.tencent.mm.ui.tools.ShareImgUI"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/cmplay/h/a;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/cmplay/h/a;->f:Lcom/cmplay/h/a;

    .line 18
    new-instance v0, Lcom/cmplay/h/a;

    const-string v1, "QQWechatMoment"

    const/4 v2, 0x6

    const-string v3, "com.tencent.mm"

    const-string v4, "com.tencent.mm.ui.tools.ShareToTimeLineUI"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/cmplay/h/a;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/cmplay/h/a;->g:Lcom/cmplay/h/a;

    .line 6
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/cmplay/h/a;

    sget-object v1, Lcom/cmplay/h/a;->a:Lcom/cmplay/h/a;

    aput-object v1, v0, v5

    sget-object v1, Lcom/cmplay/h/a;->b:Lcom/cmplay/h/a;

    aput-object v1, v0, v6

    sget-object v1, Lcom/cmplay/h/a;->c:Lcom/cmplay/h/a;

    aput-object v1, v0, v7

    sget-object v1, Lcom/cmplay/h/a;->d:Lcom/cmplay/h/a;

    aput-object v1, v0, v8

    sget-object v1, Lcom/cmplay/h/a;->e:Lcom/cmplay/h/a;

    aput-object v1, v0, v9

    const/4 v1, 0x5

    sget-object v2, Lcom/cmplay/h/a;->f:Lcom/cmplay/h/a;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/cmplay/h/a;->g:Lcom/cmplay/h/a;

    aput-object v2, v0, v1

    sput-object v0, Lcom/cmplay/h/a;->j:[Lcom/cmplay/h/a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 24
    iput-object p3, p0, Lcom/cmplay/h/a;->h:Ljava/lang/String;

    .line 25
    iput-object p4, p0, Lcom/cmplay/h/a;->i:Ljava/lang/String;

    .line 26
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/cmplay/h/a;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 6
    const-class v0, Lcom/cmplay/h/a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/cmplay/h/a;

    return-object v0
.end method

.method public static values()[Lcom/cmplay/h/a;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/cmplay/h/a;->j:[Lcom/cmplay/h/a;

    invoke-virtual {v0}, [Lcom/cmplay/h/a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/cmplay/h/a;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/cmplay/h/a;->h:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/cmplay/h/a;->i:Ljava/lang/String;

    return-object v0
.end method
