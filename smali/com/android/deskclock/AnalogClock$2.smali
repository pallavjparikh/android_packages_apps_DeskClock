.class Lcom/android/deskclock/AnalogClock$2;
.super Ljava/lang/Object;
.source "AnalogClock.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/deskclock/AnalogClock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/deskclock/AnalogClock;


# direct methods
.method constructor <init>(Lcom/android/deskclock/AnalogClock;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/android/deskclock/AnalogClock$2;->this$0:Lcom/android/deskclock/AnalogClock;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 54
    iget-object v0, p0, Lcom/android/deskclock/AnalogClock$2;->this$0:Lcom/android/deskclock/AnalogClock;

    invoke-static {v0}, Lcom/android/deskclock/AnalogClock;->access$200(Lcom/android/deskclock/AnalogClock;)V

    .line 56
    iget-object v0, p0, Lcom/android/deskclock/AnalogClock$2;->this$0:Lcom/android/deskclock/AnalogClock;

    invoke-static {v0}, Lcom/android/deskclock/AnalogClock;->access$300(Lcom/android/deskclock/AnalogClock;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    .line 58
    rem-long/2addr v0, v2

    sub-long/2addr v2, v0

    .line 59
    iget-object v0, p0, Lcom/android/deskclock/AnalogClock$2;->this$0:Lcom/android/deskclock/AnalogClock;

    invoke-virtual {v0, p0, v2, v3}, Landroid/widget/FrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method
