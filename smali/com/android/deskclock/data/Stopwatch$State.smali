.class public final enum Lcom/android/deskclock/data/Stopwatch$State;
.super Ljava/lang/Enum;
.source "Stopwatch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/deskclock/data/Stopwatch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/deskclock/data/Stopwatch$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/deskclock/data/Stopwatch$State;

.field public static final enum PAUSED:Lcom/android/deskclock/data/Stopwatch$State;

.field public static final enum RESET:Lcom/android/deskclock/data/Stopwatch$State;

.field public static final enum RUNNING:Lcom/android/deskclock/data/Stopwatch$State;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 30
    new-instance v0, Lcom/android/deskclock/data/Stopwatch$State;

    const/4 v1, 0x0

    const-string v2, "RESET"

    invoke-direct {v0, v2, v1}, Lcom/android/deskclock/data/Stopwatch$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/deskclock/data/Stopwatch$State;->RESET:Lcom/android/deskclock/data/Stopwatch$State;

    new-instance v0, Lcom/android/deskclock/data/Stopwatch$State;

    const/4 v2, 0x1

    const-string v3, "RUNNING"

    invoke-direct {v0, v3, v2}, Lcom/android/deskclock/data/Stopwatch$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/deskclock/data/Stopwatch$State;->RUNNING:Lcom/android/deskclock/data/Stopwatch$State;

    new-instance v0, Lcom/android/deskclock/data/Stopwatch$State;

    const/4 v3, 0x2

    const-string v4, "PAUSED"

    invoke-direct {v0, v4, v3}, Lcom/android/deskclock/data/Stopwatch$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/deskclock/data/Stopwatch$State;->PAUSED:Lcom/android/deskclock/data/Stopwatch$State;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/deskclock/data/Stopwatch$State;

    sget-object v4, Lcom/android/deskclock/data/Stopwatch$State;->RESET:Lcom/android/deskclock/data/Stopwatch$State;

    aput-object v4, v0, v1

    sget-object v1, Lcom/android/deskclock/data/Stopwatch$State;->RUNNING:Lcom/android/deskclock/data/Stopwatch$State;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/deskclock/data/Stopwatch$State;->PAUSED:Lcom/android/deskclock/data/Stopwatch$State;

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/deskclock/data/Stopwatch$State;->$VALUES:[Lcom/android/deskclock/data/Stopwatch$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 30
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/deskclock/data/Stopwatch$State;
    .locals 1

    .line 30
    const-class v0, Lcom/android/deskclock/data/Stopwatch$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/deskclock/data/Stopwatch$State;

    return-object p0
.end method

.method public static values()[Lcom/android/deskclock/data/Stopwatch$State;
    .locals 1

    .line 30
    sget-object v0, Lcom/android/deskclock/data/Stopwatch$State;->$VALUES:[Lcom/android/deskclock/data/Stopwatch$State;

    invoke-virtual {v0}, [Lcom/android/deskclock/data/Stopwatch$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/deskclock/data/Stopwatch$State;

    return-object v0
.end method
