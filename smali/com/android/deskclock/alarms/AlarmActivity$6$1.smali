.class Lcom/android/deskclock/alarms/AlarmActivity$6$1;
.super Ljava/lang/Object;
.source "AlarmActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/deskclock/alarms/AlarmActivity$6;->onAnimationEnd(Landroid/animation/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/deskclock/alarms/AlarmActivity$6;


# direct methods
.method constructor <init>(Lcom/android/deskclock/alarms/AlarmActivity$6;)V
    .locals 0

    .line 651
    iput-object p1, p0, Lcom/android/deskclock/alarms/AlarmActivity$6$1;->this$1:Lcom/android/deskclock/alarms/AlarmActivity$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .line 654
    iget-object p0, p0, Lcom/android/deskclock/alarms/AlarmActivity$6$1;->this$1:Lcom/android/deskclock/alarms/AlarmActivity$6;

    iget-object p0, p0, Lcom/android/deskclock/alarms/AlarmActivity$6;->this$0:Lcom/android/deskclock/alarms/AlarmActivity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method
