.class Lcom/android/deskclock/DeskClock$5;
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

    .line 253
    iput-object p1, p0, Lcom/android/deskclock/DeskClock$5;->this$0:Lcom/android/deskclock/DeskClock;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 256
    iget-object p1, p0, Lcom/android/deskclock/DeskClock$5;->this$0:Lcom/android/deskclock/DeskClock;

    invoke-static {p1}, Lcom/android/deskclock/DeskClock;->access$400(Lcom/android/deskclock/DeskClock;)Lcom/android/deskclock/DeskClockFragment;

    move-result-object p1

    iget-object v0, p0, Lcom/android/deskclock/DeskClock$5;->this$0:Lcom/android/deskclock/DeskClock;

    invoke-static {v0}, Lcom/android/deskclock/DeskClock;->access$500(Lcom/android/deskclock/DeskClock;)Landroid/widget/Button;

    move-result-object v0

    iget-object p0, p0, Lcom/android/deskclock/DeskClock$5;->this$0:Lcom/android/deskclock/DeskClock;

    invoke-static {p0}, Lcom/android/deskclock/DeskClock;->access$600(Lcom/android/deskclock/DeskClock;)Landroid/widget/Button;

    move-result-object p0

    invoke-interface {p1, v0, p0}, Lcom/android/deskclock/FabController;->onUpdateFabButtons(Landroid/widget/Button;Landroid/widget/Button;)V

    return-void
.end method
