.class public Lcom/facebook/notifications/internal/utilities/f;
.super Ljava/lang/Object;
.source "Version.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/facebook/notifications/internal/utilities/f;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:I

.field private final b:I

.field private final c:I


# direct methods
.method public constructor <init>(III)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput p1, p0, Lcom/facebook/notifications/internal/utilities/f;->a:I

    .line 18
    iput p2, p0, Lcom/facebook/notifications/internal/utilities/f;->b:I

    .line 19
    iput p3, p0, Lcom/facebook/notifications/internal/utilities/f;->c:I

    .line 20
    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/facebook/notifications/internal/utilities/f;
    .locals 4
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    const/high16 v0, -0x80000000

    .line 24
    new-instance v3, Ljava/util/Scanner;

    invoke-direct {v3, p0}, Ljava/util/Scanner;-><init>(Ljava/lang/String;)V

    .line 25
    const-string v1, "\\."

    invoke-virtual {v3, v1}, Ljava/util/Scanner;->useDelimiter(Ljava/lang/String;)Ljava/util/Scanner;

    .line 30
    :try_start_0
    invoke-virtual {v3}, Ljava/util/Scanner;->nextInt()I
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 31
    :try_start_1
    invoke-virtual {v3}, Ljava/util/Scanner;->nextInt()I
    :try_end_1
    .catch Ljava/util/NoSuchElementException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v1

    .line 32
    :try_start_2
    invoke-virtual {v3}, Ljava/util/Scanner;->nextInt()I
    :try_end_2
    .catch Ljava/util/NoSuchElementException; {:try_start_2 .. :try_end_2} :catch_2

    move-result v0

    .line 41
    :goto_0
    new-instance v3, Lcom/facebook/notifications/internal/utilities/f;

    invoke-direct {v3, v2, v1, v0}, Lcom/facebook/notifications/internal/utilities/f;-><init>(III)V

    move-object v0, v3

    :goto_1
    return-object v0

    .line 33
    :catch_0
    move-exception v1

    move v1, v0

    move v2, v0

    .line 34
    :goto_2
    if-ne v2, v0, :cond_0

    if-ne v1, v0, :cond_0

    .line 35
    const/4 v0, 0x0

    goto :goto_1

    .line 38
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 33
    :catch_1
    move-exception v1

    move v1, v0

    goto :goto_2

    :catch_2
    move-exception v3

    goto :goto_2
.end method


# virtual methods
.method public a(Lcom/facebook/notifications/internal/utilities/f;)I
    .locals 4

    .prologue
    .line 84
    iget v0, p0, Lcom/facebook/notifications/internal/utilities/f;->a:I

    iget v1, p1, Lcom/facebook/notifications/internal/utilities/f;->a:I

    sub-int/2addr v0, v1

    .line 85
    iget v1, p0, Lcom/facebook/notifications/internal/utilities/f;->b:I

    iget v2, p1, Lcom/facebook/notifications/internal/utilities/f;->b:I

    sub-int/2addr v1, v2

    .line 86
    iget v2, p0, Lcom/facebook/notifications/internal/utilities/f;->c:I

    iget v3, p1, Lcom/facebook/notifications/internal/utilities/f;->c:I

    sub-int/2addr v2, v3

    .line 88
    if-eqz v0, :cond_0

    :goto_0
    return v0

    :cond_0
    if-eqz v1, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 11
    check-cast p1, Lcom/facebook/notifications/internal/utilities/f;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/facebook/notifications/internal/utilities/f;->a(Lcom/facebook/notifications/internal/utilities/f;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 63
    if-ne p0, p1, :cond_1

    move v1, v0

    .line 70
    .end local p1    # "o":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v1

    .line 64
    .restart local p1    # "o":Ljava/lang/Object;
    :cond_1
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-ne v2, v3, :cond_0

    .line 66
    check-cast p1, Lcom/facebook/notifications/internal/utilities/f;

    .line 68
    .end local p1    # "o":Ljava/lang/Object;
    iget v2, p0, Lcom/facebook/notifications/internal/utilities/f;->a:I

    iget v3, p1, Lcom/facebook/notifications/internal/utilities/f;->a:I

    if-ne v2, v3, :cond_0

    .line 69
    iget v2, p0, Lcom/facebook/notifications/internal/utilities/f;->b:I

    iget v3, p1, Lcom/facebook/notifications/internal/utilities/f;->b:I

    if-ne v2, v3, :cond_0

    .line 70
    iget v2, p0, Lcom/facebook/notifications/internal/utilities/f;->c:I

    iget v3, p1, Lcom/facebook/notifications/internal/utilities/f;->c:I

    if-ne v2, v3, :cond_2

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 76
    iget v0, p0, Lcom/facebook/notifications/internal/utilities/f;->a:I

    .line 77
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/facebook/notifications/internal/utilities/f;->b:I

    add-int/2addr v0, v1

    .line 78
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/facebook/notifications/internal/utilities/f;->c:I

    add-int/2addr v0, v1

    .line 79
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Version{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/facebook/notifications/internal/utilities/f;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/facebook/notifications/internal/utilities/f;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/facebook/notifications/internal/utilities/f;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
