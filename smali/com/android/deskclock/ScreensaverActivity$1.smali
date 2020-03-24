.class Lcom/android/deskclock/ScreensaverActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "ScreensaverActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/deskclock/ScreensaverActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/deskclock/ScreensaverActivity;


# direct methods
.method constructor <init>(Lcom/android/deskclock/ScreensaverActivity;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/android/deskclock/ScreensaverActivity$1;->this$0:Lcom/android/deskclock/ScreensaverActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .line 56
    invoke-static {}, Lcom/android/deskclock/ScreensaverActivity;->access$100()Lcom/android/deskclock/LogUtils$Logger;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ScreensaverActivity onReceive, action: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v2}, Lcom/android/deskclock/LogUtils$Logger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 58
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p2

    const/4 v0, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    sparse-switch p2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string p2, "android.intent.action.ACTION_POWER_CONNECTED"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    move p1, v1

    goto :goto_1

    :sswitch_1
    const-string p2, "android.intent.action.USER_PRESENT"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    move p1, v2

    goto :goto_1

    :sswitch_2
    const-string p2, "android.app.action.NEXT_ALARM_CLOCK_CHANGED"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    move p1, v0

    goto :goto_1

    :sswitch_3
    const-string p2, "android.intent.action.ACTION_POWER_DISCONNECTED"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    move p1, v3

    goto :goto_1

    :cond_0
    :goto_0
    const/4 p1, -0x1

    :goto_1
    if-eqz p1, :cond_4

    if-eq p1, v3, :cond_3

    if-eq p1, v2, :cond_2

    if-eq p1, v0, :cond_1

    goto :goto_2

    .line 69
    :cond_1
    iget-object p0, p0, Lcom/android/deskclock/ScreensaverActivity$1;->this$0:Lcom/android/deskclock/ScreensaverActivity;

    invoke-static {p0}, Lcom/android/deskclock/ScreensaverActivity;->access$300(Lcom/android/deskclock/ScreensaverActivity;)Landroid/view/View;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/deskclock/Utils;->refreshAlarm(Landroid/content/Context;Landroid/view/View;)V

    goto :goto_2

    .line 66
    :cond_2
    iget-object p0, p0, Lcom/android/deskclock/ScreensaverActivity$1;->this$0:Lcom/android/deskclock/ScreensaverActivity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_2

    .line 63
    :cond_3
    iget-object p0, p0, Lcom/android/deskclock/ScreensaverActivity$1;->this$0:Lcom/android/deskclock/ScreensaverActivity;

    invoke-static {p0, v1}, Lcom/android/deskclock/ScreensaverActivity;->access$200(Lcom/android/deskclock/ScreensaverActivity;Z)V

    goto :goto_2

    .line 60
    :cond_4
    iget-object p0, p0, Lcom/android/deskclock/ScreensaverActivity$1;->this$0:Lcom/android/deskclock/ScreensaverActivity;

    invoke-static {p0, v3}, Lcom/android/deskclock/ScreensaverActivity;->access$200(Lcom/android/deskclock/ScreensaverActivity;Z)V

    :goto_2
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x7073f927 -> :sswitch_3
        -0x185734ab -> :sswitch_2
        0x311a1d6c -> :sswitch_1
        0x3cbf870b -> :sswitch_0
    .end sparse-switch
.end method
