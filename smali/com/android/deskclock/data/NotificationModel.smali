.class final Lcom/android/deskclock/data/NotificationModel;
.super Ljava/lang/Object;
.source "NotificationModel.java"


# instance fields
.field private mApplicationInForeground:Z


# direct methods
.method constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method getExpiredTimerNotificationId()I
    .locals 0

    const p0, 0x7ffffffc

    return p0
.end method

.method getMissedTimerNotificationId()I
    .locals 0

    const p0, 0x7ffffff9

    return p0
.end method

.method getStopwatchNotificationGroupKey()Ljava/lang/String;
    .locals 0

    const-string p0, "3"

    return-object p0
.end method

.method getStopwatchNotificationId()I
    .locals 0

    const p0, 0x7ffffffe

    return p0
.end method

.method getTimerNotificationGroupKey()Ljava/lang/String;
    .locals 0

    const-string p0, "2"

    return-object p0
.end method

.method getTimerNotificationMissedSortKey()Ljava/lang/String;
    .locals 0

    const-string p0, "1"

    return-object p0
.end method

.method getTimerNotificationSortKey()Ljava/lang/String;
    .locals 0

    const-string p0, "0"

    return-object p0
.end method

.method getUnexpiredTimerNotificationId()I
    .locals 0

    const p0, 0x7ffffffd

    return p0
.end method

.method isApplicationInForeground()Z
    .locals 0

    .line 37
    iget-boolean p0, p0, Lcom/android/deskclock/data/NotificationModel;->mApplicationInForeground:Z

    return p0
.end method

.method setApplicationInForeground(Z)V
    .locals 0

    .line 30
    iput-boolean p1, p0, Lcom/android/deskclock/data/NotificationModel;->mApplicationInForeground:Z

    return-void
.end method
