.class Lcom/cmplay/internalpush/c$1;
.super Ljava/lang/Object;
.source "CMPPromotionCallBack.java"

# interfaces
.implements Lcom/cmplay/util/d$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cmplay/internalpush/c;->a(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cmplay/internalpush/c;


# direct methods
.method constructor <init>(Lcom/cmplay/internalpush/c;)V
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lcom/cmplay/internalpush/c$1;->a:Lcom/cmplay/internalpush/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .prologue
    .line 74
    invoke-static {}, Lcom/cmplay/util/NativeUtil;->onSettingsPushUpdate()V

    .line 75
    return-void
.end method
