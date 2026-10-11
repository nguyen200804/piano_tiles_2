.class Lcom/jirbo/adcolony/aq;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Ljava/lang/String;

.field public static b:Ljava/lang/String;

.field public static c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-string v0, "xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx  x          xxxxxxx                          xxxx x                          xxxxx"

    sput-object v0, Lcom/jirbo/adcolony/aq;->a:Ljava/lang/String;

    .line 31
    const-string v0, "0123456789ABCDEF"

    sput-object v0, Lcom/jirbo/adcolony/aq;->b:Ljava/lang/String;

    .line 32
    const-string v0, "0123456789abcdef"

    sput-object v0, Lcom/jirbo/adcolony/aq;->c:Ljava/lang/String;

    return-void
.end method

.method static a()Z
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/jirbo/adcolony/aq;->a(Landroid/app/Activity;)Z

    move-result v0

    return v0
.end method

.method static a(Landroid/app/Activity;)Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 41
    if-nez p0, :cond_0

    sget-object p0, Lcom/jirbo/adcolony/t;->E:Landroid/app/Activity;

    .line 44
    :cond_0
    if-nez p0, :cond_2

    .line 46
    sget-object v0, Lcom/jirbo/adcolony/al;->a:Lcom/jirbo/adcolony/al;

    const-string v1, "Null Activity"

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/al;->b(Ljava/lang/Object;)Lcom/jirbo/adcolony/al;

    .line 55
    :cond_1
    :goto_0
    return v2

    .line 49
    :cond_2
    sget-boolean v0, Lcom/jirbo/adcolony/t;->C:Z

    if-eqz v0, :cond_3

    move v2, v1

    goto :goto_0

    .line 51
    :cond_3
    const-string v0, "connectivity"

    .line 52
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 53
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 54
    if-eqz v0, :cond_1

    .line 55
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    if-ne v0, v1, :cond_4

    move v0, v1

    :goto_1
    move v2, v0

    goto :goto_0

    :cond_4
    move v0, v2

    goto :goto_1
.end method

.method static b()Z
    .locals 1

    .prologue
    .line 60
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/jirbo/adcolony/aq;->b(Landroid/app/Activity;)Z

    move-result v0

    return v0
.end method

.method static b(Landroid/app/Activity;)Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 65
    if-nez p0, :cond_0

    sget-object p0, Lcom/jirbo/adcolony/t;->E:Landroid/app/Activity;

    .line 68
    :cond_0
    if-nez p0, :cond_2

    .line 76
    :cond_1
    :goto_0
    return v1

    .line 69
    :cond_2
    sget-boolean v0, Lcom/jirbo/adcolony/t;->C:Z

    if-nez v0, :cond_1

    .line 71
    const-string v0, "connectivity"

    .line 72
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 73
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 74
    if-eqz v0, :cond_1

    .line 75
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    .line 76
    if-eqz v0, :cond_3

    const/4 v2, 0x2

    if-lt v0, v2, :cond_4

    :cond_3
    const/4 v0, 0x1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_1
.end method

.method static c()Z
    .locals 1

    .prologue
    .line 81
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/jirbo/adcolony/aq;->c(Landroid/app/Activity;)Z

    move-result v0

    return v0
.end method

.method static c(Landroid/app/Activity;)Z
    .locals 1

    .prologue
    .line 85
    invoke-static {p0}, Lcom/jirbo/adcolony/aq;->a(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/jirbo/adcolony/aq;->b(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
