.class public interface abstract Lcom/cmplay/base/util/webview/util/NetStatReceiver$OnNetStatListener;
.super Ljava/lang/Object;
.source "NetStatReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cmplay/base/util/webview/util/NetStatReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnNetStatListener"
.end annotation


# virtual methods
.method public abstract onConnectingTimeOut()V
.end method

.method public abstract onNetConnected()V
.end method

.method public abstract onNetConnecting()V
.end method

.method public abstract onWifiDisabled()V
.end method

.method public abstract onWifiEnabled()V
.end method
