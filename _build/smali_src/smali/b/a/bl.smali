.class public Lb/a/bl;
.super Lb/a/br;
.source "TBinaryProtocol.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/a/bl$a;
    }
.end annotation


# static fields
.field private static final f:Lb/a/bw;


# instance fields
.field protected a:Z

.field protected b:Z

.field protected c:I

.field protected d:Z

.field private g:[B

.field private h:[B

.field private i:[B

.field private j:[B

.field private k:[B

.field private l:[B

.field private m:[B

.field private n:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    new-instance v0, Lb/a/bw;

    invoke-direct {v0}, Lb/a/bw;-><init>()V

    sput-object v0, Lb/a/bl;->f:Lb/a/bw;

    return-void
.end method

.method public constructor <init>(Lb/a/ce;ZZ)V
    .locals 5

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x4

    const/4 v2, 0x2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 89
    invoke-direct {p0, p1}, Lb/a/br;-><init>(Lb/a/ce;)V

    .line 40
    iput-boolean v0, p0, Lb/a/bl;->a:Z

    .line 41
    iput-boolean v1, p0, Lb/a/bl;->b:Z

    .line 44
    iput-boolean v0, p0, Lb/a/bl;->d:Z

    .line 150
    new-array v0, v1, [B

    iput-object v0, p0, Lb/a/bl;->g:[B

    .line 156
    new-array v0, v2, [B

    iput-object v0, p0, Lb/a/bl;->h:[B

    .line 163
    new-array v0, v3, [B

    iput-object v0, p0, Lb/a/bl;->i:[B

    .line 172
    new-array v0, v4, [B

    iput-object v0, p0, Lb/a/bl;->j:[B

    .line 263
    new-array v0, v1, [B

    iput-object v0, p0, Lb/a/bl;->k:[B

    .line 274
    new-array v0, v2, [B

    iput-object v0, p0, Lb/a/bl;->l:[B

    .line 293
    new-array v0, v3, [B

    iput-object v0, p0, Lb/a/bl;->m:[B

    .line 312
    new-array v0, v4, [B

    iput-object v0, p0, Lb/a/bl;->n:[B

    .line 90
    iput-boolean p2, p0, Lb/a/bl;->a:Z

    .line 91
    iput-boolean p3, p0, Lb/a/bl;->b:Z

    .line 92
    return-void
.end method

.method private a([BII)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lb/a/bb;
        }
    .end annotation

    .prologue
    .line 383
    invoke-virtual {p0, p3}, Lb/a/bl;->d(I)V

    .line 384
    iget-object v0, p0, Lb/a/bl;->e:Lb/a/ce;

    invoke-virtual {v0, p1, p2, p3}, Lb/a/ce;->d([BII)I

    move-result v0

    return v0
.end method


# virtual methods
.method public a()V
    .locals 0

    .prologue
    .line 111
    return-void
.end method

.method public a(B)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lb/a/bb;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 152
    iget-object v0, p0, Lb/a/bl;->g:[B

    aput-byte p1, v0, v3

    .line 153
    iget-object v0, p0, Lb/a/bl;->e:Lb/a/ce;

    iget-object v1, p0, Lb/a/bl;->g:[B

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v3, v2}, Lb/a/ce;->b([BII)V

    .line 154
    return-void
.end method

.method public a(D)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lb/a/bb;
        }
    .end annotation

    .prologue
    .line 186
    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lb/a/bl;->a(J)V

    .line 187
    return-void
.end method

.method public a(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lb/a/bb;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 165
    iget-object v0, p0, Lb/a/bl;->i:[B

    shr-int/lit8 v1, p1, 0x18

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, v0, v3

    .line 166
    iget-object v0, p0, Lb/a/bl;->i:[B

    const/4 v1, 0x1

    shr-int/lit8 v2, p1, 0x10

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 167
    iget-object v0, p0, Lb/a/bl;->i:[B

    const/4 v1, 0x2

    shr-int/lit8 v2, p1, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 168
    iget-object v0, p0, Lb/a/bl;->i:[B

    const/4 v1, 0x3

    and-int/lit16 v2, p1, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 169
    iget-object v0, p0, Lb/a/bl;->e:Lb/a/ce;

    iget-object v1, p0, Lb/a/bl;->i:[B

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v3, v2}, Lb/a/ce;->b([BII)V

    .line 170
    return-void
.end method

.method public a(J)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lb/a/bb;
        }
    .end annotation

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x0

    const-wide/16 v4, 0xff

    .line 174
    iget-object v0, p0, Lb/a/bl;->j:[B

    const/16 v1, 0x38

    shr-long v2, p1, v1

    and-long/2addr v2, v4

    long-to-int v1, v2

    int-to-byte v1, v1

    aput-byte v1, v0, v6

    .line 175
    iget-object v0, p0, Lb/a/bl;->j:[B

    const/4 v1, 0x1

    const/16 v2, 0x30

    shr-long v2, p1, v2

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 176
    iget-object v0, p0, Lb/a/bl;->j:[B

    const/4 v1, 0x2

    const/16 v2, 0x28

    shr-long v2, p1, v2

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 177
    iget-object v0, p0, Lb/a/bl;->j:[B

    const/4 v1, 0x3

    const/16 v2, 0x20

    shr-long v2, p1, v2

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 178
    iget-object v0, p0, Lb/a/bl;->j:[B

    const/4 v1, 0x4

    const/16 v2, 0x18

    shr-long v2, p1, v2

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 179
    iget-object v0, p0, Lb/a/bl;->j:[B

    const/4 v1, 0x5

    const/16 v2, 0x10

    shr-long v2, p1, v2

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 180
    iget-object v0, p0, Lb/a/bl;->j:[B

    const/4 v1, 0x6

    shr-long v2, p1, v7

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 181
    iget-object v0, p0, Lb/a/bl;->j:[B

    const/4 v1, 0x7

    and-long v2, v4, p1

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 182
    iget-object v0, p0, Lb/a/bl;->e:Lb/a/ce;

    iget-object v1, p0, Lb/a/bl;->j:[B

    invoke-virtual {v0, v1, v6, v7}, Lb/a/ce;->b([BII)V

    .line 183
    return-void
.end method

.method public a(Lb/a/bo;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lb/a/bb;
        }
    .end annotation

    .prologue
    .line 114
    iget-byte v0, p1, Lb/a/bo;->b:B

    invoke-virtual {p0, v0}, Lb/a/bl;->a(B)V

    .line 115
    iget-short v0, p1, Lb/a/bo;->c:S

    invoke-virtual {p0, v0}, Lb/a/bl;->a(S)V

    .line 116
    return-void
.end method

.method public a(Lb/a/bp;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lb/a/bb;
        }
    .end annotation

    .prologue
    .line 133
    iget-byte v0, p1, Lb/a/bp;->a:B

    invoke-virtual {p0, v0}, Lb/a/bl;->a(B)V

    .line 134
    iget v0, p1, Lb/a/bp;->b:I

    invoke-virtual {p0, v0}, Lb/a/bl;->a(I)V

    .line 135
    return-void
.end method

.method public a(Lb/a/bq;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lb/a/bb;
        }
    .end annotation

    .prologue
    .line 125
    iget-byte v0, p1, Lb/a/bq;->a:B

    invoke-virtual {p0, v0}, Lb/a/bl;->a(B)V

    .line 126
    iget-byte v0, p1, Lb/a/bq;->b:B

    invoke-virtual {p0, v0}, Lb/a/bl;->a(B)V

    .line 127
    iget v0, p1, Lb/a/bq;->c:I

    invoke-virtual {p0, v0}, Lb/a/bl;->a(I)V

    .line 128
    return-void
.end method

.method public a(Lb/a/bw;)V
    .locals 0

    .prologue
    .line 109
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lb/a/bb;
        }
    .end annotation

    .prologue
    .line 191
    :try_start_0
    const-string v0, "UTF-8"

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 192
    array-length v1, v0

    invoke-virtual {p0, v1}, Lb/a/bl;->a(I)V

    .line 193
    iget-object v1, p0, Lb/a/bl;->e:Lb/a/ce;

    const/4 v2, 0x0

    array-length v3, v0

    invoke-virtual {v1, v0, v2, v3}, Lb/a/ce;->b([BII)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 197
    return-void

    .line 194
    :catch_0
    move-exception v0

    .line 195
    new-instance v0, Lb/a/bb;

    const-string v1, "JVM DOES NOT SUPPORT UTF-8"

    invoke-direct {v0, v1}, Lb/a/bb;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(Ljava/nio/ByteBuffer;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lb/a/bb;
        }
    .end annotation

    .prologue
    .line 200
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    sub-int/2addr v0, v1

    .line 201
    invoke-virtual {p0, v0}, Lb/a/bl;->a(I)V

    .line 202
    iget-object v1, p0, Lb/a/bl;->e:Lb/a/ce;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {v1, v2, v3, v0}, Lb/a/ce;->b([BII)V

    .line 203
    return-void
.end method

.method public a(S)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lb/a/bb;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 158
    iget-object v0, p0, Lb/a/bl;->h:[B

    shr-int/lit8 v1, p1, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, v0, v3

    .line 159
    iget-object v0, p0, Lb/a/bl;->h:[B

    const/4 v1, 0x1

    and-int/lit16 v2, p1, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 160
    iget-object v0, p0, Lb/a/bl;->e:Lb/a/ce;

    iget-object v1, p0, Lb/a/bl;->h:[B

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v3, v2}, Lb/a/ce;->b([BII)V

    .line 161
    return-void
.end method

.method public a(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lb/a/bb;
        }
    .end annotation

    .prologue
    .line 147
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lb/a/bl;->a(B)V

    .line 148
    return-void

    .line 147
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(I)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lb/a/bb;
        }
    .end annotation

    .prologue
    .line 358
    :try_start_0
    invoke-virtual {p0, p1}, Lb/a/bl;->d(I)V

    .line 359
    new-array v0, p1, [B

    .line 360
    iget-object v1, p0, Lb/a/bl;->e:Lb/a/ce;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2, p1}, Lb/a/ce;->d([BII)I

    .line 361
    new-instance v1, Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 362
    :catch_0
    move-exception v0

    .line 363
    new-instance v0, Lb/a/bb;

    const-string v1, "JVM DOES NOT SUPPORT UTF-8"

    invoke-direct {v0, v1}, Lb/a/bb;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public b()V
    .locals 0

    .prologue
    .line 118
    return-void
.end method

.method public c()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lb/a/bb;
        }
    .end annotation

    .prologue
    .line 121
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lb/a/bl;->a(B)V

    .line 122
    return-void
.end method

.method public c(I)V
    .locals 1

    .prologue
    .line 388
    iput p1, p0, Lb/a/bl;->c:I

    .line 389
    const/4 v0, 0x1

    iput-boolean v0, p0, Lb/a/bl;->d:Z

    .line 390
    return-void
.end method

.method public d()V
    .locals 0

    .prologue
    .line 130
    return-void
.end method

.method protected d(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lb/a/bb;
        }
    .end annotation

    .prologue
    .line 393
    if-gez p1, :cond_0

    .line 394
    new-instance v0, Lb/a/bs;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Negative length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lb/a/bs;-><init>(Ljava/lang/String;)V

    throw v0

    .line 396
    :cond_0
    iget-boolean v0, p0, Lb/a/bl;->d:Z

    if-eqz v0, :cond_1

    .line 397
    iget v0, p0, Lb/a/bl;->c:I

    sub-int/2addr v0, p1

    iput v0, p0, Lb/a/bl;->c:I

    .line 398
    iget v0, p0, Lb/a/bl;->c:I

    if-gez v0, :cond_1

    .line 399
    new-instance v0, Lb/a/bs;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Message length exceeded: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lb/a/bs;-><init>(Ljava/lang/String;)V

    throw v0

    .line 402
    :cond_1
    return-void
.end method

.method public e()V
    .locals 0

    .prologue
    .line 137
    return-void
.end method

.method public f()Lb/a/bw;
    .locals 1

    .prologue
    .line 228
    sget-object v0, Lb/a/bl;->f:Lb/a/bw;

    return-object v0
.end method

.method public g()V
    .locals 0

    .prologue
    .line 231
    return-void
.end method

.method public h()Lb/a/bo;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lb/a/bb;
        }
    .end annotation

    .prologue
    .line 234
    invoke-virtual {p0}, Lb/a/bl;->q()B

    move-result v1

    .line 235
    if-nez v1, :cond_0

    const/4 v0, 0x0

    .line 236
    :goto_0
    new-instance v2, Lb/a/bo;

    const-string v3, ""

    invoke-direct {v2, v3, v1, v0}, Lb/a/bo;-><init>(Ljava/lang/String;BS)V

    return-object v2

    .line 235
    :cond_0
    invoke-virtual {p0}, Lb/a/bl;->r()S

    move-result v0

    goto :goto_0
.end method

.method public i()V
    .locals 0

    .prologue
    .line 239
    return-void
.end method

.method public j()Lb/a/bq;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lb/a/bb;
        }
    .end annotation

    .prologue
    .line 242
    new-instance v0, Lb/a/bq;

    invoke-virtual {p0}, Lb/a/bl;->q()B

    move-result v1

    invoke-virtual {p0}, Lb/a/bl;->q()B

    move-result v2

    invoke-virtual {p0}, Lb/a/bl;->s()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lb/a/bq;-><init>(BBI)V

    return-object v0
.end method

.method public k()V
    .locals 0

    .prologue
    .line 245
    return-void
.end method

.method public l()Lb/a/bp;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lb/a/bb;
        }
    .end annotation

    .prologue
    .line 248
    new-instance v0, Lb/a/bp;

    invoke-virtual {p0}, Lb/a/bl;->q()B

    move-result v1

    invoke-virtual {p0}, Lb/a/bl;->s()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lb/a/bp;-><init>(BI)V

    return-object v0
.end method

.method public m()V
    .locals 0

    .prologue
    .line 251
    return-void
.end method

.method public n()Lb/a/bv;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lb/a/bb;
        }
    .end annotation

    .prologue
    .line 254
    new-instance v0, Lb/a/bv;

    invoke-virtual {p0}, Lb/a/bl;->q()B

    move-result v1

    invoke-virtual {p0}, Lb/a/bl;->s()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lb/a/bv;-><init>(BI)V

    return-object v0
.end method

.method public o()V
    .locals 0

    .prologue
    .line 257
    return-void
.end method

.method public p()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lb/a/bb;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 260
    invoke-virtual {p0}, Lb/a/bl;->q()B

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public q()B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lb/a/bb;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 265
    iget-object v0, p0, Lb/a/bl;->e:Lb/a/ce;

    invoke-virtual {v0}, Lb/a/ce;->d()I

    move-result v0

    if-lt v0, v2, :cond_0

    .line 266
    iget-object v0, p0, Lb/a/bl;->e:Lb/a/ce;

    invoke-virtual {v0}, Lb/a/ce;->b()[B

    move-result-object v0

    iget-object v1, p0, Lb/a/bl;->e:Lb/a/ce;

    invoke-virtual {v1}, Lb/a/ce;->c()I

    move-result v1

    aget-byte v0, v0, v1

    .line 267
    iget-object v1, p0, Lb/a/bl;->e:Lb/a/ce;

    invoke-virtual {v1, v2}, Lb/a/ce;->a(I)V

    .line 271
    :goto_0
    return v0

    .line 270
    :cond_0
    iget-object v0, p0, Lb/a/bl;->k:[B

    invoke-direct {p0, v0, v1, v2}, Lb/a/bl;->a([BII)I

    .line 271
    iget-object v0, p0, Lb/a/bl;->k:[B

    aget-byte v0, v0, v1

    goto :goto_0
.end method

.method public r()S
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lb/a/bb;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x2

    .line 276
    iget-object v1, p0, Lb/a/bl;->l:[B

    .line 279
    iget-object v2, p0, Lb/a/bl;->e:Lb/a/ce;

    invoke-virtual {v2}, Lb/a/ce;->d()I

    move-result v2

    if-lt v2, v3, :cond_0

    .line 280
    iget-object v0, p0, Lb/a/bl;->e:Lb/a/ce;

    invoke-virtual {v0}, Lb/a/ce;->b()[B

    move-result-object v1

    .line 281
    iget-object v0, p0, Lb/a/bl;->e:Lb/a/ce;

    invoke-virtual {v0}, Lb/a/ce;->c()I

    move-result v0

    .line 282
    iget-object v2, p0, Lb/a/bl;->e:Lb/a/ce;

    invoke-virtual {v2, v3}, Lb/a/ce;->a(I)V

    .line 287
    :goto_0
    aget-byte v2, v1, v0

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    add-int/lit8 v0, v0, 0x1

    aget-byte v0, v1, v0

    and-int/lit16 v0, v0, 0xff

    or-int/2addr v0, v2

    int-to-short v0, v0

    return v0

    .line 284
    :cond_0
    iget-object v2, p0, Lb/a/bl;->l:[B

    invoke-direct {p0, v2, v0, v3}, Lb/a/bl;->a([BII)I

    goto :goto_0
.end method

.method public s()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lb/a/bb;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x4

    .line 295
    iget-object v1, p0, Lb/a/bl;->m:[B

    .line 298
    iget-object v2, p0, Lb/a/bl;->e:Lb/a/ce;

    invoke-virtual {v2}, Lb/a/ce;->d()I

    move-result v2

    if-lt v2, v3, :cond_0

    .line 299
    iget-object v0, p0, Lb/a/bl;->e:Lb/a/ce;

    invoke-virtual {v0}, Lb/a/ce;->b()[B

    move-result-object v1

    .line 300
    iget-object v0, p0, Lb/a/bl;->e:Lb/a/ce;

    invoke-virtual {v0}, Lb/a/ce;->c()I

    move-result v0

    .line 301
    iget-object v2, p0, Lb/a/bl;->e:Lb/a/ce;

    invoke-virtual {v2, v3}, Lb/a/ce;->a(I)V

    .line 305
    :goto_0
    aget-byte v2, v1, v0

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x18

    add-int/lit8 v3, v0, 0x1

    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v2, v3

    add-int/lit8 v3, v0, 0x2

    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    add-int/lit8 v0, v0, 0x3

    aget-byte v0, v1, v0

    and-int/lit16 v0, v0, 0xff

    or-int/2addr v0, v2

    return v0

    .line 303
    :cond_0
    iget-object v2, p0, Lb/a/bl;->m:[B

    invoke-direct {p0, v2, v0, v3}, Lb/a/bl;->a([BII)I

    goto :goto_0
.end method

.method public t()J
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lb/a/bb;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/16 v7, 0x8

    .line 314
    iget-object v1, p0, Lb/a/bl;->n:[B

    .line 317
    iget-object v2, p0, Lb/a/bl;->e:Lb/a/ce;

    invoke-virtual {v2}, Lb/a/ce;->d()I

    move-result v2

    if-lt v2, v7, :cond_0

    .line 318
    iget-object v0, p0, Lb/a/bl;->e:Lb/a/ce;

    invoke-virtual {v0}, Lb/a/ce;->b()[B

    move-result-object v1

    .line 319
    iget-object v0, p0, Lb/a/bl;->e:Lb/a/ce;

    invoke-virtual {v0}, Lb/a/ce;->c()I

    move-result v0

    .line 320
    iget-object v2, p0, Lb/a/bl;->e:Lb/a/ce;

    invoke-virtual {v2, v7}, Lb/a/ce;->a(I)V

    .line 325
    :goto_0
    aget-byte v2, v1, v0

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    const/16 v4, 0x38

    shl-long/2addr v2, v4

    add-int/lit8 v4, v0, 0x1

    aget-byte v4, v1, v4

    and-int/lit16 v4, v4, 0xff

    int-to-long v4, v4

    const/16 v6, 0x30

    shl-long/2addr v4, v6

    or-long/2addr v2, v4

    add-int/lit8 v4, v0, 0x2

    aget-byte v4, v1, v4

    and-int/lit16 v4, v4, 0xff

    int-to-long v4, v4

    const/16 v6, 0x28

    shl-long/2addr v4, v6

    or-long/2addr v2, v4

    add-int/lit8 v4, v0, 0x3

    aget-byte v4, v1, v4

    and-int/lit16 v4, v4, 0xff

    int-to-long v4, v4

    const/16 v6, 0x20

    shl-long/2addr v4, v6

    or-long/2addr v2, v4

    add-int/lit8 v4, v0, 0x4

    aget-byte v4, v1, v4

    and-int/lit16 v4, v4, 0xff

    int-to-long v4, v4

    const/16 v6, 0x18

    shl-long/2addr v4, v6

    or-long/2addr v2, v4

    add-int/lit8 v4, v0, 0x5

    aget-byte v4, v1, v4

    and-int/lit16 v4, v4, 0xff

    int-to-long v4, v4

    const/16 v6, 0x10

    shl-long/2addr v4, v6

    or-long/2addr v2, v4

    add-int/lit8 v4, v0, 0x6

    aget-byte v4, v1, v4

    and-int/lit16 v4, v4, 0xff

    int-to-long v4, v4

    shl-long/2addr v4, v7

    or-long/2addr v2, v4

    add-int/lit8 v0, v0, 0x7

    aget-byte v0, v1, v0

    and-int/lit16 v0, v0, 0xff

    int-to-long v0, v0

    or-long/2addr v0, v2

    return-wide v0

    .line 322
    :cond_0
    iget-object v2, p0, Lb/a/bl;->n:[B

    invoke-direct {p0, v2, v0, v7}, Lb/a/bl;->a([BII)I

    goto :goto_0
.end method

.method public u()D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lb/a/bb;
        }
    .end annotation

    .prologue
    .line 337
    invoke-virtual {p0}, Lb/a/bl;->t()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public v()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lb/a/bb;
        }
    .end annotation

    .prologue
    .line 341
    invoke-virtual {p0}, Lb/a/bl;->s()I

    move-result v1

    .line 343
    iget-object v0, p0, Lb/a/bl;->e:Lb/a/ce;

    invoke-virtual {v0}, Lb/a/ce;->d()I

    move-result v0

    if-lt v0, v1, :cond_0

    .line 345
    :try_start_0
    new-instance v0, Ljava/lang/String;

    iget-object v2, p0, Lb/a/bl;->e:Lb/a/ce;

    invoke-virtual {v2}, Lb/a/ce;->b()[B

    move-result-object v2

    iget-object v3, p0, Lb/a/bl;->e:Lb/a/ce;

    invoke-virtual {v3}, Lb/a/ce;->c()I

    move-result v3

    const-string v4, "UTF-8"

    invoke-direct {v0, v2, v3, v1, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 346
    iget-object v2, p0, Lb/a/bl;->e:Lb/a/ce;

    invoke-virtual {v2, v1}, Lb/a/ce;->a(I)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 353
    :goto_0
    return-object v0

    .line 348
    :catch_0
    move-exception v0

    .line 349
    new-instance v0, Lb/a/bb;

    const-string v1, "JVM DOES NOT SUPPORT UTF-8"

    invoke-direct {v0, v1}, Lb/a/bb;-><init>(Ljava/lang/String;)V

    throw v0

    .line 353
    :cond_0
    invoke-virtual {p0, v1}, Lb/a/bl;->b(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public w()Ljava/nio/ByteBuffer;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lb/a/bb;
        }
    .end annotation

    .prologue
    .line 368
    invoke-virtual {p0}, Lb/a/bl;->s()I

    move-result v1

    .line 369
    invoke-virtual {p0, v1}, Lb/a/bl;->d(I)V

    .line 371
    iget-object v0, p0, Lb/a/bl;->e:Lb/a/ce;

    invoke-virtual {v0}, Lb/a/ce;->d()I

    move-result v0

    if-lt v0, v1, :cond_0

    .line 372
    iget-object v0, p0, Lb/a/bl;->e:Lb/a/ce;

    invoke-virtual {v0}, Lb/a/ce;->b()[B

    move-result-object v0

    iget-object v2, p0, Lb/a/bl;->e:Lb/a/ce;

    invoke-virtual {v2}, Lb/a/ce;->c()I

    move-result v2

    invoke-static {v0, v2, v1}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 373
    iget-object v2, p0, Lb/a/bl;->e:Lb/a/ce;

    invoke-virtual {v2, v1}, Lb/a/ce;->a(I)V

    .line 379
    :goto_0
    return-object v0

    .line 377
    :cond_0
    new-array v0, v1, [B

    .line 378
    iget-object v2, p0, Lb/a/bl;->e:Lb/a/ce;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3, v1}, Lb/a/ce;->d([BII)I

    .line 379
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    goto :goto_0
.end method
