.class Lcom/android/deskclock/HandleApiCalls$SnoozeAlarmAsync;
.super Landroid/os/AsyncTask;
.source "HandleApiCalls.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/deskclock/HandleApiCalls;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SnoozeAlarmAsync"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private final mContext:Landroid/content/Context;

.field private final mIntent:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Landroid/content/Intent;Landroid/app/Activity;)V
    .locals 1

    .line 259
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 260
    invoke-virtual {p2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/deskclock/HandleApiCalls$SnoozeAlarmAsync;->mContext:Landroid/content/Context;

    .line 261
    iput-object p1, p0, Lcom/android/deskclock/HandleApiCalls$SnoozeAlarmAsync;->mIntent:Landroid/content/Intent;

    .line 262
    iput-object p2, p0, Lcom/android/deskclock/HandleApiCalls$SnoozeAlarmAsync;->mActivity:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 253
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/deskclock/HandleApiCalls$SnoozeAlarmAsync;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 4

    .line 267
    iget-object p1, p0, Lcom/android/deskclock/HandleApiCalls$SnoozeAlarmAsync;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const/4 v0, 0x5

    .line 268
    invoke-static {p1, v0}, Lcom/android/deskclock/provider/AlarmInstance;->getInstancesByState(Landroid/content/ContentResolver;I)Ljava/util/List;

    move-result-object p1

    .line 270
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 271
    iget-object p1, p0, Lcom/android/deskclock/HandleApiCalls$SnoozeAlarmAsync;->mContext:Landroid/content/Context;

    const v0, 0x7f110210

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 272
    invoke-static {}, Lcom/android/deskclock/controller/Controller;->getController()Lcom/android/deskclock/controller/Controller;

    move-result-object v0

    iget-object p0, p0, Lcom/android/deskclock/HandleApiCalls$SnoozeAlarmAsync;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, p0, p1}, Lcom/android/deskclock/controller/Controller;->notifyVoiceFailure(Landroid/app/Activity;Ljava/lang/String;)V

    .line 273
    invoke-static {}, Lcom/android/deskclock/HandleApiCalls;->access$000()Lcom/android/deskclock/LogUtils$Logger;

    move-result-object p0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "No firing alarms"

    invoke-virtual {p0, v0, p1}, Lcom/android/deskclock/LogUtils$Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1

    .line 277
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/deskclock/provider/AlarmInstance;

    .line 278
    iget-object v2, p0, Lcom/android/deskclock/HandleApiCalls$SnoozeAlarmAsync;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/deskclock/HandleApiCalls$SnoozeAlarmAsync;->mActivity:Landroid/app/Activity;

    invoke-static {v0, v2, v3}, Lcom/android/deskclock/HandleApiCalls;->snoozeAlarm(Lcom/android/deskclock/provider/AlarmInstance;Landroid/content/Context;Landroid/app/Activity;)V

    goto :goto_0

    :cond_1
    return-object v1
.end method
