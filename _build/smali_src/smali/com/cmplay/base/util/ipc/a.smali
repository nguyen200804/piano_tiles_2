.class public abstract Lcom/cmplay/base/util/ipc/a;
.super Ljava/lang/Object;
.source "IpcHandler.java"


# static fields
.field public static final CLASS_TAG:Ljava/lang/String; = "class_tag"

.field public static final FORCE_STATIC_METHOD:Ljava/lang/String; = "getInstance"

.field public static final ID_BASE:I = 0x0

.field public static final METHOD_ID:Ljava/lang/String; = "method_id"

.field public static final PARAMS_NUM:Ljava/lang/String; = "params_num"

.field public static final PARAMS_TAG:Ljava/lang/String; = "arg"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs createParams(I[Ljava/lang/Object;)Landroid/content/ContentValues;
    .locals 4
    .param p1, "type"    # I
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 34
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 35
    const-string v0, "class_tag"

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    const-string v0, "method_id"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 38
    if-eqz p2, :cond_0

    .line 39
    const-string v0, "params_num"

    array-length v2, p2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 40
    const/4 v0, 0x0

    :goto_0
    array-length v2, p2

    if-ge v0, v2, :cond_0

    .line 41
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "arg"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aget-object v3, p2, v0

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 44
    :cond_0
    return-object v1
.end method

.method protected getMid(Landroid/content/ContentValues;)I
    .locals 1
    .param p1, "cv"    # Landroid/content/ContentValues;

    .prologue
    .line 48
    const-string v0, "method_id"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method protected getParams(Landroid/content/ContentValues;)[Ljava/lang/String;
    .locals 4
    .param p1, "cv"    # Landroid/content/ContentValues;

    .prologue
    .line 52
    const-string v0, "params_num"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 53
    new-array v1, v0, [Ljava/lang/String;

    .line 54
    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 55
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "arg"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 56
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "arg"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 54
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 59
    :cond_1
    return-object v1
.end method

.method public abstract handler(Landroid/content/ContentValues;)Ljava/lang/String;
.end method

.method protected invoke(Landroid/content/ContentValues;)Ljava/lang/String;
    .locals 1
    .param p1, "cv"    # Landroid/content/ContentValues;

    .prologue
    .line 23
    invoke-static {p1}, Lcom/cmplay/base/util/ipc/IpcProvider;->a(Landroid/content/ContentValues;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected invoke(Landroid/content/ContentValues;Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .param p1, "cv"    # Landroid/content/ContentValues;
    .param p2, "defValue"    # Ljava/lang/Object;

    .prologue
    .line 26
    invoke-static {p1}, Lcom/cmplay/base/util/ipc/IpcProvider;->a(Landroid/content/ContentValues;)Ljava/lang/String;

    move-result-object v0

    .line 27
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 28
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 30
    :cond_0
    return-object v0
.end method
