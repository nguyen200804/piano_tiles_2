.class public Lcom/cmplay/internalpush/q;
.super Ljava/lang/Object;
.source "SdkVersion.java"


# static fields
.field public static a:Ljava/lang/String;

.field public static b:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 7
    const-string v0, "2.2.0"

    sput-object v0, Lcom/cmplay/internalpush/q;->a:Ljava/lang/String;

    .line 8
    const/16 v0, 0x4ee8

    sput v0, Lcom/cmplay/internalpush/q;->b:I

    return-void
.end method
