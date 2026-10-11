.class Lcom/facebook/appevents/a$f;
.super Ljava/lang/Object;
.source "AppEventsLogger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/appevents/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "f"
.end annotation


# instance fields
.field public a:I

.field public b:Lcom/facebook/appevents/a$e;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 1030
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1031
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/appevents/a$f;->a:I

    .line 1032
    sget-object v0, Lcom/facebook/appevents/a$e;->a:Lcom/facebook/appevents/a$e;

    iput-object v0, p0, Lcom/facebook/appevents/a$f;->b:Lcom/facebook/appevents/a$e;

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/appevents/a$1;)V
    .locals 0

    .prologue
    .line 1030
    invoke-direct {p0}, Lcom/facebook/appevents/a$f;-><init>()V

    return-void
.end method
