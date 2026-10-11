.class public abstract Lb/a/ar;
.super Ljava/lang/Object;
.source "URequest.java"


# static fields
.field protected static b:Ljava/lang/String;

.field protected static c:Ljava/lang/String;


# instance fields
.field protected d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-string v0, "POST"

    sput-object v0, Lb/a/ar;->b:Ljava/lang/String;

    .line 26
    const-string v0, "GET"

    sput-object v0, Lb/a/ar;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lb/a/ar;->d:Ljava/lang/String;

    .line 60
    return-void
.end method


# virtual methods
.method public abstract a()Lorg/json/JSONObject;
.end method

.method public abstract b()Ljava/lang/String;
.end method

.method protected c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lb/a/ar;->b:Ljava/lang/String;

    return-object v0
.end method
