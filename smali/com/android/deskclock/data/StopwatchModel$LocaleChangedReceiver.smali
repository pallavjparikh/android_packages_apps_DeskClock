.class final Lcom/android/deskclock/data/StopwatchModel$LocaleChangedReceiver;
.super Landroid/content/BroadcastReceiver;
.source "StopwatchModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/deskclock/data/StopwatchModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "LocaleChangedReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/deskclock/data/StopwatchModel;


# direct methods
.method private constructor <init>(Lcom/android/deskclock/data/StopwatchModel;)V
    .locals 0

    .line 249
    iput-object p1, p0, Lcom/android/deskclock/data/StopwatchModel$LocaleChangedReceiver;->this$0:Lcom/android/deskclock/data/StopwatchModel;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/deskclock/data/StopwatchModel;Lcom/android/deskclock/data/StopwatchModel$1;)V
    .locals 0

    .line 249
    invoke-direct {p0, p1}, Lcom/android/deskclock/data/StopwatchModel$LocaleChangedReceiver;-><init>(Lcom/android/deskclock/data/StopwatchModel;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 252
    iget-object p0, p0, Lcom/android/deskclock/data/StopwatchModel$LocaleChangedReceiver;->this$0:Lcom/android/deskclock/data/StopwatchModel;

    invoke-virtual {p0}, Lcom/android/deskclock/data/StopwatchModel;->updateNotification()V

    return-void
.end method
