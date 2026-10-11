.class public Lcom/mopub/dg/adapi/AdData;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final ICON_SIZE_HDPI_72X72:I = 0x4

.field public static final ICON_SIZE_LDPI_36X36:I = 0x1

.field public static final ICON_SIZE_MDPI_48X48:I = 0x2

.field public static final ICON_SIZE_TVDPI_64X64:I = 0x3

.field public static final ICON_SIZE_XHDPI_96X96:I = 0x5

.field public static final ICON_SIZE_XXHDPI_144X144:I = 0x6

.field public static final ICON_SIZE_XXXHDPI_192X192:I = 0x7


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Z

.field private k:Z

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mopub/dg/adapi/AdData;->k:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/mopub/dg/adapi/AdData;->m:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/mopub/dg/adapi/AdData;->n:Ljava/lang/String;

    return-void
.end method

.method private a(Ljava/lang/String;I)Ljava/lang/String;
    .locals 3

    :try_start_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "=w"

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    new-instance v1, Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v0, "=w"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    :cond_0
    :goto_0
    return-object p1

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/mopub/dg/d/n;->a(Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public getAdID()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mopub/dg/adapi/AdData;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getClickRecordUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mopub/dg/adapi/AdData;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getClickTrackUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mopub/dg/adapi/AdData;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getClick_track_json_urls()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mopub/dg/adapi/AdData;->m:Ljava/lang/String;

    return-object v0
.end method

.method public getContent()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mopub/dg/adapi/AdData;->h:Ljava/lang/String;

    return-object v0
.end method

.method public getDownloadUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mopub/dg/adapi/AdData;->l:Ljava/lang/String;

    return-object v0
.end method

.method public getIconUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mopub/dg/adapi/AdData;->f:Ljava/lang/String;

    return-object v0
.end method

.method public getIconUrl(I)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    :goto_0
    if-lez v0, :cond_0

    iget-object v1, p0, Lcom/mopub/dg/adapi/AdData;->f:Ljava/lang/String;

    invoke-direct {p0, v1, v0}, Lcom/mopub/dg/adapi/AdData;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0

    :pswitch_0
    const/16 v0, 0x24

    goto :goto_0

    :pswitch_1
    const/16 v0, 0x30

    goto :goto_0

    :pswitch_2
    const/16 v0, 0x40

    goto :goto_0

    :pswitch_3
    const/16 v0, 0x48

    goto :goto_0

    :pswitch_4
    const/16 v0, 0x60

    goto :goto_0

    :pswitch_5
    const/16 v0, 0x90

    goto :goto_0

    :pswitch_6
    const/16 v0, 0xc0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/mopub/dg/adapi/AdData;->f:Ljava/lang/String;

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public getImageUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mopub/dg/adapi/AdData;->i:Ljava/lang/String;

    return-object v0
.end method

.method public getImp_track_json_urls()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mopub/dg/adapi/AdData;->n:Ljava/lang/String;

    return-object v0
.end method

.method public getMarketUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mopub/dg/adapi/AdData;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mopub/dg/adapi/AdData;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mopub/dg/adapi/AdData;->g:Ljava/lang/String;

    return-object v0
.end method

.method public isIcon()Z
    .locals 1

    iget-boolean v0, p0, Lcom/mopub/dg/adapi/AdData;->k:Z

    return v0
.end method

.method public isIconCache(Landroid/content/Context;)Z
    .locals 1

    iget-object v0, p0, Lcom/mopub/dg/adapi/AdData;->f:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-static {p1}, Lcom/mopub/dg/d/g;->a(Landroid/content/Context;)Lcom/mopub/dg/d/g;

    iget-object v0, p0, Lcom/mopub/dg/adapi/AdData;->f:Ljava/lang/String;

    invoke-static {v0}, Lcom/mopub/dg/d/g;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    goto :goto_0
.end method

.method public isImageCache(Landroid/content/Context;)Z
    .locals 1

    iget-object v0, p0, Lcom/mopub/dg/adapi/AdData;->i:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-static {p1}, Lcom/mopub/dg/d/g;->a(Landroid/content/Context;)Lcom/mopub/dg/d/g;

    iget-object v0, p0, Lcom/mopub/dg/adapi/AdData;->i:Ljava/lang/String;

    invoke-static {v0}, Lcom/mopub/dg/d/g;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    goto :goto_0
.end method

.method public isPreload()Z
    .locals 1

    iget-boolean v0, p0, Lcom/mopub/dg/adapi/AdData;->j:Z

    return v0
.end method

.method public setAdID(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mopub/dg/adapi/AdData;->b:Ljava/lang/String;

    return-void
.end method

.method public setClickRecordUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mopub/dg/adapi/AdData;->d:Ljava/lang/String;

    return-void
.end method

.method public setClickTrackUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mopub/dg/adapi/AdData;->c:Ljava/lang/String;

    return-void
.end method

.method public setClick_track_json_urls(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mopub/dg/adapi/AdData;->m:Ljava/lang/String;

    return-void
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mopub/dg/adapi/AdData;->h:Ljava/lang/String;

    return-void
.end method

.method public setDownloadUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mopub/dg/adapi/AdData;->l:Ljava/lang/String;

    return-void
.end method

.method public setIcon(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/mopub/dg/adapi/AdData;->k:Z

    return-void
.end method

.method public setIconUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mopub/dg/adapi/AdData;->f:Ljava/lang/String;

    return-void
.end method

.method public setImageUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mopub/dg/adapi/AdData;->i:Ljava/lang/String;

    return-void
.end method

.method public setImp_track_json_urls(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mopub/dg/adapi/AdData;->n:Ljava/lang/String;

    return-void
.end method

.method public setMarketUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mopub/dg/adapi/AdData;->a:Ljava/lang/String;

    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mopub/dg/adapi/AdData;->e:Ljava/lang/String;

    return-void
.end method

.method public setPreload(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/mopub/dg/adapi/AdData;->j:Z

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mopub/dg/adapi/AdData;->g:Ljava/lang/String;

    return-void
.end method
