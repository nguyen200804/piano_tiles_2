.class public Lcom/cmplay/util/aa;
.super Ljava/lang/Object;
.source "SharePreferenceHelper.java"


# static fields
.field private static a:Landroid/content/Context;

.field private static b:Lcom/cmplay/util/k;


# direct methods
.method public static a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 142
    const-string v0, "com.white.tap2.report_service_name"

    return-object v0
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 166
    sget-object v0, Lcom/cmplay/util/aa;->b:Lcom/cmplay/util/k;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Lcom/cmplay/util/k;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Lcom/cmplay/util/k;)V
    .locals 1

    .prologue
    .line 137
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/cmplay/util/aa;->a:Landroid/content/Context;

    .line 138
    sput-object p1, Lcom/cmplay/util/aa;->b:Lcom/cmplay/util/k;

    .line 139
    return-void
.end method

.method public static a(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 154
    sget-object v0, Lcom/cmplay/util/aa;->b:Lcom/cmplay/util/k;

    invoke-interface {v0, p0, p1}, Lcom/cmplay/util/k;->b(Ljava/lang/String;I)V

    .line 155
    return-void
.end method

.method public static a(Ljava/lang/String;J)V
    .locals 1

    .prologue
    .line 162
    sget-object v0, Lcom/cmplay/util/aa;->b:Lcom/cmplay/util/k;

    invoke-interface {v0, p0, p1, p2}, Lcom/cmplay/util/k;->b(Ljava/lang/String;J)V

    .line 163
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 146
    sget-object v0, Lcom/cmplay/util/aa;->b:Lcom/cmplay/util/k;

    invoke-interface {v0, p0, p1}, Lcom/cmplay/util/k;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    return-void
.end method

.method public static a(Ljava/lang/String;Z)V
    .locals 1

    .prologue
    .line 150
    sget-object v0, Lcom/cmplay/util/aa;->b:Lcom/cmplay/util/k;

    invoke-interface {v0, p0, p1}, Lcom/cmplay/util/k;->b(Ljava/lang/String;Z)V

    .line 151
    return-void
.end method

.method public static b(Ljava/lang/String;)I
    .locals 2

    .prologue
    .line 174
    sget-object v0, Lcom/cmplay/util/aa;->b:Lcom/cmplay/util/k;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Lcom/cmplay/util/k;->a(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static b(Ljava/lang/String;I)I
    .locals 1

    .prologue
    .line 178
    sget-object v0, Lcom/cmplay/util/aa;->b:Lcom/cmplay/util/k;

    invoke-interface {v0, p0, p1}, Lcom/cmplay/util/k;->a(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static b(Ljava/lang/String;J)J
    .locals 3

    .prologue
    .line 202
    sget-object v0, Lcom/cmplay/util/aa;->b:Lcom/cmplay/util/k;

    invoke-interface {v0, p0, p1, p2}, Lcom/cmplay/util/k;->a(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 170
    sget-object v0, Lcom/cmplay/util/aa;->b:Lcom/cmplay/util/k;

    invoke-interface {v0, p0, p1}, Lcom/cmplay/util/k;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static b(Ljava/lang/String;Z)Z
    .locals 1

    .prologue
    .line 194
    sget-object v0, Lcom/cmplay/util/aa;->b:Lcom/cmplay/util/k;

    invoke-interface {v0, p0, p1}, Lcom/cmplay/util/k;->a(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method
