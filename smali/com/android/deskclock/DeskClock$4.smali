.class Lcom/android/deskclock/DeskClock$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "DeskClock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/deskclock/DeskClock;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/deskclock/DeskClock;


# direct methods
.method constructor <init>(Lcom/android/deskclock/DeskClock;)V
    .locals 0

    .line 246
    iput-object p1, p0, Lcom/android/deskclock/DeskClock$4;->this$0:Lcom/android/deskclock/DeskClock;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 249
    iget-object p1, p0, Lcom/android/deskclock/DeskClock$4;->this$0:Lcom/android/deskclock/DeskClock;

    invoke-static {p1}, Lcom/android/deskclock/DeskClock;->access$400(Lcom/android/deskclock/DeskClock;)Lcom/android/deskclock/DeskClockFragment;

    move-result-object p1

    iget-object p0, p0, Lcom/android/deskclock/DeskClock$4;->this$0:Lcom/android/deskclock/DeskClock;

    invoke-static {p0}, Lcom/android/deskclock/DeskClock;->access$300(Lcom/android/deskclock/DeskClock;)Landroid/widget/ImageView;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/android/deskclock/FabController;->onUpdateFab(Landroid/widget/ImageView;)V

    return-void
.end method
