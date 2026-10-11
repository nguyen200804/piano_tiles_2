.class public Lcom/cmplay/base/util/a/a;
.super Ljava/lang/Object;
.source "ApkDownloadManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cmplay/base/util/a/a$a;
    }
.end annotation


# static fields
.field private static a:Lcom/cmplay/base/util/a/a;


# instance fields
.field private b:Landroid/content/Context;

.field private c:Z

.field private d:Landroid/app/DownloadManager;

.field private e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cmplay/base/util/a/a$a;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/lang/String;

.field private g:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const/4 v0, 0x0

    sput-object v0, Lcom/cmplay/base/util/a/a;->a:Lcom/cmplay/base/util/a/a;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cmplay/base/util/a/a;->c:Z

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cmplay/base/util/a/a;->e:Ljava/util/ArrayList;

    .line 121
    new-instance v0, Lcom/cmplay/base/util/a/a$1;

    invoke-direct {v0, p0}, Lcom/cmplay/base/util/a/a$1;-><init>(Lcom/cmplay/base/util/a/a;)V

    iput-object v0, p0, Lcom/cmplay/base/util/a/a;->g:Landroid/content/BroadcastReceiver;

    .line 31
    invoke-virtual {p0, p1}, Lcom/cmplay/base/util/a/a;->b(Landroid/content/Context;)V

    .line 32
    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/cmplay/base/util/a/a;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/cmplay/base/util/a/a;->a:Lcom/cmplay/base/util/a/a;

    if-nez v0, :cond_0

    .line 36
    new-instance v0, Lcom/cmplay/base/util/a/a;

    invoke-direct {v0, p0}, Lcom/cmplay/base/util/a/a;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/cmplay/base/util/a/a;->a:Lcom/cmplay/base/util/a/a;

    .line 38
    :cond_0
    sget-object v0, Lcom/cmplay/base/util/a/a;->a:Lcom/cmplay/base/util/a/a;

    return-object v0
.end method

