.class final Lcom/android/deskclock/ClockFragment$AlarmChangedBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ClockFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/deskclock/ClockFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AlarmChangedBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/deskclock/ClockFragment;


# direct methods
.method private constructor <init>(Lcom/android/deskclock/ClockFragment;)V
    .locals 0

    .line 305
    iput-object p1, p0, Lcom/android/deskclock/ClockFragment$AlarmChangedBroadcastReceiver;->this$0:Lcom/android/deskclock/ClockFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/deskclock/ClockFragment;Lcom/android/deskclock/ClockFragment$1;)V
    .locals 0

    .line 305
    invoke-direct {p0, p1}, Lcom/android/deskclock/ClockFragment$AlarmChangedBroadcastReceiver;-><init>(Lcom/android/deskclock/ClockFragment;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 308
    iget-object p0, p0, Lcom/android/deskclock/ClockFragment$AlarmChangedBroadcastReceiver;->this$0:Lcom/android/deskclock/ClockFragment;

    invoke-static {p0}, Lcom/android/deskclock/ClockFragment;->access$900(Lcom/android/deskclock/ClockFragment;)V

    return-void
.end method
