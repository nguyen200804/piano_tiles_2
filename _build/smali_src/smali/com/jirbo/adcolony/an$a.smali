.class Lcom/jirbo/adcolony/an$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jirbo/adcolony/an;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field A:Lcom/jirbo/adcolony/an$b;

.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:I

.field d:I

.field e:I

.field f:I

.field g:I

.field h:I

.field i:J

.field j:Z

.field k:Z

.field l:Z

.field m:Z

.field n:Z

.field o:Z

.field p:Z

.field q:Z

.field r:Z

.field s:Lcom/jirbo/adcolony/an$u;

.field t:Lcom/jirbo/adcolony/an$ag;

.field u:Lcom/jirbo/adcolony/an$t;

.field v:Lcom/jirbo/adcolony/an$j;

.field w:Lcom/jirbo/adcolony/an$i;

.field x:Lcom/jirbo/adcolony/an$o;

.field y:Lcom/jirbo/adcolony/an$d;

.field z:Lcom/jirbo/adcolony/an$w;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 930
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method a()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 967
    iget-object v1, p0, Lcom/jirbo/adcolony/an$a;->u:Lcom/jirbo/adcolony/an$t;

    invoke-virtual {v1}, Lcom/jirbo/adcolony/an$t;->a()Z

    move-result v1

    if-nez v1, :cond_1

    .line 984
    :cond_0
    :goto_0
    return v0

    .line 970
    :cond_1
    iget-object v1, p0, Lcom/jirbo/adcolony/an$a;->v:Lcom/jirbo/adcolony/an$j;

    iget-boolean v1, v1, Lcom/jirbo/adcolony/an$j;->a:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/jirbo/adcolony/an$a;->v:Lcom/jirbo/adcolony/an$j;

    invoke-virtual {v1}, Lcom/jirbo/adcolony/an$j;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 972
    :cond_2
    iget-object v1, p0, Lcom/jirbo/adcolony/an$a;->z:Lcom/jirbo/adcolony/an$w;

    iget-boolean v1, v1, Lcom/jirbo/adcolony/an$w;->a:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/jirbo/adcolony/an$a;->z:Lcom/jirbo/adcolony/an$w;

    invoke-virtual {v1}, Lcom/jirbo/adcolony/an$w;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 975
    :cond_3
    iget-object v1, p0, Lcom/jirbo/adcolony/an$a;->x:Lcom/jirbo/adcolony/an$o;

    iget-boolean v1, v1, Lcom/jirbo/adcolony/an$o;->d:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/jirbo/adcolony/an$a;->x:Lcom/jirbo/adcolony/an$o;

    invoke-virtual {v1}, Lcom/jirbo/adcolony/an$o;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 978
    :cond_4
    iget-object v1, p0, Lcom/jirbo/adcolony/an$a;->y:Lcom/jirbo/adcolony/an$d;

    invoke-virtual {v1}, Lcom/jirbo/adcolony/an$d;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 980
    iget-object v1, p0, Lcom/jirbo/adcolony/an$a;->A:Lcom/jirbo/adcolony/an$b;

    invoke-virtual {v1}, Lcom/jirbo/adcolony/an$b;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 982
    invoke-virtual {p0}, Lcom/jirbo/adcolony/an$a;->b()Z

    move-result v1

    if-nez v1, :cond_0

    .line 984
    const/4 v0, 0x1

    goto :goto_0
.end method

