.class Lcom/jirbo/adcolony/t;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jirbo/adcolony/t$b;,
        Lcom/jirbo/adcolony/t$a;
    }
.end annotation


# static fields
.field static A:Z

.field static B:Z

.field static C:Z

.field static D:Z

.field static E:Landroid/app/Activity;

.field static F:Z

.field static G:Lcom/jirbo/adcolony/ai;

.field static H:Lcom/jirbo/adcolony/g;

.field static I:Lcom/jirbo/adcolony/ADCVideo;

.field static J:Lcom/jirbo/adcolony/ADCVideo;

.field static K:Lcom/jirbo/adcolony/t$a;

.field static L:Lcom/jirbo/adcolony/t$b;

.field static M:Z

.field static N:Z

.field static O:Z

.field static P:Z

.field static Q:I

.field static R:Ljava/lang/String;

.field static S:Ljava/lang/String;

.field static T:Ljava/lang/String;

.field static U:Ljava/lang/String;

.field static V:Ljava/lang/String;

.field static W:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static X:Lcom/jirbo/adcolony/a$c;

.field static Y:Z

.field static Z:J

.field public static a:Ljava/lang/String;

.field static aa:I

.field static ab:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field static ac:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jirbo/adcolony/q;",
            ">;"
        }
    .end annotation
.end field

.field static ad:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jirbo/adcolony/h;",
            ">;"
        }
    .end annotation
.end field

.field static ae:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jirbo/adcolony/o;",
            ">;"
        }
    .end annotation
.end field

.field static af:Ljava/util/HashMap;

.field public static final b:Ljava/lang/String;

.field static c:Lcom/jirbo/adcolony/af;

.field static d:Z

.field static e:I

.field static f:Z

.field static g:Z

.field static h:D

.field static i:Z

.field static j:Z

.field static k:Lcom/jirbo/adcolony/g;

.field static l:Z

.field static m:Z

.field static n:Z

.field static o:Z

.field static p:Z

.field static q:Z

.field static r:Z

.field static s:Z

.field static t:Z

.field static u:I

.field static v:D

.field static w:Z

.field static x:Z

.field static y:Z

.field static z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 43
    sput-object v0, Lcom/jirbo/adcolony/t;->a:Ljava/lang/String;

    .line 44
    sput-object v0, Lcom/jirbo/adcolony/t;->b:Ljava/lang/String;

    .line 57
    new-instance v0, Lcom/jirbo/adcolony/af;

    invoke-direct {v0}, Lcom/jirbo/adcolony/af;-><init>()V

    sput-object v0, Lcom/jirbo/adcolony/t;->c:Lcom/jirbo/adcolony/af;

    .line 61
    const/4 v0, 0x2

    sput v0, Lcom/jirbo/adcolony/t;->e:I

    .line 84
    sput-boolean v2, Lcom/jirbo/adcolony/t;->s:Z

    .line 85
    sput-boolean v3, Lcom/jirbo/adcolony/t;->t:Z

    .line 86
    sput v2, Lcom/jirbo/adcolony/t;->u:I

    .line 87
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    sput-wide v0, Lcom/jirbo/adcolony/t;->v:D

    .line 88
    sput-boolean v2, Lcom/jirbo/adcolony/t;->w:Z

    .line 89
    sput-boolean v2, Lcom/jirbo/adcolony/t;->x:Z

    .line 90
    sput-boolean v2, Lcom/jirbo/adcolony/t;->y:Z

    .line 91
    sput-boolean v2, Lcom/jirbo/adcolony/t;->z:Z

    .line 92
    sput-boolean v3, Lcom/jirbo/adcolony/t;->A:Z

    .line 95
    sput-boolean v2, Lcom/jirbo/adcolony/t;->D:Z

    .line 117
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/jirbo/adcolony/t;->W:Ljava/util/ArrayList;

    .line 119
    new-instance v0, Lcom/jirbo/adcolony/a$c;

    invoke-direct {v0}, Lcom/jirbo/adcolony/a$c;-><init>()V

    sput-object v0, Lcom/jirbo/adcolony/t;->X:Lcom/jirbo/adcolony/a$c;

    .line 124
    sput v2, Lcom/jirbo/adcolony/t;->aa:I

    .line 126
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/jirbo/adcolony/t;->ab:Ljava/util/ArrayList;

    .line 127
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/jirbo/adcolony/t;->ac:Ljava/util/ArrayList;

    .line 128
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/jirbo/adcolony/t;->ad:Ljava/util/ArrayList;

    .line 129
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/jirbo/adcolony/t;->ae:Ljava/util/ArrayList;

    return-void
