.class public final Lcom/mnt/impl/d/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mnt/impl/d/a;",
            ">;"
        }
    .end annotation
.end field

.field public static c:Lcom/mnt/impl/d/c;


# instance fields
.field a:Landroid/content/Context;

.field public d:Lcom/mnt/impl/d/e;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Lcom/mnt/impl/d/d;

    invoke-direct {v0, p0}, Lcom/mnt/impl/d/d;-><init>(Lcom/mnt/impl/d/c;)V

    .line 23
    iput-object p1, p0, Lcom/mnt/impl/d/c;->a:Landroid/content/Context;

    .line 24
    invoke-static {p1}, Lcom/mnt/impl/d/e;->a(Landroid/content/Context;)Lcom/mnt/impl/d/e;

    move-result-object v0

    iput-object v0, p0, Lcom/mnt/impl/d/c;->d:Lcom/mnt/impl/d/e;

    .line 25
    return-void
.end method
