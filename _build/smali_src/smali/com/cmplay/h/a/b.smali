.class public Lcom/cmplay/h/a/b;
.super Lcom/cmplay/h/a/c;
.source "FaceBookPlatform.java"

# interfaces
.implements Lcom/cmplay/h/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cmplay/h/a/b$b;,
        Lcom/cmplay/h/a/b$a;
    }
.end annotation


# instance fields
.field private c:I

.field private d:I

.field private e:Lcom/facebook/e;

.field private f:I

.field private g:I

.field private h:I

.field private i:Lcom/cmplay/h/a/b$b;

.field private j:Lcom/cmplay/h/e;

.field private k:Ljava/lang/String;

.field private l:I

.field private m:I

.field private n:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;I)V
    .locals 1

    .prologue
    .line 70
    const/4 v0, 0x3

    if-ne p2, v0, :cond_0

    sget-object v0, Lcom/cmplay/h/a;->c:Lcom/cmplay/h/a;

    :goto_0
    invoke-direct {p0, p1, v0, p2}, Lcom/cmplay/h/a/b;-><init>(Landroid/content/Context;Lcom/cmplay/h/a;I)V

    .line 71
    return-void

    .line 70
    :cond_0
    sget-object v0, Lcom/cmplay/h/a;->a:Lcom/cmplay/h/a;

    goto :goto_0
.end method

.method constructor <init>(Landroid/content/Context;Lcom/cmplay/h/a;I)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 74
    invoke-direct {p0, p1, p2}, Lcom/cmplay/h/a/c;-><init>(Landroid/content/Context;Lcom/cmplay/h/a;)V

    .line 48
    iput v1, p0, Lcom/cmplay/h/a/b;->c:I

    .line 53
    iput v1, p0, Lcom/cmplay/h/a/b;->f:I

    .line 54
    const/4 v0, 0x1

    iput v0, p0, Lcom/cmplay/h/a/b;->g:I

    .line 55
    const/4 v0, 0x2

    iput v0, p0, Lcom/cmplay/h/a/b;->h:I

    .line 75
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/l;->a(Landroid/content/Context;)V

    .line 76
    iput v1, p0, Lcom/cmplay/h/a/b;->c:I

    .line 77
    iput p3, p0, Lcom/cmplay/h/a/b;->d:I

    .line 78
    invoke-static {}, Lcom/facebook/e$a;->a()Lcom/facebook/e;

    move-result-object v0

    iput-object v0, p0, Lcom/cmplay/h/a/b;->e:Lcom/facebook/e;

    .line 79
    return-void
.end method

.method static synthetic a(Lcom/cmplay/h/a/b;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/cmplay/h/a/b;->k:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/cmplay/h/a/b;)Lcom/cmplay/h/e;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/cmplay/h/a/b;->j:Lcom/cmplay/h/e;

    return-object v0
.end method

.method static synthetic c(Lcom/cmplay/h/a/b;)I
    .locals 1

    .prologue
    .line 45
    iget v0, p0, Lcom/cmplay/h/a/b;->l:I

    return v0
.end method

