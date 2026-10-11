.class public Lcom/facebook/notifications/internal/utilities/a;
.super Ljava/lang/Object;
.source "EnumCreator.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Enum;",
        ">",
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final b:[Ljava/lang/Enum;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Class;[Ljava/lang/Enum;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TT;>;[TT;)V"
        }
    .end annotation

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/facebook/notifications/internal/utilities/a;->a:Ljava/lang/Class;

    .line 32
    iput-object p2, p0, Lcom/facebook/notifications/internal/utilities/a;->b:[Ljava/lang/Enum;

    .line 33
    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Ljava/lang/Enum;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 37
    iget-object v0, p0, Lcom/facebook/notifications/internal/utilities/a;->b:[Ljava/lang/Enum;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public a(I)[Ljava/lang/Enum;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)[TT;"
        }
    .end annotation

    .prologue
    .line 43
    iget-object v0, p0, Lcom/facebook/notifications/internal/utilities/a;->a:Ljava/lang/Class;

    invoke-static {v0, p1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Enum;

    check-cast v0, [Ljava/lang/Enum;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 26
    .local p0, "this":Lcom/facebook/notifications/internal/utilities/a;, "Lcom/facebook/notifications/internal/utilities/a<TT;>;"
    invoke-virtual {p0, p1}, Lcom/facebook/notifications/internal/utilities/a;->a(Landroid/os/Parcel;)Ljava/lang/Enum;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 26
    .local p0, "this":Lcom/facebook/notifications/internal/utilities/a;, "Lcom/facebook/notifications/internal/utilities/a<TT;>;"
    invoke-virtual {p0, p1}, Lcom/facebook/notifications/internal/utilities/a;->a(I)[Ljava/lang/Enum;

    move-result-object v0

    return-object v0
.end method
