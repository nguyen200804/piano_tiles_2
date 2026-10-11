.class public final Lcom/cmcm/orion/adsdk/b;
.super Ljava/lang/Object;
.source "Const.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cmcm/orion/adsdk/b$a;
    }
.end annotation


# static fields
.field public static a:Ljava/lang/String;

.field public static final b:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 7
    const-string v0, "http://ad-cmcm.com/"

    sput-object v0, Lcom/cmcm/orion/adsdk/b;->a:Ljava/lang/String;

    .line 64
    const/16 v0, 0xb

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/cmcm/orion/adsdk/b;->b:[I

    return-void

    :array_0
    .array-data 4
        0x11179
        0x11175
        0x11176
        0x11177
        0x1117a
        0xea6b
        0xea6c
        0xea6d
        0xea6e
        0xea6f
        0xea70
    .end array-data
.end method
