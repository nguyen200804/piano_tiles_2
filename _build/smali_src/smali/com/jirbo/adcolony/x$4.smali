.class Lcom/jirbo/adcolony/x$4;
.super Landroid/webkit/WebViewClient;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jirbo/adcolony/x;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field final synthetic b:Lcom/jirbo/adcolony/x;


# direct methods
.method constructor <init>(Lcom/jirbo/adcolony/x;)V
    .locals 1

    .prologue
    .line 1011
    iput-object p1, p0, Lcom/jirbo/adcolony/x$4;->b:Lcom/jirbo/adcolony/x;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    .line 1012
    sget-object v0, Lcom/jirbo/adcolony/t;->R:Ljava/lang/String;

    iput-object v0, p0, Lcom/jirbo/adcolony/x$4;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 1048
    sget-object v0, Lcom/jirbo/adcolony/al;->a:Lcom/jirbo/adcolony/al;

    const-string v1, "DEC onLoad: "

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/al;->a(Ljava/lang/String;)Lcom/jirbo/adcolony/al;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/jirbo/adcolony/al;->b(Ljava/lang/Object;)Lcom/jirbo/adcolony/al;

    .line 1049
    iget-object v0, p0, Lcom/jirbo/adcolony/x$4;->a:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1052
    sget-object v0, Lcom/jirbo/adcolony/al;->a:Lcom/jirbo/adcolony/al;

    const-string v1, "DEC disabling mouse events"

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/al;->b(Ljava/lang/Object;)Lcom/jirbo/adcolony/al;

    .line 1054
    iget-object v0, p0, Lcom/jirbo/adcolony/x$4;->b:Lcom/jirbo/adcolony/x;

    const-string v1, "if (typeof(CN) != \'undefined\' && CN.div) {\n  if (typeof(cn_dispatch_on_touch_begin) != \'undefined\') CN.div.removeEventListener(\'mousedown\',  cn_dispatch_on_touch_begin, true);\n  if (typeof(cn_dispatch_on_touch_end) != \'undefined\')   CN.div.removeEventListener(\'mouseup\',  cn_dispatch_on_touch_end, true);\n  if (typeof(cn_dispatch_on_touch_move) != \'undefined\')  CN.div.removeEventListener(\'mousemove\',  cn_dispatch_on_touch_move, true);\n}\n"

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/x;->a(Ljava/lang/String;)V

    .line 1061
    :cond_0
    return-void
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 6
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 1077
    sget-object v0, Lcom/jirbo/adcolony/al;->a:Lcom/jirbo/adcolony/al;

    const-string v1, "onPageFinished - "

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/al;->a(Ljava/lang/String;)Lcom/jirbo/adcolony/al;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/jirbo/adcolony/al;->b(Ljava/lang/Object;)Lcom/jirbo/adcolony/al;

    .line 1078
    sget-object v0, Lcom/jirbo/adcolony/al;->a:Lcom/jirbo/adcolony/al;

    const-string v1, "END CARD URL = "

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/al;->a(Ljava/lang/String;)Lcom/jirbo/adcolony/al;

    move-result-object v0

    iget-object v1, p0, Lcom/jirbo/adcolony/x$4;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/al;->b(Ljava/lang/Object;)Lcom/jirbo/adcolony/al;

    .line 1079
    sget-object v0, Lcom/jirbo/adcolony/al;->a:Lcom/jirbo/adcolony/al;

    const-string v1, "equals? "

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/al;->a(Ljava/lang/String;)Lcom/jirbo/adcolony/al;

    move-result-object v0

    iget-object v1, p0, Lcom/jirbo/adcolony/x$4;->a:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/al;->b(Z)Lcom/jirbo/adcolony/al;

    .line 1080
    iget-object v0, p0, Lcom/jirbo/adcolony/x$4;->a:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/jirbo/adcolony/t;->R:Ljava/lang/String;

    const-string v1, "<"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1082
    :cond_0
    sget-object v0, Lcom/jirbo/adcolony/al;->a:Lcom/jirbo/adcolony/al;

    const-string v1, "DEC FINISHED LOADING"

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/al;->b(Ljava/lang/Object;)Lcom/jirbo/adcolony/al;

    .line 1083
    iget-object v0, p0, Lcom/jirbo/adcolony/x$4;->b:Lcom/jirbo/adcolony/x;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/jirbo/adcolony/x;->D:Z

    .line 1084
    iget-object v0, p0, Lcom/jirbo/adcolony/x$4;->b:Lcom/jirbo/adcolony/x;

    iget-object v0, v0, Lcom/jirbo/adcolony/x;->d:Lcom/jirbo/adcolony/ADCVideo;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/jirbo/adcolony/ADCVideo;->k:Z

    .line 1085
    iget-object v0, p0, Lcom/jirbo/adcolony/x$4;->b:Lcom/jirbo/adcolony/x;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/jirbo/adcolony/x;->w:J

    .line 1086
    iget-object v0, p0, Lcom/jirbo/adcolony/x$4;->b:Lcom/jirbo/adcolony/x;

    iget-object v0, v0, Lcom/jirbo/adcolony/x;->d:Lcom/jirbo/adcolony/ADCVideo;

    iget-object v1, p0, Lcom/jirbo/adcolony/x$4;->b:Lcom/jirbo/adcolony/x;

    iget-wide v2, v1, Lcom/jirbo/adcolony/x;->w:J

    iget-object v1, p0, Lcom/jirbo/adcolony/x$4;->b:Lcom/jirbo/adcolony/x;

    iget-wide v4, v1, Lcom/jirbo/adcolony/x;->v:J

    sub-long/2addr v2, v4

    long-to-double v2, v2

    const-wide v4, 0x408f400000000000L    # 1000.0

    div-double/2addr v2, v4

    iput-wide v2, v0, Lcom/jirbo/adcolony/ADCVideo;->o:D

    .line 1088
    :cond_1
    iget-object v0, p0, Lcom/jirbo/adcolony/x$4;->b:Lcom/jirbo/adcolony/x;

    iget-object v0, v0, Lcom/jirbo/adcolony/x;->d:Lcom/jirbo/adcolony/ADCVideo;

    iget-object v0, v0, Lcom/jirbo/adcolony/ADCVideo;->M:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/jirbo/adcolony/x$4;->b:Lcom/jirbo/adcolony/x;

    iget-object v1, v1, Lcom/jirbo/adcolony/x;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 1089
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 4
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "favicon"    # Landroid/graphics/Bitmap;

    .prologue
    .line 1066
    iget-object v0, p0, Lcom/jirbo/adcolony/x$4;->a:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1068
    iget-object v0, p0, Lcom/jirbo/adcolony/x$4;->b:Lcom/jirbo/adcolony/x;

    iget-object v0, v0, Lcom/jirbo/adcolony/x;->d:Lcom/jirbo/adcolony/ADCVideo;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/jirbo/adcolony/ADCVideo;->j:Z

    .line 1069
    iget-object v0, p0, Lcom/jirbo/adcolony/x$4;->b:Lcom/jirbo/adcolony/x;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/jirbo/adcolony/x;->v:J

    .line 1071
    :cond_0
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 5
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    .line 1017
    sget-object v1, Lcom/jirbo/adcolony/al;->a:Lcom/jirbo/adcolony/al;

    const-string v2, "DEC request: "

    invoke-virtual {v1, v2}, Lcom/jirbo/adcolony/al;->a(Ljava/lang/String;)Lcom/jirbo/adcolony/al;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/jirbo/adcolony/al;->b(Ljava/lang/Object;)Lcom/jirbo/adcolony/al;

    .line 1020
    const-string v1, "mraid:"

    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1022
    iget-object v1, p0, Lcom/jirbo/adcolony/x$4;->b:Lcom/jirbo/adcolony/x;

    iget-object v1, v1, Lcom/jirbo/adcolony/x;->aw:Lcom/jirbo/adcolony/am;

    invoke-virtual {v1, p2}, Lcom/jirbo/adcolony/am;->a(Ljava/lang/String;)V

    .line 1040
    :cond_0
    :goto_0
    return v0

    .line 1027
    :cond_1
    const-string v1, "youtube"

    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1030
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "vnd.youtube:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1031
    const-string v2, "VIDEO_ID"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1032
    iget-object v2, p0, Lcom/jirbo/adcolony/x$4;->b:Lcom/jirbo/adcolony/x;

    iget-object v2, v2, Lcom/jirbo/adcolony/x;->d:Lcom/jirbo/adcolony/ADCVideo;

    invoke-virtual {v2, v1}, Lcom/jirbo/adcolony/ADCVideo;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 1035
    :cond_2
    const-string v1, "mraid.js"

    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1040
    const/4 v0, 0x0

    goto :goto_0
.end method
