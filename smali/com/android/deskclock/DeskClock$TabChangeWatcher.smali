.class final Lcom/android/deskclock/DeskClock$TabChangeWatcher;
.super Ljava/lang/Object;
.source "DeskClock.java"

# interfaces
.implements Lcom/android/deskclock/uidata/TabListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/deskclock/DeskClock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "TabChangeWatcher"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/deskclock/DeskClock;


# direct methods
.method private constructor <init>(Lcom/android/deskclock/DeskClock;)V
    .locals 0

    .line 673
    iput-object p1, p0, Lcom/android/deskclock/DeskClock$TabChangeWatcher;->this$0:Lcom/android/deskclock/DeskClock;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/deskclock/DeskClock;Lcom/android/deskclock/DeskClock$1;)V
    .locals 0

    .line 673
    invoke-direct {p0, p1}, Lcom/android/deskclock/DeskClock$TabChangeWatcher;-><init>(Lcom/android/deskclock/DeskClock;)V

    return-void
.end method


# virtual methods
.method public selectedTabChanged(Lcom/android/deskclock/uidata/UiDataModel$Tab;Lcom/android/deskclock/uidata/UiDataModel$Tab;)V
    .locals 2

    .line 678
    iget-object p1, p0, Lcom/android/deskclock/DeskClock$TabChangeWatcher;->this$0:Lcom/android/deskclock/DeskClock;

    invoke-static {p1}, Lcom/android/deskclock/DeskClock;->access$1700(Lcom/android/deskclock/DeskClock;)V

    .line 682
    invoke-static {}, Lcom/android/deskclock/data/DataModel;->getDataModel()Lcom/android/deskclock/data/DataModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/deskclock/data/DataModel;->isApplicationInForeground()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 683
    sget-object p1, Lcom/android/deskclock/DeskClock$8;->$SwitchMap$com$android$deskclock$uidata$UiDataModel$Tab:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p1, p1, p2

    const/4 p2, 0x1

    const v0, 0x7f1101e6

    const v1, 0x7f110183

    if-eq p1, p2, :cond_3

    const/4 p2, 0x2

    if-eq p1, p2, :cond_2

    const/4 p2, 0x3

    if-eq p1, p2, :cond_1

    const/4 p2, 0x4

    if-eq p1, p2, :cond_0

    goto :goto_0

    .line 694
    :cond_0
    invoke-static {v1, v0}, Lcom/android/deskclock/events/Events;->sendStopwatchEvent(II)V

    goto :goto_0

    .line 691
    :cond_1
    invoke-static {v1, v0}, Lcom/android/deskclock/events/Events;->sendTimerEvent(II)V

    goto :goto_0

    .line 688
    :cond_2
    invoke-static {v1, v0}, Lcom/android/deskclock/events/Events;->sendClockEvent(II)V

    goto :goto_0

    .line 685
    :cond_3
    invoke-static {v1, v0}, Lcom/android/deskclock/events/Events;->sendAlarmEvent(II)V

    .line 701
    :cond_4
    :goto_0
    iget-object p1, p0, Lcom/android/deskclock/DeskClock$TabChangeWatcher;->this$0:Lcom/android/deskclock/DeskClock;

    invoke-static {p1}, Lcom/android/deskclock/DeskClock;->access$900(Lcom/android/deskclock/DeskClock;)Landroid/animation/AnimatorSet;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->isStarted()Z

    move-result p1

    if-nez p1, :cond_5

    .line 702
    iget-object p0, p0, Lcom/android/deskclock/DeskClock$TabChangeWatcher;->this$0:Lcom/android/deskclock/DeskClock;

    const/16 p1, 0x9

    invoke-virtual {p0, p1}, Lcom/android/deskclock/DeskClock;->updateFab(I)V

    :cond_5
    return-void
.end method
