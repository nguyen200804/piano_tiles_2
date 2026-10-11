.class Lcom/jirbo/adcolony/a$g;
.super Lcom/jirbo/adcolony/a$i;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jirbo/adcolony/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "g"
.end annotation


# instance fields
.field a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/jirbo/adcolony/a$i;",
            ">;"
        }
    .end annotation
.end field

.field b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 132
    invoke-direct {p0}, Lcom/jirbo/adcolony/a$i;-><init>()V

    .line 134
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/jirbo/adcolony/a$g;->a:Ljava/util/HashMap;

    .line 135
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jirbo/adcolony/a$g;->b:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method a(Ljava/lang/String;D)D
    .locals 2

    .prologue
    .line 233
    iget-object v0, p0, Lcom/jirbo/adcolony/a$g;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jirbo/adcolony/a$i;

    .line 234
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/jirbo/adcolony/a$i;->n()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/jirbo/adcolony/a$i;->d()D

    move-result-wide p2

    .line 235
    :cond_0
    return-wide p2
.end method

.method a(Ljava/lang/String;I)I
    .locals 2

    .prologue
    .line 240
    iget-object v0, p0, Lcom/jirbo/adcolony/a$g;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jirbo/adcolony/a$i;

    .line 241
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/jirbo/adcolony/a$i;->n()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/jirbo/adcolony/a$i;->e()I

    move-result p2

    .line 242
    :cond_0
    return p2
.end method

.method a(Ljava/lang/String;Lcom/jirbo/adcolony/a$c;)Lcom/jirbo/adcolony/a$c;
    .locals 2

    .prologue
    .line 204
    iget-object v0, p0, Lcom/jirbo/adcolony/a$g;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jirbo/adcolony/a$i;

    .line 205
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/jirbo/adcolony/a$i;->f()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/jirbo/adcolony/a$i;->h()Lcom/jirbo/adcolony/a$c;

    move-result-object p2

    .line 206
    :cond_0
    return-object p2
.end method

.method a(Ljava/lang/String;)Lcom/jirbo/adcolony/a$g;
    .locals 1

    .prologue
    .line 257
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/jirbo/adcolony/a$g;->a(Ljava/lang/String;Lcom/jirbo/adcolony/a$g;)Lcom/jirbo/adcolony/a$g;

    move-result-object v0

    .line 258
    if-eqz v0, :cond_0

    .line 259
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/jirbo/adcolony/a$g;

    invoke-direct {v0}, Lcom/jirbo/adcolony/a$g;-><init>()V

    goto :goto_0
.end method

.method a(Ljava/lang/String;Lcom/jirbo/adcolony/a$g;)Lcom/jirbo/adcolony/a$g;
    .locals 2

    .prologue
    .line 197
    iget-object v0, p0, Lcom/jirbo/adcolony/a$g;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jirbo/adcolony/a$i;

    .line 198
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/jirbo/adcolony/a$i;->l()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/jirbo/adcolony/a$i;->m()Lcom/jirbo/adcolony/a$g;

    move-result-object p2

    .line 199
    :cond_0
    return-object p2
.end method

.method a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 226
    iget-object v0, p0, Lcom/jirbo/adcolony/a$g;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jirbo/adcolony/a$i;

    .line 227
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/jirbo/adcolony/a$i;->g_()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/jirbo/adcolony/a$i;->b()Ljava/lang/String;

    move-result-object p2

    .line 228
    :cond_0
    return-object p2
.end method

