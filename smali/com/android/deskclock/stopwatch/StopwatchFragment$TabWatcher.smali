.class final Lcom/android/deskclock/stopwatch/StopwatchFragment$TabWatcher;
.super Ljava/lang/Object;
.source "StopwatchFragment.java"

# interfaces
.implements Lcom/android/deskclock/uidata/TabListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/deskclock/stopwatch/StopwatchFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "TabWatcher"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/deskclock/stopwatch/StopwatchFragment;


# direct methods
.method private constructor <init>(Lcom/android/deskclock/stopwatch/StopwatchFragment;)V
    .locals 0

    .line 572
    iput-object p1, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment$TabWatcher;->this$0:Lcom/android/deskclock/stopwatch/StopwatchFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/deskclock/stopwatch/StopwatchFragment;Lcom/android/deskclock/stopwatch/StopwatchFragment$1;)V
    .locals 0

    .line 572
    invoke-direct {p0, p1}, Lcom/android/deskclock/stopwatch/StopwatchFragment$TabWatcher;-><init>(Lcom/android/deskclock/stopwatch/StopwatchFragment;)V

    return-void
.end method


# virtual methods
.method public selectedTabChanged(Lcom/android/deskclock/uidata/UiDataModel$Tab;Lcom/android/deskclock/uidata/UiDataModel$Tab;)V
    .locals 0

    .line 575
    iget-object p0, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment$TabWatcher;->this$0:Lcom/android/deskclock/stopwatch/StopwatchFragment;

    invoke-static {p0}, Lcom/android/deskclock/stopwatch/StopwatchFragment;->access$1200(Lcom/android/deskclock/stopwatch/StopwatchFragment;)V

    return-void
.end method
