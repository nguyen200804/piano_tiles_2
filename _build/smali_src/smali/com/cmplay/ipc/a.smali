.class public abstract Lcom/cmplay/ipc/a;
.super Ljava/lang/Object;
.source "AbsIpcProviderHandler.java"

# interfaces
.implements Lcom/cmplay/ipc/b;


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Landroid/content/Context;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/cmplay/ipc/a;->a:Landroid/content/Context;

    return-object v0
.end method

.method public a(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 12
    iput-object p1, p0, Lcom/cmplay/ipc/a;->a:Landroid/content/Context;

    .line 13
    return-void
.end method
