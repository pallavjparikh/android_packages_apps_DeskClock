.class Lcom/android/deskclock/timer/ExpiredTimersActivity$TimerChangeWatcher;
.super Ljava/lang/Object;
.source "ExpiredTimersActivity.java"

# interfaces
.implements Lcom/android/deskclock/data/TimerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/deskclock/timer/ExpiredTimersActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TimerChangeWatcher"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/deskclock/timer/ExpiredTimersActivity;


# direct methods
.method private constructor <init>(Lcom/android/deskclock/timer/ExpiredTimersActivity;)V
    .locals 0

    .line 285
    iput-object p1, p0, Lcom/android/deskclock/timer/ExpiredTimersActivity$TimerChangeWatcher;->this$0:Lcom/android/deskclock/timer/ExpiredTimersActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/deskclock/timer/ExpiredTimersActivity;Lcom/android/deskclock/timer/ExpiredTimersActivity$1;)V
    .locals 0

    .line 285
    invoke-direct {p0, p1}, Lcom/android/deskclock/timer/ExpiredTimersActivity$TimerChangeWatcher;-><init>(Lcom/android/deskclock/timer/ExpiredTimersActivity;)V

    return-void
.end method


# virtual methods
.method public timerAdded(Lcom/android/deskclock/data/Timer;)V
    .locals 1

    .line 288
    invoke-virtual {p1}, Lcom/android/deskclock/data/Timer;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 289
    iget-object p0, p0, Lcom/android/deskclock/timer/ExpiredTimersActivity$TimerChangeWatcher;->this$0:Lcom/android/deskclock/timer/ExpiredTimersActivity;

    invoke-static {p0, p1}, Lcom/android/deskclock/timer/ExpiredTimersActivity;->access$600(Lcom/android/deskclock/timer/ExpiredTimersActivity;Lcom/android/deskclock/data/Timer;)V

    :cond_0
    return-void
.end method

.method public timerRemoved(Lcom/android/deskclock/data/Timer;)V
    .locals 1

    .line 304
    invoke-virtual {p1}, Lcom/android/deskclock/data/Timer;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 305
    iget-object p0, p0, Lcom/android/deskclock/timer/ExpiredTimersActivity$TimerChangeWatcher;->this$0:Lcom/android/deskclock/timer/ExpiredTimersActivity;

    invoke-static {p0, p1}, Lcom/android/deskclock/timer/ExpiredTimersActivity;->access$700(Lcom/android/deskclock/timer/ExpiredTimersActivity;Lcom/android/deskclock/data/Timer;)V

    :cond_0
    return-void
.end method

.method public timerUpdated(Lcom/android/deskclock/data/Timer;Lcom/android/deskclock/data/Timer;)V
    .locals 1

    .line 295
    invoke-virtual {p1}, Lcom/android/deskclock/data/Timer;->isExpired()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2}, Lcom/android/deskclock/data/Timer;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 296
    iget-object p0, p0, Lcom/android/deskclock/timer/ExpiredTimersActivity$TimerChangeWatcher;->this$0:Lcom/android/deskclock/timer/ExpiredTimersActivity;

    invoke-static {p0, p2}, Lcom/android/deskclock/timer/ExpiredTimersActivity;->access$600(Lcom/android/deskclock/timer/ExpiredTimersActivity;Lcom/android/deskclock/data/Timer;)V

    goto :goto_0

    .line 297
    :cond_0
    invoke-virtual {p1}, Lcom/android/deskclock/data/Timer;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Lcom/android/deskclock/data/Timer;->isExpired()Z

    move-result p2

    if-nez p2, :cond_1

    .line 298
    iget-object p0, p0, Lcom/android/deskclock/timer/ExpiredTimersActivity$TimerChangeWatcher;->this$0:Lcom/android/deskclock/timer/ExpiredTimersActivity;

    invoke-static {p0, p1}, Lcom/android/deskclock/timer/ExpiredTimersActivity;->access$700(Lcom/android/deskclock/timer/ExpiredTimersActivity;Lcom/android/deskclock/data/Timer;)V

    :cond_1
    :goto_0
    return-void
.end method