.method a(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 211
    invoke-virtual {p0, p1}, Lcom/jirbo/adcolony/a$g;->b(Ljava/lang/String;)Lcom/jirbo/adcolony/a$c;

    move-result-object v1

    .line 212
    if-nez v1, :cond_1

    .line 221
    :cond_0
    return-object p2

    .line 214
    :cond_1
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 215
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1}, Lcom/jirbo/adcolony/a$c;->f_()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 217
    invoke-virtual {v1, v0}, Lcom/jirbo/adcolony/a$c;->b(I)Ljava/lang/String;

    move-result-object v2

    .line 218
    if-eqz v2, :cond_2

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 215
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method a(Lcom/jirbo/adcolony/y;)V
    .locals 7

    .prologue
    const/16 v6, 0x3a

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 143
    iget-object v0, p0, Lcom/jirbo/adcolony/a$g;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 145
    if-nez v5, :cond_0

    .line 147
    const-string v0, "{}"

    invoke-virtual {p1, v0}, Lcom/jirbo/adcolony/y;->a(Ljava/lang/String;)V

    .line 184
    :goto_0
    return-void

    .line 149
    :cond_0
    if-ne v5, v2, :cond_1

    iget-object v0, p0, Lcom/jirbo/adcolony/a$g;->a:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/jirbo/adcolony/a$g;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jirbo/adcolony/a$i;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/a$i;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 151
    const-string v0, "{"

    invoke-virtual {p1, v0}, Lcom/jirbo/adcolony/y;->a(Ljava/lang/String;)V

    .line 153
    iget-object v0, p0, Lcom/jirbo/adcolony/a$g;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 154
    iget-object v1, p0, Lcom/jirbo/adcolony/a$g;->a:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jirbo/adcolony/a$i;

    .line 156
    invoke-virtual {p0, p1, v0}, Lcom/jirbo/adcolony/a$g;->a(Lcom/jirbo/adcolony/y;Ljava/lang/String;)V

    .line 157
    invoke-virtual {p1, v6}, Lcom/jirbo/adcolony/y;->b(C)V

    .line 158
    invoke-virtual {v1, p1}, Lcom/jirbo/adcolony/a$i;->a(Lcom/jirbo/adcolony/y;)V

    .line 160
    const-string v0, "}"

    invoke-virtual {p1, v0}, Lcom/jirbo/adcolony/y;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 164
    :cond_1
    const-string v0, "{"

    invoke-virtual {p1, v0}, Lcom/jirbo/adcolony/y;->b(Ljava/lang/String;)V

    .line 165
    iget v0, p1, Lcom/jirbo/adcolony/y;->b:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p1, Lcom/jirbo/adcolony/y;->b:I

    move v4, v3

    move v0, v2

    .line 168
    :goto_1
    if-ge v4, v5, :cond_4

    .line 170
    if-eqz v0, :cond_3

    move v2, v3

    .line 172
    :goto_2
    iget-object v0, p0, Lcom/jirbo/adcolony/a$g;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 173
    iget-object v1, p0, Lcom/jirbo/adcolony/a$g;->a:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jirbo/adcolony/a$i;

    .line 174
    invoke-virtual {p0, p1, v0}, Lcom/jirbo/adcolony/a$g;->a(Lcom/jirbo/adcolony/y;Ljava/lang/String;)V

    .line 175
    invoke-virtual {p1, v6}, Lcom/jirbo/adcolony/y;->b(C)V

    .line 176
    invoke-virtual {v1}, Lcom/jirbo/adcolony/a$i;->g()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/jirbo/adcolony/y;->b()V

    .line 177
    :cond_2
    invoke-virtual {v1, p1}, Lcom/jirbo/adcolony/a$i;->a(Lcom/jirbo/adcolony/y;)V

    .line 168
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    move v0, v2

    goto :goto_1

    .line 171
    :cond_3
    const/16 v1, 0x2c

    invoke-virtual {p1, v1}, Lcom/jirbo/adcolony/y;->c(C)V

    move v2, v0

    goto :goto_2

    .line 179
    :cond_4
    invoke-virtual {p1}, Lcom/jirbo/adcolony/y;->b()V

    .line 181
    iget v0, p1, Lcom/jirbo/adcolony/y;->b:I

    add-int/lit8 v0, v0, -0x2

    iput v0, p1, Lcom/jirbo/adcolony/y;->b:I

    .line 182
    const-string v0, "}"

    invoke-virtual {p1, v0}, Lcom/jirbo/adcolony/y;->a(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method a(Ljava/lang/String;Lcom/jirbo/adcolony/a$i;)V
    .locals 1

    .prologue
    .line 283
    iget-object v0, p0, Lcom/jirbo/adcolony/a$g;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/jirbo/adcolony/a$g;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 285
    :cond_0
    iget-object v0, p0, Lcom/jirbo/adcolony/a$g;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    return-void
.end method

.method a(Ljava/lang/String;Z)Z
    .locals 2

    .prologue
    .line 247
    iget-object v0, p0, Lcom/jirbo/adcolony/a$g;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jirbo/adcolony/a$i;

    .line 248
    if-eqz v0, :cond_1

    .line 250
    invoke-virtual {v0}, Lcom/jirbo/adcolony/a$i;->a()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/jirbo/adcolony/a$i;->g_()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    invoke-virtual {v0}, Lcom/jirbo/adcolony/a$i;->k()Z

    move-result p2

    .line 252
    :cond_1
    return p2
.end method

.method b(Ljava/lang/String;)Lcom/jirbo/adcolony/a$c;
    .locals 1

    .prologue
    .line 264
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/jirbo/adcolony/a$g;->a(Ljava/lang/String;Lcom/jirbo/adcolony/a$c;)Lcom/jirbo/adcolony/a$c;

    move-result-object v0

    .line 265
    if-eqz v0, :cond_0

    .line 266
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/jirbo/adcolony/a$c;

    invoke-direct {v0}, Lcom/jirbo/adcolony/a$c;-><init>()V

    goto :goto_0
.end method

.method b(Ljava/lang/String;D)V
    .locals 2

    .prologue
    .line 289
    new-instance v0, Lcom/jirbo/adcolony/a$e;

    invoke-direct {v0, p2, p3}, Lcom/jirbo/adcolony/a$e;-><init>(D)V

    invoke-virtual {p0, p1, v0}, Lcom/jirbo/adcolony/a$g;->a(Ljava/lang/String;Lcom/jirbo/adcolony/a$i;)V

    return-void
.end method

.method b(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 290
    new-instance v0, Lcom/jirbo/adcolony/a$b;

    invoke-direct {v0, p2}, Lcom/jirbo/adcolony/a$b;-><init>(I)V

    invoke-virtual {p0, p1, v0}, Lcom/jirbo/adcolony/a$g;->a(Ljava/lang/String;Lcom/jirbo/adcolony/a$i;)V

    return-void
.end method

.method b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 288
    new-instance v0, Lcom/jirbo/adcolony/a$f;

    invoke-direct {v0, p2}, Lcom/jirbo/adcolony/a$f;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0}, Lcom/jirbo/adcolony/a$g;->a(Ljava/lang/String;Lcom/jirbo/adcolony/a$i;)V

    return-void
.end method

.method b(Ljava/lang/String;Z)V
    .locals 1

    .prologue
    .line 291
    if-eqz p2, :cond_0

    sget-object v0, Lcom/jirbo/adcolony/a;->a:Lcom/jirbo/adcolony/a$i;

    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/jirbo/adcolony/a$g;->a(Ljava/lang/String;Lcom/jirbo/adcolony/a$i;)V

    return-void

    :cond_0
    sget-object v0, Lcom/jirbo/adcolony/a;->b:Lcom/jirbo/adcolony/a$i;

    goto :goto_0
.end method

.method c(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 271
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/jirbo/adcolony/a$g;->a(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    .line 272
    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 273
    :cond_0
    return-object v0
.end method

.method d(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 276
    const-string v0, ""

    invoke-virtual {p0, p1, v0}, Lcom/jirbo/adcolony/a$g;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method e(Ljava/lang/String;)D
    .locals 2

    .prologue
    .line 277
    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/jirbo/adcolony/a$g;->a(Ljava/lang/String;D)D

    move-result-wide v0

    return-wide v0
.end method

.method f(Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 278
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/jirbo/adcolony/a$g;->a(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method g()Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 138
    iget-object v0, p0, Lcom/jirbo/adcolony/a$g;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/jirbo/adcolony/a$g;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/jirbo/adcolony/a$g;->a:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/jirbo/adcolony/a$g;->b:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jirbo/adcolony/a$i;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/a$i;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move v0, v2

    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method g(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 279
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/jirbo/adcolony/a$g;->a(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method l()Z
    .locals 1

    .prologue
    .line 137
    const/4 v0, 0x1

    return v0
.end method

.method m()Lcom/jirbo/adcolony/a$g;
    .locals 0

    .prologue
    .line 139
    return-object p0
.end method
