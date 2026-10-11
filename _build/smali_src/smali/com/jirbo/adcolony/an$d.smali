.class Lcom/jirbo/adcolony/an$d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jirbo/adcolony/an;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "d"
.end annotation


# instance fields
.field a:Z

.field b:I

.field c:I

.field d:Ljava/lang/String;

.field e:Ljava/lang/String;

.field f:Ljava/lang/String;

.field g:Ljava/lang/String;

.field h:Ljava/lang/String;

.field i:Ljava/lang/String;

.field j:Ljava/lang/String;

.field k:D

.field l:Lcom/jirbo/adcolony/an$n;

.field m:Lcom/jirbo/adcolony/an$n;

.field n:Lcom/jirbo/adcolony/an$n;

.field o:Lcom/jirbo/adcolony/an$r;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1973
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method a()Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/16 v4, 0x9

    const/4 v1, 0x0

    .line 1998
    iget-boolean v2, p0, Lcom/jirbo/adcolony/an$d;->a:Z

    if-nez v2, :cond_1

    .line 2034
    :cond_0
    :goto_0
    return v0

    .line 2001
    :cond_1
    sget-object v2, Lcom/jirbo/adcolony/t;->c:Lcom/jirbo/adcolony/af;

    iget-object v2, v2, Lcom/jirbo/adcolony/af;->c:Lcom/jirbo/adcolony/ao;

    iget-object v3, p0, Lcom/jirbo/adcolony/an$d;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/jirbo/adcolony/ao;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 2004
    :cond_2
    iget-object v2, p0, Lcom/jirbo/adcolony/an$d;->l:Lcom/jirbo/adcolony/an$n;

    invoke-virtual {v2}, Lcom/jirbo/adcolony/an$n;->a()Z

    move-result v2

    if-nez v2, :cond_3

    move v0, v1

    goto :goto_0

    .line 2007
    :cond_3
    iget-object v2, p0, Lcom/jirbo/adcolony/an$d;->m:Lcom/jirbo/adcolony/an$n;

    invoke-virtual {v2}, Lcom/jirbo/adcolony/an$n;->a()Z

    move-result v2

    if-nez v2, :cond_4

    move v0, v1

    goto :goto_0

    .line 2009
    :cond_4
    iget-object v2, p0, Lcom/jirbo/adcolony/an$d;->o:Lcom/jirbo/adcolony/an$r;

    invoke-virtual {v2}, Lcom/jirbo/adcolony/an$r;->a()Z

    move-result v2

    if-nez v2, :cond_5

    move v0, v1

    goto :goto_0

    .line 2011
    :cond_5
    iget-object v2, p0, Lcom/jirbo/adcolony/an$d;->n:Lcom/jirbo/adcolony/an$n;

    invoke-virtual {v2}, Lcom/jirbo/adcolony/an$n;->a()Z

    move-result v2

    if-nez v2, :cond_6

    move v0, v1

    goto :goto_0

    .line 2014
    :cond_6
    sget-object v1, Lcom/jirbo/adcolony/t;->c:Lcom/jirbo/adcolony/af;

    iget-object v1, v1, Lcom/jirbo/adcolony/af;->b:Lcom/jirbo/adcolony/ad;

    iget-object v1, v1, Lcom/jirbo/adcolony/ad;->i:Lcom/jirbo/adcolony/an$l;

    iget-object v1, v1, Lcom/jirbo/adcolony/an$l;->i:Ljava/lang/String;

    const-string v2, "online"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-static {}, Lcom/jirbo/adcolony/aq;->c()Z

    move-result v1

    if-nez v1, :cond_7

    .line 2016
    sput v4, Lcom/jirbo/adcolony/t;->aa:I

    .line 2017
    sget-object v0, Lcom/jirbo/adcolony/al;->c:Lcom/jirbo/adcolony/al;

    const-string v1, "Video not ready due to VIEW_FILTER_ONLINE"

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/al;->b(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 2019
    :cond_7
    sget-object v1, Lcom/jirbo/adcolony/t;->c:Lcom/jirbo/adcolony/af;

    iget-object v1, v1, Lcom/jirbo/adcolony/af;->b:Lcom/jirbo/adcolony/ad;

    iget-object v1, v1, Lcom/jirbo/adcolony/ad;->i:Lcom/jirbo/adcolony/an$l;

    iget-object v1, v1, Lcom/jirbo/adcolony/an$l;->i:Ljava/lang/String;

    const-string v2, "wifi"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-static {}, Lcom/jirbo/adcolony/aq;->a()Z

    move-result v1

    if-nez v1, :cond_8

    .line 2021
    sput v4, Lcom/jirbo/adcolony/t;->aa:I

    .line 2022
    sget-object v0, Lcom/jirbo/adcolony/al;->c:Lcom/jirbo/adcolony/al;

    const-string v1, "Video not ready due to VIEW_FILTER_WIFI"

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/al;->b(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 2024
    :cond_8
    sget-object v1, Lcom/jirbo/adcolony/t;->c:Lcom/jirbo/adcolony/af;

    iget-object v1, v1, Lcom/jirbo/adcolony/af;->b:Lcom/jirbo/adcolony/ad;

    iget-object v1, v1, Lcom/jirbo/adcolony/ad;->i:Lcom/jirbo/adcolony/an$l;

    iget-object v1, v1, Lcom/jirbo/adcolony/an$l;->i:Ljava/lang/String;

    const-string v2, "cell"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-static {}, Lcom/jirbo/adcolony/aq;->b()Z

    move-result v1

    if-nez v1, :cond_9

    .line 2026
    sput v4, Lcom/jirbo/adcolony/t;->aa:I

    .line 2027
    sget-object v0, Lcom/jirbo/adcolony/al;->c:Lcom/jirbo/adcolony/al;

    const-string v1, "Video not ready due to VIEW_FILTER_CELL"

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/al;->b(Ljava/lang/String;)Z

    move-result v0

    goto/16 :goto_0

    .line 2029
    :cond_9
    sget-object v1, Lcom/jirbo/adcolony/t;->c:Lcom/jirbo/adcolony/af;

    iget-object v1, v1, Lcom/jirbo/adcolony/af;->b:Lcom/jirbo/adcolony/ad;

    iget-object v1, v1, Lcom/jirbo/adcolony/ad;->i:Lcom/jirbo/adcolony/an$l;

    iget-object v1, v1, Lcom/jirbo/adcolony/an$l;->i:Ljava/lang/String;

    const-string v2, "offline"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/jirbo/adcolony/aq;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2031
    sput v4, Lcom/jirbo/adcolony/t;->aa:I

    .line 2032
    sget-object v0, Lcom/jirbo/adcolony/al;->c:Lcom/jirbo/adcolony/al;

    const-string v1, "Video not ready due to VIEW_FILTER_OFFLINE"

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/al;->b(Ljava/lang/String;)Z

    move-result v0

    goto/16 :goto_0
.end method

.method a(Lcom/jirbo/adcolony/a$g;)Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 2044
    if-nez p1, :cond_1

    .line 2074
    :cond_0
    :goto_0
    return v0

    .line 2046
    :cond_1
    const-string v2, "enabled"

    invoke-virtual {p1, v2}, Lcom/jirbo/adcolony/a$g;->g(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/jirbo/adcolony/an$d;->a:Z

    .line 2047
    iget-boolean v2, p0, Lcom/jirbo/adcolony/an$d;->a:Z

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 2049
    :cond_2
    const-string v2, "width"

    invoke-virtual {p1, v2}, Lcom/jirbo/adcolony/a$g;->f(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/jirbo/adcolony/an$d;->b:I

    .line 2050
    const-string v2, "height"

    invoke-virtual {p1, v2}, Lcom/jirbo/adcolony/a$g;->f(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/jirbo/adcolony/an$d;->c:I

    .line 2051
    const-string v2, "url"

    invoke-virtual {p1, v2}, Lcom/jirbo/adcolony/a$g;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/jirbo/adcolony/an$d;->d:Ljava/lang/String;

    .line 2052
    const-string v2, "last_modified"

    invoke-virtual {p1, v2}, Lcom/jirbo/adcolony/a$g;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/jirbo/adcolony/an$d;->e:Ljava/lang/String;

    .line 2053
    const-string v2, "video_frame_rate"

    invoke-virtual {p1, v2}, Lcom/jirbo/adcolony/a$g;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/jirbo/adcolony/an$d;->f:Ljava/lang/String;

    .line 2054
    const-string v2, "audio_channels"

    invoke-virtual {p1, v2}, Lcom/jirbo/adcolony/a$g;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/jirbo/adcolony/an$d;->g:Ljava/lang/String;

    .line 2055
    const-string v2, "audio_codec"

    invoke-virtual {p1, v2}, Lcom/jirbo/adcolony/a$g;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/jirbo/adcolony/an$d;->h:Ljava/lang/String;

    .line 2056
    const-string v2, "audio_sample_rate"

    invoke-virtual {p1, v2}, Lcom/jirbo/adcolony/a$g;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/jirbo/adcolony/an$d;->i:Ljava/lang/String;

    .line 2057
    const-string v2, "video_codec"

    invoke-virtual {p1, v2}, Lcom/jirbo/adcolony/a$g;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/jirbo/adcolony/an$d;->j:Ljava/lang/String;

    .line 2058
    const-string v2, "duration"

    invoke-virtual {p1, v2}, Lcom/jirbo/adcolony/a$g;->e(Ljava/lang/String;)D

    move-result-wide v2

    iput-wide v2, p0, Lcom/jirbo/adcolony/an$d;->k:D

    .line 2061
    new-instance v2, Lcom/jirbo/adcolony/an$n;

    invoke-direct {v2}, Lcom/jirbo/adcolony/an$n;-><init>()V

    iput-object v2, p0, Lcom/jirbo/adcolony/an$d;->l:Lcom/jirbo/adcolony/an$n;

    .line 2062
    iget-object v2, p0, Lcom/jirbo/adcolony/an$d;->l:Lcom/jirbo/adcolony/an$n;

    const-string v3, "skip_video"

    invoke-virtual {p1, v3}, Lcom/jirbo/adcolony/a$g;->a(Ljava/lang/String;)Lcom/jirbo/adcolony/a$g;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/jirbo/adcolony/an$n;->a(Lcom/jirbo/adcolony/a$g;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2065
    new-instance v2, Lcom/jirbo/adcolony/an$n;

    invoke-direct {v2}, Lcom/jirbo/adcolony/an$n;-><init>()V

    iput-object v2, p0, Lcom/jirbo/adcolony/an$d;->m:Lcom/jirbo/adcolony/an$n;

    .line 2066
    iget-object v2, p0, Lcom/jirbo/adcolony/an$d;->m:Lcom/jirbo/adcolony/an$n;

    const-string v3, "in_video_engagement"

    invoke-virtual {p1, v3}, Lcom/jirbo/adcolony/a$g;->a(Ljava/lang/String;)Lcom/jirbo/adcolony/a$g;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/jirbo/adcolony/an$n;->a(Lcom/jirbo/adcolony/a$g;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2068
    new-instance v2, Lcom/jirbo/adcolony/an$r;

    invoke-direct {v2}, Lcom/jirbo/adcolony/an$r;-><init>()V

    iput-object v2, p0, Lcom/jirbo/adcolony/an$d;->o:Lcom/jirbo/adcolony/an$r;

    .line 2069
    iget-object v2, p0, Lcom/jirbo/adcolony/an$d;->o:Lcom/jirbo/adcolony/an$r;

    const-string v3, "haptic"

    invoke-virtual {p1, v3}, Lcom/jirbo/adcolony/a$g;->a(Ljava/lang/String;)Lcom/jirbo/adcolony/a$g;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/jirbo/adcolony/an$r;->a(Lcom/jirbo/adcolony/a$g;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2071
    new-instance v2, Lcom/jirbo/adcolony/an$n;

    invoke-direct {v2}, Lcom/jirbo/adcolony/an$n;-><init>()V

    iput-object v2, p0, Lcom/jirbo/adcolony/an$d;->n:Lcom/jirbo/adcolony/an$n;

    .line 2072
    iget-object v2, p0, Lcom/jirbo/adcolony/an$d;->n:Lcom/jirbo/adcolony/an$n;

    const-string v3, "in_video_engagement"

    invoke-virtual {p1, v3}, Lcom/jirbo/adcolony/a$g;->a(Ljava/lang/String;)Lcom/jirbo/adcolony/a$g;

    move-result-object v3

    const-string v4, "image_overlay"

    invoke-virtual {v3, v4}, Lcom/jirbo/adcolony/a$g;->a(Ljava/lang/String;)Lcom/jirbo/adcolony/a$g;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/jirbo/adcolony/an$n;->a(Lcom/jirbo/adcolony/a$g;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    .line 2074
    goto/16 :goto_0
.end method

.method b()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2039
    sget-object v0, Lcom/jirbo/adcolony/t;->c:Lcom/jirbo/adcolony/af;

    iget-object v0, v0, Lcom/jirbo/adcolony/af;->c:Lcom/jirbo/adcolony/ao;

    iget-object v1, p0, Lcom/jirbo/adcolony/an$d;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/ao;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method c()V
    .locals 3

    .prologue
    .line 2079
    sget-object v0, Lcom/jirbo/adcolony/t;->c:Lcom/jirbo/adcolony/af;

    iget-object v0, v0, Lcom/jirbo/adcolony/af;->c:Lcom/jirbo/adcolony/ao;

    iget-object v1, p0, Lcom/jirbo/adcolony/an$d;->d:Ljava/lang/String;

    iget-object v2, p0, Lcom/jirbo/adcolony/an$d;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/jirbo/adcolony/ao;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2080
    iget-object v0, p0, Lcom/jirbo/adcolony/an$d;->m:Lcom/jirbo/adcolony/an$n;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/an$n;->b()V

    .line 2081
    iget-object v0, p0, Lcom/jirbo/adcolony/an$d;->l:Lcom/jirbo/adcolony/an$n;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/an$n;->b()V

    .line 2082
    iget-object v0, p0, Lcom/jirbo/adcolony/an$d;->o:Lcom/jirbo/adcolony/an$r;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/an$r;->b()V

    .line 2083
    iget-object v0, p0, Lcom/jirbo/adcolony/an$d;->n:Lcom/jirbo/adcolony/an$n;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/an$n;->b()V

    .line 2084
    return-void
.end method
