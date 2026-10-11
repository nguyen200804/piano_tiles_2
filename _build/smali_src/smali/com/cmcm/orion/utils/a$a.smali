.class final Lcom/cmcm/orion/utils/a$a;
.super Ljava/lang/Object;
.source "BackgroundThread.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cmcm/orion/utils/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/cmcm/orion/utils/a$a;->a:Ljava/lang/Runnable;

    .line 43
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/cmcm/orion/utils/a$a;->a:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 48
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 50
    iget-object v0, p0, Lcom/cmcm/orion/utils/a$a;->a:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 51
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 57
    :cond_0
    return-void
.end method
