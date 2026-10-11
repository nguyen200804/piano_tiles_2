.class Lcom/cmplay/internalpush/c$2;
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
    .line 85
    iput-object p1, p0, Lcom/cmplay/internalpush/c$2;->a:Lcom/cmplay/internalpush/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .prologue
    .line 88
    invoke-static {}, Lcom/cmplay/util/NativeUtil;->onFamilyGamesPushUpdate()V

    .line 89
    return-void
.end method
