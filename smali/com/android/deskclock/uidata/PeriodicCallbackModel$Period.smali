.class final enum Lcom/android/deskclock/uidata/PeriodicCallbackModel$Period;
.super Ljava/lang/Enum;
.source "PeriodicCallbackModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/deskclock/uidata/PeriodicCallbackModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "Period"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/deskclock/uidata/PeriodicCallbackModel$Period;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/deskclock/uidata/PeriodicCallbackModel$Period;

.field public static final enum HOUR:Lcom/android/deskclock/uidata/PeriodicCallbackModel$Period;

.field public static final enum MIDNIGHT:Lcom/android/deskclock/uidata/PeriodicCallbackModel$Period;

.field public static final enum MINUTE:Lcom/android/deskclock/uidata/PeriodicCallbackModel$Period;

.field public static final enum QUARTER_HOUR:Lcom/android/deskclock/uidata/PeriodicCallbackModel$Period;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 53
    new-instance v0, Lcom/android/deskclock/uidata/PeriodicCallbackModel$Period;

    const/4 v1, 0x0

    const-string v2, "MINUTE"

    invoke-direct {v0, v2, v1}, Lcom/android/deskclock/uidata/PeriodicCallbackModel$Period;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/deskclock/uidata/PeriodicCallbackModel$Period;->MINUTE:Lcom/android/deskclock/uidata/PeriodicCallbackModel$Period;

    new-instance v0, Lcom/android/deskclock/uidata/PeriodicCallbackModel$Period;

    const/4 v2, 0x1

    const-string v3, "QUARTER_HOUR"

    invoke-direct {v0, v3, v2}, Lcom/android/deskclock/uidata/PeriodicCallbackModel$Period;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/deskclock/uidata/PeriodicCallbackModel$Period;->QUARTER_HOUR:Lcom/android/deskclock/uidata/PeriodicCallbackModel$Period;

    new-instance v0, Lcom/android/deskclock/uidata/PeriodicCallbackModel$Period;

    const/4 v3, 0x2

    const-string v4, "HOUR"

    invoke-direct {v0, v4, v3}, Lcom/android/deskclock/uidata/PeriodicCallbackModel$Period;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/deskclock/uidata/PeriodicCallbackModel$Period;->HOUR:Lcom/android/deskclock/uidata/PeriodicCallbackModel$Period;

    new-instance v0, Lcom/android/deskclock/uidata/PeriodicCallbackModel$Period;

    const/4 v4, 0x3

    const-string v5, "MIDNIGHT"

    invoke-direct {v0, v5, v4}, Lcom/android/deskclock/uidata/PeriodicCallbackModel$Period;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/deskclock/uidata/PeriodicCallbackModel$Period;->MIDNIGHT:Lcom/android/deskclock/uidata/PeriodicCallbackModel$Period;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/deskclock/uidata/PeriodicCallbackModel$Period;

    .line 52
    sget-object v5, Lcom/android/deskclock/uidata/PeriodicCallbackModel$Period;->MINUTE:Lcom/android/deskclock/uidata/PeriodicCallbackModel$Period;

    aput-object v5, v0, v1

    sget-object v1, Lcom/android/deskclock/uidata/PeriodicCallbackModel$Period;->QUARTER_HOUR:Lcom/android/deskclock/uidata/PeriodicCallbackModel$Period;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/deskclock/uidata/PeriodicCallbackModel$Period;->HOUR:Lcom/android/deskclock/uidata/PeriodicCallbackModel$Period;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/deskclock/uidata/PeriodicCallbackModel$Period;->MIDNIGHT:Lcom/android/deskclock/uidata/PeriodicCallbackModel$Period;

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/deskclock/uidata/PeriodicCallbackModel$Period;->$VALUES:[Lcom/android/deskclock/uidata/PeriodicCallbackModel$Period;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 53
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/deskclock/uidata/PeriodicCallbackModel$Period;
    .locals 1

    .line 52
    const-class v0, Lcom/android/deskclock/uidata/PeriodicCallbackModel$Period;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/deskclock/uidata/PeriodicCallbackModel$Period;

    return-object p0
.end method

.method public static values()[Lcom/android/deskclock/uidata/PeriodicCallbackModel$Period;
    .locals 1

    .line 52
    sget-object v0, Lcom/android/deskclock/uidata/PeriodicCallbackModel$Period;->$VALUES:[Lcom/android/deskclock/uidata/PeriodicCallbackModel$Period;

    invoke-virtual {v0}, [Lcom/android/deskclock/uidata/PeriodicCallbackModel$Period;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/deskclock/uidata/PeriodicCallbackModel$Period;

    return-object v0
.end method
