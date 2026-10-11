.class public Lcom/cmcm/dmc/sdk/g/j$b;
.super Ljava/util/zip/GZIPOutputStream;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cmcm/dmc/sdk/g/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field private a:I


# direct methods
.method private constructor <init>(Ljava/io/OutputStream;)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    return-void
.end method

.method public static a(Ljava/io/File;)Lcom/cmcm/dmc/sdk/g/j$b;
    .locals 2

    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    new-instance v1, Lcom/cmcm/dmc/sdk/g/j$b;

    invoke-direct {v1, v0}, Lcom/cmcm/dmc/sdk/g/j$b;-><init>(Ljava/io/OutputStream;)V

    return-object v1
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcom/cmcm/dmc/sdk/g/j$b;->a:I

    return v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const/4 v1, 0x0

    array-length v2, v0

    invoke-virtual {p0, v0, v1, v2}, Lcom/cmcm/dmc/sdk/g/j$b;->write([BII)V

    return-void
.end method

.method public write([BII)V
    .locals 1

    iget v0, p0, Lcom/cmcm/dmc/sdk/g/j$b;->a:I

    add-int/2addr v0, p3

    iput v0, p0, Lcom/cmcm/dmc/sdk/g/j$b;->a:I

    invoke-super {p0, p1, p2, p3}, Ljava/util/zip/GZIPOutputStream;->write([BII)V

    return-void
.end method
