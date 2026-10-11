.class final Lcom/cmplay/sharebase/f$b;
.super Ljava/lang/Object;
.source "TokenKeeper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cmplay/sharebase/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation


# static fields
.field static final a:Lcom/cmplay/sharebase/f;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    new-instance v0, Lcom/cmplay/sharebase/f;

    invoke-direct {v0}, Lcom/cmplay/sharebase/f;-><init>()V

    sput-object v0, Lcom/cmplay/sharebase/f$b;->a:Lcom/cmplay/sharebase/f;

    return-void
.end method
