.class public final Lcom/cmplay/h/f$b;
.super Ljava/lang/Object;
.source "ShareHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cmplay/h/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# static fields
.field public static final a:Lcom/cmplay/h/f;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    new-instance v0, Lcom/cmplay/h/f;

    invoke-direct {v0}, Lcom/cmplay/h/f;-><init>()V

    sput-object v0, Lcom/cmplay/h/f$b;->a:Lcom/cmplay/h/f;

    return-void
.end method