.end method

.method static a(I)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 219
    sput p0, Lcom/jirbo/adcolony/t;->e:I

    .line 221
    sget-object v3, Lcom/jirbo/adcolony/al;->a:Lcom/jirbo/adcolony/al;

    if-gtz p0, :cond_3

    move v0, v1

    :goto_0
    iput-boolean v0, v3, Lcom/jirbo/adcolony/al;->f:Z

    .line 222
    sget-object v3, Lcom/jirbo/adcolony/al;->b:Lcom/jirbo/adcolony/al;

    if-gt p0, v1, :cond_4

    move v0, v1

    :goto_1
    iput-boolean v0, v3, Lcom/jirbo/adcolony/al;->f:Z

    .line 223
    sget-object v3, Lcom/jirbo/adcolony/al;->c:Lcom/jirbo/adcolony/al;

    const/4 v0, 0x2

    if-gt p0, v0, :cond_5

    move v0, v1

    :goto_2
    iput-boolean v0, v3, Lcom/jirbo/adcolony/al;->f:Z

    .line 224
    sget-object v0, Lcom/jirbo/adcolony/al;->d:Lcom/jirbo/adcolony/al;

    const/4 v3, 0x3

    if-gt p0, v3, :cond_0

    move v2, v1

    :cond_0
    iput-boolean v2, v0, Lcom/jirbo/adcolony/al;->f:Z

    .line 225
    if-gtz p0, :cond_1

    const-string v0, "DEVELOPER LOGGING ENABLED"

    invoke-static {v0}, Lcom/jirbo/adcolony/t;->b(Ljava/lang/String;)V

    .line 226
    :cond_1
    if-gt p0, v1, :cond_2

    const-string v0, "DEBUG LOGGING ENABLED"

    invoke-static {v0}, Lcom/jirbo/adcolony/t;->c(Ljava/lang/String;)V

    .line 227
    :cond_2
    return-void

    :cond_3
    move v0, v2

    .line 221
    goto :goto_0

    :cond_4
    move v0, v2

    .line 222
    goto :goto_1

    :cond_5
    move v0, v2

    .line 223
    goto :goto_2
.end method

.method static a(ILjava/lang/String;)V
    .locals 1

    .prologue
    .line 236
    sget v0, Lcom/jirbo/adcolony/t;->e:I

    if-gt v0, p0, :cond_0

    .line 238
    packed-switch p0, :pswitch_data_0

    .line 254
    :cond_0
    :goto_0
    return-void

    .line 242
    :pswitch_0
    const-string v0, "AdColony"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 246
    :pswitch_1
    const-string v0, "AdColony"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 250
    :pswitch_2
    const-string v0, "AdColony"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 238
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method static a(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 135
    sget-object v0, Lcom/jirbo/adcolony/t;->E:Landroid/app/Activity;

    if-eq p0, v0, :cond_0

    if-nez p0, :cond_1

    .line 143
    :cond_0
    :goto_0
    return-void

    .line 137
    :cond_1
    sput-object p0, Lcom/jirbo/adcolony/t;->E:Landroid/app/Activity;

    .line 138
    new-instance v0, Lcom/jirbo/adcolony/t$a;

    invoke-direct {v0}, Lcom/jirbo/adcolony/t$a;-><init>()V

    sput-object v0, Lcom/jirbo/adcolony/t;->K:Lcom/jirbo/adcolony/t$a;

    .line 139
    new-instance v0, Lcom/jirbo/adcolony/t$b;

    invoke-direct {v0}, Lcom/jirbo/adcolony/t$b;-><init>()V

    sput-object v0, Lcom/jirbo/adcolony/t;->L:Lcom/jirbo/adcolony/t$b;

    .line 142
    sget-boolean v0, Lcom/jirbo/adcolony/t;->j:Z

    if-nez v0, :cond_0

    new-instance v0, Lcom/jirbo/adcolony/ap$a;

    invoke-direct {v0}, Lcom/jirbo/adcolony/ap$a;-><init>()V

    goto :goto_0
.end method

.method static a(Lcom/jirbo/adcolony/aj;)V
    .locals 1

    .prologue
    .line 416
    sget-object v0, Lcom/jirbo/adcolony/t;->c:Lcom/jirbo/adcolony/af;

    invoke-virtual {v0, p0}, Lcom/jirbo/adcolony/af;->a(Lcom/jirbo/adcolony/aj;)V

    .line 417
    return-void
.end method

.method static a(Lcom/jirbo/adcolony/g;)V
    .locals 0

    .prologue
    .line 317
    sput-object p0, Lcom/jirbo/adcolony/t;->k:Lcom/jirbo/adcolony/g;

    .line 318
    return-void
.end method

.method static a(Ljava/lang/RuntimeException;)V
    .locals 1

    .prologue
    .line 206
    const/4 v0, 0x1

    sput-boolean v0, Lcom/jirbo/adcolony/t;->F:Z

    .line 207
    invoke-virtual {p0}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/jirbo/adcolony/t;->d(Ljava/lang/String;)V

    .line 208
    invoke-virtual {p0}, Ljava/lang/RuntimeException;->printStackTrace()V

    .line 209
    return-void
.end method

.method static a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 200
    const/4 v0, 0x1

    sput-boolean v0, Lcom/jirbo/adcolony/t;->F:Z

    .line 201
    invoke-static {p0}, Lcom/jirbo/adcolony/t;->d(Ljava/lang/String;)V

    .line 202
    return-void
.end method

.method static a(Ljava/lang/String;Lcom/jirbo/adcolony/g;)V
    .locals 2

    .prologue
    .line 275
    sget-object v0, Lcom/jirbo/adcolony/t;->c:Lcom/jirbo/adcolony/af;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1, p1}, Lcom/jirbo/adcolony/af;->a(Ljava/lang/String;Ljava/lang/String;Lcom/jirbo/adcolony/g;)V

    return-void
