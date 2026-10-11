.class Lcom/jirbo/adcolony/at;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Lcom/jirbo/adcolony/af;

.field b:Z

.field c:Z

.field d:Z

.field e:Z

.field f:Z

.field g:D

.field h:D

.field i:D

.field j:I

.field k:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/jirbo/adcolony/af;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-boolean v0, p0, Lcom/jirbo/adcolony/at;->d:Z

    .line 23
    iput-boolean v0, p0, Lcom/jirbo/adcolony/at;->e:Z

    .line 25
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jirbo/adcolony/at;->f:Z

    .line 33
    const-string v0, "uuid"

    iput-object v0, p0, Lcom/jirbo/adcolony/at;->k:Ljava/lang/String;

    .line 38
    iput-object p1, p0, Lcom/jirbo/adcolony/at;->a:Lcom/jirbo/adcolony/af;

    .line 39
    invoke-static {}, Lcom/jirbo/adcolony/u;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jirbo/adcolony/at;->k:Ljava/lang/String;

    .line 40
    return-void
.end method


# virtual methods
.method a()V
    .locals 0

    .prologue
    .line 44
    return-void
.end method

.method a(D)V
    .locals 3

    .prologue
    .line 176
    sget-object v0, Lcom/jirbo/adcolony/al;->a:Lcom/jirbo/adcolony/al;

    const-string v1, "Submitting session duration "

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/al;->a(Ljava/lang/String;)Lcom/jirbo/adcolony/al;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/jirbo/adcolony/al;->b(D)Lcom/jirbo/adcolony/al;

    .line 177
    new-instance v0, Lcom/jirbo/adcolony/a$g;

    invoke-direct {v0}, Lcom/jirbo/adcolony/a$g;-><init>()V

    .line 178
    const-string v1, "session_length"

    double-to-int v2, p1

    invoke-virtual {v0, v1, v2}, Lcom/jirbo/adcolony/a$g;->b(Ljava/lang/String;I)V

    .line 179
    iget-object v1, p0, Lcom/jirbo/adcolony/at;->a:Lcom/jirbo/adcolony/af;

    iget-object v1, v1, Lcom/jirbo/adcolony/af;->d:Lcom/jirbo/adcolony/as;

    const-string v2, "session_end"

    invoke-virtual {v1, v2, v0}, Lcom/jirbo/adcolony/as;->a(Ljava/lang/String;Lcom/jirbo/adcolony/a$g;)V

    .line 180
    return-void
.end method

.method b()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 48
    iget-object v0, p0, Lcom/jirbo/adcolony/at;->a:Lcom/jirbo/adcolony/af;

    iget-object v0, v0, Lcom/jirbo/adcolony/af;->b:Lcom/jirbo/adcolony/ad;

    iget-boolean v0, v0, Lcom/jirbo/adcolony/ad;->b:Z

    if-eqz v0, :cond_1

    .line 50
    iget-boolean v0, p0, Lcom/jirbo/adcolony/at;->d:Z

    if-eqz v0, :cond_0

    .line 52
    iput-boolean v2, p0, Lcom/jirbo/adcolony/at;->d:Z

    .line 53
    iget-object v0, p0, Lcom/jirbo/adcolony/at;->a:Lcom/jirbo/adcolony/af;

    iget-object v0, v0, Lcom/jirbo/adcolony/af;->d:Lcom/jirbo/adcolony/as;

    const-string v1, "install"

    invoke-virtual {v0, v1, v3}, Lcom/jirbo/adcolony/as;->a(Ljava/lang/String;Lcom/jirbo/adcolony/a$g;)V

    .line 56
    :cond_0
    iget-boolean v0, p0, Lcom/jirbo/adcolony/at;->e:Z

    if-eqz v0, :cond_1

    .line 58
    iput-boolean v2, p0, Lcom/jirbo/adcolony/at;->e:Z

    .line 59
    iget-object v0, p0, Lcom/jirbo/adcolony/at;->a:Lcom/jirbo/adcolony/af;

    iget-object v0, v0, Lcom/jirbo/adcolony/af;->d:Lcom/jirbo/adcolony/as;

    const-string v1, "session_start"

    invoke-virtual {v0, v1, v3}, Lcom/jirbo/adcolony/as;->a(Ljava/lang/String;Lcom/jirbo/adcolony/a$g;)V

    .line 62
    :cond_1
    return-void
.end method

