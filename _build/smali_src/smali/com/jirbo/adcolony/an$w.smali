.class Lcom/jirbo/adcolony/an$w;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jirbo/adcolony/an;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "w"
.end annotation


# instance fields
.field a:Z

.field b:Z

.field c:Ljava/lang/String;

.field d:Ljava/lang/String;

.field e:Ljava/lang/String;

.field f:Lcom/jirbo/adcolony/an$z;

.field g:Lcom/jirbo/adcolony/an$y;

.field h:Lcom/jirbo/adcolony/an$x;

.field i:Z

.field j:Lcom/jirbo/adcolony/an$s;

.field k:Lcom/jirbo/adcolony/an$s;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method a()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1184
    iget-boolean v1, p0, Lcom/jirbo/adcolony/an$w;->a:Z

    if-nez v1, :cond_1

    .line 1193
    :cond_0
    :goto_0
    return v0

    .line 1185
    :cond_1
    sget-object v1, Lcom/jirbo/adcolony/t;->c:Lcom/jirbo/adcolony/af;

    iget-object v1, v1, Lcom/jirbo/adcolony/af;->c:Lcom/jirbo/adcolony/ao;

    iget-object v2, p0, Lcom/jirbo/adcolony/an$w;->g:Lcom/jirbo/adcolony/an$y;

    iget-object v2, v2, Lcom/jirbo/adcolony/an$y;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/jirbo/adcolony/ao;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1186
    sget-object v1, Lcom/jirbo/adcolony/t;->c:Lcom/jirbo/adcolony/af;

    iget-object v1, v1, Lcom/jirbo/adcolony/af;->c:Lcom/jirbo/adcolony/ao;

    iget-object v2, p0, Lcom/jirbo/adcolony/an$w;->f:Lcom/jirbo/adcolony/an$z;

    iget-object v2, v2, Lcom/jirbo/adcolony/an$z;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/jirbo/adcolony/ao;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1188
    iget-object v1, p0, Lcom/jirbo/adcolony/an$w;->j:Lcom/jirbo/adcolony/an$s;

    invoke-virtual {v1}, Lcom/jirbo/adcolony/an$s;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1189
    iget-object v1, p0, Lcom/jirbo/adcolony/an$w;->k:Lcom/jirbo/adcolony/an$s;

    invoke-virtual {v1}, Lcom/jirbo/adcolony/an$s;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1191
    iget-boolean v1, p0, Lcom/jirbo/adcolony/an$w;->i:Z

    if-nez v1, :cond_0

    .line 1193
    const/4 v0, 0x1

    goto :goto_0
.end method

