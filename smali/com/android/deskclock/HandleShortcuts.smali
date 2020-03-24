.class public Lcom/android/deskclock/HandleShortcuts;
.super Landroid/app/Activity;
.source "HandleShortcuts.java"


# static fields
.field private static final LOGGER:Lcom/android/deskclock/LogUtils$Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 31
    new-instance v0, Lcom/android/deskclock/LogUtils$Logger;

    const-string v1, "HandleShortcuts"

    invoke-direct {v0, v1}, Lcom/android/deskclock/LogUtils$Logger;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/deskclock/HandleShortcuts;->LOGGER:Lcom/android/deskclock/LogUtils$Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8

    .line 35
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 37
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const/4 v0, 0x0

    .line 40
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 41
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const v3, -0x45826f23

    const-string v4, "com.android.deskclock.action.PAUSE_STOPWATCH"

    const-string v5, "com.android.deskclock.action.START_STOPWATCH"

    const/4 v6, 0x1

    const/4 v7, -0x1

    if-eq v2, v3, :cond_1

    const v3, -0x2602f68f

    if-eq v2, v3, :cond_0

    goto :goto_0

    :cond_0
    :try_start_1
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v0

    goto :goto_1

    :cond_1
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v6

    goto :goto_1

    :cond_2
    :goto_0
    move v2, v7

    :goto_1
    const v3, 0x7f1101ea

    if-eqz v2, :cond_4

    if-ne v2, v6, :cond_3

    const v1, 0x7f110185

    .line 52
    invoke-static {v1, v3}, Lcom/android/deskclock/events/Events;->sendStopwatchEvent(II)V

    .line 55
    invoke-static {}, Lcom/android/deskclock/uidata/UiDataModel;->getUiDataModel()Lcom/android/deskclock/uidata/UiDataModel;

    move-result-object v1

    sget-object v2, Lcom/android/deskclock/uidata/UiDataModel$Tab;->STOPWATCH:Lcom/android/deskclock/uidata/UiDataModel$Tab;

    invoke-virtual {v1, v2}, Lcom/android/deskclock/uidata/UiDataModel;->setSelectedTab(Lcom/android/deskclock/uidata/UiDataModel$Tab;)V

    .line 56
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/deskclock/DeskClock;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 57
    invoke-virtual {v1, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 56
    invoke-virtual {p0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 58
    invoke-virtual {p0, v7}, Landroid/app/Activity;->setResult(I)V

    goto :goto_2

    .line 61
    :cond_3
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unsupported action: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_4
    const v1, 0x7f11017e

    .line 43
    invoke-static {v1, v3}, Lcom/android/deskclock/events/Events;->sendStopwatchEvent(II)V

    .line 46
    invoke-static {}, Lcom/android/deskclock/uidata/UiDataModel;->getUiDataModel()Lcom/android/deskclock/uidata/UiDataModel;

    move-result-object v1

    sget-object v2, Lcom/android/deskclock/uidata/UiDataModel$Tab;->STOPWATCH:Lcom/android/deskclock/uidata/UiDataModel$Tab;

    invoke-virtual {v1, v2}, Lcom/android/deskclock/uidata/UiDataModel;->setSelectedTab(Lcom/android/deskclock/uidata/UiDataModel$Tab;)V

    .line 47
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/deskclock/DeskClock;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 48
    invoke-virtual {v1, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 47
    invoke-virtual {p0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 49
    invoke-virtual {p0, v7}, Landroid/app/Activity;->setResult(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception v1

    .line 64
    :try_start_2
    sget-object v2, Lcom/android/deskclock/HandleShortcuts;->LOGGER:Lcom/android/deskclock/LogUtils$Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error handling intent: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1, v1}, Lcom/android/deskclock/LogUtils$Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 65
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setResult(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 67
    :goto_2
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :goto_3
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    throw p1
.end method
