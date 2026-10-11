.class public Lcom/appsflyer/c;
.super Ljava/lang/Object;
.source "AppsFlyerProperties.java"


# static fields
.field static a:Z

.field static b:Z

.field private static c:Lcom/appsflyer/c;


# instance fields
.field private d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private e:Z

.field private f:Z

.field private g:Ljava/lang/String;

.field private h:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 34
    new-instance v0, Lcom/appsflyer/c;

    invoke-direct {v0}, Lcom/appsflyer/c;-><init>()V

    sput-object v0, Lcom/appsflyer/c;->c:Lcom/appsflyer/c;

    .line 56
    sput-boolean v1, Lcom/appsflyer/c;->a:Z

    .line 57
    sput-boolean v1, Lcom/appsflyer/c;->b:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/appsflyer/c;->d:Ljava/util/Map;

    .line 61
    return-void
.end method

.method public static a()Lcom/appsflyer/c;
    .locals 1

    .prologue
    .line 64
    sget-object v0, Lcom/appsflyer/c;->c:Lcom/appsflyer/c;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;I)I
    .locals 1

    .prologue
    .line 107
    invoke-virtual {p0, p1}, Lcom/appsflyer/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 108
    if-nez v0, :cond_0

    .line 111
    :goto_0
    return p2

    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p2

    goto :goto_0
.end method

.method public a(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 136
    iget-object v0, p0, Lcom/appsflyer/c;->g:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/appsflyer/c;->g:Ljava/lang/String;

    .line 140
    :goto_0
    return-object v0

    .line 139
    :cond_0
    const-string v0, "appsflyer-data"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 140
    const-string v1, "referrer"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/appsflyer/c;->d:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    return-void
.end method

.method public a(Ljava/lang/String;Z)V
    .locals 2

    .prologue
    .line 93
    iget-object v0, p0, Lcom/appsflyer/c;->d:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    return-void
.end method

.method public a(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/appsflyer/c;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/appsflyer/c;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method protected b()V
    .locals 1

    .prologue
    .line 120
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/appsflyer/c;->e:Z

    .line 121
    return-void
.end method

.method public b(Ljava/lang/String;Z)Z
    .locals 1

    .prologue
    .line 97
    invoke-virtual {p0, p1}, Lcom/appsflyer/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 98
    if-nez v0, :cond_0

    .line 101
    :goto_0
    return p2

    :cond_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    goto :goto_0
.end method

.method protected c(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 132
    iput-object p1, p0, Lcom/appsflyer/c;->g:Ljava/lang/String;

    .line 133
    return-void
.end method

.method protected c()Z
    .locals 1

    .prologue
    .line 124
    iget-boolean v0, p0, Lcom/appsflyer/c;->f:Z

    return v0
.end method

.method protected d()V
    .locals 1

    .prologue
    .line 128
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/appsflyer/c;->f:Z

    .line 129
    return-void
.end method

.method public e()Z
    .locals 1

    .prologue
    .line 149
    iget-boolean v0, p0, Lcom/appsflyer/c;->h:Z

    return v0
.end method
