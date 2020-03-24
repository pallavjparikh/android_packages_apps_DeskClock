.class public final enum Lcom/android/deskclock/data/Timer$State;
.super Ljava/lang/Enum;
.source "Timer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/deskclock/data/Timer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/deskclock/data/Timer$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/deskclock/data/Timer$State;

.field public static final enum EXPIRED:Lcom/android/deskclock/data/Timer$State;

.field public static final enum MISSED:Lcom/android/deskclock/data/Timer$State;

.field public static final enum PAUSED:Lcom/android/deskclock/data/Timer$State;

.field public static final enum RESET:Lcom/android/deskclock/data/Timer$State;

.field public static final enum RUNNING:Lcom/android/deskclock/data/Timer$State;


# instance fields
.field private final mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 42
    new-instance v0, Lcom/android/deskclock/data/Timer$State;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v3, "RUNNING"

    invoke-direct {v0, v3, v1, v2}, Lcom/android/deskclock/data/Timer$State;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/deskclock/data/Timer$State;->RUNNING:Lcom/android/deskclock/data/Timer$State;

    new-instance v0, Lcom/android/deskclock/data/Timer$State;

    const/4 v3, 0x2

    const-string v4, "PAUSED"

    invoke-direct {v0, v4, v2, v3}, Lcom/android/deskclock/data/Timer$State;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/deskclock/data/Timer$State;->PAUSED:Lcom/android/deskclock/data/Timer$State;

    new-instance v0, Lcom/android/deskclock/data/Timer$State;

    const/4 v4, 0x3

    const-string v5, "EXPIRED"

    invoke-direct {v0, v5, v3, v4}, Lcom/android/deskclock/data/Timer$State;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/deskclock/data/Timer$State;->EXPIRED:Lcom/android/deskclock/data/Timer$State;

    new-instance v0, Lcom/android/deskclock/data/Timer$State;

    const/4 v5, 0x4

    const-string v6, "RESET"

    invoke-direct {v0, v6, v4, v5}, Lcom/android/deskclock/data/Timer$State;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/deskclock/data/Timer$State;->RESET:Lcom/android/deskclock/data/Timer$State;

    new-instance v0, Lcom/android/deskclock/data/Timer$State;

    const/4 v6, 0x5

    const-string v7, "MISSED"

    invoke-direct {v0, v7, v5, v6}, Lcom/android/deskclock/data/Timer$State;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/deskclock/data/Timer$State;->MISSED:Lcom/android/deskclock/data/Timer$State;

    new-array v0, v6, [Lcom/android/deskclock/data/Timer$State;

    .line 41
    sget-object v6, Lcom/android/deskclock/data/Timer$State;->RUNNING:Lcom/android/deskclock/data/Timer$State;

    aput-object v6, v0, v1

    sget-object v1, Lcom/android/deskclock/data/Timer$State;->PAUSED:Lcom/android/deskclock/data/Timer$State;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/deskclock/data/Timer$State;->EXPIRED:Lcom/android/deskclock/data/Timer$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/deskclock/data/Timer$State;->RESET:Lcom/android/deskclock/data/Timer$State;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/deskclock/data/Timer$State;->MISSED:Lcom/android/deskclock/data/Timer$State;

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/deskclock/data/Timer$State;->$VALUES:[Lcom/android/deskclock/data/Timer$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 47
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 48
    iput p3, p0, Lcom/android/deskclock/data/Timer$State;->mValue:I

    return-void
.end method

.method public static fromValue(I)Lcom/android/deskclock/data/Timer$State;
    .locals 5

    .line 62
    invoke-static {}, Lcom/android/deskclock/data/Timer$State;->values()[Lcom/android/deskclock/data/Timer$State;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 63
    invoke-virtual {v3}, Lcom/android/deskclock/data/Timer$State;->getValue()I

    move-result v4

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/deskclock/data/Timer$State;
    .locals 1

    .line 41
    const-class v0, Lcom/android/deskclock/data/Timer$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/deskclock/data/Timer$State;

    return-object p0
.end method

.method public static values()[Lcom/android/deskclock/data/Timer$State;
    .locals 1

    .line 41
    sget-object v0, Lcom/android/deskclock/data/Timer$State;->$VALUES:[Lcom/android/deskclock/data/Timer$State;

    invoke-virtual {v0}, [Lcom/android/deskclock/data/Timer$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/deskclock/data/Timer$State;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 0

    .line 55
    iget p0, p0, Lcom/android/deskclock/data/Timer$State;->mValue:I

    return p0
.end method
