.class public final Lcom/android/deskclock/events/Events;
.super Ljava/lang/Object;
.source "Events.java"


# direct methods
.method public static sendAlarmEvent(II)V
    .locals 1

    const v0, 0x7f1101ae

    .line 39
    invoke-static {v0, p0, p1}, Lcom/android/deskclock/events/Events;->sendEvent(III)V

    return-void
.end method

.method public static sendClockEvent(II)V
    .locals 1

    const v0, 0x7f1101b0

    .line 49
    invoke-static {v0, p0, p1}, Lcom/android/deskclock/events/Events;->sendEvent(III)V

    return-void
.end method

.method public static sendEvent(III)V
    .locals 1

    .line 93
    invoke-static {}, Lcom/android/deskclock/controller/Controller;->getController()Lcom/android/deskclock/controller/Controller;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/android/deskclock/controller/Controller;->sendEvent(III)V

    return-void
.end method

.method public static sendScreensaverEvent(II)V
    .locals 1

    const v0, 0x7f1101b2

    .line 79
    invoke-static {v0, p0, p1}, Lcom/android/deskclock/events/Events;->sendEvent(III)V

    return-void
.end method

.method public static sendStopwatchEvent(II)V
    .locals 1

    const v0, 0x7f1101b3

    .line 69
    invoke-static {v0, p0, p1}, Lcom/android/deskclock/events/Events;->sendEvent(III)V

    return-void
.end method

.method public static sendTimerEvent(II)V
    .locals 1

    const v0, 0x7f1101b4

    .line 59
    invoke-static {v0, p0, p1}, Lcom/android/deskclock/events/Events;->sendEvent(III)V

    return-void
.end method
