.class public Lcom/cmplay/internalpush/data/m;
.super Ljava/lang/Object;
.source "MaterialNotDownloadInfo.java"


# instance fields
.field public a:J

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:J

.field public e:I


# direct methods
.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;JI)V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-wide p1, p0, Lcom/cmplay/internalpush/data/m;->a:J

    .line 27
    iput-object p3, p0, Lcom/cmplay/internalpush/data/m;->b:Ljava/lang/String;

    .line 28
    iput-object p4, p0, Lcom/cmplay/internalpush/data/m;->c:Ljava/lang/String;

    .line 29
    iput-wide p5, p0, Lcom/cmplay/internalpush/data/m;->d:J

    .line 30
    iput p7, p0, Lcom/cmplay/internalpush/data/m;->e:I

    .line 31
    return-void
.end method
