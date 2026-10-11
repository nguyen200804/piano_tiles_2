.class public final Lcom/mnt/impl/e/g$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mnt/impl/e/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 552
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 553
    iput-object p1, p0, Lcom/mnt/impl/e/g$c;->a:Ljava/lang/String;

    .line 554
    iput-object p2, p0, Lcom/mnt/impl/e/g$c;->b:Ljava/lang/String;

    .line 555
    return-void
.end method
