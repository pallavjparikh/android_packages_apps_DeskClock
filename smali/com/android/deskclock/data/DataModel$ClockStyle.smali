.class public final enum Lcom/android/deskclock/data/DataModel$ClockStyle;
.super Ljava/lang/Enum;
.source "DataModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/deskclock/data/DataModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ClockStyle"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/deskclock/data/DataModel$ClockStyle;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/deskclock/data/DataModel$ClockStyle;

.field public static final enum ANALOG:Lcom/android/deskclock/data/DataModel$ClockStyle;

.field public static final enum DIGITAL:Lcom/android/deskclock/data/DataModel$ClockStyle;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 55
    new-instance v0, Lcom/android/deskclock/data/DataModel$ClockStyle;

    const/4 v1, 0x0

    const-string v2, "ANALOG"

    invoke-direct {v0, v2, v1}, Lcom/android/deskclock/data/DataModel$ClockStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/deskclock/data/DataModel$ClockStyle;->ANALOG:Lcom/android/deskclock/data/DataModel$ClockStyle;

    new-instance v0, Lcom/android/deskclock/data/DataModel$ClockStyle;

    const/4 v2, 0x1

    const-string v3, "DIGITAL"

    invoke-direct {v0, v3, v2}, Lcom/android/deskclock/data/DataModel$ClockStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/deskclock/data/DataModel$ClockStyle;->DIGITAL:Lcom/android/deskclock/data/DataModel$ClockStyle;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/android/deskclock/data/DataModel$ClockStyle;

    sget-object v3, Lcom/android/deskclock/data/DataModel$ClockStyle;->ANALOG:Lcom/android/deskclock/data/DataModel$ClockStyle;

    aput-object v3, v0, v1

    sget-object v1, Lcom/android/deskclock/data/DataModel$ClockStyle;->DIGITAL:Lcom/android/deskclock/data/DataModel$ClockStyle;

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/deskclock/data/DataModel$ClockStyle;->$VALUES:[Lcom/android/deskclock/data/DataModel$ClockStyle;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 55
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/deskclock/data/DataModel$ClockStyle;
    .locals 1

    .line 55
    const-class v0, Lcom/android/deskclock/data/DataModel$ClockStyle;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/deskclock/data/DataModel$ClockStyle;

    return-object p0
.end method

.method public static values()[Lcom/android/deskclock/data/DataModel$ClockStyle;
    .locals 1

    .line 55
    sget-object v0, Lcom/android/deskclock/data/DataModel$ClockStyle;->$VALUES:[Lcom/android/deskclock/data/DataModel$ClockStyle;

    invoke-virtual {v0}, [Lcom/android/deskclock/data/DataModel$ClockStyle;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/deskclock/data/DataModel$ClockStyle;

    return-object v0
.end method
