.class public Lb/a/co;
.super Ljava/lang/Object;
.source "Caretaker.java"


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Z

.field private c:Landroid/content/SharedPreferences;

.field private d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const-string v0, "umeng_event_snapshot"

    iput-object v0, p0, Lb/a/co;->a:Ljava/lang/String;

    .line 14
    const/4 v0, 0x0

    iput-boolean v0, p0, Lb/a/co;->b:Z

    .line 17
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lb/a/co;->d:Ljava/util/Map;

    .line 20
    const-string v0, "umeng_event_snapshot"

    invoke-static {p1, v0}, Lb/a/cz;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lb/a/co;->c:Landroid/content/SharedPreferences;

    .line 21
    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 0

    .prologue
    .line 24
    iput-boolean p1, p0, Lb/a/co;->b:Z

    .line 25
    return-void
.end method
