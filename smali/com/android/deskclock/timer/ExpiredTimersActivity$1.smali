.class Lcom/android/deskclock/timer/ExpiredTimersActivity$1;
.super Ljava/lang/Object;
.source "ExpiredTimersActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/deskclock/timer/ExpiredTimersActivity;->addTimer(Lcom/android/deskclock/data/Timer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/deskclock/timer/ExpiredTimersActivity;

.field final synthetic val$timerId:I


# direct methods
.method constructor <init>(Lcom/android/deskclock/timer/ExpiredTimersActivity;I)V
    .locals 0

    .line 178
    iput-object p1, p0, Lcom/android/deskclock/timer/ExpiredTimersActivity$1;->this$0:Lcom/android/deskclock/timer/ExpiredTimersActivity;

    iput p2, p0, Lcom/android/deskclock/timer/ExpiredTimersActivity$1;->val$timerId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 181
    invoke-static {}, Lcom/android/deskclock/data/DataModel;->getDataModel()Lcom/android/deskclock/data/DataModel;

    move-result-object p1

    iget p0, p0, Lcom/android/deskclock/timer/ExpiredTimersActivity$1;->val$timerId:I

    invoke-virtual {p1, p0}, Lcom/android/deskclock/data/DataModel;->getTimer(I)Lcom/android/deskclock/data/Timer;

    move-result-object p0

    .line 182
    invoke-static {}, Lcom/android/deskclock/data/DataModel;->getDataModel()Lcom/android/deskclock/data/DataModel;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/android/deskclock/data/DataModel;->addTimerMinute(Lcom/android/deskclock/data/Timer;)V

    return-void
.end method
