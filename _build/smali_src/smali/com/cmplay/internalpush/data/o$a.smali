.class Lcom/cmplay/internalpush/data/o$a;
.super Ljava/lang/Object;
.source "ParseCloudDataBase.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cmplay/internalpush/data/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/cmplay/internalpush/data/c;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/cmplay/internalpush/data/o;


# direct methods
.method constructor <init>(Lcom/cmplay/internalpush/data/o;)V
    .locals 0

    .prologue
    .line 261
    iput-object p1, p0, Lcom/cmplay/internalpush/data/o$a;->a:Lcom/cmplay/internalpush/data/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/cmplay/internalpush/data/c;Lcom/cmplay/internalpush/data/c;)I
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 264
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 265
    invoke-virtual {p1}, Lcom/cmplay/internalpush/data/c;->i()J

    move-result-wide v2

    invoke-virtual {p2}, Lcom/cmplay/internalpush/data/c;->i()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-lez v1, :cond_1

    .line 266
    const/4 v0, -0x1

    .line 272
    :cond_0
    :goto_0
    return v0

    .line 267
    :cond_1
    invoke-virtual {p1}, Lcom/cmplay/internalpush/data/c;->i()J

    move-result-wide v2

    invoke-virtual {p2}, Lcom/cmplay/internalpush/data/c;->i()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    .line 270
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 261
    check-cast p1, Lcom/cmplay/internalpush/data/c;

    check-cast p2, Lcom/cmplay/internalpush/data/c;

    invoke-virtual {p0, p1, p2}, Lcom/cmplay/internalpush/data/o$a;->a(Lcom/cmplay/internalpush/data/c;Lcom/cmplay/internalpush/data/c;)I

    move-result v0

    return v0
.end method