.end method

.method static a(Ljava/lang/String;Ljava/lang/String;Lcom/jirbo/adcolony/g;)V
    .locals 1

    .prologue
    .line 276
    sget-object v0, Lcom/jirbo/adcolony/t;->c:Lcom/jirbo/adcolony/af;

    invoke-virtual {v0, p0, p1, p2}, Lcom/jirbo/adcolony/af;->a(Ljava/lang/String;Ljava/lang/String;Lcom/jirbo/adcolony/g;)V

    return-void
.end method

.method static a()Z
    .locals 1

    .prologue
    .line 164
    sget-object v0, Lcom/jirbo/adcolony/t;->E:Landroid/app/Activity;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 165
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static b()Landroid/app/Activity;
    .locals 2

    .prologue
    .line 170
    sget-object v0, Lcom/jirbo/adcolony/t;->E:Landroid/app/Activity;

    if-nez v0, :cond_0

    .line 172
    new-instance v0, Lcom/jirbo/adcolony/j;

    const-string v1, "AdColony.configure() must be called before any other AdColony methods. If you have called AdColony.configure(), the Activity reference you passed in via AdColony.configure()/AdColony.resume() is null OR you have not called AdColony.resume() as appropriate."

    invoke-direct {v0, v1}, Lcom/jirbo/adcolony/j;-><init>(Ljava/lang/String;)V

    throw v0

    .line 176
    :cond_0
    sget-object v0, Lcom/jirbo/adcolony/t;->E:Landroid/app/Activity;

    return-object v0
.end method

