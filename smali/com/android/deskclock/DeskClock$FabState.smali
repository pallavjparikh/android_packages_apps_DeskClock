.class final enum Lcom/android/deskclock/DeskClock$FabState;
.super Ljava/lang/Enum;
.source "DeskClock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/deskclock/DeskClock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "FabState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/deskclock/DeskClock$FabState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/deskclock/DeskClock$FabState;

.field public static final enum HIDE_ARMED:Lcom/android/deskclock/DeskClock$FabState;

.field public static final enum HIDING:Lcom/android/deskclock/DeskClock$FabState;

.field public static final enum SHOWING:Lcom/android/deskclock/DeskClock$FabState;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 73
    new-instance v0, Lcom/android/deskclock/DeskClock$FabState;

    const/4 v1, 0x0

    const-string v2, "SHOWING"

    invoke-direct {v0, v2, v1}, Lcom/android/deskclock/DeskClock$FabState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/deskclock/DeskClock$FabState;->SHOWING:Lcom/android/deskclock/DeskClock$FabState;

    new-instance v0, Lcom/android/deskclock/DeskClock$FabState;

    const/4 v2, 0x1

    const-string v3, "HIDE_ARMED"

    invoke-direct {v0, v3, v2}, Lcom/android/deskclock/DeskClock$FabState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/deskclock/DeskClock$FabState;->HIDE_ARMED:Lcom/android/deskclock/DeskClock$FabState;

    new-instance v0, Lcom/android/deskclock/DeskClock$FabState;

    const/4 v3, 0x2

    const-string v4, "HIDING"

    invoke-direct {v0, v4, v3}, Lcom/android/deskclock/DeskClock$FabState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/deskclock/DeskClock$FabState;->HIDING:Lcom/android/deskclock/DeskClock$FabState;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/deskclock/DeskClock$FabState;

    sget-object v4, Lcom/android/deskclock/DeskClock$FabState;->SHOWING:Lcom/android/deskclock/DeskClock$FabState;

    aput-object v4, v0, v1

    sget-object v1, Lcom/android/deskclock/DeskClock$FabState;->HIDE_ARMED:Lcom/android/deskclock/DeskClock$FabState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/deskclock/DeskClock$FabState;->HIDING:Lcom/android/deskclock/DeskClock$FabState;

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/deskclock/DeskClock$FabState;->$VALUES:[Lcom/android/deskclock/DeskClock$FabState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 73
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/deskclock/DeskClock$FabState;
    .locals 1

    .line 73
    const-class v0, Lcom/android/deskclock/DeskClock$FabState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/deskclock/DeskClock$FabState;

    return-object p0
.end method

.method public static values()[Lcom/android/deskclock/DeskClock$FabState;
    .locals 1

    .line 73
    sget-object v0, Lcom/android/deskclock/DeskClock$FabState;->$VALUES:[Lcom/android/deskclock/DeskClock$FabState;

    invoke-virtual {v0}, [Lcom/android/deskclock/DeskClock$FabState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/deskclock/DeskClock$FabState;

    return-object v0
.end method
