.class final Lcom/cmplay/ipc/SyncIpcProvider$1;
.super Ljava/lang/Object;
.source "SyncIpcProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cmplay/ipc/SyncIpcProvider;->notifyLevelingDataChanged()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .prologue
    .line 58
    invoke-static {}, Lcom/cmplay/util/NativeUtil;->onLevelingDataChanged()V

    .line 59
    return-void
.end method
