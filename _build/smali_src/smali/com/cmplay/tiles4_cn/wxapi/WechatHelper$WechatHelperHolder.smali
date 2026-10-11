.class final Lcom/cmplay/tiles4_cn/wxapi/WechatHelper$WechatHelperHolder;
.super Ljava/lang/Object;
.source "WechatHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cmplay/tiles4_cn/wxapi/WechatHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "WechatHelperHolder"
.end annotation


# static fields
.field static final INSTANCE:Lcom/cmplay/tiles4_cn/wxapi/WechatHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 38
    new-instance v0, Lcom/cmplay/tiles4_cn/wxapi/WechatHelper;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/cmplay/tiles4_cn/wxapi/WechatHelper;-><init>(Lcom/cmplay/tiles4_cn/wxapi/WechatHelper$1;)V

    sput-object v0, Lcom/cmplay/tiles4_cn/wxapi/WechatHelper$WechatHelperHolder;->INSTANCE:Lcom/cmplay/tiles4_cn/wxapi/WechatHelper;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