.method c()V
    .locals 6

    .prologue
    const/4 v2, 0x1

    .line 66
    sget-object v0, Lcom/jirbo/adcolony/al;->b:Lcom/jirbo/adcolony/al;

    const-string v1, "AdColony resuming"

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/al;->b(Ljava/lang/Object;)Lcom/jirbo/adcolony/al;

    .line 67
    sput-boolean v2, Lcom/jirbo/adcolony/t;->o:Z

    .line 69
    iget-boolean v0, p0, Lcom/jirbo/adcolony/at;->b:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/jirbo/adcolony/al;->d:Lcom/jirbo/adcolony/al;

    const-string v1, "AdColony.onResume() called multiple times in succession."

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/al;->b(Ljava/lang/Object;)Lcom/jirbo/adcolony/al;

    .line 70
    :cond_0
    iput-boolean v2, p0, Lcom/jirbo/adcolony/at;->b:Z

    .line 71
    invoke-virtual {p0}, Lcom/jirbo/adcolony/at;->g()V

    .line 73
    invoke-static {}, Lcom/jirbo/adcolony/u;->b()D

    move-result-wide v0

    .line 74
    iget-boolean v2, p0, Lcom/jirbo/adcolony/at;->c:Z

    if-eqz v2, :cond_2

    .line 76
    iget-wide v2, p0, Lcom/jirbo/adcolony/at;->h:D

    sub-double v2, v0, v2

    iget-object v4, p0, Lcom/jirbo/adcolony/at;->a:Lcom/jirbo/adcolony/af;

    iget-object v4, v4, Lcom/jirbo/adcolony/af;->a:Lcom/jirbo/adcolony/ae;

    iget v4, v4, Lcom/jirbo/adcolony/ae;->d:I

    int-to-double v4, v4

    cmpl-double v2, v2, v4

    if-lez v2, :cond_1

    .line 78
    iget-wide v2, p0, Lcom/jirbo/adcolony/at;->i:D

    invoke-virtual {p0, v2, v3}, Lcom/jirbo/adcolony/at;->a(D)V

    .line 79
    iput-wide v0, p0, Lcom/jirbo/adcolony/at;->g:D

    .line 80
    invoke-virtual {p0}, Lcom/jirbo/adcolony/at;->h()V

    .line 88
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jirbo/adcolony/at;->c:Z

    .line 89
    invoke-virtual {p0}, Lcom/jirbo/adcolony/at;->f()V

    .line 96
    :goto_0
    invoke-static {}, Lcom/jirbo/adcolony/t;->f()V

    .line 97
    return-void

    .line 93
    :cond_2
    iput-wide v0, p0, Lcom/jirbo/adcolony/at;->g:D

    .line 94
    invoke-virtual {p0}, Lcom/jirbo/adcolony/at;->h()V

    goto :goto_0
.end method

.method d()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 101
    sget-object v0, Lcom/jirbo/adcolony/al;->b:Lcom/jirbo/adcolony/al;

    const-string v1, "AdColony suspending"

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/al;->b(Ljava/lang/Object;)Lcom/jirbo/adcolony/al;

    .line 102
    sput-boolean v2, Lcom/jirbo/adcolony/t;->o:Z

    .line 104
    iget-boolean v0, p0, Lcom/jirbo/adcolony/at;->b:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/jirbo/adcolony/al;->d:Lcom/jirbo/adcolony/al;

    const-string v1, "AdColony.onPause() called without initial call to onResume()."

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/al;->b(Ljava/lang/Object;)Lcom/jirbo/adcolony/al;

    .line 105
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jirbo/adcolony/at;->b:Z

    .line 107
    iput-boolean v2, p0, Lcom/jirbo/adcolony/at;->c:Z

    .line 108
    invoke-static {}, Lcom/jirbo/adcolony/u;->b()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/jirbo/adcolony/at;->h:D

    .line 109
    invoke-virtual {p0}, Lcom/jirbo/adcolony/at;->f()V

    .line 110
    return-void
.end method

.method e()V
    .locals 2

    .prologue
    .line 115
    sget-object v0, Lcom/jirbo/adcolony/al;->b:Lcom/jirbo/adcolony/al;

    const-string v1, "AdColony terminating"

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/al;->b(Ljava/lang/Object;)Lcom/jirbo/adcolony/al;

    .line 116
    const/4 v0, 0x1

    sput-boolean v0, Lcom/jirbo/adcolony/t;->o:Z

    .line 118
    iget-wide v0, p0, Lcom/jirbo/adcolony/at;->i:D

    invoke-virtual {p0, v0, v1}, Lcom/jirbo/adcolony/at;->a(D)V

    .line 120
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jirbo/adcolony/at;->c:Z

    .line 121
    invoke-virtual {p0}, Lcom/jirbo/adcolony/at;->f()V

    .line 122
    return-void
