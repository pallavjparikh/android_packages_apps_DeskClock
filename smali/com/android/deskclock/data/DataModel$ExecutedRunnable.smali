.class Lcom/android/deskclock/data/DataModel$ExecutedRunnable;
.super Ljava/lang/Object;
.source "DataModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/deskclock/data/DataModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ExecutedRunnable"
.end annotation


# instance fields
.field private final mDelegate:Ljava/lang/Runnable;

.field private mExecuted:Z


# direct methods
.method private constructor <init>(Ljava/lang/Runnable;)V
    .locals 0

    .line 1066
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1067
    iput-object p1, p0, Lcom/android/deskclock/data/DataModel$ExecutedRunnable;->mDelegate:Ljava/lang/Runnable;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/Runnable;Lcom/android/deskclock/data/DataModel$1;)V
    .locals 0

    .line 1061
    invoke-direct {p0, p1}, Lcom/android/deskclock/data/DataModel$ExecutedRunnable;-><init>(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/deskclock/data/DataModel$ExecutedRunnable;)Z
    .locals 0

    .line 1061
    invoke-direct {p0}, Lcom/android/deskclock/data/DataModel$ExecutedRunnable;->isExecuted()Z

    move-result p0

    return p0
.end method

.method private isExecuted()Z
    .locals 0

    .line 1081
    iget-boolean p0, p0, Lcom/android/deskclock/data/DataModel$ExecutedRunnable;->mExecuted:Z

    return p0
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1072
    iget-object v0, p0, Lcom/android/deskclock/data/DataModel$ExecutedRunnable;->mDelegate:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 1074
    monitor-enter p0

    const/4 v0, 0x1

    .line 1075
    :try_start_0
    iput-boolean v0, p0, Lcom/android/deskclock/data/DataModel$ExecutedRunnable;->mExecuted:Z

    .line 1076
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 1077
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
