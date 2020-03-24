.class Lcom/android/deskclock/AlarmSelectionActivity$ProcessAlarmActionAsync;
.super Landroid/os/AsyncTask;
.source "AlarmSelectionActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/deskclock/AlarmSelectionActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ProcessAlarmActionAsync"
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
.field private final mAction:I

.field private final mActivity:Landroid/app/Activity;

.field private final mAlarm:Lcom/android/deskclock/provider/Alarm;


# direct methods
.method public constructor <init>(Lcom/android/deskclock/provider/Alarm;Landroid/app/Activity;I)V
    .locals 0

    .line 108
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 109
    iput-object p1, p0, Lcom/android/deskclock/AlarmSelectionActivity$ProcessAlarmActionAsync;->mAlarm:Lcom/android/deskclock/provider/Alarm;

    .line 110
    iput-object p2, p0, Lcom/android/deskclock/AlarmSelectionActivity$ProcessAlarmActionAsync;->mActivity:Landroid/app/Activity;

    .line 111
    iput p3, p0, Lcom/android/deskclock/AlarmSelectionActivity$ProcessAlarmActionAsync;->mAction:I

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 102
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/deskclock/AlarmSelectionActivity$ProcessAlarmActionAsync;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1

    .line 116
    iget p1, p0, Lcom/android/deskclock/AlarmSelectionActivity$ProcessAlarmActionAsync;->mAction:I

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 118
    :cond_0
    iget-object p1, p0, Lcom/android/deskclock/AlarmSelectionActivity$ProcessAlarmActionAsync;->mAlarm:Lcom/android/deskclock/provider/Alarm;

    iget-object p0, p0, Lcom/android/deskclock/AlarmSelectionActivity$ProcessAlarmActionAsync;->mActivity:Landroid/app/Activity;

    invoke-static {p1, p0}, Lcom/android/deskclock/HandleApiCalls;->dismissAlarm(Lcom/android/deskclock/provider/Alarm;Landroid/app/Activity;)V

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Object;

    const-string p1, "Invalid action"

    .line 121
    invoke-static {p1, p0}, Lcom/android/deskclock/LogUtils;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method
