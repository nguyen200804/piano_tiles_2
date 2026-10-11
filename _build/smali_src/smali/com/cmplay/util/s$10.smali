.class Lcom/cmplay/util/s$10;
.super Ljava/lang/Object;
.source "NativeInterfaceImpl.java"

# interfaces
.implements Lcom/cmplay/base/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cmplay/util/s;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cmplay/util/s;


# direct methods
.method constructor <init>(Lcom/cmplay/util/s;)V
    .locals 0

    .prologue
    .line 1110
    iput-object p1, p0, Lcom/cmplay/util/s$10;->a:Lcom/cmplay/util/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 0

    .prologue
    .line 1113
    invoke-static {p1}, Lcom/cmplay/util/NativeUtil;->onPayCallback(I)V

    .line 1114
    return-void
.end method

.method public a(ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 1143
    invoke-static {p1, p2}, Lcom/cmplay/util/NativeUtil;->onSendSubscribeState(ILjava/lang/String;)V

    .line 1144
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1123
    invoke-static {p1}, Lcom/cmplay/util/NativeUtil;->onGetPriceCallback(Ljava/lang/String;)V

    .line 1124
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1118
    invoke-static {p1, p2}, Lcom/cmplay/util/NativeUtil;->onSendConsumeInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 1119
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1153
    invoke-static {p1, p2, p3}, Lcom/cmplay/util/NativeUtil;->onSubscribePayCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1154
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1148
    invoke-static {p1}, Lcom/cmplay/util/NativeUtil;->onGetSubscribeInfoCallback(Ljava/lang/String;)V

    .line 1149
    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1138
    invoke-static {p1, p2}, Lcom/cmplay/util/NativeUtil;->onSendOrderInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 1139
    return-void
.end method
