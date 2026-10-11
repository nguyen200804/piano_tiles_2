.class final Lcom/cmplay/sharebase/e$a;
.super Ljava/lang/Object;
.source "ShareBaseHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cmplay/sharebase/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# static fields
.field static final a:Lcom/cmplay/sharebase/e;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    new-instance v0, Lcom/cmplay/sharebase/e;

    invoke-direct {v0}, Lcom/cmplay/sharebase/e;-><init>()V

    sput-object v0, Lcom/cmplay/sharebase/e$a;->a:Lcom/cmplay/sharebase/e;

    return-void
.end method
