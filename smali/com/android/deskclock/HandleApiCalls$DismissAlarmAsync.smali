.class Lcom/android/deskclock/HandleApiCalls$DismissAlarmAsync;
.super Landroid/os/AsyncTask;
.source "HandleApiCalls.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/deskclock/HandleApiCalls;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DismissAlarmAsync"
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
.method public constructor <init>(Landroid/content/Context;Landroid/content/Intent;Landroid/app/Activity;)V
    .locals 0

    .line 174
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 175
    iput-object p1, p0, Lcom/android/deskclock/HandleApiCalls$DismissAlarmAsync;->mContext:Landroid/content/Context;

    .line 176
    iput-object p2, p0, Lcom/android/deskclock/HandleApiCalls$DismissAlarmAsync;->mIntent:Landroid/content/Intent;

    .line 177
    iput-object p3, p0, Lcom/android/deskclock/HandleApiCalls$DismissAlarmAsync;->mActivity:Landroid/app/Activity;

    return-void
.end method

.method private static getEnabledAlarms(Landroid/content/Context;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/deskclock/provider/Alarm;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "enabled"

    aput-object v2, v0, v1

    const-string v1, "%s=?"

    .line 243
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    .line 244
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    .line 245
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v0, v1}, Lcom/android/deskclock/provider/Alarm;->getAlarms(Landroid/content/ContentResolver;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 168
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/deskclock/HandleApiCalls$DismissAlarmAsync;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 12

    .line 182
    iget-object p1, p0, Lcom/android/deskclock/HandleApiCalls$DismissAlarmAsync;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    .line 183
    iget-object v0, p0, Lcom/android/deskclock/HandleApiCalls$DismissAlarmAsync;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/deskclock/HandleApiCalls$DismissAlarmAsync;->getEnabledAlarms(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 184
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    .line 185
    iget-object p1, p0, Lcom/android/deskclock/HandleApiCalls$DismissAlarmAsync;->mContext:Landroid/content/Context;

    const v0, 0x7f110212

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 186
    invoke-static {}, Lcom/android/deskclock/controller/Controller;->getController()Lcom/android/deskclock/controller/Controller;

    move-result-object v0

    iget-object p0, p0, Lcom/android/deskclock/HandleApiCalls$DismissAlarmAsync;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, p0, p1}, Lcom/android/deskclock/controller/Controller;->notifyVoiceFailure(Landroid/app/Activity;Ljava/lang/String;)V

    .line 187
    invoke-static {}, Lcom/android/deskclock/HandleApiCalls;->access$000()Lcom/android/deskclock/LogUtils$Logger;

    move-result-object p0

    new-array p1, v3, [Ljava/lang/Object;

    const-string v0, "No scheduled alarms"

    invoke-virtual {p0, v0, p1}, Lcom/android/deskclock/LogUtils$Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v2

    .line 192
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 194
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/deskclock/provider/Alarm;

    iget-wide v4, v4, Lcom/android/deskclock/provider/Alarm;->id:J

    .line 193
    invoke-static {p1, v4, v5}, Lcom/android/deskclock/provider/AlarmInstance;->getNextUpcomingInstanceByAlarmId(Landroid/content/ContentResolver;J)Lcom/android/deskclock/provider/AlarmInstance;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 195
    iget v4, v4, Lcom/android/deskclock/provider/AlarmInstance;->mAlarmState:I

    const/4 v5, 0x5

    if-le v4, v5, :cond_1

    .line 196
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 200
    :cond_3
    iget-object p1, p0, Lcom/android/deskclock/HandleApiCalls$DismissAlarmAsync;->mIntent:Landroid/content/Intent;

    const-string v1, "android.intent.extra.alarm.SEARCH_MODE"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const v1, 0x7f11021a

    const-string v4, "com.android.deskclock.EXTRA_ALARMS"

    const-string v5, "com.android.deskclock.EXTRA_ACTION"

    const/high16 v6, 0x10000000

    const/4 v7, 0x1

    if-nez p1, :cond_4

    .line 201
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v8

    if-le v8, v7, :cond_4

    .line 203
    new-instance p1, Landroid/content/Intent;

    iget-object v7, p0, Lcom/android/deskclock/HandleApiCalls$DismissAlarmAsync;->mContext:Landroid/content/Context;

    const-class v8, Lcom/android/deskclock/AlarmSelectionActivity;

    invoke-direct {p1, v7, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 205
    invoke-virtual {p1, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object p1

    .line 206
    invoke-virtual {p1, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p1

    .line 207
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Landroid/os/Parcelable;

    invoke-interface {v0, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/os/Parcelable;

    invoke-virtual {p1, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object p1

    .line 208
    iget-object v0, p0, Lcom/android/deskclock/HandleApiCalls$DismissAlarmAsync;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 209
    iget-object p1, p0, Lcom/android/deskclock/HandleApiCalls$DismissAlarmAsync;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 210
    invoke-static {}, Lcom/android/deskclock/controller/Controller;->getController()Lcom/android/deskclock/controller/Controller;

    move-result-object v0

    iget-object p0, p0, Lcom/android/deskclock/HandleApiCalls$DismissAlarmAsync;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, p0, p1}, Lcom/android/deskclock/controller/Controller;->notifyVoiceSuccess(Landroid/app/Activity;Ljava/lang/String;)V

    return-object v2

    .line 215
    :cond_4
    new-instance v8, Lcom/android/deskclock/FetchMatchingAlarmsAction;

    iget-object v9, p0, Lcom/android/deskclock/HandleApiCalls$DismissAlarmAsync;->mContext:Landroid/content/Context;

    iget-object v10, p0, Lcom/android/deskclock/HandleApiCalls$DismissAlarmAsync;->mIntent:Landroid/content/Intent;

    iget-object v11, p0, Lcom/android/deskclock/HandleApiCalls$DismissAlarmAsync;->mActivity:Landroid/app/Activity;

    invoke-direct {v8, v9, v0, v10, v11}, Lcom/android/deskclock/FetchMatchingAlarmsAction;-><init>(Landroid/content/Context;Ljava/util/List;Landroid/content/Intent;Landroid/app/Activity;)V

    .line 217
    invoke-virtual {v8}, Lcom/android/deskclock/FetchMatchingAlarmsAction;->run()V

    .line 218
    invoke-virtual {v8}, Lcom/android/deskclock/FetchMatchingAlarmsAction;->getMatchingAlarms()Ljava/util/List;

    move-result-object v0

    const-string v8, "android.all"

    .line 222
    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    if-le p1, v7, :cond_5

    .line 223
    new-instance p1, Landroid/content/Intent;

    iget-object v7, p0, Lcom/android/deskclock/HandleApiCalls$DismissAlarmAsync;->mContext:Landroid/content/Context;

    const-class v8, Lcom/android/deskclock/AlarmSelectionActivity;

    invoke-direct {p1, v7, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 224
    invoke-virtual {p1, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object p1

    .line 225
    invoke-virtual {p1, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p1

    .line 227
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Landroid/os/Parcelable;

    invoke-interface {v0, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/os/Parcelable;

    .line 226
    invoke-virtual {p1, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object p1

    .line 228
    iget-object v0, p0, Lcom/android/deskclock/HandleApiCalls$DismissAlarmAsync;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 229
    iget-object p1, p0, Lcom/android/deskclock/HandleApiCalls$DismissAlarmAsync;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 230
    invoke-static {}, Lcom/android/deskclock/controller/Controller;->getController()Lcom/android/deskclock/controller/Controller;

    move-result-object v0

    iget-object p0, p0, Lcom/android/deskclock/HandleApiCalls$DismissAlarmAsync;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, p0, p1}, Lcom/android/deskclock/controller/Controller;->notifyVoiceSuccess(Landroid/app/Activity;Ljava/lang/String;)V

    return-object v2

    .line 235
    :cond_5
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/deskclock/provider/Alarm;

    .line 236
    iget-object v1, p0, Lcom/android/deskclock/HandleApiCalls$DismissAlarmAsync;->mActivity:Landroid/app/Activity;

    invoke-static {v0, v1}, Lcom/android/deskclock/HandleApiCalls;->dismissAlarm(Lcom/android/deskclock/provider/Alarm;Landroid/app/Activity;)V

    .line 237
    invoke-static {}, Lcom/android/deskclock/HandleApiCalls;->access$000()Lcom/android/deskclock/LogUtils$Logger;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Alarm dismissed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v4, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v4}, Lcom/android/deskclock/LogUtils$Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_6
    return-object v2
.end method