.method a(Lcom/jirbo/adcolony/a$g;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1002
    if-nez p1, :cond_1

    .line 1062
    :cond_0
    :goto_0
    return v0

    .line 1003
    :cond_1
    const-string v1, "uuid"

    invoke-virtual {p1, v1}, Lcom/jirbo/adcolony/a$g;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/jirbo/adcolony/an$a;->a:Ljava/lang/String;

    .line 1006
    const-string v1, "title"

    invoke-virtual {p1, v1}, Lcom/jirbo/adcolony/a$g;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/jirbo/adcolony/an$a;->b:Ljava/lang/String;

    .line 1007
    const-string v1, "ad_campaign_id"

    invoke-virtual {p1, v1}, Lcom/jirbo/adcolony/a$g;->f(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/jirbo/adcolony/an$a;->c:I

    .line 1008
    const-string v1, "ad_id"

    invoke-virtual {p1, v1}, Lcom/jirbo/adcolony/a$g;->f(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/jirbo/adcolony/an$a;->d:I

    .line 1009
    const-string v1, "ad_group_id"

    invoke-virtual {p1, v1}, Lcom/jirbo/adcolony/a$g;->f(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/jirbo/adcolony/an$a;->e:I

    .line 1010
    const-string v1, "cpcv_bid"

    invoke-virtual {p1, v1}, Lcom/jirbo/adcolony/a$g;->f(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/jirbo/adcolony/an$a;->f:I

    .line 1011
    const-string v1, "net_earnings"

    invoke-virtual {p1, v1}, Lcom/jirbo/adcolony/a$g;->f(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/jirbo/adcolony/an$a;->g:I

    .line 1012
    const-string v1, "expires"

    const/16 v2, 0x294

    invoke-virtual {p1, v1, v2}, Lcom/jirbo/adcolony/a$g;->a(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/jirbo/adcolony/an$a;->h:I

    .line 1013
    const-string v1, "enable_in_app_store"

    invoke-virtual {p1, v1}, Lcom/jirbo/adcolony/a$g;->g(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/jirbo/adcolony/an$a;->j:Z

    .line 1014
    const-string v1, "video_events_on_replays"

    invoke-virtual {p1, v1}, Lcom/jirbo/adcolony/a$g;->g(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/jirbo/adcolony/an$a;->k:Z

    .line 1015
    const-string v1, "test_ad"

    invoke-virtual {p1, v1}, Lcom/jirbo/adcolony/a$g;->g(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/jirbo/adcolony/an$a;->l:Z

    .line 1016
    const-string v1, "fullscreen"

    invoke-virtual {p1, v1}, Lcom/jirbo/adcolony/a$g;->g(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/jirbo/adcolony/an$a;->m:Z

    .line 1017
    const-string v1, "house_ad"

    invoke-virtual {p1, v1}, Lcom/jirbo/adcolony/a$g;->g(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/jirbo/adcolony/an$a;->n:Z

    .line 1018
    const-string v1, "contracted"

    invoke-virtual {p1, v1}, Lcom/jirbo/adcolony/a$g;->g(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/jirbo/adcolony/an$a;->o:Z

    .line 1020
    iput-boolean v0, p0, Lcom/jirbo/adcolony/an$a;->r:Z

    .line 1022
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/jirbo/adcolony/an$a;->i:J

    .line 1025
    new-instance v1, Lcom/jirbo/adcolony/an$u;

    invoke-direct {v1}, Lcom/jirbo/adcolony/an$u;-><init>()V

    iput-object v1, p0, Lcom/jirbo/adcolony/an$a;->s:Lcom/jirbo/adcolony/an$u;

    .line 1026
    iget-object v1, p0, Lcom/jirbo/adcolony/an$a;->s:Lcom/jirbo/adcolony/an$u;

    const-string v2, "limits"

    invoke-virtual {p1, v2}, Lcom/jirbo/adcolony/a$g;->a(Ljava/lang/String;)Lcom/jirbo/adcolony/a$g;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/jirbo/adcolony/an$u;->a(Lcom/jirbo/adcolony/a$g;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1029
    new-instance v1, Lcom/jirbo/adcolony/an$ag;

    invoke-direct {v1}, Lcom/jirbo/adcolony/an$ag;-><init>()V

    iput-object v1, p0, Lcom/jirbo/adcolony/an$a;->t:Lcom/jirbo/adcolony/an$ag;

    .line 1030
    iget-object v1, p0, Lcom/jirbo/adcolony/an$a;->t:Lcom/jirbo/adcolony/an$ag;

    const-string v2, "third_party_tracking"

    invoke-virtual {p1, v2}, Lcom/jirbo/adcolony/a$g;->a(Ljava/lang/String;)Lcom/jirbo/adcolony/a$g;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/jirbo/adcolony/an$ag;->a(Lcom/jirbo/adcolony/a$g;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1033
    new-instance v1, Lcom/jirbo/adcolony/an$t;

    invoke-direct {v1}, Lcom/jirbo/adcolony/an$t;-><init>()V

    iput-object v1, p0, Lcom/jirbo/adcolony/an$a;->u:Lcom/jirbo/adcolony/an$t;

    .line 1034
    iget-object v1, p0, Lcom/jirbo/adcolony/an$a;->u:Lcom/jirbo/adcolony/an$t;

    const-string v2, "in_app_browser"

    invoke-virtual {p1, v2}, Lcom/jirbo/adcolony/a$g;->a(Ljava/lang/String;)Lcom/jirbo/adcolony/a$g;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/jirbo/adcolony/an$t;->a(Lcom/jirbo/adcolony/a$g;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1036
    new-instance v1, Lcom/jirbo/adcolony/an$w;

    invoke-direct {v1}, Lcom/jirbo/adcolony/an$w;-><init>()V

    iput-object v1, p0, Lcom/jirbo/adcolony/an$a;->z:Lcom/jirbo/adcolony/an$w;

    .line 1037
    iget-object v1, p0, Lcom/jirbo/adcolony/an$a;->z:Lcom/jirbo/adcolony/an$w;

    const-string v2, "native"

    invoke-virtual {p1, v2}, Lcom/jirbo/adcolony/a$g;->a(Ljava/lang/String;)Lcom/jirbo/adcolony/a$g;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/jirbo/adcolony/an$w;->a(Lcom/jirbo/adcolony/a$g;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1040
    new-instance v1, Lcom/jirbo/adcolony/an$j;

    invoke-direct {v1}, Lcom/jirbo/adcolony/an$j;-><init>()V

    iput-object v1, p0, Lcom/jirbo/adcolony/an$a;->v:Lcom/jirbo/adcolony/an$j;

    .line 1041
    iget-object v1, p0, Lcom/jirbo/adcolony/an$a;->v:Lcom/jirbo/adcolony/an$j;

    const-string v2, "v4vc"

    invoke-virtual {p1, v2}, Lcom/jirbo/adcolony/a$g;->a(Ljava/lang/String;)Lcom/jirbo/adcolony/a$g;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/jirbo/adcolony/an$j;->a(Lcom/jirbo/adcolony/a$g;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1044
    new-instance v1, Lcom/jirbo/adcolony/an$i;

    invoke-direct {v1}, Lcom/jirbo/adcolony/an$i;-><init>()V

    iput-object v1, p0, Lcom/jirbo/adcolony/an$a;->w:Lcom/jirbo/adcolony/an$i;

    .line 1045
    iget-object v1, p0, Lcom/jirbo/adcolony/an$a;->w:Lcom/jirbo/adcolony/an$i;

    const-string v2, "ad_tracking"

    invoke-virtual {p1, v2}, Lcom/jirbo/adcolony/a$g;->a(Ljava/lang/String;)Lcom/jirbo/adcolony/a$g;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/jirbo/adcolony/an$i;->a(Lcom/jirbo/adcolony/a$g;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1048
    new-instance v1, Lcom/jirbo/adcolony/an$o;

    invoke-direct {v1}, Lcom/jirbo/adcolony/an$o;-><init>()V

    iput-object v1, p0, Lcom/jirbo/adcolony/an$a;->x:Lcom/jirbo/adcolony/an$o;

    .line 1049
    iget-object v1, p0, Lcom/jirbo/adcolony/an$a;->x:Lcom/jirbo/adcolony/an$o;

    const-string v2, "companion_ad"

    invoke-virtual {p1, v2}, Lcom/jirbo/adcolony/a$g;->a(Ljava/lang/String;)Lcom/jirbo/adcolony/a$g;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/jirbo/adcolony/an$o;->a(Lcom/jirbo/adcolony/a$g;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1052
    new-instance v1, Lcom/jirbo/adcolony/an$d;

    invoke-direct {v1}, Lcom/jirbo/adcolony/an$d;-><init>()V

    iput-object v1, p0, Lcom/jirbo/adcolony/an$a;->y:Lcom/jirbo/adcolony/an$d;

    .line 1053
    iget-object v1, p0, Lcom/jirbo/adcolony/an$a;->y:Lcom/jirbo/adcolony/an$d;

    const-string v2, "video"

    invoke-virtual {p1, v2}, Lcom/jirbo/adcolony/a$g;->a(Ljava/lang/String;)Lcom/jirbo/adcolony/a$g;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/jirbo/adcolony/an$d;->a(Lcom/jirbo/adcolony/a$g;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1055
    new-instance v1, Lcom/jirbo/adcolony/an$b;

    invoke-direct {v1}, Lcom/jirbo/adcolony/an$b;-><init>()V

    iput-object v1, p0, Lcom/jirbo/adcolony/an$a;->A:Lcom/jirbo/adcolony/an$b;

    .line 1056
    iget-object v1, p0, Lcom/jirbo/adcolony/an$a;->A:Lcom/jirbo/adcolony/an$b;

    const-string v2, "v4iap"

    invoke-virtual {p1, v2}, Lcom/jirbo/adcolony/a$g;->a(Ljava/lang/String;)Lcom/jirbo/adcolony/a$g;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/jirbo/adcolony/an$b;->a(Lcom/jirbo/adcolony/a$g;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1060
    sget-object v0, Lcom/jirbo/adcolony/al;->b:Lcom/jirbo/adcolony/al;

    const-string v1, "Finished parsing ad"

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/al;->b(Ljava/lang/Object;)Lcom/jirbo/adcolony/al;

    .line 1062
    const/4 v0, 0x1

    goto/16 :goto_0
.end method

.method b()Z
    .locals 4

    .prologue
    .line 990
    iget-boolean v0, p0, Lcom/jirbo/adcolony/an$a;->p:Z

    if-nez v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/jirbo/adcolony/an$a;->i:J

    sub-long/2addr v0, v2

    iget v2, p0, Lcom/jirbo/adcolony/an$a;->h:I

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 991
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method c()Z
    .locals 1

    .prologue
    .line 996
    iget-boolean v0, p0, Lcom/jirbo/adcolony/an$a;->q:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 997
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method d()V
    .locals 1

    .prologue
    .line 1067
    iget-object v0, p0, Lcom/jirbo/adcolony/an$a;->v:Lcom/jirbo/adcolony/an$j;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/an$j;->b()V

    .line 1068
    iget-object v0, p0, Lcom/jirbo/adcolony/an$a;->u:Lcom/jirbo/adcolony/an$t;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/an$t;->b()V

    .line 1069
    iget-object v0, p0, Lcom/jirbo/adcolony/an$a;->z:Lcom/jirbo/adcolony/an$w;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/an$w;->b()V

    .line 1070
    iget-object v0, p0, Lcom/jirbo/adcolony/an$a;->x:Lcom/jirbo/adcolony/an$o;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/an$o;->b()V

    .line 1071
    iget-object v0, p0, Lcom/jirbo/adcolony/an$a;->y:Lcom/jirbo/adcolony/an$d;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/an$d;->c()V

    .line 1072
    return-void
.end method
