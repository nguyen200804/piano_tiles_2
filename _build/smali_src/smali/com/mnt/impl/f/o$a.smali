.class public final Lcom/mnt/impl/f/o$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mnt/impl/f/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mnt/impl/f/o$a$a;
    }
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field b:Lcom/mnt/impl/f/o$a$a;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/mnt/impl/f/o$a$a;)V
    .locals 0

    .prologue
    .line 315
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 316
    iput-object p1, p0, Lcom/mnt/impl/f/o$a;->a:Ljava/lang/String;

    .line 317
    iput-object p2, p0, Lcom/mnt/impl/f/o$a;->b:Lcom/mnt/impl/f/o$a$a;

    .line 318
    return-void
.end method
