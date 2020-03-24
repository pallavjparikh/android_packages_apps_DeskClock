.class Lcom/android/deskclock/timer/TimerFragment$TimerPageChangeListener;
.super Landroidx/viewpager/widget/ViewPager$SimpleOnPageChangeListener;
.source "TimerFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/deskclock/timer/TimerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TimerPageChangeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/deskclock/timer/TimerFragment;


# direct methods
.method private constructor <init>(Lcom/android/deskclock/timer/TimerFragment;)V
    .locals 0

    .line 721
    iput-object p1, p0, Lcom/android/deskclock/timer/TimerFragment$TimerPageChangeListener;->this$0:Lcom/android/deskclock/timer/TimerFragment;

    invoke-direct {p0}, Landroidx/viewpager/widget/ViewPager$SimpleOnPageChangeListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/deskclock/timer/TimerFragment;Lcom/android/deskclock/timer/TimerFragment$1;)V
    .locals 0

    .line 721
    invoke-direct {p0, p1}, Lcom/android/deskclock/timer/TimerFragment$TimerPageChangeListener;-><init>(Lcom/android/deskclock/timer/TimerFragment;)V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 735
    iget-object p0, p0, Lcom/android/deskclock/timer/TimerFragment$TimerPageChangeListener;->this$0:Lcom/android/deskclock/timer/TimerFragment;

    invoke-static {p0}, Lcom/android/deskclock/timer/TimerFragment;->access$1000(Lcom/android/deskclock/timer/TimerFragment;)V

    :cond_0
    return-void
.end method

.method public onPageSelected(I)V
    .locals 1

    .line 724
    iget-object p1, p0, Lcom/android/deskclock/timer/TimerFragment$TimerPageChangeListener;->this$0:Lcom/android/deskclock/timer/TimerFragment;

    invoke-static {p1}, Lcom/android/deskclock/timer/TimerFragment;->access$900(Lcom/android/deskclock/timer/TimerFragment;)V

    .line 725
    iget-object p1, p0, Lcom/android/deskclock/timer/TimerFragment$TimerPageChangeListener;->this$0:Lcom/android/deskclock/timer/TimerFragment;

    const/16 v0, 0x9

    invoke-virtual {p1, v0}, Lcom/android/deskclock/DeskClockFragment;->updateFab(I)V

    .line 728
    iget-object p0, p0, Lcom/android/deskclock/timer/TimerFragment$TimerPageChangeListener;->this$0:Lcom/android/deskclock/timer/TimerFragment;

    invoke-static {p0}, Lcom/android/deskclock/timer/TimerFragment;->access$1000(Lcom/android/deskclock/timer/TimerFragment;)V

    return-void
.end method
