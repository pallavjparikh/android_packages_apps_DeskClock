.class final Lcom/android/deskclock/DeskClock$SilentSettingChangeWatcher;
.super Ljava/lang/Object;
.source "DeskClock.java"

# interfaces
.implements Lcom/android/deskclock/data/OnSilentSettingsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/deskclock/DeskClock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SilentSettingChangeWatcher"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/deskclock/DeskClock;


# direct methods
.method private constructor <init>(Lcom/android/deskclock/DeskClock;)V
    .locals 0

    .line 628
    iput-object p1, p0, Lcom/android/deskclock/DeskClock$SilentSettingChangeWatcher;->this$0:Lcom/android/deskclock/DeskClock;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/deskclock/DeskClock;Lcom/android/deskclock/DeskClock$1;)V
    .locals 0

    .line 628
    invoke-direct {p0, p1}, Lcom/android/deskclock/DeskClock$SilentSettingChangeWatcher;-><init>(Lcom/android/deskclock/DeskClock;)V

    return-void
.end method


# virtual methods
.method public onSilentSettingsChange(Lcom/android/deskclock/data/DataModel$SilentSetting;Lcom/android/deskclock/data/DataModel$SilentSetting;)V
    .locals 2

    .line 631
    iget-object p1, p0, Lcom/android/deskclock/DeskClock$SilentSettingChangeWatcher;->this$0:Lcom/android/deskclock/DeskClock;

    invoke-static {p1}, Lcom/android/deskclock/DeskClock;->access$1300(Lcom/android/deskclock/DeskClock;)Ljava/lang/Runnable;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 632
    iget-object p1, p0, Lcom/android/deskclock/DeskClock$SilentSettingChangeWatcher;->this$0:Lcom/android/deskclock/DeskClock;

    invoke-static {p1}, Lcom/android/deskclock/DeskClock;->access$1400(Lcom/android/deskclock/DeskClock;)Landroid/view/View;

    move-result-object p1

    iget-object v1, p0, Lcom/android/deskclock/DeskClock$SilentSettingChangeWatcher;->this$0:Lcom/android/deskclock/DeskClock;

    invoke-static {v1}, Lcom/android/deskclock/DeskClock;->access$1300(Lcom/android/deskclock/DeskClock;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 633
    iget-object p1, p0, Lcom/android/deskclock/DeskClock$SilentSettingChangeWatcher;->this$0:Lcom/android/deskclock/DeskClock;

    invoke-static {p1, v0}, Lcom/android/deskclock/DeskClock;->access$1302(Lcom/android/deskclock/DeskClock;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    :cond_0
    if-nez p2, :cond_1

    .line 637
    invoke-static {}, Lcom/android/deskclock/widget/toast/SnackbarManager;->dismiss()V

    goto :goto_0

    .line 639
    :cond_1
    iget-object p1, p0, Lcom/android/deskclock/DeskClock$SilentSettingChangeWatcher;->this$0:Lcom/android/deskclock/DeskClock;

    new-instance v1, Lcom/android/deskclock/DeskClock$ShowSilentSettingSnackbarRunnable;

    invoke-direct {v1, p1, p2, v0}, Lcom/android/deskclock/DeskClock$ShowSilentSettingSnackbarRunnable;-><init>(Lcom/android/deskclock/DeskClock;Lcom/android/deskclock/data/DataModel$SilentSetting;Lcom/android/deskclock/DeskClock$1;)V

    invoke-static {p1, v1}, Lcom/android/deskclock/DeskClock;->access$1302(Lcom/android/deskclock/DeskClock;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 640
    iget-object p1, p0, Lcom/android/deskclock/DeskClock$SilentSettingChangeWatcher;->this$0:Lcom/android/deskclock/DeskClock;

    invoke-static {p1}, Lcom/android/deskclock/DeskClock;->access$1400(Lcom/android/deskclock/DeskClock;)Landroid/view/View;

    move-result-object p1

    iget-object p0, p0, Lcom/android/deskclock/DeskClock$SilentSettingChangeWatcher;->this$0:Lcom/android/deskclock/DeskClock;

    invoke-static {p0}, Lcom/android/deskclock/DeskClock;->access$1300(Lcom/android/deskclock/DeskClock;)Ljava/lang/Runnable;

    move-result-object p0

    const-wide/16 v0, 0x3e8

    invoke-virtual {p1, p0, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void
.end method
