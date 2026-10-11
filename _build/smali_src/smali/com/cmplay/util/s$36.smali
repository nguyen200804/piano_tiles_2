.class Lcom/cmplay/util/s$36;
.super Ljava/lang/Object;
.source "NativeInterfaceImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cmplay/util/s;->B(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/cmplay/util/s;


# direct methods
.method constructor <init>(Lcom/cmplay/util/s;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 2992
    iput-object p1, p0, Lcom/cmplay/util/s$36;->b:Lcom/cmplay/util/s;

    iput-object p2, p0, Lcom/cmplay/util/s$36;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 2995
    const-string v0, "key_get_week_race_diamond_ids"

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/cmplay/util/aa;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3000
    const/4 v0, 0x0

    .line 3001
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3002
    iget-object v0, p0, Lcom/cmplay/util/s$36;->a:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 3004
    :cond_0
    if-nez v0, :cond_1

    .line 3006
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 3007
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3008
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3009
    iget-object v1, p0, Lcom/cmplay/util/s$36;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3010
    const-string v1, "key_get_week_race_diamond_ids"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/cmplay/util/aa;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3015
    :cond_1
    return-void
.end method