.method private c(Lcom/cmplay/h/e;)V
    .locals 5

    .prologue
    .line 133
    iput-object p1, p0, Lcom/cmplay/h/a/b;->j:Lcom/cmplay/h/e;

    .line 134
    iget-object v0, p0, Lcom/cmplay/h/a/b;->j:Lcom/cmplay/h/e;

    invoke-virtual {v0}, Lcom/cmplay/h/e;->g()I

    move-result v0

    invoke-static {v0}, Lcom/cmplay/h/b;->a(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cmplay/h/a/b;->k:Ljava/lang/String;

    .line 135
    iget-object v0, p0, Lcom/cmplay/h/a/b;->j:Lcom/cmplay/h/e;

    invoke-virtual {v0}, Lcom/cmplay/h/e;->g()I

    move-result v0

    invoke-static {v0}, Lcom/cmplay/h/b;->b(I)I

    move-result v0

    iput v0, p0, Lcom/cmplay/h/a/b;->l:I

    .line 136
    invoke-static {}, Lcom/cmplay/h/b;->e()I

    move-result v0

    iput v0, p0, Lcom/cmplay/h/a/b;->n:I

    .line 137
    iget-object v0, p0, Lcom/cmplay/h/a/b;->j:Lcom/cmplay/h/e;

    invoke-virtual {v0}, Lcom/cmplay/h/e;->g()I

    move-result v0

    iget-object v1, p0, Lcom/cmplay/h/a/b;->j:Lcom/cmplay/h/e;

    invoke-virtual {v1}, Lcom/cmplay/h/e;->f()I

    move-result v1

    invoke-static {v0, v1}, Lcom/cmplay/h/b;->a(II)I

    move-result v0

    iput v0, p0, Lcom/cmplay/h/a/b;->m:I

    .line 139
    invoke-virtual {p1}, Lcom/cmplay/h/e;->g()I

    move-result v0

    invoke-static {v0}, Lcom/cmplay/h/b;->a(I)Ljava/lang/String;

    move-result-object v0

    .line 140
    invoke-static {}, Lcom/cmplay/h/b;->a()Lcom/cmplay/h/b;

    move-result-object v1

    const-string v2, "clk_fb_invite"

    invoke-virtual {v1, v2}, Lcom/cmplay/h/b;->a(Ljava/lang/String;)V

    .line 141
    invoke-static {}, Lcom/cmplay/h/b;->a()Lcom/cmplay/h/b;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "clk_fb_invite"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/cmplay/h/b;->a(Ljava/lang/String;)V

    .line 142
    invoke-static {}, Lcom/cmplay/h/f;->b()Lcom/cmplay/h/f;

    move-result-object v0

    iget v1, p0, Lcom/cmplay/h/a/b;->l:I

    iget v2, p0, Lcom/cmplay/h/a/b;->n:I

    iget v3, p0, Lcom/cmplay/h/a/b;->m:I

    const/4 v4, 0x2

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/cmplay/h/f;->a(IIII)V

    .line 144
    invoke-static {}, Lcom/facebook/share/widget/a;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 145
    new-instance v0, Lcom/facebook/share/model/AppInviteContent$a;

    invoke-direct {v0}, Lcom/facebook/share/model/AppInviteContent$a;-><init>()V

    const-string v1, "https://fb.me/1638125309768167"

    invoke-virtual {v0, v1}, Lcom/facebook/share/model/AppInviteContent$a;->a(Ljava/lang/String;)Lcom/facebook/share/model/AppInviteContent$a;

    move-result-object v0

    const-string v1, "http://board.cmcm.com/beta/tmp/006.jpg"

    invoke-virtual {v0, v1}, Lcom/facebook/share/model/AppInviteContent$a;->b(Ljava/lang/String;)Lcom/facebook/share/model/AppInviteContent$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/share/model/AppInviteContent$a;->a()Lcom/facebook/share/model/AppInviteContent;

    move-result-object v1

    .line 149
    new-instance v2, Lcom/facebook/share/widget/a;

    iget-object v0, p0, Lcom/cmplay/h/a/b;->b:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-direct {v2, v0}, Lcom/facebook/share/widget/a;-><init>(Landroid/app/Activity;)V

    .line 150
    invoke-virtual {v2}, Lcom/facebook/share/widget/a;->a()I

    move-result v0

    iput v0, p0, Lcom/cmplay/h/a/b;->f:I

    .line 151
    iget-object v0, p0, Lcom/cmplay/h/a/b;->e:Lcom/facebook/e;

    new-instance v3, Lcom/cmplay/h/a/b$a;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/cmplay/h/a/b$a;-><init>(Lcom/cmplay/h/a/b;Lcom/cmplay/h/a/b$1;)V

    invoke-virtual {v2, v0, v3}, Lcom/facebook/share/widget/a;->a(Lcom/facebook/e;Lcom/facebook/g;)V

    .line 152
    invoke-virtual {v2, v1}, Lcom/facebook/share/widget/a;->b(Ljava/lang/Object;)V

    .line 154
    :cond_0
    return-void
.end method

.method static synthetic d(Lcom/cmplay/h/a/b;)I
    .locals 1

    .prologue
    .line 45
    iget v0, p0, Lcom/cmplay/h/a/b;->n:I

    return v0
.end method

.method private d(Lcom/cmplay/h/e;)V
    .locals 5

    .prologue
    .line 158
    iput-object p1, p0, Lcom/cmplay/h/a/b;->j:Lcom/cmplay/h/e;

    .line 159
    iget-object v0, p0, Lcom/cmplay/h/a/b;->j:Lcom/cmplay/h/e;

    invoke-virtual {v0}, Lcom/cmplay/h/e;->g()I

    move-result v0

    invoke-static {v0}, Lcom/cmplay/h/b;->a(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cmplay/h/a/b;->k:Ljava/lang/String;

    .line 160
    iget-object v0, p0, Lcom/cmplay/h/a/b;->j:Lcom/cmplay/h/e;

    invoke-virtual {v0}, Lcom/cmplay/h/e;->g()I

    move-result v0

    invoke-static {v0}, Lcom/cmplay/h/b;->b(I)I

    move-result v0

    iput v0, p0, Lcom/cmplay/h/a/b;->l:I

    .line 161
    invoke-static {}, Lcom/cmplay/h/b;->e()I

    move-result v0

    iput v0, p0, Lcom/cmplay/h/a/b;->n:I

    .line 162
    iget-object v0, p0, Lcom/cmplay/h/a/b;->j:Lcom/cmplay/h/e;

    invoke-virtual {v0}, Lcom/cmplay/h/e;->g()I

    move-result v0

    iget-object v1, p0, Lcom/cmplay/h/a/b;->j:Lcom/cmplay/h/e;

    invoke-virtual {v1}, Lcom/cmplay/h/e;->f()I

    move-result v1

    invoke-static {v0, v1}, Lcom/cmplay/h/b;->a(II)I

    move-result v0

    iput v0, p0, Lcom/cmplay/h/a/b;->m:I

    .line 164
    invoke-virtual {p1}, Lcom/cmplay/h/e;->g()I

    move-result v0

    invoke-static {v0}, Lcom/cmplay/h/b;->a(I)Ljava/lang/String;

    move-result-object v0

    .line 165
    invoke-static {}, Lcom/cmplay/h/b;->a()Lcom/cmplay/h/b;

    move-result-object v1

    const-string v2, "clk_fb_timeline"

    invoke-virtual {v1, v2}, Lcom/cmplay/h/b;->a(Ljava/lang/String;)V

    .line 166
    invoke-static {}, Lcom/cmplay/h/b;->a()Lcom/cmplay/h/b;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "clk_fb_timeline"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/cmplay/h/b;->a(Ljava/lang/String;)V

    .line 167
    invoke-static {}, Lcom/cmplay/h/f;->b()Lcom/cmplay/h/f;

    move-result-object v0

    iget v1, p0, Lcom/cmplay/h/a/b;->l:I

    iget v2, p0, Lcom/cmplay/h/a/b;->n:I

    iget v3, p0, Lcom/cmplay/h/a/b;->m:I

    const/4 v4, 0x2

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/cmplay/h/f;->a(IIII)V

    .line 169
    const-class v0, Lcom/facebook/share/model/ShareLinkContent;

    invoke-static {v0}, Lcom/facebook/share/widget/d;->a(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 182
    :goto_0
    return-void

    .line 172
    :cond_0
    new-instance v0, Lcom/facebook/share/model/ShareLinkContent$a;

    invoke-direct {v0}, Lcom/facebook/share/model/ShareLinkContent$a;-><init>()V

    invoke-virtual {p1}, Lcom/cmplay/h/e;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/share/model/ShareLinkContent$a;->b(Ljava/lang/String;)Lcom/facebook/share/model/ShareLinkContent$a;

    move-result-object v0

    invoke-virtual {p1}, Lcom/cmplay/h/e;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/share/model/ShareLinkContent$a;->a(Ljava/lang/String;)Lcom/facebook/share/model/ShareLinkContent$a;

    move-result-object v0

    invoke-virtual {p1}, Lcom/cmplay/h/e;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/share/model/ShareLinkContent$a;->a(Landroid/net/Uri;)Lcom/facebook/share/model/ShareContent$a;

    move-result-object v0

    check-cast v0, Lcom/facebook/share/model/ShareLinkContent$a;

    invoke-virtual {p1}, Lcom/cmplay/h/e;->e()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/share/model/ShareLinkContent$a;->b(Landroid/net/Uri;)Lcom/facebook/share/model/ShareLinkContent$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/share/model/ShareLinkContent$a;->a()Lcom/facebook/share/model/ShareLinkContent;

    move-result-object v1

    .line 178
    new-instance v2, Lcom/facebook/share/widget/d;

    iget-object v0, p0, Lcom/cmplay/h/a/b;->b:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-direct {v2, v0}, Lcom/facebook/share/widget/d;-><init>(Landroid/app/Activity;)V

    .line 179
    invoke-virtual {v2}, Lcom/facebook/share/widget/d;->a()I

    move-result v0

    iput v0, p0, Lcom/cmplay/h/a/b;->g:I

    .line 180
    iget-object v0, p0, Lcom/cmplay/h/a/b;->e:Lcom/facebook/e;

    new-instance v3, Lcom/cmplay/h/a/b$a;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/cmplay/h/a/b$a;-><init>(Lcom/cmplay/h/a/b;Lcom/cmplay/h/a/b$1;)V

    invoke-virtual {v2, v0, v3}, Lcom/facebook/share/widget/d;->a(Lcom/facebook/e;Lcom/facebook/g;)V

    .line 181
    sget-object v0, Lcom/facebook/share/widget/d$b;->b:Lcom/facebook/share/widget/d$b;

    invoke-virtual {v2, v1, v0}, Lcom/facebook/share/widget/d;->a(Lcom/facebook/share/model/ShareContent;Lcom/facebook/share/widget/d$b;)V

    goto :goto_0
.end method

.method static synthetic e(Lcom/cmplay/h/a/b;)I
    .locals 1

    .prologue
    .line 45
    iget v0, p0, Lcom/cmplay/h/a/b;->m:I

    return v0
.end method

.method private e(Lcom/cmplay/h/e;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 186
    iput-object p1, p0, Lcom/cmplay/h/a/b;->j:Lcom/cmplay/h/e;

    .line 187
    iget-object v0, p0, Lcom/cmplay/h/a/b;->j:Lcom/cmplay/h/e;

    invoke-virtual {v0}, Lcom/cmplay/h/e;->g()I

    move-result v0

    invoke-static {v0}, Lcom/cmplay/h/b;->a(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cmplay/h/a/b;->k:Ljava/lang/String;

    .line 188
    iget-object v0, p0, Lcom/cmplay/h/a/b;->j:Lcom/cmplay/h/e;

    invoke-virtual {v0}, Lcom/cmplay/h/e;->g()I

    move-result v0

    invoke-static {v0}, Lcom/cmplay/h/b;->b(I)I

    move-result v0

    iput v0, p0, Lcom/cmplay/h/a/b;->l:I

    .line 189
    invoke-static {}, Lcom/cmplay/h/b;->e()I

    move-result v0

    iput v0, p0, Lcom/cmplay/h/a/b;->n:I

    .line 190
    iget-object v0, p0, Lcom/cmplay/h/a/b;->j:Lcom/cmplay/h/e;

    invoke-virtual {v0}, Lcom/cmplay/h/e;->g()I

    move-result v0

    iget-object v2, p0, Lcom/cmplay/h/a/b;->j:Lcom/cmplay/h/e;

    invoke-virtual {v2}, Lcom/cmplay/h/e;->f()I

    move-result v2

    invoke-static {v0, v2}, Lcom/cmplay/h/b;->a(II)I

    move-result v0

    iput v0, p0, Lcom/cmplay/h/a/b;->m:I

    .line 192
    invoke-virtual {p1}, Lcom/cmplay/h/e;->g()I

    move-result v0

    invoke-static {v0}, Lcom/cmplay/h/b;->a(I)Ljava/lang/String;

    move-result-object v0

    .line 193
    invoke-static {}, Lcom/cmplay/h/b;->a()Lcom/cmplay/h/b;

    move-result-object v2

    const-string v3, "clk_fb_timeline"

    invoke-virtual {v2, v3}, Lcom/cmplay/h/b;->a(Ljava/lang/String;)V

    .line 194
    invoke-static {}, Lcom/cmplay/h/b;->a()Lcom/cmplay/h/b;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "clk_fb_timeline"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/cmplay/h/b;->a(Ljava/lang/String;)V

    .line 195
    invoke-static {}, Lcom/cmplay/h/f;->b()Lcom/cmplay/h/f;

    move-result-object v0

    iget v2, p0, Lcom/cmplay/h/a/b;->l:I

    iget v3, p0, Lcom/cmplay/h/a/b;->n:I

    iget v4, p0, Lcom/cmplay/h/a/b;->m:I

    const/4 v5, 0x2

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/cmplay/h/f;->a(IIII)V

    .line 197
    const-class v0, Lcom/facebook/share/model/SharePhotoContent;

    invoke-static {v0}, Lcom/facebook/share/widget/d;->a(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 218
    :goto_0
    return-void

    .line 202
    :cond_0
    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-virtual {p1}, Lcom/cmplay/h/e;->c()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 203
    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    .line 204
    const-string v3, "deep_link"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sharePhotoToFaceBookTimeLine   file.exists():"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/cmplay/util/c;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 208
    :goto_1
    new-instance v2, Lcom/facebook/share/model/SharePhoto$a;

    invoke-direct {v2}, Lcom/facebook/share/model/SharePhoto$a;-><init>()V

    invoke-virtual {v2, v0}, Lcom/facebook/share/model/SharePhoto$a;->a(Landroid/net/Uri;)Lcom/facebook/share/model/SharePhoto$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/share/model/SharePhoto$a;->c()Lcom/facebook/share/model/SharePhoto;

    move-result-object v0

    .line 211
    new-instance v2, Lcom/facebook/share/model/SharePhotoContent$a;

    invoke-direct {v2}, Lcom/facebook/share/model/SharePhotoContent$a;-><init>()V

    invoke-virtual {v2, v0}, Lcom/facebook/share/model/SharePhotoContent$a;->a(Lcom/facebook/share/model/SharePhoto;)Lcom/facebook/share/model/SharePhotoContent$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/share/model/SharePhotoContent$a;->a()Lcom/facebook/share/model/SharePhotoContent;

    move-result-object v2

    .line 214
    new-instance v3, Lcom/facebook/share/widget/d;

    iget-object v0, p0, Lcom/cmplay/h/a/b;->b:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-direct {v3, v0}, Lcom/facebook/share/widget/d;-><init>(Landroid/app/Activity;)V

    .line 215
    invoke-virtual {v3}, Lcom/facebook/share/widget/d;->a()I

    move-result v0

    iput v0, p0, Lcom/cmplay/h/a/b;->g:I

    .line 216
    iget-object v0, p0, Lcom/cmplay/h/a/b;->e:Lcom/facebook/e;

    new-instance v4, Lcom/cmplay/h/a/b$a;

    invoke-direct {v4, p0, v1}, Lcom/cmplay/h/a/b$a;-><init>(Lcom/cmplay/h/a/b;Lcom/cmplay/h/a/b$1;)V

    invoke-virtual {v3, v0, v4}, Lcom/facebook/share/widget/d;->a(Lcom/facebook/e;Lcom/facebook/g;)V

    .line 217
    sget-object v0, Lcom/facebook/share/widget/d$b;->b:Lcom/facebook/share/widget/d$b;

    invoke-virtual {v3, v2, v0}, Lcom/facebook/share/widget/d;->a(Lcom/facebook/share/model/ShareContent;Lcom/facebook/share/widget/d$b;)V

    goto :goto_0

    .line 205
    :catch_0
    move-exception v0

    move-object v0, v1

    .line 206
    goto :goto_1
.end method

.method static synthetic f(Lcom/cmplay/h/a/b;)I
    .locals 1

    .prologue
    .line 45
    iget v0, p0, Lcom/cmplay/h/a/b;->c:I

    return v0
.end method

.method private f(Lcom/cmplay/h/e;)V
    .locals 5

    .prologue
    .line 222
    iput-object p1, p0, Lcom/cmplay/h/a/b;->j:Lcom/cmplay/h/e;

    .line 223
    iget-object v0, p0, Lcom/cmplay/h/a/b;->j:Lcom/cmplay/h/e;

    invoke-virtual {v0}, Lcom/cmplay/h/e;->g()I

    move-result v0

    invoke-static {v0}, Lcom/cmplay/h/b;->a(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cmplay/h/a/b;->k:Ljava/lang/String;

    .line 224
    iget-object v0, p0, Lcom/cmplay/h/a/b;->j:Lcom/cmplay/h/e;

    invoke-virtual {v0}, Lcom/cmplay/h/e;->g()I

    move-result v0

    invoke-static {v0}, Lcom/cmplay/h/b;->b(I)I

    move-result v0

    iput v0, p0, Lcom/cmplay/h/a/b;->l:I

    .line 225
    invoke-static {}, Lcom/cmplay/h/b;->e()I

    move-result v0

    iput v0, p0, Lcom/cmplay/h/a/b;->n:I

    .line 226
    iget-object v0, p0, Lcom/cmplay/h/a/b;->j:Lcom/cmplay/h/e;

    invoke-virtual {v0}, Lcom/cmplay/h/e;->g()I

    move-result v0

    iget-object v1, p0, Lcom/cmplay/h/a/b;->j:Lcom/cmplay/h/e;

    invoke-virtual {v1}, Lcom/cmplay/h/e;->f()I

    move-result v1

    invoke-static {v0, v1}, Lcom/cmplay/h/b;->a(II)I

    move-result v0

    iput v0, p0, Lcom/cmplay/h/a/b;->m:I

    .line 228
    invoke-virtual {p1}, Lcom/cmplay/h/e;->g()I

    move-result v0

    invoke-static {v0}, Lcom/cmplay/h/b;->a(I)Ljava/lang/String;

    move-result-object v0

    .line 229
    invoke-static {}, Lcom/cmplay/h/b;->a()Lcom/cmplay/h/b;

    move-result-object v1

    const-string v2, "clk_fb_messenger"

    invoke-virtual {v1, v2}, Lcom/cmplay/h/b;->a(Ljava/lang/String;)V

    .line 230
    invoke-static {}, Lcom/cmplay/h/b;->a()Lcom/cmplay/h/b;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "clk_fb_messenger"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/cmplay/h/b;->a(Ljava/lang/String;)V

    .line 231
    invoke-static {}, Lcom/cmplay/h/f;->b()Lcom/cmplay/h/f;

    move-result-object v0

    iget v1, p0, Lcom/cmplay/h/a/b;->l:I

    iget v2, p0, Lcom/cmplay/h/a/b;->n:I

    iget v3, p0, Lcom/cmplay/h/a/b;->m:I

    const/4 v4, 0x2

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/cmplay/h/f;->a(IIII)V

    .line 233
    const-class v0, Lcom/facebook/share/model/ShareLinkContent;

    invoke-static {v0}, Lcom/facebook/share/widget/c;->a(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 246
    :goto_0
    return-void

    .line 236
    :cond_0
    new-instance v0, Lcom/facebook/share/model/ShareLinkContent$a;

    invoke-direct {v0}, Lcom/facebook/share/model/ShareLinkContent$a;-><init>()V

    invoke-virtual {p1}, Lcom/cmplay/h/e;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/share/model/ShareLinkContent$a;->b(Ljava/lang/String;)Lcom/facebook/share/model/ShareLinkContent$a;

    move-result-object v0

    invoke-virtual {p1}, Lcom/cmplay/h/e;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/share/model/ShareLinkContent$a;->a(Ljava/lang/String;)Lcom/facebook/share/model/ShareLinkContent$a;

    move-result-object v0

    invoke-virtual {p1}, Lcom/cmplay/h/e;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/share/model/ShareLinkContent$a;->a(Landroid/net/Uri;)Lcom/facebook/share/model/ShareContent$a;

    move-result-object v0

    check-cast v0, Lcom/facebook/share/model/ShareLinkContent$a;

    const-string v1, "http://board.cmcm.com/beta/tmp/005.png"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/share/model/ShareLinkContent$a;->b(Landroid/net/Uri;)Lcom/facebook/share/model/ShareLinkContent$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/share/model/ShareLinkContent$a;->a()Lcom/facebook/share/model/ShareLinkContent;

    move-result-object v1

    .line 242
    new-instance v2, Lcom/facebook/share/widget/c;

    iget-object v0, p0, Lcom/cmplay/h/a/b;->b:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-direct {v2, v0}, Lcom/facebook/share/widget/c;-><init>(Landroid/app/Activity;)V

    .line 243
    invoke-virtual {v2}, Lcom/facebook/share/widget/c;->a()I

    move-result v0

    iput v0, p0, Lcom/cmplay/h/a/b;->h:I

    .line 244
    iget-object v0, p0, Lcom/cmplay/h/a/b;->e:Lcom/facebook/e;

    new-instance v3, Lcom/cmplay/h/a/b$a;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/cmplay/h/a/b$a;-><init>(Lcom/cmplay/h/a/b;Lcom/cmplay/h/a/b$1;)V

    invoke-virtual {v2, v0, v3}, Lcom/facebook/share/widget/c;->a(Lcom/facebook/e;Lcom/facebook/g;)V

    .line 245
    invoke-virtual {v2, v1}, Lcom/facebook/share/widget/c;->b(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method static synthetic g(Lcom/cmplay/h/a/b;)I
    .locals 2

    .prologue
    .line 45
    iget v0, p0, Lcom/cmplay/h/a/b;->c:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/cmplay/h/a/b;->c:I

    return v0
.end method

.method private g(Lcom/cmplay/h/e;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 253
    iput-object p1, p0, Lcom/cmplay/h/a/b;->j:Lcom/cmplay/h/e;

    .line 254
    iget-object v0, p0, Lcom/cmplay/h/a/b;->j:Lcom/cmplay/h/e;

    invoke-virtual {v0}, Lcom/cmplay/h/e;->g()I

    move-result v0

    invoke-static {v0}, Lcom/cmplay/h/b;->a(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cmplay/h/a/b;->k:Ljava/lang/String;

    .line 255
    iget-object v0, p0, Lcom/cmplay/h/a/b;->j:Lcom/cmplay/h/e;

    invoke-virtual {v0}, Lcom/cmplay/h/e;->g()I

    move-result v0

    invoke-static {v0}, Lcom/cmplay/h/b;->b(I)I

    move-result v0

    iput v0, p0, Lcom/cmplay/h/a/b;->l:I

    .line 256
    invoke-static {}, Lcom/cmplay/h/b;->e()I

    move-result v0

    iput v0, p0, Lcom/cmplay/h/a/b;->n:I

    .line 257
    iget-object v0, p0, Lcom/cmplay/h/a/b;->j:Lcom/cmplay/h/e;

    invoke-virtual {v0}, Lcom/cmplay/h/e;->g()I

    move-result v0

    iget-object v2, p0, Lcom/cmplay/h/a/b;->j:Lcom/cmplay/h/e;

    invoke-virtual {v2}, Lcom/cmplay/h/e;->f()I

    move-result v2

    invoke-static {v0, v2}, Lcom/cmplay/h/b;->a(II)I

    move-result v0

    iput v0, p0, Lcom/cmplay/h/a/b;->m:I

    .line 259
    invoke-virtual {p1}, Lcom/cmplay/h/e;->g()I

    move-result v0

    invoke-static {v0}, Lcom/cmplay/h/b;->a(I)Ljava/lang/String;

    move-result-object v0

    .line 260
    invoke-static {}, Lcom/cmplay/h/b;->a()Lcom/cmplay/h/b;

    move-result-object v2

    const-string v3, "clk_fb_messenger"

    invoke-virtual {v2, v3}, Lcom/cmplay/h/b;->a(Ljava/lang/String;)V

    .line 261
    invoke-static {}, Lcom/cmplay/h/b;->a()Lcom/cmplay/h/b;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "clk_fb_messenger"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/cmplay/h/b;->a(Ljava/lang/String;)V

    .line 262
    invoke-static {}, Lcom/cmplay/h/f;->b()Lcom/cmplay/h/f;

    move-result-object v0

    iget v2, p0, Lcom/cmplay/h/a/b;->l:I

    iget v3, p0, Lcom/cmplay/h/a/b;->n:I

    iget v4, p0, Lcom/cmplay/h/a/b;->m:I

    const/4 v5, 0x2

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/cmplay/h/f;->a(IIII)V

    .line 264
    const-class v0, Lcom/facebook/share/model/SharePhotoContent;

    invoke-static {v0}, Lcom/facebook/share/widget/c;->a(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 284
    :goto_0
    return-void

    .line 269
    :cond_0
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Lcom/cmplay/h/e;->c()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 270
    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 274
    :goto_1
    new-instance v2, Lcom/facebook/share/model/SharePhoto$a;

    invoke-direct {v2}, Lcom/facebook/share/model/SharePhoto$a;-><init>()V

    invoke-virtual {v2, v0}, Lcom/facebook/share/model/SharePhoto$a;->a(Landroid/net/Uri;)Lcom/facebook/share/model/SharePhoto$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/share/model/SharePhoto$a;->c()Lcom/facebook/share/model/SharePhoto;

    move-result-object v0

    .line 277
    new-instance v2, Lcom/facebook/share/model/SharePhotoContent$a;

    invoke-direct {v2}, Lcom/facebook/share/model/SharePhotoContent$a;-><init>()V

    invoke-virtual {v2, v0}, Lcom/facebook/share/model/SharePhotoContent$a;->a(Lcom/facebook/share/model/SharePhoto;)Lcom/facebook/share/model/SharePhotoContent$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/share/model/SharePhotoContent$a;->a()Lcom/facebook/share/model/SharePhotoContent;

    move-result-object v2

    .line 280
    new-instance v3, Lcom/facebook/share/widget/c;

    iget-object v0, p0, Lcom/cmplay/h/a/b;->b:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-direct {v3, v0}, Lcom/facebook/share/widget/c;-><init>(Landroid/app/Activity;)V

    .line 281
    invoke-virtual {v3}, Lcom/facebook/share/widget/c;->a()I

    move-result v0

    iput v0, p0, Lcom/cmplay/h/a/b;->h:I

    .line 282
    iget-object v0, p0, Lcom/cmplay/h/a/b;->e:Lcom/facebook/e;

    new-instance v4, Lcom/cmplay/h/a/b$a;

    invoke-direct {v4, p0, v1}, Lcom/cmplay/h/a/b$a;-><init>(Lcom/cmplay/h/a/b;Lcom/cmplay/h/a/b$1;)V

    invoke-virtual {v3, v0, v4}, Lcom/facebook/share/widget/c;->a(Lcom/facebook/e;Lcom/facebook/g;)V

    .line 283
    invoke-virtual {v3, v2}, Lcom/facebook/share/widget/c;->b(Ljava/lang/Object;)V

    goto :goto_0

    .line 271
    :catch_0
    move-exception v0

    move-object v0, v1

    .line 272
    goto :goto_1
.end method

.method static synthetic h(Lcom/cmplay/h/a/b;)I
    .locals 1

    .prologue
    .line 45
    iget v0, p0, Lcom/cmplay/h/a/b;->d:I

    return v0
.end method

.method static synthetic i(Lcom/cmplay/h/a/b;)Lcom/cmplay/h/a/b$b;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/cmplay/h/a/b;->i:Lcom/cmplay/h/a/b$b;

    return-object v0
.end method


# virtual methods
.method public a(IILandroid/content/Intent;)V
    .locals 2

    .prologue
    .line 314
    iget-object v0, p0, Lcom/cmplay/h/a/b;->e:Lcom/facebook/e;

    invoke-interface {v0, p1, p2, p3}, Lcom/facebook/e;->a(IILandroid/content/Intent;)Z

    .line 315
    iget v0, p0, Lcom/cmplay/h/a/b;->f:I

    if-ne v0, p1, :cond_1

    .line 316
    invoke-static {}, Lcom/cmplay/h/b;->a()Lcom/cmplay/h/b;

    move-result-object v0

    const-string v1, "at_fb_invite_req"

    invoke-virtual {v0, v1}, Lcom/cmplay/h/b;->a(Ljava/lang/String;)V

    .line 322
    :cond_0
    :goto_0
    return-void

    .line 317
    :cond_1
    iget v0, p0, Lcom/cmplay/h/a/b;->g:I

    if-ne v0, p1, :cond_2

    .line 318
    invoke-static {}, Lcom/cmplay/h/b;->a()Lcom/cmplay/h/b;

    move-result-object v0

    const-string v1, "at_fb_timeline_req"

    invoke-virtual {v0, v1}, Lcom/cmplay/h/b;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 319
    :cond_2
    iget v0, p0, Lcom/cmplay/h/a/b;->h:I

    if-ne v0, p1, :cond_0

    .line 320
    invoke-static {}, Lcom/cmplay/h/b;->a()Lcom/cmplay/h/b;

    move-result-object v0

    const-string v1, "at_fb_messenger_req"

    invoke-virtual {v0, v1}, Lcom/cmplay/h/b;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Lcom/cmplay/h/e;)V
    .locals 2

    .prologue
    .line 88
    iput-object p1, p0, Lcom/cmplay/h/a/b;->j:Lcom/cmplay/h/e;

    .line 89
    iget-object v0, p0, Lcom/cmplay/h/a/b;->j:Lcom/cmplay/h/e;

    invoke-virtual {v0}, Lcom/cmplay/h/e;->g()I

    move-result v0

    invoke-static {v0}, Lcom/cmplay/h/b;->a(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cmplay/h/a/b;->k:Ljava/lang/String;

    .line 90
    iget-object v0, p0, Lcom/cmplay/h/a/b;->j:Lcom/cmplay/h/e;

    invoke-virtual {v0}, Lcom/cmplay/h/e;->g()I

    move-result v0

    invoke-static {v0}, Lcom/cmplay/h/b;->b(I)I

    move-result v0

    iput v0, p0, Lcom/cmplay/h/a/b;->l:I

    .line 91
    invoke-static {}, Lcom/cmplay/h/b;->e()I

    move-result v0

    iput v0, p0, Lcom/cmplay/h/a/b;->n:I

    .line 92
    iget-object v0, p0, Lcom/cmplay/h/a/b;->j:Lcom/cmplay/h/e;

    invoke-virtual {v0}, Lcom/cmplay/h/e;->g()I

    move-result v0

    iget-object v1, p0, Lcom/cmplay/h/a/b;->j:Lcom/cmplay/h/e;

    invoke-virtual {v1}, Lcom/cmplay/h/e;->f()I

    move-result v1

    invoke-static {v0, v1}, Lcom/cmplay/h/b;->a(II)I

    move-result v0

    iput v0, p0, Lcom/cmplay/h/a/b;->m:I

    .line 93
    iget v0, p0, Lcom/cmplay/h/a/b;->d:I

    packed-switch v0, :pswitch_data_0

    .line 129
    :goto_0
    return-void

    .line 95
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/cmplay/h/a/b;->c(Lcom/cmplay/h/e;)V

    goto :goto_0

    .line 99
    :pswitch_1
    invoke-virtual {p1}, Lcom/cmplay/h/e;->h()I

    move-result v0

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    .line 101
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/cmplay/h/a/b;->f(Lcom/cmplay/h/e;)V

    goto :goto_0

    .line 104
    :pswitch_3
    invoke-direct {p0, p1}, Lcom/cmplay/h/a/b;->g(Lcom/cmplay/h/e;)V

    goto :goto_0

    .line 113
    :pswitch_4
    invoke-virtual {p1}, Lcom/cmplay/h/e;->h()I

    move-result v0

    packed-switch v0, :pswitch_data_2

    goto :goto_0

    .line 115
    :pswitch_5
    invoke-direct {p0, p1}, Lcom/cmplay/h/a/b;->d(Lcom/cmplay/h/e;)V

    goto :goto_0

    .line 118
    :pswitch_6
    invoke-direct {p0, p1}, Lcom/cmplay/h/a/b;->e(Lcom/cmplay/h/e;)V

    goto :goto_0

    .line 126
    :pswitch_7
    invoke-virtual {p0, p1}, Lcom/cmplay/h/a/b;->b(Lcom/cmplay/h/e;)V

    goto :goto_0

    .line 93
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_4
        :pswitch_1
        :pswitch_7
    .end packed-switch

    .line 99
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 113
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public b(Lcom/cmplay/h/e;)V
    .locals 5

    .prologue
    .line 290
    iput-object p1, p0, Lcom/cmplay/h/a/b;->j:Lcom/cmplay/h/e;

    .line 291
    iget-object v0, p0, Lcom/cmplay/h/a/b;->j:Lcom/cmplay/h/e;

    invoke-virtual {v0}, Lcom/cmplay/h/e;->g()I

    move-result v0

    invoke-static {v0}, Lcom/cmplay/h/b;->a(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cmplay/h/a/b;->k:Ljava/lang/String;

    .line 292
    iget-object v0, p0, Lcom/cmplay/h/a/b;->j:Lcom/cmplay/h/e;

    invoke-virtual {v0}, Lcom/cmplay/h/e;->g()I

    move-result v0

    invoke-static {v0}, Lcom/cmplay/h/b;->b(I)I

    move-result v0

    iput v0, p0, Lcom/cmplay/h/a/b;->l:I

    .line 293
    invoke-static {}, Lcom/cmplay/h/b;->e()I

    move-result v0

    iput v0, p0, Lcom/cmplay/h/a/b;->n:I

    .line 294
    iget-object v0, p0, Lcom/cmplay/h/a/b;->j:Lcom/cmplay/h/e;

    invoke-virtual {v0}, Lcom/cmplay/h/e;->g()I

    move-result v0

    iget-object v1, p0, Lcom/cmplay/h/a/b;->j:Lcom/cmplay/h/e;

    invoke-virtual {v1}, Lcom/cmplay/h/e;->f()I

    move-result v1

    invoke-static {v0, v1}, Lcom/cmplay/h/b;->a(II)I

    move-result v0

    iput v0, p0, Lcom/cmplay/h/a/b;->m:I

    .line 296
    invoke-virtual {p1}, Lcom/cmplay/h/e;->g()I

    move-result v0

    invoke-static {v0}, Lcom/cmplay/h/b;->a(I)Ljava/lang/String;

    move-result-object v0

    .line 297
    invoke-static {}, Lcom/cmplay/h/b;->a()Lcom/cmplay/h/b;

    move-result-object v1

    const-string v2, "clk_fb_game_req"

    invoke-virtual {v1, v2}, Lcom/cmplay/h/b;->a(Ljava/lang/String;)V

    .line 298
    invoke-static {}, Lcom/cmplay/h/b;->a()Lcom/cmplay/h/b;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "clk_fb_game_req"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/cmplay/h/b;->a(Ljava/lang/String;)V

    .line 299
    invoke-static {}, Lcom/cmplay/h/f;->b()Lcom/cmplay/h/f;

    move-result-object v0

    iget v1, p0, Lcom/cmplay/h/a/b;->l:I

    iget v2, p0, Lcom/cmplay/h/a/b;->n:I

    iget v3, p0, Lcom/cmplay/h/a/b;->m:I

    const/4 v4, 0x2

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/cmplay/h/f;->a(IIII)V

    .line 301
    new-instance v1, Lcom/facebook/share/widget/b;

    iget-object v0, p0, Lcom/cmplay/h/a/b;->b:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-direct {v1, v0}, Lcom/facebook/share/widget/b;-><init>(Landroid/app/Activity;)V

    .line 302
    iget-object v0, p0, Lcom/cmplay/h/a/b;->e:Lcom/facebook/e;

    new-instance v2, Lcom/cmplay/h/a/b$a;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/cmplay/h/a/b$a;-><init>(Lcom/cmplay/h/a/b;Lcom/cmplay/h/a/b$1;)V

    invoke-virtual {v1, v0, v2}, Lcom/facebook/share/widget/b;->a(Lcom/facebook/e;Lcom/facebook/g;)V

    .line 304
    new-instance v0, Lcom/facebook/share/model/GameRequestContent$b;

    invoke-direct {v0}, Lcom/facebook/share/model/GameRequestContent$b;-><init>()V

    invoke-virtual {p1}, Lcom/cmplay/h/e;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/share/model/GameRequestContent$b;->c(Ljava/lang/String;)Lcom/facebook/share/model/GameRequestContent$b;

    move-result-object v0

    invoke-virtual {p1}, Lcom/cmplay/h/e;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/share/model/GameRequestContent$b;->a(Ljava/lang/String;)Lcom/facebook/share/model/GameRequestContent$b;

    move-result-object v0

    invoke-virtual {p1}, Lcom/cmplay/h/e;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/share/model/GameRequestContent$b;->b(Ljava/lang/String;)Lcom/facebook/share/model/GameRequestContent$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/share/model/GameRequestContent$b;->a()Lcom/facebook/share/model/GameRequestContent;

    move-result-object v1

    .line 309
    iget-object v0, p0, Lcom/cmplay/h/a/b;->b:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0, v1}, Lcom/facebook/share/widget/b;->a(Landroid/app/Activity;Lcom/facebook/share/model/GameRequestContent;)V

    .line 310
    return-void
.end method
