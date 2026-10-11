.class public Lb/a/ag;
.super Lb/a/be;
.source "PropertyValue.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/a/ag$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lb/a/be",
        "<",
        "Lb/a/ag;",
        "Lb/a/ag$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lb/a/ag$a;",
            "Lb/a/bg;",
            ">;"
        }
    .end annotation
.end field

.field private static final d:Lb/a/bw;

.field private static final e:Lb/a/bo;

.field private static final f:Lb/a/bo;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/16 v7, 0xb

    const/16 v6, 0xa

    const/4 v5, 0x3

    .line 33
    new-instance v0, Lb/a/bw;

    const-string v1, "PropertyValue"

    invoke-direct {v0, v1}, Lb/a/bw;-><init>(Ljava/lang/String;)V

    sput-object v0, Lb/a/ag;->d:Lb/a/bw;

    .line 34
    new-instance v0, Lb/a/bo;

    const-string v1, "string_value"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v7, v2}, Lb/a/bo;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lb/a/ag;->e:Lb/a/bo;

    .line 35
    new-instance v0, Lb/a/bo;

    const-string v1, "long_value"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v6, v2}, Lb/a/bo;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lb/a/ag;->f:Lb/a/bo;

    .line 100
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lb/a/ag$a;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 101
    sget-object v1, Lb/a/ag$a;->a:Lb/a/ag$a;

    new-instance v2, Lb/a/bg;

    const-string v3, "string_value"

    new-instance v4, Lb/a/bh;

    invoke-direct {v4, v7}, Lb/a/bh;-><init>(B)V

    invoke-direct {v2, v3, v5, v4}, Lb/a/bg;-><init>(Ljava/lang/String;BLb/a/bh;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    sget-object v1, Lb/a/ag$a;->b:Lb/a/ag$a;

    new-instance v2, Lb/a/bg;

    const-string v3, "long_value"

    new-instance v4, Lb/a/bh;

    invoke-direct {v4, v6}, Lb/a/bh;-><init>(B)V

    invoke-direct {v2, v3, v5, v4}, Lb/a/bg;-><init>(Ljava/lang/String;BLb/a/bh;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lb/a/ag;->a:Ljava/util/Map;

    .line 106
    const-class v0, Lb/a/ag;

    sget-object v1, Lb/a/ag;->a:Ljava/util/Map;

    invoke-static {v0, v1}, Lb/a/bg;->a(Ljava/lang/Class;Ljava/util/Map;)V

    .line 107
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 110
    invoke-direct {p0}, Lb/a/be;-><init>()V

    .line 111
    return-void
.end method


# virtual methods
.method protected a(S)Lb/a/ag$a;
    .locals 1

    .prologue
    .line 258
    invoke-static {p1}, Lb/a/ag$a;->b(I)Lb/a/ag$a;

    move-result-object v0

    return-object v0
.end method

.method protected a(Lb/a/ag$a;)Lb/a/bo;
    .locals 3

    .prologue
    .line 241
    sget-object v0, Lb/a/ag$1;->a:[I

    invoke-virtual {p1}, Lb/a/ag$a;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 247
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown field id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 243
    :pswitch_0
    sget-object v0, Lb/a/ag;->e:Lb/a/bo;

    .line 245
    :goto_0
    return-object v0

    :pswitch_1
    sget-object v0, Lb/a/ag;->f:Lb/a/bo;

    goto :goto_0

    .line 241
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected bridge synthetic a(Lb/a/bc;)Lb/a/bo;
    .locals 1

    .prologue
    .line 32
    check-cast p1, Lb/a/ag$a;

    invoke-virtual {p0, p1}, Lb/a/ag;->a(Lb/a/ag$a;)Lb/a/bo;

    move-result-object v0

    return-object v0
.end method

.method protected a()Lb/a/bw;
    .locals 1

    .prologue
    .line 253
    sget-object v0, Lb/a/ag;->d:Lb/a/bw;

    return-object v0
.end method

.method protected a(Lb/a/br;Lb/a/bo;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lb/a/bb;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 157
    iget-short v1, p2, Lb/a/bo;->c:S

    invoke-static {v1}, Lb/a/ag$a;->a(I)Lb/a/ag$a;

    move-result-object v1

    .line 158
    if-eqz v1, :cond_0

    .line 159
    sget-object v2, Lb/a/ag$1;->a:[I

    invoke-virtual {v1}, Lb/a/ag$a;->ordinal()I

    move-result v1

    aget v1, v2, v1

    packed-switch v1, :pswitch_data_0

    .line 179
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "setField wasn\'t null, but didn\'t match any of the case statements!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 161
    :pswitch_0
    iget-byte v1, p2, Lb/a/bo;->b:B

    sget-object v2, Lb/a/ag;->e:Lb/a/bo;

    iget-byte v2, v2, Lb/a/bo;->b:B

    if-ne v1, v2, :cond_1

    .line 163
    invoke-virtual {p1}, Lb/a/br;->v()Ljava/lang/String;

    move-result-object v0

    .line 182
    :cond_0
    :goto_0
    return-object v0

    .line 166
    :cond_1
    iget-byte v1, p2, Lb/a/bo;->b:B

    invoke-static {p1, v1}, Lb/a/bu;->a(Lb/a/br;B)V

    goto :goto_0

    .line 170
    :pswitch_1
    iget-byte v1, p2, Lb/a/bo;->b:B

    sget-object v2, Lb/a/ag;->f:Lb/a/bo;

    iget-byte v2, v2, Lb/a/bo;->b:B

    if-ne v1, v2, :cond_2

    .line 172
    invoke-virtual {p1}, Lb/a/br;->t()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0

    .line 175
    :cond_2
    iget-byte v1, p2, Lb/a/bo;->b:B

    invoke-static {p1, v1}, Lb/a/bu;->a(Lb/a/br;B)V

    goto :goto_0

    .line 159
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected a(Lb/a/br;S)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lb/a/bb;
        }
    .end annotation

    .prologue
    .line 204
    invoke-static {p2}, Lb/a/ag$a;->a(I)Lb/a/ag$a;

    move-result-object v0

    .line 205
    if-eqz v0, :cond_0

    .line 206
    sget-object v1, Lb/a/ag$1;->a:[I

    invoke-virtual {v0}, Lb/a/ag$a;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 216
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "setField wasn\'t null, but didn\'t match any of the case statements!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 209
    :pswitch_0
    invoke-virtual {p1}, Lb/a/br;->v()Ljava/lang/String;

    move-result-object v0

    .line 214
    :goto_0
    return-object v0

    .line 213
    :pswitch_1
    invoke-virtual {p1}, Lb/a/br;->t()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0

    .line 219
    :cond_0
    new-instance v0, Lb/a/bs;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Couldn\'t find a field with field id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lb/a/bs;-><init>(Ljava/lang/String;)V

    throw v0

    .line 206
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public a(J)V
    .locals 1

    .prologue
    .line 289
    sget-object v0, Lb/a/ag$a;->b:Lb/a/ag$a;

    iput-object v0, p0, Lb/a/ag;->c:Lb/a/bc;

    .line 290
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lb/a/ag;->b:Ljava/lang/Object;

    .line 291
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 275
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 276
    :cond_0
    sget-object v0, Lb/a/ag$a;->a:Lb/a/ag$a;

    iput-object v0, p0, Lb/a/ag;->c:Lb/a/bc;

    .line 277
    iput-object p1, p0, Lb/a/ag;->b:Ljava/lang/Object;

    .line 278
    return-void
.end method

.method public a(Lb/a/ag;)Z
    .locals 2

    .prologue
    .line 312
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lb/a/ag;->b()Lb/a/bc;

    move-result-object v0

    invoke-virtual {p1}, Lb/a/ag;->b()Lb/a/bc;

    move-result-object v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lb/a/ag;->c()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1}, Lb/a/ag;->c()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected synthetic b(S)Lb/a/bc;
    .locals 1

    .prologue
    .line 32
    invoke-virtual {p0, p1}, Lb/a/ag;->a(S)Lb/a/ag$a;

    move-result-object v0

    return-object v0
.end method

.method protected c(Lb/a/br;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lb/a/bb;
        }
    .end annotation

    .prologue
    .line 188
    sget-object v1, Lb/a/ag$1;->a:[I

    iget-object v0, p0, Lb/a/ag;->c:Lb/a/bc;

    check-cast v0, Lb/a/ag$a;

    invoke-virtual {v0}, Lb/a/ag$a;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 198
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot write union with unknown field "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lb/a/ag;->c:Lb/a/bc;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 190
    :pswitch_0
    iget-object v0, p0, Lb/a/ag;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 191
    invoke-virtual {p1, v0}, Lb/a/br;->a(Ljava/lang/String;)V

    .line 196
    :goto_0
    return-void

    .line 194
    :pswitch_1
    iget-object v0, p0, Lb/a/ag;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    .line 195
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lb/a/br;->a(J)V

    goto :goto_0

    .line 188
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected d(Lb/a/br;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lb/a/bb;
        }
    .end annotation

    .prologue
    .line 225
    sget-object v1, Lb/a/ag$1;->a:[I

    iget-object v0, p0, Lb/a/ag;->c:Lb/a/bc;

    check-cast v0, Lb/a/ag$a;

    invoke-virtual {v0}, Lb/a/ag$a;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 235
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot write union with unknown field "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lb/a/ag;->c:Lb/a/bc;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 227
    :pswitch_0
    iget-object v0, p0, Lb/a/ag;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 228
    invoke-virtual {p1, v0}, Lb/a/br;->a(Ljava/lang/String;)V

    .line 233
    :goto_0
    return-void

    .line 231
    :pswitch_1
    iget-object v0, p0, Lb/a/ag;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    .line 232
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lb/a/br;->a(J)V

    goto :goto_0

    .line 225
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 304
    instance-of v0, p1, Lb/a/ag;

    if-eqz v0, :cond_0

    .line 305
    check-cast p1, Lb/a/ag;

    invoke-virtual {p0, p1}, Lb/a/ag;->a(Lb/a/ag;)Z

    move-result v0

    .line 307
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 330
    const/4 v0, 0x0

    return v0
.end method
