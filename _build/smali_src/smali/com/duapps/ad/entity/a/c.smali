.class public Lcom/duapps/ad/entity/a/c;
.super Lcom/duapps/ad/entity/a/b;
.source "EmptyChannel.java"


# static fields
.field public static final a:Lcom/duapps/ad/entity/a/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 5
    new-instance v0, Lcom/duapps/ad/entity/a/c;

    invoke-direct {v0}, Lcom/duapps/ad/entity/a/c;-><init>()V

    sput-object v0, Lcom/duapps/ad/entity/a/c;->a:Lcom/duapps/ad/entity/a/c;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    .line 10
    const/4 v0, 0x0

    const/4 v1, 0x1

    const-wide/16 v2, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/duapps/ad/entity/a/b;-><init>(Landroid/content/Context;IJ)V

    .line 11
    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 0

    .prologue
    .line 15
    return-void
.end method

.method public c()I
    .locals 1

    .prologue
    .line 24
    const/4 v0, 0x0

    return v0
.end method

.method public d()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 19
    const/4 v0, 0x0

    return-object v0
.end method
