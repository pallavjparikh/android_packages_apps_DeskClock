.class final Lcom/android/deskclock/data/TimerModel$LocaleChangedReceiver;
.super Landroid/content/BroadcastReceiver;
.source "TimerModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/deskclock/data/TimerModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "LocaleChangedReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/deskclock/data/TimerModel;


# direct methods
.method private constructor <init>(Lcom/android/deskclock/data/TimerModel;)V
    .locals 0

    .line 811
    iput-object p1, p0, Lcom/android/deskclock/data/TimerModel$LocaleChangedReceiver;->this$0:Lcom/android/deskclock/data/TimerModel;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/deskclock/data/TimerModel;Lcom/android/deskclock/data/TimerModel$1;)V
    .locals 0

    .line 811
    invoke-direct {p0, p1}, Lcom/android/deskclock/data/TimerModel$LocaleChangedReceiver;-><init>(Lcom/android/deskclock/data/TimerModel;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 814
    iget-object p1, p0, Lcom/android/deskclock/data/TimerModel$LocaleChangedReceiver;->this$0:Lcom/android/deskclock/data/TimerModel;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/android/deskclock/data/TimerModel;->access$202(Lcom/android/deskclock/data/TimerModel;Ljava/lang/String;)Ljava/lang/String;

    .line 815
    iget-object p1, p0, Lcom/android/deskclock/data/TimerModel$LocaleChangedReceiver;->this$0:Lcom/android/deskclock/data/TimerModel;

    invoke-virtual {p1}, Lcom/android/deskclock/data/TimerModel;->updateNotification()V

    .line 816
    iget-object p1, p0, Lcom/android/deskclock/data/TimerModel$LocaleChangedReceiver;->this$0:Lcom/android/deskclock/data/TimerModel;

    invoke-virtual {p1}, Lcom/android/deskclock/data/TimerModel;->updateMissedNotification()V

    .line 817
    iget-object p0, p0, Lcom/android/deskclock/data/TimerModel$LocaleChangedReceiver;->this$0:Lcom/android/deskclock/data/TimerModel;

    invoke-static {p0}, Lcom/android/deskclock/data/TimerModel;->access$300(Lcom/android/deskclock/data/TimerModel;)V

    return-void
.end method
