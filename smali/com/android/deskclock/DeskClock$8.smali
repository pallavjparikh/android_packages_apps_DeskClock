.class synthetic Lcom/android/deskclock/DeskClock$8;
.super Ljava/lang/Object;
.source "DeskClock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/deskclock/DeskClock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$android$deskclock$uidata$UiDataModel$Tab:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 683
    invoke-static {}, Lcom/android/deskclock/uidata/UiDataModel$Tab;->values()[Lcom/android/deskclock/uidata/UiDataModel$Tab;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/deskclock/DeskClock$8;->$SwitchMap$com$android$deskclock$uidata$UiDataModel$Tab:[I

    :try_start_0
    sget-object v0, Lcom/android/deskclock/DeskClock$8;->$SwitchMap$com$android$deskclock$uidata$UiDataModel$Tab:[I

    sget-object v1, Lcom/android/deskclock/uidata/UiDataModel$Tab;->ALARMS:Lcom/android/deskclock/uidata/UiDataModel$Tab;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/android/deskclock/DeskClock$8;->$SwitchMap$com$android$deskclock$uidata$UiDataModel$Tab:[I

    sget-object v1, Lcom/android/deskclock/uidata/UiDataModel$Tab;->CLOCKS:Lcom/android/deskclock/uidata/UiDataModel$Tab;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lcom/android/deskclock/DeskClock$8;->$SwitchMap$com$android$deskclock$uidata$UiDataModel$Tab:[I

    sget-object v1, Lcom/android/deskclock/uidata/UiDataModel$Tab;->TIMERS:Lcom/android/deskclock/uidata/UiDataModel$Tab;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v0, Lcom/android/deskclock/DeskClock$8;->$SwitchMap$com$android$deskclock$uidata$UiDataModel$Tab:[I

    sget-object v1, Lcom/android/deskclock/uidata/UiDataModel$Tab;->STOPWATCH:Lcom/android/deskclock/uidata/UiDataModel$Tab;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    return-void
.end method
