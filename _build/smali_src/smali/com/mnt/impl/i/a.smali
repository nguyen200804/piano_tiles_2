.class public final Lcom/mnt/impl/i/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/mnt/impl/e;->aR:Ljava/lang/String;

    .line 25
    sget-object v0, Lcom/mnt/impl/e;->aS:Ljava/lang/String;

    .line 29
    sget-object v0, Lcom/mnt/impl/e;->aT:Ljava/lang/String;

    sput-object v0, Lcom/mnt/impl/i/a;->a:Ljava/lang/String;

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 3

    .prologue
    .line 180
    .line 1189
    :try_start_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 1190
    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/mnt/impl/i/d;->a(Ljava/lang/StringBuffer;I)V

    .line 1191
    invoke-static {p0, v0}, Lcom/mnt/impl/i/d;->a(Landroid/content/Context;Ljava/lang/StringBuffer;)V

    .line 1192
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    sget-object v2, Lcom/mnt/impl/e;->aW:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 1193
    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    sget-object v2, Lcom/mnt/impl/e;->aX:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 1194
    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 1195
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2162
    sget-object v1, Lcom/mnt/impl/e;->aU:Ljava/lang/String;

    .line 2163
    sget-object v2, Lcom/mnt/impl/e;->aV:Ljava/lang/String;

    invoke-static {v0, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2165
    invoke-static {v0, v1}, Lcom/mnt/impl/i/a/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2167
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/mnt/impl/b/k;->a([B)Ljava/lang/String;

    move-result-object v0

    .line 2168
    new-instance v1, Lcom/mnt/impl/f/e;

    invoke-direct {v1}, Lcom/mnt/impl/f/e;-><init>()V

    sget-object v2, Lcom/mnt/impl/i/a;->a:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/mnt/impl/f/e;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 186
    :goto_0
    return-void

    .line 184
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
