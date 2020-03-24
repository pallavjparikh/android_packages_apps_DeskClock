.class public Lcom/android/deskclock/timer/TimerItemFragment;
.super Landroid/app/Fragment;
.source "TimerItemFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/deskclock/timer/TimerItemFragment$TimeTextListener;,
        Lcom/android/deskclock/timer/TimerItemFragment$EditLabelListener;,
        Lcom/android/deskclock/timer/TimerItemFragment$ResetAddListener;
    }
.end annotation


# instance fields
.field private mTimerId:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method

.method public static newInstance(Lcom/android/deskclock/data/Timer;)Lcom/android/deskclock/timer/TimerItemFragment;
    .locals 3

    .line 42
    new-instance v0, Lcom/android/deskclock/timer/TimerItemFragment;

    invoke-direct {v0}, Lcom/android/deskclock/timer/TimerItemFragment;-><init>()V

    .line 43
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 44
    invoke-virtual {p0}, Lcom/android/deskclock/data/Timer;->getId()I

    move-result p0

    const-string v2, "KEY_TIMER_ID"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 45
    invoke-virtual {v0, v1}, Landroid/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method getTimer()Lcom/android/deskclock/data/Timer;
    .locals 1

    .line 92
    invoke-static {}, Lcom/android/deskclock/data/DataModel;->getDataModel()Lcom/android/deskclock/data/DataModel;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/deskclock/timer/TimerItemFragment;->getTimerId()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/android/deskclock/data/DataModel;->getTimer(I)Lcom/android/deskclock/data/Timer;

    move-result-object p0

    return-object p0
.end method

.method getTimerId()I
    .locals 0

    .line 88
    iget p0, p0, Lcom/android/deskclock/timer/TimerItemFragment;->mTimerId:I

    return p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 51
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 53
    invoke-virtual {p0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "KEY_TIMER_ID"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/android/deskclock/timer/TimerItemFragment;->mTimerId:I

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    .line 59
    invoke-virtual {p0}, Lcom/android/deskclock/timer/TimerItemFragment;->getTimer()Lcom/android/deskclock/data/Timer;

    move-result-object p3

    const/4 v0, 0x0

    if-nez p3, :cond_0

    return-object v0

    :cond_0
    const v1, 0x7f0d0084

    const/4 v2, 0x0

    .line 64
    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/deskclock/timer/TimerItem;

    const p2, 0x7f0a00f7

    .line 65
    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    new-instance v1, Lcom/android/deskclock/timer/TimerItemFragment$ResetAddListener;

    invoke-direct {v1, p0, v0}, Lcom/android/deskclock/timer/TimerItemFragment$ResetAddListener;-><init>(Lcom/android/deskclock/timer/TimerItemFragment;Lcom/android/deskclock/timer/TimerItemFragment$1;)V

    invoke-virtual {p2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f0a014e

    .line 66
    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    new-instance v1, Lcom/android/deskclock/timer/TimerItemFragment$EditLabelListener;

    invoke-direct {v1, p0, v0}, Lcom/android/deskclock/timer/TimerItemFragment$EditLabelListener;-><init>(Lcom/android/deskclock/timer/TimerItemFragment;Lcom/android/deskclock/timer/TimerItemFragment$1;)V

    invoke-virtual {p2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f0a015e

    .line 67
    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    new-instance v1, Lcom/android/deskclock/timer/TimerItemFragment$TimeTextListener;

    invoke-direct {v1, p0, v0}, Lcom/android/deskclock/timer/TimerItemFragment$TimeTextListener;-><init>(Lcom/android/deskclock/timer/TimerItemFragment;Lcom/android/deskclock/timer/TimerItemFragment$1;)V

    invoke-virtual {p2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 68
    invoke-virtual {p1, p3}, Lcom/android/deskclock/timer/TimerItem;->update(Lcom/android/deskclock/data/Timer;)V

    return-object p1
.end method

.method updateTime()Z
    .locals 1

    .line 77
    invoke-virtual {p0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/deskclock/timer/TimerItem;

    if-eqz v0, :cond_0

    .line 79
    invoke-virtual {p0}, Lcom/android/deskclock/timer/TimerItemFragment;->getTimer()Lcom/android/deskclock/data/Timer;

    move-result-object p0

    .line 80
    invoke-virtual {v0, p0}, Lcom/android/deskclock/timer/TimerItem;->update(Lcom/android/deskclock/data/Timer;)V

    .line 81
    invoke-virtual {p0}, Lcom/android/deskclock/data/Timer;->isReset()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
