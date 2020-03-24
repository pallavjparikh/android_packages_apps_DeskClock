.class final Lcom/android/deskclock/data/SilentSettingsModel$ContentChangeWatcher;
.super Landroid/database/ContentObserver;
.source "SilentSettingsModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/deskclock/data/SilentSettingsModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ContentChangeWatcher"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/deskclock/data/SilentSettingsModel;


# direct methods
.method private constructor <init>(Lcom/android/deskclock/data/SilentSettingsModel;)V
    .locals 0

    .line 227
    iput-object p1, p0, Lcom/android/deskclock/data/SilentSettingsModel$ContentChangeWatcher;->this$0:Lcom/android/deskclock/data/SilentSettingsModel;

    .line 228
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/deskclock/data/SilentSettingsModel;Lcom/android/deskclock/data/SilentSettingsModel$1;)V
    .locals 0

    .line 226
    invoke-direct {p0, p1}, Lcom/android/deskclock/data/SilentSettingsModel$ContentChangeWatcher;-><init>(Lcom/android/deskclock/data/SilentSettingsModel;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 0

    .line 233
    iget-object p0, p0, Lcom/android/deskclock/data/SilentSettingsModel$ContentChangeWatcher;->this$0:Lcom/android/deskclock/data/SilentSettingsModel;

    invoke-virtual {p0}, Lcom/android/deskclock/data/SilentSettingsModel;->updateSilentState()V

    return-void
.end method
