.class public Lcom/helper/PowerReceiver;
.super Landroid/content/BroadcastReceiver;
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;
    move-result-object v0
    const-string v1, "android.intent.action.ACTION_POWER_CONNECTED"
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :cond_0
    new-instance v0, Landroid/content/Intent;
    const-class v1, Lcom/helper/LamvvoCore;
    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :cond_0
    return-void
.end method
