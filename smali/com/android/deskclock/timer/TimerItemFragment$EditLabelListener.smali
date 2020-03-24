.class final Lcom/android/deskclock/timer/TimerItemFragment$EditLabelListener;
.super Ljava/lang/Object;
.source "TimerItemFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/deskclock/timer/TimerItemFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "EditLabelListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/deskclock/timer/TimerItemFragment;


# direct methods
.method private constructor <init>(Lcom/android/deskclock/timer/TimerItemFragment;)V
    .locals 0

    .line 117
    iput-object p1, p0, Lcom/android/deskclock/timer/TimerItemFragment$EditLabelListener;->this$0:Lcom/android/deskclock/timer/TimerItemFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/deskclock/timer/TimerItemFragment;Lcom/android/deskclock/timer/TimerItemFragment$1;)V
    .locals 0

    .line 117
    invoke-direct {p0, p1}, Lcom/android/deskclock/timer/TimerItemFragment$EditLabelListener;-><init>(Lcom/android/deskclock/timer/TimerItemFragment;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 120
    iget-object p1, p0, Lcom/android/deskclock/timer/TimerItemFragment$EditLabelListener;->this$0:Lcom/android/deskclock/timer/TimerItemFragment;

    invoke-virtual {p1}, Lcom/android/deskclock/timer/TimerItemFragment;->getTimer()Lcom/android/deskclock/data/Timer;

    move-result-object p1

    invoke-static {p1}, Lcom/android/deskclock/LabelDialogFragment;->newInstance(Lcom/android/deskclock/data/Timer;)Lcom/android/deskclock/LabelDialogFragment;

    move-result-object p1

    .line 121
    iget-object p0, p0, Lcom/android/deskclock/timer/TimerItemFragment$EditLabelListener;->this$0:Lcom/android/deskclock/timer/TimerItemFragment;

    invoke-virtual {p0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/android/deskclock/LabelDialogFragment;->show(Landroid/app/FragmentManager;Lcom/android/deskclock/LabelDialogFragment;)V

    return-void
.end method