.method a(Lcom/jirbo/adcolony/a$g;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1154
    if-nez p1, :cond_1

    .line 1179
    :cond_0
    :goto_0
    return v0

    .line 1156
    :cond_1
    const-string v1, "enabled"

    invoke-virtual {p1, v1}, Lcom/jirbo/adcolony/a$g;->g(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/jirbo/adcolony/an$w;->a:Z

    .line 1157
    const-string v1, "advertiser_name"

    invoke-virtual {p1, v1}, Lcom/jirbo/adcolony/a$g;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/jirbo/adcolony/an$w;->c:Ljava/lang/String;

    .line 1158
    const-string v1, "description"

    invoke-virtual {p1, v1}, Lcom/jirbo/adcolony/a$g;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/jirbo/adcolony/an$w;->d:Ljava/lang/String;

    .line 1159
    const-string v1, "title"

    invoke-virtual {p1, v1}, Lcom/jirbo/adcolony/a$g;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/jirbo/adcolony/an$w;->e:Ljava/lang/String;

    .line 1161
    iput-boolean v0, p0, Lcom/jirbo/adcolony/an$w;->i:Z

    .line 1163
    new-instance v1, Lcom/jirbo/adcolony/an$z;

    invoke-direct {v1}, Lcom/jirbo/adcolony/an$z;-><init>()V

    iput-object v1, p0, Lcom/jirbo/adcolony/an$w;->f:Lcom/jirbo/adcolony/an$z;

    .line 1164
    iget-object v1, p0, Lcom/jirbo/adcolony/an$w;->f:Lcom/jirbo/adcolony/an$z;

    const-string v2, "thumb"

    invoke-virtual {p1, v2}, Lcom/jirbo/adcolony/a$g;->a(Ljava/lang/String;)Lcom/jirbo/adcolony/a$g;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/jirbo/adcolony/an$z;->a(Lcom/jirbo/adcolony/a$g;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1166
    new-instance v1, Lcom/jirbo/adcolony/an$y;

    invoke-direct {v1}, Lcom/jirbo/adcolony/an$y;-><init>()V

    iput-object v1, p0, Lcom/jirbo/adcolony/an$w;->g:Lcom/jirbo/adcolony/an$y;

    .line 1167
    iget-object v1, p0, Lcom/jirbo/adcolony/an$w;->g:Lcom/jirbo/adcolony/an$y;

    const-string v2, "poster"

    invoke-virtual {p1, v2}, Lcom/jirbo/adcolony/a$g;->a(Ljava/lang/String;)Lcom/jirbo/adcolony/a$g;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/jirbo/adcolony/an$y;->a(Lcom/jirbo/adcolony/a$g;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1169
    new-instance v1, Lcom/jirbo/adcolony/an$s;

    invoke-direct {v1}, Lcom/jirbo/adcolony/an$s;-><init>()V

    iput-object v1, p0, Lcom/jirbo/adcolony/an$w;->j:Lcom/jirbo/adcolony/an$s;

    .line 1170
    iget-object v1, p0, Lcom/jirbo/adcolony/an$w;->j:Lcom/jirbo/adcolony/an$s;

    const-string v2, "mute"

    invoke-virtual {p1, v2}, Lcom/jirbo/adcolony/a$g;->a(Ljava/lang/String;)Lcom/jirbo/adcolony/a$g;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/jirbo/adcolony/an$s;->a(Lcom/jirbo/adcolony/a$g;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1172
    iget-object v1, p0, Lcom/jirbo/adcolony/an$w;->j:Lcom/jirbo/adcolony/an$s;

    iget-boolean v1, v1, Lcom/jirbo/adcolony/an$s;->f:Z

    iput-boolean v1, p0, Lcom/jirbo/adcolony/an$w;->b:Z

    .line 1173
    new-instance v1, Lcom/jirbo/adcolony/an$s;

    invoke-direct {v1}, Lcom/jirbo/adcolony/an$s;-><init>()V

    iput-object v1, p0, Lcom/jirbo/adcolony/an$w;->k:Lcom/jirbo/adcolony/an$s;

    .line 1174
    iget-object v1, p0, Lcom/jirbo/adcolony/an$w;->k:Lcom/jirbo/adcolony/an$s;

    const-string v2, "unmute"

    invoke-virtual {p1, v2}, Lcom/jirbo/adcolony/a$g;->a(Ljava/lang/String;)Lcom/jirbo/adcolony/a$g;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/jirbo/adcolony/an$s;->a(Lcom/jirbo/adcolony/a$g;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1176
    new-instance v1, Lcom/jirbo/adcolony/an$x;

    invoke-direct {v1}, Lcom/jirbo/adcolony/an$x;-><init>()V

    iput-object v1, p0, Lcom/jirbo/adcolony/an$w;->h:Lcom/jirbo/adcolony/an$x;

    .line 1177
    iget-object v1, p0, Lcom/jirbo/adcolony/an$w;->h:Lcom/jirbo/adcolony/an$x;

    const-string v2, "overlay"

    invoke-virtual {p1, v2}, Lcom/jirbo/adcolony/a$g;->a(Ljava/lang/String;)Lcom/jirbo/adcolony/a$g;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/jirbo/adcolony/an$x;->a(Lcom/jirbo/adcolony/a$g;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1179
    const/4 v0, 0x1

    goto/16 :goto_0
.end method

.method b()V
    .locals 3

    .prologue
    .line 1198
    sget-object v0, Lcom/jirbo/adcolony/t;->c:Lcom/jirbo/adcolony/af;

    iget-object v0, v0, Lcom/jirbo/adcolony/af;->c:Lcom/jirbo/adcolony/ao;

    iget-object v1, p0, Lcom/jirbo/adcolony/an$w;->g:Lcom/jirbo/adcolony/an$y;

    iget-object v1, v1, Lcom/jirbo/adcolony/an$y;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/jirbo/adcolony/an$w;->g:Lcom/jirbo/adcolony/an$y;

    iget-object v2, v2, Lcom/jirbo/adcolony/an$y;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/jirbo/adcolony/ao;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1199
    sget-object v0, Lcom/jirbo/adcolony/t;->c:Lcom/jirbo/adcolony/af;

    iget-object v0, v0, Lcom/jirbo/adcolony/af;->c:Lcom/jirbo/adcolony/ao;

    iget-object v1, p0, Lcom/jirbo/adcolony/an$w;->f:Lcom/jirbo/adcolony/an$z;

    iget-object v1, v1, Lcom/jirbo/adcolony/an$z;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/jirbo/adcolony/an$w;->f:Lcom/jirbo/adcolony/an$z;

    iget-object v2, v2, Lcom/jirbo/adcolony/an$z;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/jirbo/adcolony/ao;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1201
    iget-object v0, p0, Lcom/jirbo/adcolony/an$w;->j:Lcom/jirbo/adcolony/an$s;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/an$s;->b()V

    .line 1202
    iget-object v0, p0, Lcom/jirbo/adcolony/an$w;->k:Lcom/jirbo/adcolony/an$s;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/an$s;->b()V

    .line 1203
    return-void
.end method
