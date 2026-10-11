.class final Lcom/mopub/dg/e/a/a/f;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnKeyListener;


# instance fields
.field final synthetic a:Lcom/mopub/dg/e/a/a/e;


# direct methods
.method constructor <init>(Lcom/mopub/dg/e/a/a/e;)V
    .locals 0

    iput-object p1, p0, Lcom/mopub/dg/e/a/a/f;->a:Lcom/mopub/dg/e/a/a/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1

    packed-switch p2, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_0
    iget-object v0, p0, Lcom/mopub/dg/e/a/a/f;->a:Lcom/mopub/dg/e/a/a/e;

    invoke-static {v0}, Lcom/mopub/dg/e/a/a/e;->a(Lcom/mopub/dg/e/a/a/e;)V

    const/4 v0, 0x1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method
