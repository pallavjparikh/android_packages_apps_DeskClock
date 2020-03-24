.class public final enum Lcom/android/deskclock/uidata/UiDataModel$Tab;
.super Ljava/lang/Enum;
.source "UiDataModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/deskclock/uidata/UiDataModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Tab"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/deskclock/uidata/UiDataModel$Tab;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/deskclock/uidata/UiDataModel$Tab;

.field public static final enum ALARMS:Lcom/android/deskclock/uidata/UiDataModel$Tab;

.field public static final enum CLOCKS:Lcom/android/deskclock/uidata/UiDataModel$Tab;

.field public static final enum STOPWATCH:Lcom/android/deskclock/uidata/UiDataModel$Tab;

.field public static final enum TIMERS:Lcom/android/deskclock/uidata/UiDataModel$Tab;


# instance fields
.field private final mFragmentClassName:Ljava/lang/String;

.field private final mIconResId:I

.field private final mLabelResId:I


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 42
    new-instance v6, Lcom/android/deskclock/uidata/UiDataModel$Tab;

    const-class v3, Lcom/android/deskclock/AlarmClockFragment;

    const-string v1, "ALARMS"

    const/4 v2, 0x0

    const v4, 0x7f0800b6

    const v5, 0x7f1101f0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/android/deskclock/uidata/UiDataModel$Tab;-><init>(Ljava/lang/String;ILjava/lang/Class;II)V

    sput-object v6, Lcom/android/deskclock/uidata/UiDataModel$Tab;->ALARMS:Lcom/android/deskclock/uidata/UiDataModel$Tab;

    .line 43
    new-instance v0, Lcom/android/deskclock/uidata/UiDataModel$Tab;

    const-class v10, Lcom/android/deskclock/ClockFragment;

    const-string v8, "CLOCKS"

    const/4 v9, 0x1

    const v11, 0x7f0800b9

    const v12, 0x7f1101f1

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/android/deskclock/uidata/UiDataModel$Tab;-><init>(Ljava/lang/String;ILjava/lang/Class;II)V

    sput-object v0, Lcom/android/deskclock/uidata/UiDataModel$Tab;->CLOCKS:Lcom/android/deskclock/uidata/UiDataModel$Tab;

    .line 44
    new-instance v0, Lcom/android/deskclock/uidata/UiDataModel$Tab;

    const-class v4, Lcom/android/deskclock/timer/TimerFragment;

    const-string v2, "TIMERS"

    const/4 v3, 0x2

    const v5, 0x7f0800bf

    const v6, 0x7f1101f9

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/android/deskclock/uidata/UiDataModel$Tab;-><init>(Ljava/lang/String;ILjava/lang/Class;II)V

    sput-object v0, Lcom/android/deskclock/uidata/UiDataModel$Tab;->TIMERS:Lcom/android/deskclock/uidata/UiDataModel$Tab;

    .line 45
    new-instance v0, Lcom/android/deskclock/uidata/UiDataModel$Tab;

    const-class v10, Lcom/android/deskclock/stopwatch/StopwatchFragment;

    const-string v8, "STOPWATCH"

    const/4 v9, 0x3

    const v11, 0x7f0800bc

    const v12, 0x7f1101f8

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/android/deskclock/uidata/UiDataModel$Tab;-><init>(Ljava/lang/String;ILjava/lang/Class;II)V

    sput-object v0, Lcom/android/deskclock/uidata/UiDataModel$Tab;->STOPWATCH:Lcom/android/deskclock/uidata/UiDataModel$Tab;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/deskclock/uidata/UiDataModel$Tab;

    .line 41
    sget-object v1, Lcom/android/deskclock/uidata/UiDataModel$Tab;->ALARMS:Lcom/android/deskclock/uidata/UiDataModel$Tab;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/deskclock/uidata/UiDataModel$Tab;->CLOCKS:Lcom/android/deskclock/uidata/UiDataModel$Tab;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/deskclock/uidata/UiDataModel$Tab;->TIMERS:Lcom/android/deskclock/uidata/UiDataModel$Tab;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/deskclock/uidata/UiDataModel$Tab;->STOPWATCH:Lcom/android/deskclock/uidata/UiDataModel$Tab;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/deskclock/uidata/UiDataModel$Tab;->$VALUES:[Lcom/android/deskclock/uidata/UiDataModel$Tab;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/Class;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class;",
            "II)V"
        }
    .end annotation

    .line 51
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 52
    invoke-virtual {p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/deskclock/uidata/UiDataModel$Tab;->mFragmentClassName:Ljava/lang/String;

    .line 53
    iput p4, p0, Lcom/android/deskclock/uidata/UiDataModel$Tab;->mIconResId:I

    .line 54
    iput p5, p0, Lcom/android/deskclock/uidata/UiDataModel$Tab;->mLabelResId:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/deskclock/uidata/UiDataModel$Tab;
    .locals 1

    .line 41
    const-class v0, Lcom/android/deskclock/uidata/UiDataModel$Tab;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/deskclock/uidata/UiDataModel$Tab;

    return-object p0
.end method

.method public static values()[Lcom/android/deskclock/uidata/UiDataModel$Tab;
    .locals 1

    .line 41
    sget-object v0, Lcom/android/deskclock/uidata/UiDataModel$Tab;->$VALUES:[Lcom/android/deskclock/uidata/UiDataModel$Tab;

    invoke-virtual {v0}, [Lcom/android/deskclock/uidata/UiDataModel$Tab;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/deskclock/uidata/UiDataModel$Tab;

    return-object v0
.end method


# virtual methods
.method public getFragmentClassName()Ljava/lang/String;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/android/deskclock/uidata/UiDataModel$Tab;->mFragmentClassName:Ljava/lang/String;

    return-object p0
.end method

.method public getIconResId()I
    .locals 0

    .line 58
    iget p0, p0, Lcom/android/deskclock/uidata/UiDataModel$Tab;->mIconResId:I

    return p0
.end method

.method public getLabelResId()I
    .locals 0

    .line 59
    iget p0, p0, Lcom/android/deskclock/uidata/UiDataModel$Tab;->mLabelResId:I

    return p0
.end method
