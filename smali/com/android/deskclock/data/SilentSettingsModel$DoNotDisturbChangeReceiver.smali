.class final Lcom/android/deskclock/data/SilentSettingsModel$DoNotDisturbChangeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SilentSettingsModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/deskclock/data/SilentSettingsModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DoNotDisturbChangeReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/deskclock/data/SilentSettingsModel;


# direct methods
.method private constructor <init>(Lcom/android/deskclock/data/SilentSettingsModel;)V
    .locals 0

    .line 240
    iput-object p1, p0, Lcom/android/deskclock/data/SilentSettingsModel$DoNotDisturbChangeReceiver;->this$0:Lcom/android/deskclock/data/SilentSettingsModel;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/deskclock/data/SilentSettingsModel;Lcom/android/deskclock/data/SilentSettingsModel$1;)V
    .locals 0

    .line 240
    invoke-direct {p0, p1}, Lcom/android/deskclock/data/SilentSettingsModel$DoNotDisturbChangeReceiver;-><init>(Lcom/android/deskclock/data/SilentSettingsModel;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 243
    iget-object p0, p0, Lcom/android/deskclock/data/SilentSettingsModel$DoNotDisturbChangeReceiver;->this$0:Lcom/android/deskclock/data/SilentSettingsModel;

    invoke-virtual {p0}, Lcom/android/deskclock/data/SilentSettingsModel;->updateSilentState()V

    return-void
.end method
