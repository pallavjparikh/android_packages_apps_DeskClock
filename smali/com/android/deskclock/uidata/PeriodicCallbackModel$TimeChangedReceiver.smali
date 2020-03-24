.class final Lcom/android/deskclock/uidata/PeriodicCallbackModel$TimeChangedReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PeriodicCallbackModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/deskclock/uidata/PeriodicCallbackModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "TimeChangedReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/deskclock/uidata/PeriodicCallbackModel;


# direct methods
.method private constructor <init>(Lcom/android/deskclock/uidata/PeriodicCallbackModel;)V
    .locals 0

    .line 222
    iput-object p1, p0, Lcom/android/deskclock/uidata/PeriodicCallbackModel$TimeChangedReceiver;->this$0:Lcom/android/deskclock/uidata/PeriodicCallbackModel;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/deskclock/uidata/PeriodicCallbackModel;Lcom/android/deskclock/uidata/PeriodicCallbackModel$1;)V
    .locals 0

    .line 222
    invoke-direct {p0, p1}, Lcom/android/deskclock/uidata/PeriodicCallbackModel$TimeChangedReceiver;-><init>(Lcom/android/deskclock/uidata/PeriodicCallbackModel;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 225
    iget-object p0, p0, Lcom/android/deskclock/uidata/PeriodicCallbackModel$TimeChangedReceiver;->this$0:Lcom/android/deskclock/uidata/PeriodicCallbackModel;

    invoke-static {p0}, Lcom/android/deskclock/uidata/PeriodicCallbackModel;->access$600(Lcom/android/deskclock/uidata/PeriodicCallbackModel;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/deskclock/uidata/PeriodicCallbackModel$PeriodicRunnable;

    .line 226
    invoke-static {p1}, Lcom/android/deskclock/uidata/PeriodicCallbackModel$PeriodicRunnable;->access$700(Lcom/android/deskclock/uidata/PeriodicCallbackModel$PeriodicRunnable;)V

    goto :goto_0

    :cond_0
    return-void
.end method
