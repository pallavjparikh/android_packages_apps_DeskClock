.class Lcom/android/deskclock/timer/ExpiredTimersActivity$FabClickListener;
.super Ljava/lang/Object;
.source "ExpiredTimersActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/deskclock/timer/ExpiredTimersActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FabClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/deskclock/timer/ExpiredTimersActivity;


# direct methods
.method private constructor <init>(Lcom/android/deskclock/timer/ExpiredTimersActivity;)V
    .locals 0

    .line 272
    iput-object p1, p0, Lcom/android/deskclock/timer/ExpiredTimersActivity$FabClickListener;->this$0:Lcom/android/deskclock/timer/ExpiredTimersActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/deskclock/timer/ExpiredTimersActivity;Lcom/android/deskclock/timer/ExpiredTimersActivity$1;)V
    .locals 0

    .line 272
    invoke-direct {p0, p1}, Lcom/android/deskclock/timer/ExpiredTimersActivity$FabClickListener;-><init>(Lcom/android/deskclock/timer/ExpiredTimersActivity;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 275
    iget-object p1, p0, Lcom/android/deskclock/timer/ExpiredTimersActivity$FabClickListener;->this$0:Lcom/android/deskclock/timer/ExpiredTimersActivity;

    invoke-static {p1}, Lcom/android/deskclock/timer/ExpiredTimersActivity;->access$400(Lcom/android/deskclock/timer/ExpiredTimersActivity;)V

    .line 276
    invoke-static {}, Lcom/android/deskclock/data/DataModel;->getDataModel()Lcom/android/deskclock/data/DataModel;

    move-result-object p1

    iget-object v0, p0, Lcom/android/deskclock/timer/ExpiredTimersActivity$FabClickListener;->this$0:Lcom/android/deskclock/timer/ExpiredTimersActivity;

    invoke-static {v0}, Lcom/android/deskclock/timer/ExpiredTimersActivity;->access$500(Lcom/android/deskclock/timer/ExpiredTimersActivity;)Lcom/android/deskclock/data/TimerListener;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/deskclock/data/DataModel;->removeTimerListener(Lcom/android/deskclock/data/TimerListener;)V

    .line 277
    invoke-static {}, Lcom/android/deskclock/data/DataModel;->getDataModel()Lcom/android/deskclock/data/DataModel;

    move-result-object p1

    const v0, 0x7f1101e6

    invoke-virtual {p1, v0}, Lcom/android/deskclock/data/DataModel;->resetOrDeleteExpiredTimers(I)V

    .line 278
    iget-object p0, p0, Lcom/android/deskclock/timer/ExpiredTimersActivity$FabClickListener;->this$0:Lcom/android/deskclock/timer/ExpiredTimersActivity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method
