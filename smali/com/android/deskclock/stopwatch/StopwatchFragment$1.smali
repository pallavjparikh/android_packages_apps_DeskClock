.class synthetic Lcom/android/deskclock/stopwatch/StopwatchFragment$1;
.super Ljava/lang/Object;
.source "StopwatchFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/deskclock/stopwatch/StopwatchFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$android$deskclock$data$Stopwatch$State:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 232
    invoke-static {}, Lcom/android/deskclock/data/Stopwatch$State;->values()[Lcom/android/deskclock/data/Stopwatch$State;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/deskclock/stopwatch/StopwatchFragment$1;->$SwitchMap$com$android$deskclock$data$Stopwatch$State:[I

    :try_start_0
    sget-object v0, Lcom/android/deskclock/stopwatch/StopwatchFragment$1;->$SwitchMap$com$android$deskclock$data$Stopwatch$State:[I

    sget-object v1, Lcom/android/deskclock/data/Stopwatch$State;->RUNNING:Lcom/android/deskclock/data/Stopwatch$State;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/android/deskclock/stopwatch/StopwatchFragment$1;->$SwitchMap$com$android$deskclock$data$Stopwatch$State:[I

    sget-object v1, Lcom/android/deskclock/data/Stopwatch$State;->PAUSED:Lcom/android/deskclock/data/Stopwatch$State;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lcom/android/deskclock/stopwatch/StopwatchFragment$1;->$SwitchMap$com$android$deskclock$data$Stopwatch$State:[I

    sget-object v1, Lcom/android/deskclock/data/Stopwatch$State;->RESET:Lcom/android/deskclock/data/Stopwatch$State;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    return-void
.end method
