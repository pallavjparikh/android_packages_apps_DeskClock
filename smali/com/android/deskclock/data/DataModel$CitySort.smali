.class public final enum Lcom/android/deskclock/data/DataModel$CitySort;
.super Ljava/lang/Enum;
.source "DataModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/deskclock/data/DataModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CitySort"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/deskclock/data/DataModel$CitySort;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/deskclock/data/DataModel$CitySort;

.field public static final enum NAME:Lcom/android/deskclock/data/DataModel$CitySort;

.field public static final enum UTC_OFFSET:Lcom/android/deskclock/data/DataModel$CitySort;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 58
    new-instance v0, Lcom/android/deskclock/data/DataModel$CitySort;

    const/4 v1, 0x0

    const-string v2, "NAME"

    invoke-direct {v0, v2, v1}, Lcom/android/deskclock/data/DataModel$CitySort;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/deskclock/data/DataModel$CitySort;->NAME:Lcom/android/deskclock/data/DataModel$CitySort;

    new-instance v0, Lcom/android/deskclock/data/DataModel$CitySort;

    const/4 v2, 0x1

    const-string v3, "UTC_OFFSET"

    invoke-direct {v0, v3, v2}, Lcom/android/deskclock/data/DataModel$CitySort;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/deskclock/data/DataModel$CitySort;->UTC_OFFSET:Lcom/android/deskclock/data/DataModel$CitySort;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/android/deskclock/data/DataModel$CitySort;

    sget-object v3, Lcom/android/deskclock/data/DataModel$CitySort;->NAME:Lcom/android/deskclock/data/DataModel$CitySort;

    aput-object v3, v0, v1

    sget-object v1, Lcom/android/deskclock/data/DataModel$CitySort;->UTC_OFFSET:Lcom/android/deskclock/data/DataModel$CitySort;

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/deskclock/data/DataModel$CitySort;->$VALUES:[Lcom/android/deskclock/data/DataModel$CitySort;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 58
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/deskclock/data/DataModel$CitySort;
    .locals 1

    .line 58
    const-class v0, Lcom/android/deskclock/data/DataModel$CitySort;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/deskclock/data/DataModel$CitySort;

    return-object p0
.end method

.method public static values()[Lcom/android/deskclock/data/DataModel$CitySort;
    .locals 1

    .line 58
    sget-object v0, Lcom/android/deskclock/data/DataModel$CitySort;->$VALUES:[Lcom/android/deskclock/data/DataModel$CitySort;

    invoke-virtual {v0}, [Lcom/android/deskclock/data/DataModel$CitySort;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/deskclock/data/DataModel$CitySort;

    return-object v0
.end method
