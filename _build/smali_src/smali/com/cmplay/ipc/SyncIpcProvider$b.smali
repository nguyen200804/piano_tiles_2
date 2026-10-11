.class Lcom/cmplay/ipc/SyncIpcProvider$b;
.super Ljava/lang/Object;
.source "SyncIpcProvider.java"

# interfaces
.implements Lcom/cmplay/ipc/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cmplay/ipc/SyncIpcProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# static fields
.field private static a:Lcom/cmplay/ipc/SyncIpcProvider$b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 151
    const/4 v0, 0x0

    sput-object v0, Lcom/cmplay/ipc/SyncIpcProvider$b;->a:Lcom/cmplay/ipc/SyncIpcProvider$b;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 155
    return-void
.end method

.method private static a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 200
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    if-nez p0, :cond_2

    :cond_0
    move-object p1, v0

    .line 216
    :cond_1
    :goto_0
    return-object p1

    .line 203
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 204
    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 205
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    goto :goto_0

    .line 207
    :cond_3
    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 208
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_0

    .line 210
    :cond_4
    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 211
    invoke-static {p1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p1

    goto :goto_0

    .line 213
    :cond_5
    const-class v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    move-object p1, v0

    .line 216
    goto :goto_0
.end method

.method private static a(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentValues;",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 184
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 185
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p3

    .line 186
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {p0, p1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 188
    :cond_0
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, p3

    .line 189
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {p0, p1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 191
    :cond_1
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    move-object v0, p3

    .line 192
    check-cast v0, Ljava/lang/Long;

    invoke-virtual {p0, p1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 194
    :cond_2
    const-class v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 195
    check-cast p3, Ljava/lang/String;

    invoke-virtual {p0, p1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    :cond_3
    return-void
.end method

.method public static declared-synchronized b()Lcom/cmplay/ipc/SyncIpcProvider$b;
    .locals 2

    .prologue
    .line 158
    const-class v1, Lcom/cmplay/ipc/SyncIpcProvider$b;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/cmplay/ipc/SyncIpcProvider$b;->a:Lcom/cmplay/ipc/SyncIpcProvider$b;

    if-nez v0, :cond_0

    .line 159
    new-instance v0, Lcom/cmplay/ipc/SyncIpcProvider$b;

    invoke-direct {v0}, Lcom/cmplay/ipc/SyncIpcProvider$b;-><init>()V

    sput-object v0, Lcom/cmplay/ipc/SyncIpcProvider$b;->a:Lcom/cmplay/ipc/SyncIpcProvider$b;

    .line 161
    :cond_0
    sget-object v0, Lcom/cmplay/ipc/SyncIpcProvider$b;->a:Lcom/cmplay/ipc/SyncIpcProvider$b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 158
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 221
    const/4 v0, 0x3

    return v0
.end method

.method public a(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 165
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 166
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "attempt to invoke illegal method"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 168
    :cond_0
    if-eqz p2, :cond_1

    array-length v1, p2

    move v2, v1

    .line 169
    :goto_0
    if-eqz p3, :cond_2

    array-length v1, p3

    .line 170
    :goto_1
    if-eq v2, v1, :cond_3

    .line 171
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "illegal arguments"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    move v2, v0

    .line 168
    goto :goto_0

    :cond_2
    move v1, v0

    .line 169
    goto :goto_1

    .line 173
    :cond_3
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 174
    const-string v3, "method_name"

    invoke-virtual {v2, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    const-string v3, "arg_count"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 176
    :goto_2
    if-ge v0, v1, :cond_4

    .line 177
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "arg_type"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-class v4, Ljava/lang/String;

    aget-object v5, p2, v0

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v3, v4, v5}, Lcom/cmplay/ipc/SyncIpcProvider$b;->a(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    .line 178
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "arg"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aget-object v4, p2, v0

    aget-object v5, p3, v0

    invoke-static {v2, v3, v4, v5}, Lcom/cmplay/ipc/SyncIpcProvider$b;->a(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    .line 176
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 180
    :cond_4
    invoke-static {v2, p0}, Lcom/cmplay/ipc/IpcProvider;->a(Landroid/content/ContentValues;Lcom/cmplay/ipc/c;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p4, v0}, Lcom/cmplay/ipc/SyncIpcProvider$b;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
