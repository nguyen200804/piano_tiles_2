.class final Lcom/mopub/nativesdk/a/e;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "SDKDBHelper.java"


# instance fields
.field private synthetic a:Lcom/mopub/nativesdk/a/d;


# direct methods
.method public constructor <init>(Lcom/mopub/nativesdk/a/d;Landroid/content/Context;Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 100
    iput-object p1, p0, Lcom/mopub/nativesdk/a/e;->a:Lcom/mopub/nativesdk/a/d;

    .line 101
    const/4 v0, 0x0

    invoke-direct {p0, p2, p3, v0, p4}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 102
    return-void
.end method


# virtual methods
.method public final onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/mopub/nativesdk/a/e;->a:Lcom/mopub/nativesdk/a/d;

    invoke-static {v0, p1}, Lcom/mopub/nativesdk/a/d;->a(Lcom/mopub/nativesdk/a/d;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 106
    return-void
.end method

.method public final onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/mopub/nativesdk/a/e;->a:Lcom/mopub/nativesdk/a/d;

    invoke-static {v0, p1}, Lcom/mopub/nativesdk/a/d;->b(Lcom/mopub/nativesdk/a/d;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 113
    iget-object v0, p0, Lcom/mopub/nativesdk/a/e;->a:Lcom/mopub/nativesdk/a/d;

    invoke-static {v0, p1}, Lcom/mopub/nativesdk/a/d;->a(Lcom/mopub/nativesdk/a/d;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 114
    return-void
.end method
