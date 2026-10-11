.class public final enum Lb/a/am$e;
.super Ljava/lang/Enum;
.source "UALogEntry.java"

# interfaces
.implements Lb/a/bc;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/a/am;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lb/a/am$e;",
        ">;",
        "Lb/a/bc;"
    }
.end annotation


# static fields
.field public static final enum a:Lb/a/am$e;

.field public static final enum b:Lb/a/am$e;

.field public static final enum c:Lb/a/am$e;

.field public static final enum d:Lb/a/am$e;

.field public static final enum e:Lb/a/am$e;

.field public static final enum f:Lb/a/am$e;

.field public static final enum g:Lb/a/am$e;

.field public static final enum h:Lb/a/am$e;

.field public static final enum i:Lb/a/am$e;

.field public static final enum j:Lb/a/am$e;

.field public static final enum k:Lb/a/am$e;

.field private static final l:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lb/a/am$e;",
            ">;"
        }
    .end annotation
.end field

.field private static final synthetic o:[Lb/a/am$e;


# instance fields
.field private final m:S

.field private final n:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x5

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 66
    new-instance v0, Lb/a/am$e;

    const-string v1, "CLIENT_STATS"

    const/4 v2, 0x0

    const-string v3, "client_stats"

    invoke-direct {v0, v1, v2, v5, v3}, Lb/a/am$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lb/a/am$e;->a:Lb/a/am$e;

    .line 67
    new-instance v0, Lb/a/am$e;

    const-string v1, "APP_INFO"

    const-string v2, "app_info"

    invoke-direct {v0, v1, v5, v6, v2}, Lb/a/am$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lb/a/am$e;->b:Lb/a/am$e;

    .line 68
    new-instance v0, Lb/a/am$e;

    const-string v1, "DEVICE_INFO"

    const-string v2, "device_info"

    invoke-direct {v0, v1, v6, v7, v2}, Lb/a/am$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lb/a/am$e;->c:Lb/a/am$e;

    .line 69
    new-instance v0, Lb/a/am$e;

    const-string v1, "MISC_INFO"

    const-string v2, "misc_info"

    invoke-direct {v0, v1, v7, v8, v2}, Lb/a/am$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lb/a/am$e;->d:Lb/a/am$e;

    .line 70
    new-instance v0, Lb/a/am$e;

    const-string v1, "ACTIVATE_MSG"

    const-string v2, "activate_msg"

    invoke-direct {v0, v1, v8, v9, v2}, Lb/a/am$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lb/a/am$e;->e:Lb/a/am$e;

    .line 71
    new-instance v0, Lb/a/am$e;

    const-string v1, "INSTANT_MSGS"

    const/4 v2, 0x6

    const-string v3, "instant_msgs"

    invoke-direct {v0, v1, v9, v2, v3}, Lb/a/am$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lb/a/am$e;->f:Lb/a/am$e;

    .line 72
    new-instance v0, Lb/a/am$e;

    const-string v1, "SESSIONS"

    const/4 v2, 0x6

    const/4 v3, 0x7

    const-string v4, "sessions"

    invoke-direct {v0, v1, v2, v3, v4}, Lb/a/am$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lb/a/am$e;->g:Lb/a/am$e;

    .line 73
    new-instance v0, Lb/a/am$e;

    const-string v1, "IMPRINT"

    const/4 v2, 0x7

    const/16 v3, 0x8

    const-string v4, "imprint"

    invoke-direct {v0, v1, v2, v3, v4}, Lb/a/am$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lb/a/am$e;->h:Lb/a/am$e;

    .line 74
    new-instance v0, Lb/a/am$e;

    const-string v1, "ID_TRACKING"

    const/16 v2, 0x8

    const/16 v3, 0x9

    const-string v4, "id_tracking"

    invoke-direct {v0, v1, v2, v3, v4}, Lb/a/am$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lb/a/am$e;->i:Lb/a/am$e;

    .line 75
    new-instance v0, Lb/a/am$e;

    const-string v1, "ACTIVE_USER"

    const/16 v2, 0x9

    const/16 v3, 0xa

    const-string v4, "active_user"

    invoke-direct {v0, v1, v2, v3, v4}, Lb/a/am$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lb/a/am$e;->j:Lb/a/am$e;

    .line 76
    new-instance v0, Lb/a/am$e;

    const-string v1, "CONTROL_POLICY"

    const/16 v2, 0xa

    const/16 v3, 0xb

    const-string v4, "control_policy"

    invoke-direct {v0, v1, v2, v3, v4}, Lb/a/am$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lb/a/am$e;->k:Lb/a/am$e;

    .line 65
    const/16 v0, 0xb

    new-array v0, v0, [Lb/a/am$e;

    const/4 v1, 0x0

    sget-object v2, Lb/a/am$e;->a:Lb/a/am$e;

    aput-object v2, v0, v1

    sget-object v1, Lb/a/am$e;->b:Lb/a/am$e;

    aput-object v1, v0, v5

    sget-object v1, Lb/a/am$e;->c:Lb/a/am$e;

    aput-object v1, v0, v6

    sget-object v1, Lb/a/am$e;->d:Lb/a/am$e;

    aput-object v1, v0, v7

    sget-object v1, Lb/a/am$e;->e:Lb/a/am$e;

    aput-object v1, v0, v8

    sget-object v1, Lb/a/am$e;->f:Lb/a/am$e;

    aput-object v1, v0, v9

    const/4 v1, 0x6

    sget-object v2, Lb/a/am$e;->g:Lb/a/am$e;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lb/a/am$e;->h:Lb/a/am$e;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lb/a/am$e;->i:Lb/a/am$e;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lb/a/am$e;->j:Lb/a/am$e;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lb/a/am$e;->k:Lb/a/am$e;

    aput-object v2, v0, v1

    sput-object v0, Lb/a/am$e;->o:[Lb/a/am$e;

    .line 78
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lb/a/am$e;->l:Ljava/util/Map;

    .line 81
    const-class v0, Lb/a/am$e;

    invoke-static {v0}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/EnumSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/a/am$e;

    .line 82
    sget-object v2, Lb/a/am$e;->l:Ljava/util/Map;

    invoke-virtual {v0}, Lb/a/am$e;->b()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 84
    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ISLjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(S",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 138
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 139
    iput-short p3, p0, Lb/a/am$e;->m:S

    .line 140
    iput-object p4, p0, Lb/a/am$e;->n:Ljava/lang/String;

    .line 141
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lb/a/am$e;
    .locals 1

    .prologue
    .line 65
    const-class v0, Lb/a/am$e;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lb/a/am$e;

    return-object v0
.end method

.method public static values()[Lb/a/am$e;
    .locals 1

    .prologue
    .line 65
    sget-object v0, Lb/a/am$e;->o:[Lb/a/am$e;

    invoke-virtual {v0}, [Lb/a/am$e;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lb/a/am$e;

    return-object v0
.end method


# virtual methods
.method public a()S
    .locals 1

    .prologue
    .line 144
    iget-short v0, p0, Lb/a/am$e;->m:S

    return v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lb/a/am$e;->n:Ljava/lang/String;

    return-object v0
.end method
