.class final Lcom/android/deskclock/DeskClock$AutoStartShowListener;
.super Landroid/animation/AnimatorListenerAdapter;
.source "DeskClock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/deskclock/DeskClock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AutoStartShowListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/deskclock/DeskClock;


# direct methods
.method private constructor <init>(Lcom/android/deskclock/DeskClock;)V
    .locals 0

    .line 608
    iput-object p1, p0, Lcom/android/deskclock/DeskClock$AutoStartShowListener;->this$0:Lcom/android/deskclock/DeskClock;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/deskclock/DeskClock;Lcom/android/deskclock/DeskClock$1;)V
    .locals 0

    .line 608
    invoke-direct {p0, p1}, Lcom/android/deskclock/DeskClock$AutoStartShowListener;-><init>(Lcom/android/deskclock/DeskClock;)V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 612
    iget-object p1, p0, Lcom/android/deskclock/DeskClock$AutoStartShowListener;->this$0:Lcom/android/deskclock/DeskClock;

    invoke-static {p1}, Lcom/android/deskclock/DeskClock;->access$900(Lcom/android/deskclock/DeskClock;)Landroid/animation/AnimatorSet;

    move-result-object p1

    iget-object v0, p0, Lcom/android/deskclock/DeskClock$AutoStartShowListener;->this$0:Lcom/android/deskclock/DeskClock;

    invoke-static {v0}, Lcom/android/deskclock/DeskClock;->access$1000(Lcom/android/deskclock/DeskClock;)Landroid/animation/AnimatorListenerAdapter;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->removeListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 615
    iget-object p1, p0, Lcom/android/deskclock/DeskClock$AutoStartShowListener;->this$0:Lcom/android/deskclock/DeskClock;

    const/16 v0, 0x9

    invoke-virtual {p1, v0}, Lcom/android/deskclock/DeskClock;->updateFab(I)V

    .line 618
    iget-object p1, p0, Lcom/android/deskclock/DeskClock$AutoStartShowListener;->this$0:Lcom/android/deskclock/DeskClock;

    invoke-static {p1}, Lcom/android/deskclock/DeskClock;->access$1100(Lcom/android/deskclock/DeskClock;)Landroid/animation/AnimatorSet;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    .line 621
    iget-object p0, p0, Lcom/android/deskclock/DeskClock$AutoStartShowListener;->this$0:Lcom/android/deskclock/DeskClock;

    sget-object p1, Lcom/android/deskclock/DeskClock$FabState;->SHOWING:Lcom/android/deskclock/DeskClock$FabState;

    invoke-static {p0, p1}, Lcom/android/deskclock/DeskClock;->access$802(Lcom/android/deskclock/DeskClock;Lcom/android/deskclock/DeskClock$FabState;)Lcom/android/deskclock/DeskClock$FabState;

    return-void
.end method
