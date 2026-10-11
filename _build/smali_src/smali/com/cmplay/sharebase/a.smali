.class public Lcom/cmplay/sharebase/a;
.super Ljava/lang/Object;
.source "AppKeys.java"


# direct methods
.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    const-string v0, "wx14e00e1a1c0c151e"

    .line 92
    :goto_0
    return-object v0

    .line 71
    :cond_0
    const-string v0, "com.cmplay.tiles4"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 72
    const-string v0, "wx6be15490dde8144a"

    goto :goto_0

    .line 73
    :cond_1
    const-string v0, "com.cmplay.tiles4_cn"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 74
    const-string v0, "wx14e00e1a1c0c151e"

    goto :goto_0

    .line 75
    :cond_2
    const-string v0, "com.tencent.tmgp.tiles2"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 76
    const-string v0, "wx58bec08bdd30e103"

    goto :goto_0

    .line 77
    :cond_3
    const-string v0, "com.cmplay.tiles4_cn.baidu"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 78
    const-string v0, "wx7827462f2cbc7078"

    goto :goto_0

    .line 79
    :cond_4
    const-string v0, "com.cmplay.tiles4_cn.mi"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 80
    const-string v0, "wx712d743ab5d15c56"

    goto :goto_0

    .line 81
    :cond_5
    const-string v0, "com.cmplay.tiles4_cn.hwgame"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 82
    const-string v0, "wx2975013cd9e3dc97"

    goto :goto_0

    .line 83
    :cond_6
    const-string v0, "com.tencent.tmgp.pianotiles2"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 84
    const-string v0, "wxc1b07d444409523c"

    goto :goto_0

    .line 85
    :cond_7
    const-string v0, "com.cmplay.tiles4_cn.egame"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 86
    const-string v0, "wx9a8aa2d844333bf4"

    goto :goto_0

    .line 87
    :cond_8
    const-string v0, "com.cmplay.tiles4_cn.m4399"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 88
    const-string v0, "wxdd4990092f30156a"

    goto :goto_0

    .line 89
    :cond_9
    const-string v0, "com.cmplay.tiles4_cn.uc"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 90
    const-string v0, "wx2975013cd9e3dc97"

    goto :goto_0

    .line 92
    :cond_a
    const-string v0, "wx14e00e1a1c0c151e"

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    const-string v0, "71d5ddcae2e5dfd879fb369128b2e771"

    .line 120
    :goto_0
    return-object v0

    .line 99
    :cond_0
    const-string v0, "com.cmplay.tiles4"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 100
    const-string v0, ""

    goto :goto_0

    .line 101
    :cond_1
    const-string v0, "com.cmplay.tiles4_cn"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 102
    const-string v0, "71d5ddcae2e5dfd879fb369128b2e771"

    goto :goto_0

    .line 103
    :cond_2
    const-string v0, "com.tencent.tmgp.tiles2"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 104
    const-string v0, "82e7e537d385dd443dfe8a54e4b48261"

    goto :goto_0

    .line 105
    :cond_3
    const-string v0, "com.cmplay.tiles4_cn.baidu"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 106
    const-string v0, "3b550d2ff4d32ce67701acda49dcbb44"

    goto :goto_0

    .line 107
    :cond_4
    const-string v0, "com.cmplay.tiles4_cn.mi"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 108
    const-string v0, "818e3f64b9faa2227b2f231f88e31d9a"

    goto :goto_0

    .line 109
    :cond_5
    const-string v0, "com.cmplay.tiles4_cn.hwgame"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 110
    const-string v0, "d4624c36b6795d1d99dcf0547af5443d"

    goto :goto_0

    .line 111
    :cond_6
    const-string v0, "com.tencent.tmgp.pianotiles2"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 112
    const-string v0, "bf7971a0b8573945c5852fbff76df084"

    goto :goto_0

    .line 113
    :cond_7
    const-string v0, "com.cmplay.tiles4_cn.egame"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 114
    const-string v0, "d4624c36b6795d1d99dcf0547af5443d"

    goto :goto_0

    .line 115
    :cond_8
    const-string v0, "com.cmplay.tiles4_cn.m4399"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 116
    const-string v0, "d4aedc023dca0276849903e87e5d9f8a"

    goto :goto_0

    .line 117
    :cond_9
    const-string v0, "com.cmplay.tiles4_cn.uc"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 118
    const-string v0, "d4624c36b6795d1d99dcf0547af5443d"

    goto :goto_0

    .line 120
    :cond_a
    const-string v0, "71d5ddcae2e5dfd879fb369128b2e771"

    goto :goto_0
.end method
