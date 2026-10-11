.class public Lcom/cmplay/cloud/a/a$a;
.super Lcom/cmplay/ipc/a;
.source "CloudCfgGetterIPCInvoker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cmplay/cloud/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/cmplay/ipc/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/ContentValues;)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 45
    const-string v1, "func_type"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 46
    packed-switch v1, :pswitch_data_0

    .line 94
    :cond_0
    :goto_0
    return-object v0

    .line 48
    :pswitch_0
    invoke-static {}, Lcom/cmplay/cloud/a;->a()Lcom/cmplay/cloud/a;

    move-result-object v0

    const-string v1, "arg1"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const-string v2, "arg2"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/cmplay/cloud/a;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 51
    :pswitch_1
    invoke-static {}, Lcom/cmplay/cloud/a;->a()Lcom/cmplay/cloud/a;

    move-result-object v1

    const-string v2, "arg1"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const-string v3, "arg2"

    invoke-virtual {p1, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/cmplay/cloud/a;->a(ILjava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 53
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 56
    new-instance v3, Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 57
    const/4 v0, 0x1

    move v1, v0

    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 58
    const-string v0, "**"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 60
    :cond_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 62
    :pswitch_2
    invoke-static {}, Lcom/cmplay/cloud/a;->a()Lcom/cmplay/cloud/a;

    move-result-object v0

    const-string v1, "arg1"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const-string v2, "arg2"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "arg3"

    invoke-virtual {p1, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "arg4"

    invoke-virtual {p1, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/cmplay/cloud/a;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 67
    :pswitch_3
    invoke-static {}, Lcom/cmplay/cloud/a;->a()Lcom/cmplay/cloud/a;

    move-result-object v0

    const-string v1, "arg1"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const-string v2, "arg2"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "arg3"

    invoke-virtual {p1, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "arg4"

    invoke-virtual {p1, v4}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/cmplay/cloud/a;->a(ILjava/lang/String;Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 72
    :pswitch_4
    invoke-static {}, Lcom/cmplay/cloud/a;->a()Lcom/cmplay/cloud/a;

    move-result-object v0

    const-string v1, "arg1"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const-string v2, "arg2"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "arg3"

    invoke-virtual {p1, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "arg4"

    invoke-virtual {p1, v4}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Lcom/cmplay/cloud/a;->a(ILjava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 77
    :pswitch_5
    invoke-static {}, Lcom/cmplay/cloud/a;->a()Lcom/cmplay/cloud/a;

    move-result-object v0

    const-string v1, "arg1"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const-string v2, "arg2"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "arg3"

    invoke-virtual {p1, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "arg4"

    invoke-virtual {p1, v4}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/cmplay/cloud/a;->a(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 82
    :pswitch_6
    invoke-static {}, Lcom/cmplay/cloud/a;->a()Lcom/cmplay/cloud/a;

    move-result-object v0

    const-string v1, "arg1"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const-string v2, "arg2"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "arg3"

    invoke-virtual {p1, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "arg4"

    invoke-virtual {p1, v4}, Landroid/content/ContentValues;->getAsDouble(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Lcom/cmplay/cloud/a;->a(ILjava/lang/String;Ljava/lang/String;D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 87
    :pswitch_7
    const-string v1, "arg1"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 88
    invoke-static {}, Lcom/cmplay/cloud/a;->a()Lcom/cmplay/cloud/a;

    move-result-object v2

    invoke-virtual {p0}, Lcom/cmplay/cloud/a/a$a;->a()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lcom/cmplay/cloud/a;->a(Landroid/content/Context;Z)V

    goto/16 :goto_0

    .line 91
    :pswitch_8
    invoke-static {}, Lcom/cmplay/cloud/a;->a()Lcom/cmplay/cloud/a;

    move-result-object v1

    invoke-virtual {p0}, Lcom/cmplay/cloud/a/a$a;->a()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/cmplay/cloud/a;->a(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 46
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method
