.class final Lcom/android/deskclock/ClockFragment$AlarmObserverPreL;
.super Landroid/database/ContentObserver;
.source "ClockFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/deskclock/ClockFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AlarmObserverPreL"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/deskclock/ClockFragment;


# direct methods
.method private constructor <init>(Lcom/android/deskclock/ClockFragment;)V
    .locals 0

    .line 292
    iput-object p1, p0, Lcom/android/deskclock/ClockFragment$AlarmObserverPreL;->this$0:Lcom/android/deskclock/ClockFragment;

    .line 293
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/deskclock/ClockFragment;Lcom/android/deskclock/ClockFragment$1;)V
    .locals 0

    .line 291
    invoke-direct {p0, p1}, Lcom/android/deskclock/ClockFragment$AlarmObserverPreL;-><init>(Lcom/android/deskclock/ClockFragment;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 0

    .line 298
    iget-object p0, p0, Lcom/android/deskclock/ClockFragment$AlarmObserverPreL;->this$0:Lcom/android/deskclock/ClockFragment;

    invoke-static {p0}, Lcom/android/deskclock/ClockFragment;->access$900(Lcom/android/deskclock/ClockFragment;)V

    return-void
.end method
