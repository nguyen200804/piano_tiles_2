.class Lcom/cmplay/internalpush/a/a/b$2;
.super Ljava/lang/Object;
.source "ImagePathUtil.java"

# interfaces
.implements Lcom/cmplay/base/util/c/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cmplay/internalpush/a/a/b;->a(Ljava/lang/String;Ljava/util/ArrayList;Lcom/cmplay/internalpush/a/a/b$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/cmplay/internalpush/a/a/b$a;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/cmplay/internalpush/a/a/b;


# direct methods
.method constructor <init>(Lcom/cmplay/internalpush/a/a/b;Ljava/lang/String;Lcom/cmplay/internalpush/a/a/b$a;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 142
    iput-object p1, p0, Lcom/cmplay/internalpush/a/a/b$2;->d:Lcom/cmplay/internalpush/a/a/b;

    iput-object p2, p0, Lcom/cmplay/internalpush/a/a/b$2;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/cmplay/internalpush/a/a/b$2;->b:Lcom/cmplay/internalpush/a/a/b$a;

    iput-object p4, p0, Lcom/cmplay/internalpush/a/a/b$2;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 153
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u56fe\u7247\u4e0b\u8f7d\u6210\u529f\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cmplay/base/util/g;->a(Ljava/lang/String;)V

    .line 154
    invoke-static {}, Lcom/cmplay/internalpush/ipc/IpcSpHelper;->getInstance()Lcom/cmplay/internalpush/ipc/IpcSpHelper;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/cmplay/internalpush/a/a/b$2;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p3}, Lcom/cmplay/internalpush/ipc/IpcSpHelper;->sp_setStringValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    iget-object v0, p0, Lcom/cmplay/internalpush/a/a/b$2;->b:Lcom/cmplay/internalpush/a/a/b$a;

    if-eqz v0, :cond_0

    .line 156
    iget-object v0, p0, Lcom/cmplay/internalpush/a/a/b$2;->b:Lcom/cmplay/internalpush/a/a/b$a;

    invoke-interface {v0, p2, p3}, Lcom/cmplay/internalpush/a/a/b$a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    :cond_0
    iget-object v0, p0, Lcom/cmplay/internalpush/a/a/b$2;->d:Lcom/cmplay/internalpush/a/a/b;

    iget-object v1, p0, Lcom/cmplay/internalpush/a/a/b$2;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lcom/cmplay/internalpush/a/a/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 145
    iget-object v0, p0, Lcom/cmplay/internalpush/a/a/b$2;->d:Lcom/cmplay/internalpush/a/a/b;

    invoke-static {v0}, Lcom/cmplay/internalpush/a/a/b;->a(Lcom/cmplay/internalpush/a/a/b;)Lcom/cmplay/base/util/c/b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 146
    iget-object v0, p0, Lcom/cmplay/internalpush/a/a/b$2;->d:Lcom/cmplay/internalpush/a/a/b;

    invoke-static {v0}, Lcom/cmplay/internalpush/a/a/b;->a(Lcom/cmplay/internalpush/a/a/b;)Lcom/cmplay/base/util/c/b;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/cmplay/base/util/c/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u56fe\u7247\u4e0b\u8f7d\u5931\u8d25\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cmplay/base/util/g;->a(Ljava/lang/String;)V

    .line 149
    return-void
.end method
