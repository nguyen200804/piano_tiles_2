.class public Lcom/cmplay/exitpopup/a;
.super Ljava/lang/Object;
.source "ExitGame.java"

# interfaces
.implements Lcom/cmplay/internalpush/i;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cmplay/exitpopup/a$a;
    }
.end annotation


# instance fields
.field private a:I

.field private b:Lcom/cmplay/internalpush/i$a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    return-void
.end method

.method public static a()Lcom/cmplay/exitpopup/a;
    .locals 1

    .prologue
    .line 32
    invoke-static {}, Lcom/cmplay/exitpopup/a$a;->a()Lcom/cmplay/exitpopup/a;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/Context;)I
    .locals 3

    .prologue
    .line 52
    const/4 v0, 0x0

    .line 53
    const-string v1, "not_data"

    .line 54
    invoke-static {p1}, Lcom/cmplay/exitpopup/b;->a(Landroid/content/Context;)Lcom/cmplay/exitpopup/b;

    move-result-object v2

    iget-object v2, v2, Lcom/cmplay/exitpopup/b;->a:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 55
    invoke-static {p1}, Lcom/cmplay/exitpopup/b;->a(Landroid/content/Context;)Lcom/cmplay/exitpopup/b;

    move-result-object v0

    iget-object v0, v0, Lcom/cmplay/exitpopup/b;->a:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x5

    .line 57
    :cond_0
    :goto_0
    return v0

    .line 55
    :cond_1
    const/16 v0, 0x32

    goto :goto_0
.end method

.method public a(Landroid/app/Activity;I[Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 87
    invoke-virtual {p0, p1}, Lcom/cmplay/exitpopup/a;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 88
    const-string v1, "Exit game show"

    invoke-static {v1}, Lcom/cmplay/base/util/g;->a(Ljava/lang/String;)V

    .line 89
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/cmplay/tile2/ui/ReportService;

    invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 90
    const-string v2, "command_start_report"

    const-string v3, "command_game_exit_popup"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 91
    const-string v2, "game_exit_data"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 92
    const-string v0, "game_exit_songs_num"

    invoke-virtual {v1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 93
    const-string v0, "game_exit_playedsongs_text"

    invoke-virtual {v1, v0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 94
    invoke-virtual {p1, v1}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 95
    return-void
.end method

.method public a(Landroid/content/Context;Lcom/cmplay/internalpush/data/d;)V
    .locals 11

    .prologue
    const/4 v2, 0x2

    .line 99
    if-nez p2, :cond_0

    .line 118
    :goto_0
    return-void

    .line 106
    :cond_0
    invoke-static {p1, p2}, Lcom/cmplay/internalpush/a/b;->a(Landroid/content/Context;Lcom/cmplay/internalpush/data/d;)V

    .line 109
    invoke-static {p1}, Lcom/cmplay/exitpopup/b;->a(Landroid/content/Context;)Lcom/cmplay/exitpopup/b;

    move-result-object v0

    invoke-virtual {p2}, Lcom/cmplay/internalpush/data/d;->d()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5, v2}, Lcom/cmplay/exitpopup/b;->a(JI)V

    .line 112
    iget-object v0, p0, Lcom/cmplay/exitpopup/a;->b:Lcom/cmplay/internalpush/i$a;

    if-eqz v0, :cond_1

    .line 113
    iget-object v0, p0, Lcom/cmplay/exitpopup/a;->b:Lcom/cmplay/internalpush/i$a;

    invoke-interface {v0}, Lcom/cmplay/internalpush/i$a;->a()V

    .line 117
    :cond_1
    invoke-static {}, Lcom/cmplay/internalpush/o;->a()Lcom/cmplay/internalpush/o;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {p2}, Lcom/cmplay/internalpush/data/d;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Lcom/cmplay/internalpush/data/d;->d()J

    move-result-wide v4

    const-string v6, ""

    invoke-virtual {p0}, Lcom/cmplay/exitpopup/a;->b()I

    move-result v7

    const/4 v8, 0x0

    invoke-virtual {p2}, Lcom/cmplay/internalpush/data/d;->m()J

    move-result-wide v9

    invoke-virtual/range {v0 .. v10}, Lcom/cmplay/internalpush/o;->a(IILjava/lang/String;JLjava/lang/String;IIJ)V

    goto :goto_0
.end method

.method public a(Landroid/content/Context;IZ)Z
    .locals 2

    .prologue
    .line 41
    iput p2, p0, Lcom/cmplay/exitpopup/a;->a:I

    .line 42
    invoke-static {p1}, Lcom/cmplay/exitpopup/b;->a(Landroid/content/Context;)Lcom/cmplay/exitpopup/b;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p3, v1}, Lcom/cmplay/exitpopup/b;->a(ZZ)Z

    move-result v0

    return v0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 142
    iget v0, p0, Lcom/cmplay/exitpopup/a;->a:I

    return v0
.end method

.method public b(Landroid/content/Context;)Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 65
    invoke-static {p1}, Lcom/cmplay/exitpopup/b;->a(Landroid/content/Context;)Lcom/cmplay/exitpopup/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cmplay/exitpopup/b;->b()Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method public b(Landroid/content/Context;Lcom/cmplay/internalpush/data/d;)V
    .locals 11

    .prologue
    .line 155
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "last_last_shield_time"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/cmplay/exitpopup/b;->a(Landroid/content/Context;)Lcom/cmplay/exitpopup/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cmplay/exitpopup/b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Lcom/cmplay/internalpush/data/d;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/cmplay/util/aa;->a(Ljava/lang/String;J)V

    .line 156
    invoke-static {}, Lcom/cmplay/internalpush/o;->a()Lcom/cmplay/internalpush/o;

    move-result-object v0

    const/4 v1, 0x5

    const/16 v2, 0xb

    invoke-virtual {p2}, Lcom/cmplay/internalpush/data/d;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Lcom/cmplay/internalpush/data/d;->d()J

    move-result-wide v4

    const-string v6, ""

    invoke-virtual {p0}, Lcom/cmplay/exitpopup/a;->b()I

    move-result v7

    const/4 v8, 0x0

    invoke-virtual {p2}, Lcom/cmplay/internalpush/data/d;->m()J

    move-result-wide v9

    invoke-virtual/range {v0 .. v10}, Lcom/cmplay/internalpush/o;->a(IILjava/lang/String;JLjava/lang/String;IIJ)V

    .line 157
    return-void
.end method

.method public c(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 74
    invoke-static {p1}, Lcom/cmplay/exitpopup/b;->a(Landroid/content/Context;)Lcom/cmplay/exitpopup/b;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/cmplay/exitpopup/b;->b(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
