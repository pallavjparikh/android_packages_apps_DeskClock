.class final Lcom/android/deskclock/DeskClock$ShowSilentSettingSnackbarRunnable;
.super Ljava/lang/Object;
.source "DeskClock.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/deskclock/DeskClock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ShowSilentSettingSnackbarRunnable"
.end annotation


# instance fields
.field private final mSilentSetting:Lcom/android/deskclock/data/DataModel$SilentSetting;

.field final synthetic this$0:Lcom/android/deskclock/DeskClock;


# direct methods
.method private constructor <init>(Lcom/android/deskclock/DeskClock;Lcom/android/deskclock/data/DataModel$SilentSetting;)V
    .locals 0

    .line 652
    iput-object p1, p0, Lcom/android/deskclock/DeskClock$ShowSilentSettingSnackbarRunnable;->this$0:Lcom/android/deskclock/DeskClock;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 653
    iput-object p2, p0, Lcom/android/deskclock/DeskClock$ShowSilentSettingSnackbarRunnable;->mSilentSetting:Lcom/android/deskclock/data/DataModel$SilentSetting;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/deskclock/DeskClock;Lcom/android/deskclock/data/DataModel$SilentSetting;Lcom/android/deskclock/DeskClock$1;)V
    .locals 0

    .line 648
    invoke-direct {p0, p1, p2}, Lcom/android/deskclock/DeskClock$ShowSilentSettingSnackbarRunnable;-><init>(Lcom/android/deskclock/DeskClock;Lcom/android/deskclock/data/DataModel$SilentSetting;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 658
    iget-object v0, p0, Lcom/android/deskclock/DeskClock$ShowSilentSettingSnackbarRunnable;->this$0:Lcom/android/deskclock/DeskClock;

    iget-object v1, p0, Lcom/android/deskclock/DeskClock$ShowSilentSettingSnackbarRunnable;->mSilentSetting:Lcom/android/deskclock/data/DataModel$SilentSetting;

    invoke-virtual {v1}, Lcom/android/deskclock/data/DataModel$SilentSetting;->getLabelResId()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/deskclock/DeskClock;->access$1600(Lcom/android/deskclock/DeskClock;I)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object v0

    .line 661
    iget-object v1, p0, Lcom/android/deskclock/DeskClock$ShowSilentSettingSnackbarRunnable;->mSilentSetting:Lcom/android/deskclock/data/DataModel$SilentSetting;

    iget-object v2, p0, Lcom/android/deskclock/DeskClock$ShowSilentSettingSnackbarRunnable;->this$0:Lcom/android/deskclock/DeskClock;

    invoke-virtual {v1, v2}, Lcom/android/deskclock/data/DataModel$SilentSetting;->isActionEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 662
    iget-object v1, p0, Lcom/android/deskclock/DeskClock$ShowSilentSettingSnackbarRunnable;->mSilentSetting:Lcom/android/deskclock/data/DataModel$SilentSetting;

    invoke-virtual {v1}, Lcom/android/deskclock/data/DataModel$SilentSetting;->getActionResId()I

    move-result v1

    .line 663
    iget-object p0, p0, Lcom/android/deskclock/DeskClock$ShowSilentSettingSnackbarRunnable;->mSilentSetting:Lcom/android/deskclock/data/DataModel$SilentSetting;

    invoke-virtual {p0}, Lcom/android/deskclock/data/DataModel$SilentSetting;->getActionListener()Landroid/view/View$OnClickListener;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lcom/google/android/material/snackbar/Snackbar;->setAction(ILandroid/view/View$OnClickListener;)Lcom/google/android/material/snackbar/Snackbar;

    .line 666
    :cond_0
    invoke-static {v0}, Lcom/android/deskclock/widget/toast/SnackbarManager;->show(Lcom/google/android/material/snackbar/Snackbar;)V

    return-void
.end method
