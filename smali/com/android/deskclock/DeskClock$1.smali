.class Lcom/android/deskclock/DeskClock$1;
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

    .line 217
    iput-object p1, p0, Lcom/android/deskclock/DeskClock$1;->this$0:Lcom/android/deskclock/DeskClock;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 220
    iget-object p1, p0, Lcom/android/deskclock/DeskClock$1;->this$0:Lcom/android/deskclock/DeskClock;

    invoke-static {p1}, Lcom/android/deskclock/DeskClock;->access$400(Lcom/android/deskclock/DeskClock;)Lcom/android/deskclock/DeskClockFragment;

    move-result-object p1

    iget-object p0, p0, Lcom/android/deskclock/DeskClock$1;->this$0:Lcom/android/deskclock/DeskClock;

    invoke-static {p0}, Lcom/android/deskclock/DeskClock;->access$300(Lcom/android/deskclock/DeskClock;)Landroid/widget/ImageView;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/android/deskclock/FabController;->onFabClick(Landroid/widget/ImageView;)V

    return-void
.end method
