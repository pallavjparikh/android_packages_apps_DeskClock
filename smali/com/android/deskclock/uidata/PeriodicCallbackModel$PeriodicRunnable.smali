.class final Lcom/android/deskclock/uidata/PeriodicCallbackModel$PeriodicRunnable;
.super Ljava/lang/Object;
.source "PeriodicCallbackModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/deskclock/uidata/PeriodicCallbackModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PeriodicRunnable"
.end annotation


# instance fields
.field private final mDelegate:Ljava/lang/Runnable;

.field private final mOffset:J

.field private final mPeriod:Lcom/android/deskclock/uidata/PeriodicCallbackModel$Period;


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;Lcom/android/deskclock/uidata/PeriodicCallbackModel$Period;J)V
    .locals 0

    .line 189
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 190
    iput-object p1, p0, Lcom/android/deskclock/uidata/PeriodicCallbackModel$PeriodicRunnable;->mDelegate:Ljava/lang/Runnable;

    .line 191
    iput-object p2, p0, Lcom/android/deskclock/uidata/PeriodicCallbackModel$PeriodicRunnable;->mPeriod:Lcom/android/deskclock/uidata/PeriodicCallbackModel$Period;

    .line 192
    iput-wide p3, p0, Lcom/android/deskclock/uidata/PeriodicCallbackModel$PeriodicRunnable;->mOffset:J

    return-void
.end method

.method static synthetic access$100(Lcom/android/deskclock/uidata/PeriodicCallbackModel$PeriodicRunnable;)V
    .locals 0

    .line 183
    invoke-direct {p0}, Lcom/android/deskclock/uidata/PeriodicCallbackModel$PeriodicRunnable;->schedule()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/deskclock/uidata/PeriodicCallbackModel$PeriodicRunnable;)Ljava/lang/Runnable;
    .locals 0

    .line 183
    iget-object p0, p0, Lcom/android/deskclock/uidata/PeriodicCallbackModel$PeriodicRunnable;->mDelegate:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/deskclock/uidata/PeriodicCallbackModel$PeriodicRunnable;)V
    .locals 0

    .line 183
    invoke-direct {p0}, Lcom/android/deskclock/uidata/PeriodicCallbackModel$PeriodicRunnable;->unSchedule()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/deskclock/uidata/PeriodicCallbackModel$PeriodicRunnable;)V
    .locals 0

    .line 183
    invoke-direct {p0}, Lcom/android/deskclock/uidata/PeriodicCallbackModel$PeriodicRunnable;->runAndReschedule()V

    return-void
.end method

.method private runAndReschedule()V
    .locals 4

    .line 203
    invoke-static {}, Lcom/android/deskclock/uidata/PeriodicCallbackModel;->access$400()Lcom/android/deskclock/LogUtils$Logger;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/deskclock/uidata/PeriodicCallbackModel$PeriodicRunnable;->mPeriod:Lcom/android/deskclock/uidata/PeriodicCallbackModel$Period;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "Executing periodic callback for %s because the time changed"

    invoke-virtual {v0, v2, v1}, Lcom/android/deskclock/LogUtils$Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 204
    invoke-direct {p0}, Lcom/android/deskclock/uidata/PeriodicCallbackModel$PeriodicRunnable;->unSchedule()V

    .line 205
    iget-object v0, p0, Lcom/android/deskclock/uidata/PeriodicCallbackModel$PeriodicRunnable;->mDelegate:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 206
    invoke-direct {p0}, Lcom/android/deskclock/uidata/PeriodicCallbackModel$PeriodicRunnable;->schedule()V

    return-void
.end method

.method private schedule()V
    .locals 5

    .line 210
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/deskclock/uidata/PeriodicCallbackModel$PeriodicRunnable;->mPeriod:Lcom/android/deskclock/uidata/PeriodicCallbackModel$Period;

    iget-wide v3, p0, Lcom/android/deskclock/uidata/PeriodicCallbackModel$PeriodicRunnable;->mOffset:J

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/deskclock/uidata/PeriodicCallbackModel;->getDelay(JLcom/android/deskclock/uidata/PeriodicCallbackModel$Period;J)J

    move-result-wide v0

    .line 211
    invoke-static {}, Lcom/android/deskclock/uidata/PeriodicCallbackModel;->access$500()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private unSchedule()V
    .locals 1

    .line 215
    invoke-static {}, Lcom/android/deskclock/uidata/PeriodicCallbackModel;->access$500()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 197
    invoke-static {}, Lcom/android/deskclock/uidata/PeriodicCallbackModel;->access$400()Lcom/android/deskclock/LogUtils$Logger;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/deskclock/uidata/PeriodicCallbackModel$PeriodicRunnable;->mPeriod:Lcom/android/deskclock/uidata/PeriodicCallbackModel$Period;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "Executing periodic callback for %s because the period ended"

    invoke-virtual {v0, v2, v1}, Lcom/android/deskclock/LogUtils$Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 198
    iget-object v0, p0, Lcom/android/deskclock/uidata/PeriodicCallbackModel$PeriodicRunnable;->mDelegate:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 199
    invoke-direct {p0}, Lcom/android/deskclock/uidata/PeriodicCallbackModel$PeriodicRunnable;->schedule()V

    return-void
.end method