.method static b(Landroid/app/Activity;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 148
    sput-boolean v1, Lcom/jirbo/adcolony/t;->m:Z

    .line 149
    invoke-static {p0}, Lcom/jirbo/adcolony/t;->a(Landroid/app/Activity;)V

    .line 150
    const/4 v0, 0x0

    sput-object v0, Lcom/jirbo/adcolony/t;->G:Lcom/jirbo/adcolony/ai;

    .line 151
    invoke-static {}, Lcom/jirbo/adcolony/ah;->i()Z

    move-result v0

    sput-boolean v0, Lcom/jirbo/adcolony/t;->d:Z

    .line 153
    sget-boolean v0, Lcom/jirbo/adcolony/t;->F:Z

    if-eqz v0, :cond_0

    .line 156
    sput-boolean v1, Lcom/jirbo/adcolony/t;->F:Z

    .line 157
    sput-boolean v1, Lcom/jirbo/adcolony/t;->l:Z

    .line 158
    new-instance v0, Lcom/jirbo/adcolony/af;

    invoke-direct {v0}, Lcom/jirbo/adcolony/af;-><init>()V

    sput-object v0, Lcom/jirbo/adcolony/t;->c:Lcom/jirbo/adcolony/af;

    .line 160
    :cond_0
    return-void
.end method

.method static b(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 256
    const/4 v0, 0x0

    invoke-static {v0, p0}, Lcom/jirbo/adcolony/t;->a(ILjava/lang/String;)V

    return-void
.end method

.method static c(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 257
    const/4 v0, 0x1

    invoke-static {v0, p0}, Lcom/jirbo/adcolony/t;->a(ILjava/lang/String;)V

    return-void
.end method

.method static c()Z
    .locals 1

    .prologue
    .line 184
    sget-boolean v0, Lcom/jirbo/adcolony/t;->F:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/jirbo/adcolony/t;->n:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/jirbo/adcolony/t;->l:Z

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static d(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 259
    const/4 v0, 0x3

    invoke-static {v0, p0}, Lcom/jirbo/adcolony/t;->a(ILjava/lang/String;)V

    return-void
.end method

.method static d()Z
    .locals 1

    .prologue
    .line 192
    sget-boolean v0, Lcom/jirbo/adcolony/t;->l:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/jirbo/adcolony/t;->F:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/jirbo/adcolony/t;->n:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static e(Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 268
    sget-object v0, Lcom/jirbo/adcolony/t;->c:Lcom/jirbo/adcolony/af;

    invoke-virtual {v0, p0}, Lcom/jirbo/adcolony/af;->a(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static e()V
    .locals 0

    .prologue
    .line 213
    invoke-static {}, Lcom/jirbo/adcolony/t;->b()Landroid/app/Activity;

    .line 214
    return-void
.end method

.method static f()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v4, 0x0

    .line 281
    sget-object v0, Lcom/jirbo/adcolony/t;->c:Lcom/jirbo/adcolony/af;

    if-nez v0, :cond_1

    .line 313
    :cond_0
    return-void

    .line 282
    :cond_1
    sget-object v0, Lcom/jirbo/adcolony/t;->ad:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 283
    sget-object v0, Lcom/jirbo/adcolony/t;->af:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 285
    sget-object v0, Lcom/jirbo/adcolony/t;->af:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 286
    :cond_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 288
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 289
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 290
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/jirbo/adcolony/f;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v2, Lcom/jirbo/adcolony/t;->c:Lcom/jirbo/adcolony/af;

    .line 291
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1, v8, v4}, Lcom/jirbo/adcolony/af;->b(Ljava/lang/String;ZZ)Z

    move-result v1

    move v2, v1

    .line 294
    :goto_0
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/jirbo/adcolony/f;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    sget-object v1, Lcom/jirbo/adcolony/t;->E:Landroid/app/Activity;

    if-eqz v1, :cond_4

    .line 296
    new-instance v2, Lcom/jirbo/adcolony/o;

    invoke-static {}, Lcom/jirbo/adcolony/t;->b()Landroid/app/Activity;

    move-result-object v5

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/16 v7, 0x12c

    invoke-direct {v2, v5, v1, v7, v8}, Lcom/jirbo/adcolony/o;-><init>(Landroid/app/Activity;Ljava/lang/String;IZ)V

    .line 297
    invoke-virtual {v2, v8}, Lcom/jirbo/adcolony/o;->b(Z)Z

    move-result v2

    move v5, v2

    .line 301
    :goto_1
    if-eq v3, v5, :cond_2

    .line 304
    sget-object v1, Lcom/jirbo/adcolony/t;->af:Ljava/util/HashMap;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v3, v4

    .line 307
    :goto_2
    sget-object v1, Lcom/jirbo/adcolony/t;->ad:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v3, v1, :cond_2

    .line 309
    sget-object v1, Lcom/jirbo/adcolony/t;->ad:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jirbo/adcolony/h;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1, v5, v2}, Lcom/jirbo/adcolony/h;->a(ZLjava/lang/String;)V

    .line 307
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_2

    .line 291
    :cond_3
    sget-object v2, Lcom/jirbo/adcolony/t;->c:Lcom/jirbo/adcolony/af;

    .line 292
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1, v8, v4}, Lcom/jirbo/adcolony/af;->a(Ljava/lang/String;ZZ)Z

    move-result v1

    move v2, v1

    goto :goto_0

    .line 299
    :cond_4
    sget-object v1, Lcom/jirbo/adcolony/t;->E:Landroid/app/Activity;

    if-nez v1, :cond_5

    move v5, v4

    goto :goto_1

    :cond_5
    move v5, v2

    goto :goto_1
.end method

.method static f(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 269
    sget-object v0, Lcom/jirbo/adcolony/t;->c:Lcom/jirbo/adcolony/af;

    invoke-virtual {v0, p0}, Lcom/jirbo/adcolony/af;->b(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static g(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 270
    sget-object v0, Lcom/jirbo/adcolony/t;->c:Lcom/jirbo/adcolony/af;

    invoke-virtual {v0, p0}, Lcom/jirbo/adcolony/af;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
