.class Lcom/cmplay/crashreport/q;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/FilenameFilter;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/cmplay/crashreport/m;


# direct methods
.method constructor <init>(Lcom/cmplay/crashreport/m;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cmplay/crashreport/q;->b:Lcom/cmplay/crashreport/m;

    iput-object p2, p0, Lcom/cmplay/crashreport/q;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/cmplay/crashreport/q;->a:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