.end method

.method f()V
    .locals 4

    .prologue
    .line 126
    new-instance v0, Lcom/jirbo/adcolony/a$g;

    invoke-direct {v0}, Lcom/jirbo/adcolony/a$g;-><init>()V

    .line 127
    const-string v1, "allow_resume"

    iget-boolean v2, p0, Lcom/jirbo/adcolony/at;->c:Z

    invoke-virtual {v0, v1, v2}, Lcom/jirbo/adcolony/a$g;->b(Ljava/lang/String;Z)V

    .line 128
    const-string v1, "start_time"

    iget-wide v2, p0, Lcom/jirbo/adcolony/at;->g:D

    invoke-virtual {v0, v1, v2, v3}, Lcom/jirbo/adcolony/a$g;->b(Ljava/lang/String;D)V

    .line 129
    const-string v1, "finish_time"

    iget-wide v2, p0, Lcom/jirbo/adcolony/at;->h:D

    invoke-virtual {v0, v1, v2, v3}, Lcom/jirbo/adcolony/a$g;->b(Ljava/lang/String;D)V

    .line 130
    const-string v1, "session_time"

    iget-wide v2, p0, Lcom/jirbo/adcolony/at;->i:D

    invoke-virtual {v0, v1, v2, v3}, Lcom/jirbo/adcolony/a$g;->b(Ljava/lang/String;D)V

    .line 132
    new-instance v1, Lcom/jirbo/adcolony/ag;

    const-string v2, "session_info.txt"

    invoke-direct {v1, v2}, Lcom/jirbo/adcolony/ag;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v0}, Lcom/jirbo/adcolony/ak;->a(Lcom/jirbo/adcolony/ag;Lcom/jirbo/adcolony/a$g;)V

    .line 133
    return-void
.end method

