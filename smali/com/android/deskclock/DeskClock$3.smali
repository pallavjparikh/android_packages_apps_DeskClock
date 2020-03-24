.class Lcom/android/deskclock/DeskClock$3;
.super Ljava/lang/Object;
.source "DeskClock.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    .line 229
    iput-object p1, p0, Lcom/android/deskclock/DeskClock$3;->this$0:Lcom/android/deskclock/DeskClock;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 232
    iget-object p1, p0, Lcom/android/deskclock/DeskClock$3;->this$0:Lcom/android/deskclock/DeskClock;

    invoke-static {p1}, Lcom/android/deskclock/DeskClock;->access$400(Lcom/android/deskclock/DeskClock;)Lcom/android/deskclock/DeskClockFragment;

    move-result-object p1

    iget-object p0, p0, Lcom/android/deskclock/DeskClock$3;->this$0:Lcom/android/deskclock/DeskClock;

    invoke-static {p0}, Lcom/android/deskclock/DeskClock;->access$600(Lcom/android/deskclock/DeskClock;)Landroid/widget/Button;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/deskclock/DeskClockFragment;->onRightButtonClick(Landroid/widget/Button;)V

    return-void
.end method
