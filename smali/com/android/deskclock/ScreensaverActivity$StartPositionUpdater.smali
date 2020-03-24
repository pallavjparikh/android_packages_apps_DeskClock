.class final Lcom/android/deskclock/ScreensaverActivity$StartPositionUpdater;
.super Ljava/lang/Object;
.source "ScreensaverActivity.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/deskclock/ScreensaverActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "StartPositionUpdater"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/deskclock/ScreensaverActivity;


# direct methods
.method private constructor <init>(Lcom/android/deskclock/ScreensaverActivity;)V
    .locals 0

    .line 227
    iput-object p1, p0, Lcom/android/deskclock/ScreensaverActivity$StartPositionUpdater;->this$0:Lcom/android/deskclock/ScreensaverActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/deskclock/ScreensaverActivity;Lcom/android/deskclock/ScreensaverActivity$1;)V
    .locals 0

    .line 227
    invoke-direct {p0, p1}, Lcom/android/deskclock/ScreensaverActivity$StartPositionUpdater;-><init>(Lcom/android/deskclock/ScreensaverActivity;)V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 1

    .line 237
    iget-object v0, p0, Lcom/android/deskclock/ScreensaverActivity$StartPositionUpdater;->this$0:Lcom/android/deskclock/ScreensaverActivity;

    invoke-static {v0}, Lcom/android/deskclock/ScreensaverActivity;->access$300(Lcom/android/deskclock/ScreensaverActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 239
    iget-object v0, p0, Lcom/android/deskclock/ScreensaverActivity$StartPositionUpdater;->this$0:Lcom/android/deskclock/ScreensaverActivity;

    invoke-static {v0}, Lcom/android/deskclock/ScreensaverActivity;->access$700(Lcom/android/deskclock/ScreensaverActivity;)Lcom/android/deskclock/MoveScreensaverRunnable;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/deskclock/MoveScreensaverRunnable;->start()V

    .line 242
    iget-object v0, p0, Lcom/android/deskclock/ScreensaverActivity$StartPositionUpdater;->this$0:Lcom/android/deskclock/ScreensaverActivity;

    invoke-static {v0}, Lcom/android/deskclock/ScreensaverActivity;->access$300(Lcom/android/deskclock/ScreensaverActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object p0, p0, Lcom/android/deskclock/ScreensaverActivity$StartPositionUpdater;->this$0:Lcom/android/deskclock/ScreensaverActivity;

    invoke-static {p0}, Lcom/android/deskclock/ScreensaverActivity;->access$800(Lcom/android/deskclock/ScreensaverActivity;)Landroid/view/ViewTreeObserver$OnPreDrawListener;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :cond_0
    const/4 p0, 0x1

    return p0
.end method