.method g()V
    .locals 4

    .prologue
    .line 137
    new-instance v0, Lcom/jirbo/adcolony/ag;

    const-string v1, "session_info.txt"

    invoke-direct {v0, v1}, Lcom/jirbo/adcolony/ag;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/jirbo/adcolony/ak;->b(Lcom/jirbo/adcolony/ag;)Lcom/jirbo/adcolony/a$g;

    move-result-object v0

    .line 138
    if-eqz v0, :cond_0

    .line 140
    const-string v1, "allow_resume"

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/a$g;->g(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/jirbo/adcolony/at;->c:Z

    .line 141
    const-string v1, "start_time"

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/a$g;->e(Ljava/lang/String;)D

    move-result-wide v2

    iput-wide v2, p0, Lcom/jirbo/adcolony/at;->g:D

    .line 142
    const-string v1, "finish_time"

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/a$g;->e(Ljava/lang/String;)D

    move-result-wide v2

    iput-wide v2, p0, Lcom/jirbo/adcolony/at;->h:D

    .line 143
    const-string v1, "session_time"

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/a$g;->e(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/jirbo/adcolony/at;->i:D

    .line 149
    :goto_0
    return-void

    .line 147
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jirbo/adcolony/at;->d:Z

    goto :goto_0
.end method

.method h()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 153
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jirbo/adcolony/at;->e:Z

    .line 154
    iget-boolean v0, p0, Lcom/jirbo/adcolony/at;->f:Z

    if-nez v0, :cond_0

    .line 156
    invoke-static {}, Lcom/jirbo/adcolony/u;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jirbo/adcolony/at;->k:Ljava/lang/String;

    .line 158
    :cond_0
    iput-boolean v1, p0, Lcom/jirbo/adcolony/at;->f:Z

    .line 159
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/jirbo/adcolony/at;->i:D

    .line 160
    iput v1, p0, Lcom/jirbo/adcolony/at;->j:I

    .line 164
    sget-object v0, Lcom/jirbo/adcolony/t;->c:Lcom/jirbo/adcolony/af;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/jirbo/adcolony/t;->c:Lcom/jirbo/adcolony/af;

    iget-object v0, v0, Lcom/jirbo/adcolony/af;->b:Lcom/jirbo/adcolony/ad;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/jirbo/adcolony/t;->c:Lcom/jirbo/adcolony/af;

    iget-object v0, v0, Lcom/jirbo/adcolony/af;->b:Lcom/jirbo/adcolony/ad;

    iget-object v0, v0, Lcom/jirbo/adcolony/ad;->i:Lcom/jirbo/adcolony/an$l;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/jirbo/adcolony/t;->c:Lcom/jirbo/adcolony/af;

    iget-object v0, v0, Lcom/jirbo/adcolony/af;->b:Lcom/jirbo/adcolony/ad;

    iget-object v0, v0, Lcom/jirbo/adcolony/ad;->i:Lcom/jirbo/adcolony/an$l;

    iget-object v0, v0, Lcom/jirbo/adcolony/an$l;->n:Lcom/jirbo/adcolony/an$h;

    if-nez v0, :cond_2

    .line 172
    :cond_1
    return-void

    :cond_2
    move v0, v1

    .line 166
    :goto_0
    sget-object v2, Lcom/jirbo/adcolony/t;->c:Lcom/jirbo/adcolony/af;

    iget-object v2, v2, Lcom/jirbo/adcolony/af;->b:Lcom/jirbo/adcolony/ad;

    iget-object v2, v2, Lcom/jirbo/adcolony/ad;->i:Lcom/jirbo/adcolony/an$l;

    iget-object v2, v2, Lcom/jirbo/adcolony/an$l;->n:Lcom/jirbo/adcolony/an$h;

    invoke-virtual {v2}, Lcom/jirbo/adcolony/an$h;->b()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 168
    sget-object v2, Lcom/jirbo/adcolony/t;->c:Lcom/jirbo/adcolony/af;

    iget-object v2, v2, Lcom/jirbo/adcolony/af;->b:Lcom/jirbo/adcolony/ad;

    iget-object v2, v2, Lcom/jirbo/adcolony/ad;->i:Lcom/jirbo/adcolony/an$l;

    iget-object v2, v2, Lcom/jirbo/adcolony/an$l;->n:Lcom/jirbo/adcolony/an$h;

    invoke-virtual {v2, v0}, Lcom/jirbo/adcolony/an$h;->a(I)Lcom/jirbo/adcolony/an$e;

    move-result-object v2

    iget-object v2, v2, Lcom/jirbo/adcolony/an$e;->r:Lcom/jirbo/adcolony/z;

    if-eqz v2, :cond_3

    sget-object v2, Lcom/jirbo/adcolony/t;->c:Lcom/jirbo/adcolony/af;

    iget-object v2, v2, Lcom/jirbo/adcolony/af;->b:Lcom/jirbo/adcolony/ad;

    iget-object v2, v2, Lcom/jirbo/adcolony/ad;->i:Lcom/jirbo/adcolony/an$l;

    iget-object v2, v2, Lcom/jirbo/adcolony/an$l;->n:Lcom/jirbo/adcolony/an$h;

    invoke-virtual {v2, v0}, Lcom/jirbo/adcolony/an$h;->a(I)Lcom/jirbo/adcolony/an$e;

    move-result-object v2

    iget-object v2, v2, Lcom/jirbo/adcolony/an$e;->r:Lcom/jirbo/adcolony/z;

    iput v1, v2, Lcom/jirbo/adcolony/z;->d:I

    .line 169
    :cond_3
    sget-object v2, Lcom/jirbo/adcolony/t;->c:Lcom/jirbo/adcolony/af;

    iget-object v2, v2, Lcom/jirbo/adcolony/af;->b:Lcom/jirbo/adcolony/ad;

    iget-object v2, v2, Lcom/jirbo/adcolony/ad;->i:Lcom/jirbo/adcolony/an$l;

    iget-object v2, v2, Lcom/jirbo/adcolony/an$l;->n:Lcom/jirbo/adcolony/an$h;

    invoke-virtual {v2, v0}, Lcom/jirbo/adcolony/an$h;->a(I)Lcom/jirbo/adcolony/an$e;

    move-result-object v2

    if-eqz v2, :cond_4

    sget-object v2, Lcom/jirbo/adcolony/t;->c:Lcom/jirbo/adcolony/af;

    iget-object v2, v2, Lcom/jirbo/adcolony/af;->b:Lcom/jirbo/adcolony/ad;

    iget-object v2, v2, Lcom/jirbo/adcolony/ad;->i:Lcom/jirbo/adcolony/an$l;

    iget-object v2, v2, Lcom/jirbo/adcolony/an$l;->n:Lcom/jirbo/adcolony/an$h;

    invoke-virtual {v2, v0}, Lcom/jirbo/adcolony/an$h;->a(I)Lcom/jirbo/adcolony/an$e;

    move-result-object v2

    new-instance v3, Lcom/jirbo/adcolony/a$c;

    invoke-direct {v3}, Lcom/jirbo/adcolony/a$c;-><init>()V

    iput-object v3, v2, Lcom/jirbo/adcolony/an$e;->j:Lcom/jirbo/adcolony/a$c;

    .line 166
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