.method static synthetic a(Lcom/cmplay/base/util/a/a;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/cmplay/base/util/a/a;->e:Ljava/util/ArrayList;

    return-object v0
.end method

.method private a(J)V
    .locals 3

    .prologue
    .line 110
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 111
    iget-object v1, p0, Lcom/cmplay/base/util/a/a;->d:Landroid/app/DownloadManager;

    invoke-virtual {v1, p1, p2}, Landroid/app/DownloadManager;->getUriForDownloadedFile(J)Landroid/net/Uri;

    move-result-object v1

    .line 112
    const-string v2, "application/vnd.android.package-archive"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 113
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 115
    :try_start_0
    iget-object v1, p0, Lcom/cmplay/base/util/a/a;->b:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    :goto_0
    return-void

    .line 116
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic a(Lcom/cmplay/base/util/a/a;J)V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Lcom/cmplay/base/util/a/a;->a(J)V

    return-void
.end method

.method private a(I)Z
    .locals 10

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 163
    .line 164
    iget-object v0, p0, Lcom/cmplay/base/util/a/a;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v2

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cmplay/base/util/a/a$a;

    .line 165
    if-eqz v0, :cond_2

    iget v5, v0, Lcom/cmplay/base/util/a/a$a;->a:I

    if-ne v5, p1, :cond_2

    .line 166
    iget-wide v6, v0, Lcom/cmplay/base/util/a/a$a;->b:J

    .line 167
    invoke-direct {p0, v6, v7}, Lcom/cmplay/base/util/a/a;->b(J)[I

    move-result-object v0

    .line 168
    const-string v5, "APK_DOWNLOAD"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "downloadApk  \u5df2\u7ecf\u5b58\u5728\u4e8e\u4e0b\u8f7d\u5217\u8868   downloadId:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "  bytesAndStatus[0]:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget v9, v0, v2

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "  bytesAndStatus[1]:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget v9, v0, v3

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "  bytesAndStatus[2]:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/4 v9, 0x2

    aget v9, v0, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Lcom/cmplay/base/util/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    aget v5, v0, v2

    if-lez v5, :cond_2

    aget v5, v0, v3

    if-lez v5, :cond_2

    .line 170
    aget v1, v0, v2

    aget v0, v0, v3

    if-ne v1, v0, :cond_0

    .line 171
    const-string v0, "APK_DOWNLOAD"

    const-string v1, "downloadApk \u5df2\u7ecf\u4e0b\u8f7d\u5b8c\u6210\uff0c\u76f4\u63a5\u5b89\u88c5"

    invoke-static {v0, v1}, Lcom/cmplay/base/util/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    invoke-direct {p0, v6, v7}, Lcom/cmplay/base/util/a/a;->a(J)V

    :goto_1
    move v0, v3

    :goto_2
    move v1, v0

    .line 180
    goto :goto_0

    .line 174
    :cond_0
    const-string v0, "APK_DOWNLOAD"

    const-string v1, "downloadApk \u6b63\u5728\u4e0b\u8f7d\u5f53\u4e2d"

    invoke-static {v0, v1}, Lcom/cmplay/base/util/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    iget-object v0, p0, Lcom/cmplay/base/util/a/a;->b:Landroid/content/Context;

    const-string v1, "\u5e94\u7528\u6b63\u5728\u4e0b\u8f7d\u4e2d\uff0c\u8bf7\u7a0d\u5019"

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 181
    :cond_1
    return v1

    :cond_2
    move v0, v1

    goto :goto_2
.end method

.method static synthetic b(Lcom/cmplay/base/util/a/a;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/cmplay/base/util/a/a;->b:Landroid/content/Context;

    return-object v0
.end method

.method private b(J)[I
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 140
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    .line 141
    new-instance v1, Landroid/app/DownloadManager$Query;

    invoke-direct {v1}, Landroid/app/DownloadManager$Query;-><init>()V

    new-array v2, v2, [J

    aput-wide p1, v2, v3

    invoke-virtual {v1, v2}, Landroid/app/DownloadManager$Query;->setFilterById([J)Landroid/app/DownloadManager$Query;

    move-result-object v2

    .line 142
    const/4 v1, 0x0

    .line 144
    :try_start_0
    iget-object v3, p0, Lcom/cmplay/base/util/a/a;->d:Landroid/app/DownloadManager;

    invoke-virtual {v3, v2}, Landroid/app/DownloadManager;->query(Landroid/app/DownloadManager$Query;)Landroid/database/Cursor;

    move-result-object v1

    .line 145
    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 146
    const/4 v2, 0x0

    const-string v3, "bytes_so_far"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    aput v3, v0, v2

    .line 147
    const/4 v2, 0x1

    const-string v3, "total_size"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    aput v3, v0, v2

    .line 148
    const/4 v2, 0x2

    const-string v3, "status"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    aput v3, v0, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 151
    :cond_0
    if-eqz v1, :cond_1

    .line 152
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 155
    :cond_1
    return-object v0

    .line 151
    :catchall_0
    move-exception v0

    if-eqz v1, :cond_2

    .line 152
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0

    .line 140
    :array_0
    .array-data 4
        -0x1
        -0x1
        0x0
    .end array-data
.end method

.method static synthetic c(Lcom/cmplay/base/util/a/a;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/cmplay/base/util/a/a;->f:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/util/ArrayList;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cmplay/base/util/a/a$a;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 221
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 222
    const-string v0, "download_status"

    const-string v2, ""

    invoke-static {v0, v2}, Lcom/cmplay/base/util/a/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 223
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 224
    const-string v2, "APK_DOWNLOAD"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "parseDownloadStatus strStatus="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/cmplay/base/util/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    const-string v2, ";"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    move v0, v1

    .line 226
    :goto_0
    array-length v2, v5

    if-ge v0, v2, :cond_3

    .line 227
    aget-object v2, v5, v0

    const-string v3, "\\|"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 228
    new-instance v7, Lcom/cmplay/base/util/a/a$a;

    invoke-direct {v7, p0}, Lcom/cmplay/base/util/a/a$a;-><init>(Lcom/cmplay/base/util/a/a;)V

    move v2, v1

    .line 229
    :goto_1
    array-length v3, v6

    if-ge v2, v3, :cond_2

    .line 231
    if-nez v2, :cond_0

    .line 232
    :try_start_0
    aget-object v3, v6, v2

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v7, Lcom/cmplay/base/util/a/a$a;->a:I

    .line 234
    :cond_0
    const/4 v3, 0x1

    if-ne v3, v2, :cond_1

    .line 235
    aget-object v3, v6, v2

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    int-to-long v8, v3

    iput-wide v8, v7, Lcom/cmplay/base/util/a/a$a;->b:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 229
    :cond_1
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 237
    :catch_0
    move-exception v3

    .line 238
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 241
    :cond_2
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 243
    const-string v2, "APK_DOWNLOAD"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\nurlHashCode:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v6, v7, Lcom/cmplay/base/util/a/a$a;->a:I

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "  downloadId:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v6, v7, Lcom/cmplay/base/util/a/a$a;->b:J

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/cmplay/base/util/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 247
    :cond_3
    return-object v4
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 69
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 106
    :cond_0
    :goto_0
    return-void

    .line 74
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/cmplay/base/util/a/a;->a(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 78
    iput-object p2, p0, Lcom/cmplay/base/util/a/a;->f:Ljava/lang/String;

    .line 80
    const-string v0, ""

    .line 81
    const-string v1, "/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 82
    if-ltz v1, :cond_2

    .line 83
    add-int/lit8 v0, v1, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 86
    :cond_2
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 87
    new-instance v2, Landroid/app/DownloadManager$Request;

    invoke-direct {v2, v1}, Landroid/app/DownloadManager$Request;-><init>(Landroid/net/Uri;)V

    .line 89
    const/4 v1, 0x3

    invoke-virtual {v2, v1}, Landroid/app/DownloadManager$Request;->setAllowedNetworkTypes(I)Landroid/app/DownloadManager$Request;

    .line 92
    invoke-virtual {v2, v5}, Landroid/app/DownloadManager$Request;->setNotificationVisibility(I)Landroid/app/DownloadManager$Request;

    .line 93
    invoke-virtual {v2, v5}, Landroid/app/DownloadManager$Request;->setVisibleInDownloadsUi(Z)Landroid/app/DownloadManager$Request;

    .line 95
    iget-object v1, p0, Lcom/cmplay/base/util/a/a;->b:Landroid/content/Context;

    sget-object v3, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-virtual {v2, v1, v3, v0}, Landroid/app/DownloadManager$Request;->setDestinationInExternalFilesDir(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/app/DownloadManager$Request;

    .line 97
    const-string v1, "application/vnd.android.package-archive"

    invoke-virtual {v2, v1}, Landroid/app/DownloadManager$Request;->setMimeType(Ljava/lang/String;)Landroid/app/DownloadManager$Request;

    .line 99
    invoke-virtual {v2, v0}, Landroid/app/DownloadManager$Request;->setTitle(Ljava/lang/CharSequence;)Landroid/app/DownloadManager$Request;

    .line 101
    iget-object v0, p0, Lcom/cmplay/base/util/a/a;->d:Landroid/app/DownloadManager;

    invoke-virtual {v0, v2}, Landroid/app/DownloadManager;->enqueue(Landroid/app/DownloadManager$Request;)J

    move-result-wide v0

    .line 102
    iget-object v2, p0, Lcom/cmplay/base/util/a/a;->e:Ljava/util/ArrayList;

    new-instance v3, Lcom/cmplay/base/util/a/a$a;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v4

    invoke-direct {v3, p0, v4, v0, v1}, Lcom/cmplay/base/util/a/a$a;-><init>(Lcom/cmplay/base/util/a/a;IJ)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 103
    iget-object v2, p0, Lcom/cmplay/base/util/a/a;->e:Ljava/util/ArrayList;

    invoke-virtual {p0, v2}, Lcom/cmplay/base/util/a/a;->a(Ljava/util/ArrayList;)V

    .line 104
    iget-object v2, p0, Lcom/cmplay/base/util/a/a;->b:Landroid/content/Context;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u5f00\u59cb\u4e0b\u8f7d"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 105
    const-string v2, "APK_DOWNLOAD"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "download start   downloadId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  apkUrl:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/cmplay/base/util/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public a(Ljava/util/ArrayList;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cmplay/base/util/a/a$a;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 200
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 218
    :cond_0
    :goto_0
    return-void

    .line 203
    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 204
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 205
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move v2, v0

    .line 206
    :goto_1
    if-ge v2, v4, :cond_4

    .line 207
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cmplay/base/util/a/a$a;

    .line 208
    if-eqz v0, :cond_2

    .line 210
    if-nez v2, :cond_3

    :try_start_0
    const-string v1, "%d|%d"

    :goto_2
    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget v8, v0, Lcom/cmplay/base/util/a/a$a;->a:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    iget-wide v8, v0, Lcom/cmplay/base/util/a/a$a;->b:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v6, v7

    invoke-static {v1, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    :cond_2
    :goto_3
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    .line 210
    :cond_3
    const-string v1, ";%d|%d"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 211
    :catch_0
    move-exception v0

    .line 212
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 216
    :cond_4
    const-string v0, "APK_DOWNLOAD"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "saveDownloadStatus:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cmplay/base/util/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    const-string v0, "download_status"

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cmplay/base/util/a/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public b(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 42
    iput-object p1, p0, Lcom/cmplay/base/util/a/a;->b:Landroid/content/Context;

    .line 44
    iget-boolean v0, p0, Lcom/cmplay/base/util/a/a;->c:Z

    if-nez v0, :cond_0

    .line 45
    const-string v0, "APK_DOWNLOAD"

    const-string v1, "ApkDownloadManager.init"

    invoke-static {v0, v1}, Lcom/cmplay/base/util/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    iget-object v0, p0, Lcom/cmplay/base/util/a/a;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmplay/base/util/a/b;->a(Landroid/content/Context;)V

    .line 47
    iget-object v0, p0, Lcom/cmplay/base/util/a/a;->b:Landroid/content/Context;

    const-string v1, "download"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/DownloadManager;

    iput-object v0, p0, Lcom/cmplay/base/util/a/a;->d:Landroid/app/DownloadManager;

    .line 48
    iget-object v0, p0, Lcom/cmplay/base/util/a/a;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/cmplay/base/util/a/a;->g:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.DOWNLOAD_COMPLETE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 49
    iget-object v0, p0, Lcom/cmplay/base/util/a/a;->e:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/cmplay/base/util/a/a;->a()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 51
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cmplay/base/util/a/a;->c:Z

    .line 52
    return-void
.end method
