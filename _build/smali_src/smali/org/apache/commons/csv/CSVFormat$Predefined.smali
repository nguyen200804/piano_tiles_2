.class public final enum Lorg/apache/commons/csv/CSVFormat$Predefined;
.super Ljava/lang/Enum;
.source "CSVFormat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/csv/CSVFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Predefined"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/apache/commons/csv/CSVFormat$Predefined;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/commons/csv/CSVFormat$Predefined;

.field public static final enum Default:Lorg/apache/commons/csv/CSVFormat$Predefined;

.field public static final enum Excel:Lorg/apache/commons/csv/CSVFormat$Predefined;

.field public static final enum InformixUnload:Lorg/apache/commons/csv/CSVFormat$Predefined;

.field public static final enum InformixUnloadCsv:Lorg/apache/commons/csv/CSVFormat$Predefined;

.field public static final enum MySQL:Lorg/apache/commons/csv/CSVFormat$Predefined;

.field public static final enum RFC4180:Lorg/apache/commons/csv/CSVFormat$Predefined;

.field public static final enum TDF:Lorg/apache/commons/csv/CSVFormat$Predefined;


# instance fields
.field private final format:Lorg/apache/commons/csv/CSVFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 163
    new-instance v0, Lorg/apache/commons/csv/CSVFormat$Predefined;

    const-string v1, "Default"

    sget-object v2, Lorg/apache/commons/csv/CSVFormat;->DEFAULT:Lorg/apache/commons/csv/CSVFormat;

    invoke-direct {v0, v1, v4, v2}, Lorg/apache/commons/csv/CSVFormat$Predefined;-><init>(Ljava/lang/String;ILorg/apache/commons/csv/CSVFormat;)V

    sput-object v0, Lorg/apache/commons/csv/CSVFormat$Predefined;->Default:Lorg/apache/commons/csv/CSVFormat$Predefined;

    .line 168
    new-instance v0, Lorg/apache/commons/csv/CSVFormat$Predefined;

    const-string v1, "Excel"

    sget-object v2, Lorg/apache/commons/csv/CSVFormat;->EXCEL:Lorg/apache/commons/csv/CSVFormat;

    invoke-direct {v0, v1, v5, v2}, Lorg/apache/commons/csv/CSVFormat$Predefined;-><init>(Ljava/lang/String;ILorg/apache/commons/csv/CSVFormat;)V

    sput-object v0, Lorg/apache/commons/csv/CSVFormat$Predefined;->Excel:Lorg/apache/commons/csv/CSVFormat$Predefined;

    .line 174
    new-instance v0, Lorg/apache/commons/csv/CSVFormat$Predefined;

    const-string v1, "InformixUnload"

    sget-object v2, Lorg/apache/commons/csv/CSVFormat;->INFORMIX_UNLOAD:Lorg/apache/commons/csv/CSVFormat;

    invoke-direct {v0, v1, v6, v2}, Lorg/apache/commons/csv/CSVFormat$Predefined;-><init>(Ljava/lang/String;ILorg/apache/commons/csv/CSVFormat;)V

    sput-object v0, Lorg/apache/commons/csv/CSVFormat$Predefined;->InformixUnload:Lorg/apache/commons/csv/CSVFormat$Predefined;

    .line 180
    new-instance v0, Lorg/apache/commons/csv/CSVFormat$Predefined;

    const-string v1, "InformixUnloadCsv"

    sget-object v2, Lorg/apache/commons/csv/CSVFormat;->INFORMIX_UNLOAD_CSV:Lorg/apache/commons/csv/CSVFormat;

    invoke-direct {v0, v1, v7, v2}, Lorg/apache/commons/csv/CSVFormat$Predefined;-><init>(Ljava/lang/String;ILorg/apache/commons/csv/CSVFormat;)V

    sput-object v0, Lorg/apache/commons/csv/CSVFormat$Predefined;->InformixUnloadCsv:Lorg/apache/commons/csv/CSVFormat$Predefined;

    .line 185
    new-instance v0, Lorg/apache/commons/csv/CSVFormat$Predefined;

    const-string v1, "MySQL"

    sget-object v2, Lorg/apache/commons/csv/CSVFormat;->MYSQL:Lorg/apache/commons/csv/CSVFormat;

    invoke-direct {v0, v1, v8, v2}, Lorg/apache/commons/csv/CSVFormat$Predefined;-><init>(Ljava/lang/String;ILorg/apache/commons/csv/CSVFormat;)V

    sput-object v0, Lorg/apache/commons/csv/CSVFormat$Predefined;->MySQL:Lorg/apache/commons/csv/CSVFormat$Predefined;

    .line 190
    new-instance v0, Lorg/apache/commons/csv/CSVFormat$Predefined;

    const-string v1, "RFC4180"

    const/4 v2, 0x5

    sget-object v3, Lorg/apache/commons/csv/CSVFormat;->RFC4180:Lorg/apache/commons/csv/CSVFormat;

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/commons/csv/CSVFormat$Predefined;-><init>(Ljava/lang/String;ILorg/apache/commons/csv/CSVFormat;)V

    sput-object v0, Lorg/apache/commons/csv/CSVFormat$Predefined;->RFC4180:Lorg/apache/commons/csv/CSVFormat$Predefined;

    .line 195
    new-instance v0, Lorg/apache/commons/csv/CSVFormat$Predefined;

    const-string v1, "TDF"

    const/4 v2, 0x6

    sget-object v3, Lorg/apache/commons/csv/CSVFormat;->TDF:Lorg/apache/commons/csv/CSVFormat;

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/commons/csv/CSVFormat$Predefined;-><init>(Ljava/lang/String;ILorg/apache/commons/csv/CSVFormat;)V

    sput-object v0, Lorg/apache/commons/csv/CSVFormat$Predefined;->TDF:Lorg/apache/commons/csv/CSVFormat$Predefined;

    .line 158
    const/4 v0, 0x7

    new-array v0, v0, [Lorg/apache/commons/csv/CSVFormat$Predefined;

    sget-object v1, Lorg/apache/commons/csv/CSVFormat$Predefined;->Default:Lorg/apache/commons/csv/CSVFormat$Predefined;

    aput-object v1, v0, v4

    sget-object v1, Lorg/apache/commons/csv/CSVFormat$Predefined;->Excel:Lorg/apache/commons/csv/CSVFormat$Predefined;

    aput-object v1, v0, v5

    sget-object v1, Lorg/apache/commons/csv/CSVFormat$Predefined;->InformixUnload:Lorg/apache/commons/csv/CSVFormat$Predefined;

    aput-object v1, v0, v6

    sget-object v1, Lorg/apache/commons/csv/CSVFormat$Predefined;->InformixUnloadCsv:Lorg/apache/commons/csv/CSVFormat$Predefined;

    aput-object v1, v0, v7

    sget-object v1, Lorg/apache/commons/csv/CSVFormat$Predefined;->MySQL:Lorg/apache/commons/csv/CSVFormat$Predefined;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lorg/apache/commons/csv/CSVFormat$Predefined;->RFC4180:Lorg/apache/commons/csv/CSVFormat$Predefined;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lorg/apache/commons/csv/CSVFormat$Predefined;->TDF:Lorg/apache/commons/csv/CSVFormat$Predefined;

    aput-object v2, v0, v1

    sput-object v0, Lorg/apache/commons/csv/CSVFormat$Predefined;->$VALUES:[Lorg/apache/commons/csv/CSVFormat$Predefined;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILorg/apache/commons/csv/CSVFormat;)V
    .locals 0
    .param p3, "format"    # Lorg/apache/commons/csv/CSVFormat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/csv/CSVFormat;",
            ")V"
        }
    .end annotation

    .prologue
    .line 199
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 200
    iput-object p3, p0, Lorg/apache/commons/csv/CSVFormat$Predefined;->format:Lorg/apache/commons/csv/CSVFormat;

    .line 201
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/commons/csv/CSVFormat$Predefined;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 158
    const-class v0, Lorg/apache/commons/csv/CSVFormat$Predefined;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/csv/CSVFormat$Predefined;

    return-object v0
.end method

.method public static values()[Lorg/apache/commons/csv/CSVFormat$Predefined;
    .locals 1

    .prologue
    .line 158
    sget-object v0, Lorg/apache/commons/csv/CSVFormat$Predefined;->$VALUES:[Lorg/apache/commons/csv/CSVFormat$Predefined;

    invoke-virtual {v0}, [Lorg/apache/commons/csv/CSVFormat$Predefined;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/csv/CSVFormat$Predefined;

    return-object v0
.end method


# virtual methods
.method public getFormat()Lorg/apache/commons/csv/CSVFormat;
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lorg/apache/commons/csv/CSVFormat$Predefined;->format:Lorg/apache/commons/csv/CSVFormat;

    return-object v0
.end method
