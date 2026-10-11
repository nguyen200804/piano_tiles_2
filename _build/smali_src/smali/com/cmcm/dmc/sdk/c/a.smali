.class public Lcom/cmcm/dmc/sdk/c/a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/cmcm/dmc/sdk/c/a/a;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/io/File;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/cmcm/dmc/sdk/c/a;->a:Ljava/lang/String;

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "media.txt"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/cmcm/dmc/sdk/c/a;->b:Ljava/io/File;

    return-void
.end method

.method private a(Ljava/util/Properties;)Ljava/lang/String;
    .locals 2

    :try_start_0
    new-instance v0, Ljava/io/FileReader;

    iget-object v1, p0, Lcom/cmcm/dmc/sdk/c/a;->b:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-virtual {p1, v0}, Ljava/util/Properties;->load(Ljava/io/Reader;)V

    invoke-virtual {v0}, Ljava/io/FileReader;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v0, p0, Lcom/cmcm/dmc/sdk/c/a;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v0, ""

    goto :goto_0
.end method

.method private a(Ljava/util/Properties;Lorg/json/JSONArray;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Properties;",
            "Lorg/json/JSONArray;",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cmcm/dmc/sdk/c/a/a;

    invoke-virtual {v0}, Lcom/cmcm/dmc/sdk/c/a/a;->a()J

    move-result-wide v2

    invoke-virtual {p2, v2, v3}, Lorg/json/JSONArray;->put(J)Lorg/json/JSONArray;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/cmcm/dmc/sdk/c/a;->a:Ljava/lang/String;

    invoke-virtual {p2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    :try_start_0
    const-string v0, "forTest"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "saveId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/io/FileWriter;

    iget-object v1, p0, Lcom/cmcm/dmc/sdk/c/a;->b:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Ljava/util/Properties;->store(Ljava/io/Writer;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/FileWriter;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-void

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method private a(Lorg/json/JSONArray;Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    const/4 v2, 0x0

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v4

    move v3, v2

    :goto_0
    if-ge v3, v4, :cond_2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v5

    move v1, v2

    :goto_1
    if-ge v1, v5, :cond_0

    invoke-virtual {p1, v3}, Lorg/json/JSONArray;->optLong(I)J

    move-result-wide v6

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cmcm/dmc/sdk/c/a/a;

    invoke-virtual {v0}, Lcom/cmcm/dmc/sdk/c/a/a;->a()J

    move-result-wide v8

    cmp-long v0, v8, v6

    if-nez v0, :cond_1

    const-wide/16 v6, 0x0

    cmp-long v0, v8, v6

    if-eqz v0, :cond_1

    invoke-interface {p2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_2
    return-void
.end method

.method private b(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_2

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cmcm/dmc/sdk/c/a/a;

    add-int/lit8 v1, v2, 0x1

    move v3, v1

    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v3, v1, :cond_1

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cmcm/dmc/sdk/c/a/a;

    invoke-virtual {v1}, Lcom/cmcm/dmc/sdk/c/a/a;->a()J

    move-result-wide v4

    invoke-virtual {v0}, Lcom/cmcm/dmc/sdk/c/a/a;->a()J

    move-result-wide v6

    cmp-long v1, v4, v6

    if-nez v1, :cond_0

    invoke-interface {p1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v3, v3, -0x1

    :cond_0
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/cmcm/dmc/sdk/c/a;->b:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/cmcm/dmc/sdk/c/a;->b:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/cmcm/dmc/sdk/c/a;->b(Ljava/util/List;)V

    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    invoke-direct {p0, v0, v1, p1}, Lcom/cmcm/dmc/sdk/c/a;->a(Ljava/util/Properties;Lorg/json/JSONArray;Ljava/util/List;)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_2
    new-instance v1, Ljava/util/Properties;

    invoke-direct {v1}, Ljava/util/Properties;-><init>()V

    invoke-direct {p0, v1}, Lcom/cmcm/dmc/sdk/c/a;->a(Ljava/util/Properties;)Ljava/lang/String;

    move-result-object v2

    const-string v0, "forTest"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "findIds:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, v2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, p1}, Lcom/cmcm/dmc/sdk/c/a;->a(Lorg/json/JSONArray;Ljava/util/List;)V

    :goto_1
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-direct {p0, v1, v0, p1}, Lcom/cmcm/dmc/sdk/c/a;->a(Ljava/util/Properties;Lorg/json/JSONArray;Ljava/util/List;)V

    goto :goto_0

    :cond_3
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    invoke-direct {p0, p1}, Lcom/cmcm/dmc/sdk/c/a;->b(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1
.end method
