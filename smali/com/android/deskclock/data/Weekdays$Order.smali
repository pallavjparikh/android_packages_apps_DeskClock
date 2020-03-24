.class public final enum Lcom/android/deskclock/data/Weekdays$Order;
.super Ljava/lang/Enum;
.source "Weekdays.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/deskclock/data/Weekdays;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Order"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/deskclock/data/Weekdays$Order;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/deskclock/data/Weekdays$Order;

.field public static final enum MON_TO_SUN:Lcom/android/deskclock/data/Weekdays$Order;

.field public static final enum SAT_TO_FRI:Lcom/android/deskclock/data/Weekdays$Order;

.field public static final enum SUN_TO_SAT:Lcom/android/deskclock/data/Weekdays$Order;


# instance fields
.field private final mCalendarDays:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 17

    .line 53
    new-instance v0, Lcom/android/deskclock/data/Weekdays$Order;

    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Integer;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v5

    const/4 v7, 0x2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v3, v7

    const/4 v9, 0x3

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v3, v9

    const/4 v11, 0x4

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v3, v11

    const/4 v13, 0x5

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v3, v13

    const/4 v15, 0x6

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v3, v15

    const-string v15, "SAT_TO_FRI"

    invoke-direct {v0, v15, v4, v3}, Lcom/android/deskclock/data/Weekdays$Order;-><init>(Ljava/lang/String;I[Ljava/lang/Integer;)V

    sput-object v0, Lcom/android/deskclock/data/Weekdays$Order;->SAT_TO_FRI:Lcom/android/deskclock/data/Weekdays$Order;

    .line 54
    new-instance v0, Lcom/android/deskclock/data/Weekdays$Order;

    new-array v3, v1, [Ljava/lang/Integer;

    aput-object v6, v3, v4

    aput-object v8, v3, v5

    aput-object v10, v3, v7

    aput-object v12, v3, v9

    aput-object v14, v3, v11

    aput-object v16, v3, v13

    const/4 v15, 0x6

    aput-object v2, v3, v15

    const-string v15, "SUN_TO_SAT"

    invoke-direct {v0, v15, v5, v3}, Lcom/android/deskclock/data/Weekdays$Order;-><init>(Ljava/lang/String;I[Ljava/lang/Integer;)V

    sput-object v0, Lcom/android/deskclock/data/Weekdays$Order;->SUN_TO_SAT:Lcom/android/deskclock/data/Weekdays$Order;

    .line 55
    new-instance v0, Lcom/android/deskclock/data/Weekdays$Order;

    new-array v1, v1, [Ljava/lang/Integer;

    aput-object v8, v1, v4

    aput-object v10, v1, v5

    aput-object v12, v1, v7

    aput-object v14, v1, v9

    aput-object v16, v1, v11

    aput-object v2, v1, v13

    const/4 v2, 0x6

    aput-object v6, v1, v2

    const-string v2, "MON_TO_SUN"

    invoke-direct {v0, v2, v7, v1}, Lcom/android/deskclock/data/Weekdays$Order;-><init>(Ljava/lang/String;I[Ljava/lang/Integer;)V

    sput-object v0, Lcom/android/deskclock/data/Weekdays$Order;->MON_TO_SUN:Lcom/android/deskclock/data/Weekdays$Order;

    new-array v0, v9, [Lcom/android/deskclock/data/Weekdays$Order;

    .line 52
    sget-object v1, Lcom/android/deskclock/data/Weekdays$Order;->SAT_TO_FRI:Lcom/android/deskclock/data/Weekdays$Order;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/deskclock/data/Weekdays$Order;->SUN_TO_SAT:Lcom/android/deskclock/data/Weekdays$Order;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/deskclock/data/Weekdays$Order;->MON_TO_SUN:Lcom/android/deskclock/data/Weekdays$Order;

    aput-object v1, v0, v7

    sput-object v0, Lcom/android/deskclock/data/Weekdays$Order;->$VALUES:[Lcom/android/deskclock/data/Weekdays$Order;

    return-void
.end method

.method private varargs constructor <init>(Ljava/lang/String;I[Ljava/lang/Integer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Integer;",
            ")V"
        }
    .end annotation

    .line 59
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 60
    invoke-static {p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/deskclock/data/Weekdays$Order;->mCalendarDays:Ljava/util/List;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/deskclock/data/Weekdays$Order;
    .locals 1

    .line 52
    const-class v0, Lcom/android/deskclock/data/Weekdays$Order;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/deskclock/data/Weekdays$Order;

    return-object p0
.end method

.method public static values()[Lcom/android/deskclock/data/Weekdays$Order;
    .locals 1

    .line 52
    sget-object v0, Lcom/android/deskclock/data/Weekdays$Order;->$VALUES:[Lcom/android/deskclock/data/Weekdays$Order;

    invoke-virtual {v0}, [Lcom/android/deskclock/data/Weekdays$Order;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/deskclock/data/Weekdays$Order;

    return-object v0
.end method


# virtual methods
.method public getCalendarDays()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 64
    iget-object p0, p0, Lcom/android/deskclock/data/Weekdays$Order;->mCalendarDays:Ljava/util/List;

    return-object p0
.end method
