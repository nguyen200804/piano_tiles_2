.class final Lcom/cmplay/c/a/a$2;
.super Ljava/lang/Object;
.source "CCrashUpdater.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cmplay/c/a/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:[Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 277
    iput-object p1, p0, Lcom/cmplay/c/a/a$2;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/cmplay/c/a/a$2;->b:[Ljava/lang/String;

    iput-object p3, p0, Lcom/cmplay/c/a/a$2;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/cmplay/c/a/a$2;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/cmplay/c/a/a$2;->e:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 280
    iget-object v0, p0, Lcom/cmplay/c/a/a$2;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/cmplay/c/a/a$2;->b:[Ljava/lang/String;

    iget-object v2, p0, Lcom/cmplay/c/a/a$2;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/cmplay/c/a/a$2;->d:Ljava/lang/String;

    iget-object v4, p0, Lcom/cmplay/c/a/a$2;->e:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/cmplay/c/a/a;->a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    return-void
.end method
