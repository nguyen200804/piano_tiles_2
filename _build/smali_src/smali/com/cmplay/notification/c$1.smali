.class final Lcom/cmplay/notification/c$1;
.super Ljava/lang/Object;
.source "NotificationUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cmplay/notification/c;->a(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:I

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:Ljava/lang/String;

.field final synthetic g:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 160
    iput-object p1, p0, Lcom/cmplay/notification/c$1;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/cmplay/notification/c$1;->b:Landroid/content/Context;

    iput p3, p0, Lcom/cmplay/notification/c$1;->c:I

    iput-object p4, p0, Lcom/cmplay/notification/c$1;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/cmplay/notification/c$1;->e:Ljava/lang/String;

    iput-object p6, p0, Lcom/cmplay/notification/c$1;->f:Ljava/lang/String;

    iput-object p7, p0, Lcom/cmplay/notification/c$1;->g:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 163
    invoke-static {}, Lcom/c/a;->a()Lcom/c/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/c/a;->b()Lcom/android/volley/toolbox/h;

    move-result-object v0

    iget-object v1, p0, Lcom/cmplay/notification/c$1;->a:Ljava/lang/String;

    new-instance v2, Lcom/cmplay/notification/c$1$1;

    invoke-direct {v2, p0}, Lcom/cmplay/notification/c$1$1;-><init>(Lcom/cmplay/notification/c$1;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/volley/toolbox/h;->a(Ljava/lang/String;Lcom/android/volley/toolbox/h$d;)Lcom/android/volley/toolbox/h$c;

    .line 181
    return-void
.end method
