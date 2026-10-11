.class public Lcom/facebook/login/LoginClient$Request;
.super Ljava/lang/Object;
.source "LoginClient.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/login/LoginClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Request"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/facebook/login/LoginClient$Request;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Lcom/facebook/login/c;

.field private b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lcom/facebook/login/a;

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;

.field private f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 527
    new-instance v0, Lcom/facebook/login/LoginClient$Request$1;

    invoke-direct {v0}, Lcom/facebook/login/LoginClient$Request$1;-><init>()V

    sput-object v0, Lcom/facebook/login/LoginClient$Request;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 499
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 442
    iput-boolean v2, p0, Lcom/facebook/login/LoginClient$Request;->f:Z

    .line 500
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 501
    if-eqz v0, :cond_1

    invoke-static {v0}, Lcom/facebook/login/c;->valueOf(Ljava/lang/String;)Lcom/facebook/login/c;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/facebook/login/LoginClient$Request;->a:Lcom/facebook/login/c;

    .line 502
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 503
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    .line 504
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v3, p0, Lcom/facebook/login/LoginClient$Request;->b:Ljava/util/Set;

    .line 505
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 506
    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/facebook/login/a;->valueOf(Ljava/lang/String;)Lcom/facebook/login/a;

    move-result-object v1

    :cond_0
    iput-object v1, p0, Lcom/facebook/login/LoginClient$Request;->c:Lcom/facebook/login/a;

    .line 507
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/login/LoginClient$Request;->d:Ljava/lang/String;

    .line 508
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/login/LoginClient$Request;->e:Ljava/lang/String;

    .line 509
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/facebook/login/LoginClient$Request;->f:Z

    .line 510
    return-void

    :cond_1
    move-object v0, v1

    .line 501
    goto :goto_0

    :cond_2
    move v0, v2

    .line 509
    goto :goto_1
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/facebook/login/LoginClient$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/facebook/login/LoginClient$1;

    .prologue
    .line 436
    invoke-direct {p0, p1}, Lcom/facebook/login/LoginClient$Request;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method constructor <init>(Lcom/facebook/login/c;Ljava/util/Set;Lcom/facebook/login/a;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "loginBehavior"    # Lcom/facebook/login/c;
    .param p3, "defaultAudience"    # Lcom/facebook/login/a;
    .param p4, "applicationId"    # Ljava/lang/String;
    .param p5, "authId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/login/c;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/facebook/login/a;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 449
    .local p2, "permissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 442
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/login/LoginClient$Request;->f:Z

    .line 450
    iput-object p1, p0, Lcom/facebook/login/LoginClient$Request;->a:Lcom/facebook/login/c;

    .line 451
    if-eqz p2, :cond_0

    .end local p2    # "permissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :goto_0
    iput-object p2, p0, Lcom/facebook/login/LoginClient$Request;->b:Ljava/util/Set;

    .line 452
    iput-object p3, p0, Lcom/facebook/login/LoginClient$Request;->c:Lcom/facebook/login/a;

    .line 453
    iput-object p4, p0, Lcom/facebook/login/LoginClient$Request;->d:Ljava/lang/String;

    .line 454
    iput-object p5, p0, Lcom/facebook/login/LoginClient$Request;->e:Ljava/lang/String;

    .line 455
    return-void

    .line 451
    .restart local p2    # "permissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_0
    new-instance p2, Ljava/util/HashSet;

    .end local p2    # "permissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-direct {p2}, Ljava/util/HashSet;-><init>()V

    goto :goto_0
.end method


# virtual methods
.method a()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 458
    iget-object v0, p0, Lcom/facebook/login/LoginClient$Request;->b:Ljava/util/Set;

    return-object v0
.end method

.method a(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 462
    const-string v0, "permissions"

    invoke-static {p1, v0}, Lcom/facebook/internal/ab;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 463
    iput-object p1, p0, Lcom/facebook/login/LoginClient$Request;->b:Ljava/util/Set;

    .line 464
    return-void
.end method

.method a(Z)V
    .locals 0

    .prologue
    .line 487
    iput-boolean p1, p0, Lcom/facebook/login/LoginClient$Request;->f:Z

    .line 488
    return-void
.end method

.method b()Lcom/facebook/login/c;
    .locals 1

    .prologue
    .line 467
    iget-object v0, p0, Lcom/facebook/login/LoginClient$Request;->a:Lcom/facebook/login/c;

    return-object v0
.end method

.method c()Lcom/facebook/login/a;
    .locals 1

    .prologue
    .line 471
    iget-object v0, p0, Lcom/facebook/login/LoginClient$Request;->c:Lcom/facebook/login/a;

    return-object v0
.end method

.method d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 475
    iget-object v0, p0, Lcom/facebook/login/LoginClient$Request;->d:Ljava/lang/String;

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 514
    const/4 v0, 0x0

    return v0
.end method

.method e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 479
    iget-object v0, p0, Lcom/facebook/login/LoginClient$Request;->e:Ljava/lang/String;

    return-object v0
.end method

.method f()Z
    .locals 1

    .prologue
    .line 483
    iget-boolean v0, p0, Lcom/facebook/login/LoginClient$Request;->f:Z

    return v0
.end method

.method g()Z
    .locals 2

    .prologue
    .line 491
    iget-object v0, p0, Lcom/facebook/login/LoginClient$Request;->b:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 492
    invoke-static {v0}, Lcom/facebook/login/e;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 493
    const/4 v0, 0x1

    .line 496
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x0

    .line 519
    iget-object v0, p0, Lcom/facebook/login/LoginClient$Request;->a:Lcom/facebook/login/c;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/login/LoginClient$Request;->a:Lcom/facebook/login/c;

    invoke-virtual {v0}, Lcom/facebook/login/c;->name()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 520
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/facebook/login/LoginClient$Request;->b:Ljava/util/Set;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 521
    iget-object v0, p0, Lcom/facebook/login/LoginClient$Request;->c:Lcom/facebook/login/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/login/LoginClient$Request;->c:Lcom/facebook/login/a;

    invoke-virtual {v0}, Lcom/facebook/login/a;->name()Ljava/lang/String;

    move-result-object v1

    :cond_0
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 522
    iget-object v0, p0, Lcom/facebook/login/LoginClient$Request;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 523
    iget-object v0, p0, Lcom/facebook/login/LoginClient$Request;->e:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 524
    iget-boolean v0, p0, Lcom/facebook/login/LoginClient$Request;->f:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 525
    return-void

    :cond_1
    move-object v0, v1

    .line 519
    goto :goto_0

    .line 524
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method
