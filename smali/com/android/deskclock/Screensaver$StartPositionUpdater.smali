.class final Lcom/android/deskclock/Screensaver$StartPositionUpdater;
.super Ljava/lang/Object;
.source "Screensaver.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/deskclock/Screensaver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "StartPositionUpdater"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/deskclock/Screensaver;


# direct methods
.method private constructor <init>(Lcom/android/deskclock/Screensaver;)V
    .locals 0

    .line 192
    iput-object p1, p0, Lcom/android/deskclock/Screensaver$StartPositionUpdater;->this$0:Lcom/android/deskclock/Screensaver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/deskclock/Screensaver;Lcom/android/deskclock/Screensaver$1;)V
    .locals 0

    .line 192
    invoke-direct {p0, p1}, Lcom/android/deskclock/Screensaver$StartPositionUpdater;-><init>(Lcom/android/deskclock/Screensaver;)V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 1

    .line 202
    iget-object v0, p0, Lcom/android/deskclock/Screensaver$StartPositionUpdater;->this$0:Lcom/android/deskclock/Screensaver;

    invoke-static {v0}, Lcom/android/deskclock/Screensaver;->access$100(Lcom/android/deskclock/Screensaver;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 204
    iget-object v0, p0, Lcom/android/deskclock/Screensaver$StartPositionUpdater;->this$0:Lcom/android/deskclock/Screensaver;

    invoke-static {v0}, Lcom/android/deskclock/Screensaver;->access$400(Lcom/android/deskclock/Screensaver;)Lcom/android/deskclock/MoveScreensaverRunnable;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/deskclock/MoveScreensaverRunnable;->start()V

    .line 207
    iget-object v0, p0, Lcom/android/deskclock/Screensaver$StartPositionUpdater;->this$0:Lcom/android/deskclock/Screensaver;

    invoke-static {v0}, Lcom/android/deskclock/Screensaver;->access$100(Lcom/android/deskclock/Screensaver;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object p0, p0, Lcom/android/deskclock/Screensaver$StartPositionUpdater;->this$0:Lcom/android/deskclock/Screensaver;

    invoke-static {p0}, Lcom/android/deskclock/Screensaver;->access$500(Lcom/android/deskclock/Screensaver;)Landroid/view/ViewTreeObserver$OnPreDrawListener;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :cond_0
    const/4 p0, 0x1

    return p0
.end method
