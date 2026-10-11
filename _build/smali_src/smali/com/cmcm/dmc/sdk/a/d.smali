.class public Lcom/cmcm/dmc/sdk/a/d;
.super Ljava/lang/Object;


# static fields
.field private static final b:Lcom/cmcm/dmc/sdk/a/d;


# instance fields
.field public a:Lcom/cmcm/dmc/sdk/e;

.field private c:Ljava/lang/Integer;

.field private d:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/cmcm/dmc/sdk/a/d;

    invoke-direct {v0}, Lcom/cmcm/dmc/sdk/a/d;-><init>()V

    sput-object v0, Lcom/cmcm/dmc/sdk/a/d;->b:Lcom/cmcm/dmc/sdk/a/d;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/cmcm/dmc/sdk/a/d;->c:Ljava/lang/Integer;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/cmcm/dmc/sdk/a/d;->d:Ljava/util/HashSet;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/cmcm/dmc/sdk/a/d;->e:Ljava/util/HashSet;

    return-void
.end method

.method public static a()Lcom/cmcm/dmc/sdk/a/d;
    .locals 1

    sget-object v0, Lcom/cmcm/dmc/sdk/a/d;->b:Lcom/cmcm/dmc/sdk/a/d;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x1

    const-string v1, "receiver_switch"

    invoke-virtual {p0, p1}, Lcom/cmcm/dmc/sdk/a/d;->b(Ljava/lang/String;)I

    move-result v2

    invoke-static {p1, v1, v2}, Lcom/cmcm/dmc/sdk/a/c;->a(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(Ljava/lang/String;)I
    .locals 2

    const/4 v0, 0x1

    const-string v1, "photo_stats"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "music_stats"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "account"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "notification_bar"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :cond_1
    return v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    sget-boolean v0, Lcom/cmcm/dmc/sdk/a/f;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "http://54.68.196.120:8000/app/test"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "https://ms.cmcm.com/app"

    goto :goto_0
.end method

.method public c()Lcom/cmcm/dmc/sdk/e;
    .locals 1

    iget-object v0, p0, Lcom/cmcm/dmc/sdk/a/d;->a:Lcom/cmcm/dmc/sdk/e;

    return-object v0
.end method
