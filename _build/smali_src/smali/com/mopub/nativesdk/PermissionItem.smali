.class public Lcom/mopub/nativesdk/PermissionItem;
.super Ljava/lang/Object;
.source "PermissionItem.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPermissionCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/mopub/nativesdk/PermissionItem;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getPermissionGroup()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/mopub/nativesdk/PermissionItem;->b:Ljava/lang/String;

    return-object v0
.end method

.method public setPermissionCode(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 20
    iput-object p1, p0, Lcom/mopub/nativesdk/PermissionItem;->a:Ljava/lang/String;

    .line 21
    return-void
.end method

.method public setPermissionGroup(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 28
    iput-object p1, p0, Lcom/mopub/nativesdk/PermissionItem;->b:Ljava/lang/String;

    .line 29
    return-void
.end method
