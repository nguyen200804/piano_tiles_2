.class Lcom/facebook/notifications/internal/activity/CardActivity$1$1;
.super Ljava/lang/Object;
.source "CardActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/notifications/internal/activity/CardActivity$1;->a(Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/notifications/internal/configuration/CardConfiguration;

.field final synthetic b:Lcom/facebook/notifications/internal/activity/CardActivity$1;


# direct methods
.method constructor <init>(Lcom/facebook/notifications/internal/activity/CardActivity$1;Lcom/facebook/notifications/internal/configuration/CardConfiguration;)V
    .locals 0

    .prologue
    .line 183
    iput-object p1, p0, Lcom/facebook/notifications/internal/activity/CardActivity$1$1;->b:Lcom/facebook/notifications/internal/activity/CardActivity$1;

    iput-object p2, p0, Lcom/facebook/notifications/internal/activity/CardActivity$1$1;->a:Lcom/facebook/notifications/internal/configuration/CardConfiguration;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 186
    iget-object v0, p0, Lcom/facebook/notifications/internal/activity/CardActivity$1$1;->b:Lcom/facebook/notifications/internal/activity/CardActivity$1;

    iget-object v0, v0, Lcom/facebook/notifications/internal/activity/CardActivity$1;->b:Lcom/facebook/notifications/internal/activity/CardActivity;

    iget-object v1, p0, Lcom/facebook/notifications/internal/activity/CardActivity$1$1;->a:Lcom/facebook/notifications/internal/configuration/CardConfiguration;

    invoke-static {v0, v1}, Lcom/facebook/notifications/internal/activity/CardActivity;->a(Lcom/facebook/notifications/internal/activity/CardActivity;Lcom/facebook/notifications/internal/configuration/CardConfiguration;)V

    .line 187
    return-void
.end method
