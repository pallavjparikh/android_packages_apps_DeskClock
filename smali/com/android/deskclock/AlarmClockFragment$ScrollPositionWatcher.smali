.class final Lcom/android/deskclock/AlarmClockFragment$ScrollPositionWatcher;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "AlarmClockFragment.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/deskclock/AlarmClockFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ScrollPositionWatcher"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/deskclock/AlarmClockFragment;


# direct methods
.method private constructor <init>(Lcom/android/deskclock/AlarmClockFragment;)V
    .locals 0

    .line 423
    iput-object p1, p0, Lcom/android/deskclock/AlarmClockFragment$ScrollPositionWatcher;->this$0:Lcom/android/deskclock/AlarmClockFragment;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/deskclock/AlarmClockFragment;Lcom/android/deskclock/AlarmClockFragment$1;)V
    .locals 0

    .line 423
    invoke-direct {p0, p1}, Lcom/android/deskclock/AlarmClockFragment$ScrollPositionWatcher;-><init>(Lcom/android/deskclock/AlarmClockFragment;)V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    .line 433
    iget-object p0, p0, Lcom/android/deskclock/AlarmClockFragment$ScrollPositionWatcher;->this$0:Lcom/android/deskclock/AlarmClockFragment;

    invoke-static {p0}, Lcom/android/deskclock/AlarmClockFragment;->access$300(Lcom/android/deskclock/AlarmClockFragment;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    invoke-static {p1}, Lcom/android/deskclock/Utils;->isScrolledToTop(Landroid/view/View;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/deskclock/DeskClockFragment;->setTabScrolledToTop(Z)V

    return-void
.end method

.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0

    .line 427
    iget-object p0, p0, Lcom/android/deskclock/AlarmClockFragment$ScrollPositionWatcher;->this$0:Lcom/android/deskclock/AlarmClockFragment;

    invoke-static {p0}, Lcom/android/deskclock/AlarmClockFragment;->access$300(Lcom/android/deskclock/AlarmClockFragment;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    invoke-static {p1}, Lcom/android/deskclock/Utils;->isScrolledToTop(Landroid/view/View;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/deskclock/DeskClockFragment;->setTabScrolledToTop(Z)V

    return-void
.end method
