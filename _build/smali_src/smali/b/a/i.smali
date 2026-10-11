.class public Lb/a/i;
.super Lb/a/af;
.source "UPage.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lb/a/af;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 21
    invoke-direct {p0}, Lb/a/af;-><init>()V

    .line 22
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 24
    invoke-direct {p0, v0}, Lb/a/i;->a(Lorg/json/JSONArray;)V

    .line 25
    return-void
.end method

.method private a(Lorg/json/JSONArray;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 28
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lb/a/i;->a(Ljava/lang/String;)Lb/a/af;

    .line 29
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getInt(I)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Lb/a/i;->a(J)Lb/a/af;

    .line 30
    return-void
.end method
