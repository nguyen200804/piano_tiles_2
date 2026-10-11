.class public Lcom/mopub/nativesdk/a/a;
.super Ljava/lang/Object;
.source "BaseDao.java"


# instance fields
.field protected a:Landroid/database/sqlite/SQLiteDatabase;

.field private b:Lcom/mopub/nativesdk/a/d;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/mopub/nativesdk/a/d;)V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mopub/nativesdk/a/a;->b:Lcom/mopub/nativesdk/a/d;

    .line 16
    iput-object p1, p0, Lcom/mopub/nativesdk/a/a;->b:Lcom/mopub/nativesdk/a/d;

    .line 1020
    iget-object v0, p0, Lcom/mopub/nativesdk/a/a;->b:Lcom/mopub/nativesdk/a/d;

    invoke-virtual {v0}, Lcom/mopub/nativesdk/a/d;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 17
    iput-object v0, p0, Lcom/mopub/nativesdk/a/a;->a:Landroid/database/sqlite/SQLiteDatabase;

    .line 18
    return-void
.end method
