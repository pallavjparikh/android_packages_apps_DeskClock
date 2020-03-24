.class public final Lcom/android/deskclock/data/Weekdays;
.super Ljava/lang/Object;
.source "Weekdays.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/deskclock/data/Weekdays$Order;
    }
.end annotation


# static fields
.field public static final ALL:Lcom/android/deskclock/data/Weekdays;

.field public static final NONE:Lcom/android/deskclock/data/Weekdays;

.field private static final sCalendarDayToBit:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mBits:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/16 v0, 0x7f

    .line 72
    invoke-static {v0}, Lcom/android/deskclock/data/Weekdays;->fromBits(I)Lcom/android/deskclock/data/Weekdays;

    move-result-object v0

    sput-object v0, Lcom/android/deskclock/data/Weekdays;->ALL:Lcom/android/deskclock/data/Weekdays;

    const/4 v0, 0x0

    .line 75
    invoke-static {v0}, Lcom/android/deskclock/data/Weekdays;->fromBits(I)Lcom/android/deskclock/data/Weekdays;

    move-result-object v0

    sput-object v0, Lcom/android/deskclock/data/Weekdays;->NONE:Lcom/android/deskclock/data/Weekdays;

    .line 80
    new-instance v0, Landroid/util/ArrayMap;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Landroid/util/ArrayMap;-><init>(I)V

    const/4 v2, 0x2

    .line 81
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v4, 0x3

    .line 82
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x4

    .line 83
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x5

    .line 84
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v4, 0x8

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x6

    .line 85
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v4, 0x10

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x20

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x40

    .line 87
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/android/deskclock/data/Weekdays;->sCalendarDayToBit:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 0

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    and-int/lit8 p1, p1, 0x7f

    .line 96
    iput p1, p0, Lcom/android/deskclock/data/Weekdays;->mBits:I

    return-void
.end method

.method public static fromBits(I)Lcom/android/deskclock/data/Weekdays;
    .locals 1

    .line 104
    new-instance v0, Lcom/android/deskclock/data/Weekdays;

    invoke-direct {v0, p0}, Lcom/android/deskclock/data/Weekdays;-><init>(I)V

    return-object v0
.end method

.method public static varargs fromCalendarDays([I)Lcom/android/deskclock/data/Weekdays;
    .locals 5

    .line 122
    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_1

    aget v3, p0, v1

    .line 123
    sget-object v4, Lcom/android/deskclock/data/Weekdays;->sCalendarDayToBit:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    if-eqz v3, :cond_0

    .line 125
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    or-int/2addr v2, v3

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 128
    :cond_1
    new-instance p0, Lcom/android/deskclock/data/Weekdays;

    invoke-direct {p0, v2}, Lcom/android/deskclock/data/Weekdays;-><init>(I)V

    return-object p0
.end method

.method private toString(Landroid/content/Context;Lcom/android/deskclock/data/Weekdays$Order;Z)Ljava/lang/String;
    .locals 3

    .line 311
    invoke-virtual {p0}, Lcom/android/deskclock/data/Weekdays;->isRepeating()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, ""

    return-object p0

    .line 315
    :cond_0
    iget v0, p0, Lcom/android/deskclock/data/Weekdays;->mBits:I

    const/16 v1, 0x7f

    if-ne v0, v1, :cond_1

    const p0, 0x7f1101d3

    .line 316
    invoke-virtual {p1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 v0, 0x1

    if-nez p3, :cond_3

    .line 319
    invoke-virtual {p0}, Lcom/android/deskclock/data/Weekdays;->getCount()I

    move-result p3

    if-gt p3, v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 320
    :cond_3
    :goto_0
    new-instance p3, Ljava/text/DateFormatSymbols;

    invoke-direct {p3}, Ljava/text/DateFormatSymbols;-><init>()V

    if-eqz v0, :cond_4

    .line 321
    invoke-virtual {p3}, Ljava/text/DateFormatSymbols;->getWeekdays()[Ljava/lang/String;

    move-result-object p3

    goto :goto_1

    :cond_4
    invoke-virtual {p3}, Ljava/text/DateFormatSymbols;->getShortWeekdays()[Ljava/lang/String;

    move-result-object p3

    :goto_1
    const v0, 0x7f1101c6

    .line 323
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 325
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x28

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 326
    invoke-virtual {p2}, Lcom/android/deskclock/data/Weekdays$Order;->getCalendarDays()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_5
    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 327
    invoke-virtual {p0, v1}, Lcom/android/deskclock/data/Weekdays;->isBitOn(I)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 328
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_6

    .line 329
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 331
    :cond_6
    aget-object v1, p3, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 334
    :cond_7
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 234
    const-class v2, Lcom/android/deskclock/data/Weekdays;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 236
    :cond_1
    check-cast p1, Lcom/android/deskclock/data/Weekdays;

    .line 237
    iget p0, p0, Lcom/android/deskclock/data/Weekdays;->mBits:I

    iget p1, p1, Lcom/android/deskclock/data/Weekdays;->mBits:I

    if-ne p0, p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public getBits()I
    .locals 0

    .line 177
    iget p0, p0, Lcom/android/deskclock/data/Weekdays;->mBits:I

    return p0
.end method

.method getCount()I
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x7

    if-gt v0, v2, :cond_1

    .line 297
    invoke-virtual {p0, v0}, Lcom/android/deskclock/data/Weekdays;->isBitOn(I)Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public getDistanceToNextDay(Ljava/util/Calendar;)I
    .locals 3

    const/4 v0, 0x7

    .line 216
    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 218
    invoke-virtual {p0, p1}, Lcom/android/deskclock/data/Weekdays;->isBitOn(I)Z

    move-result v2

    if-eqz v2, :cond_0

    return v1

    :cond_0
    add-int/lit8 p1, p1, 0x1

    if-le p1, v0, :cond_1

    const/4 p1, 0x1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, -0x1

    return p0
.end method

.method public getDistanceToPreviousDay(Ljava/util/Calendar;)I
    .locals 4

    const/4 v0, 0x7

    .line 193
    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result p1

    const/4 v1, 0x1

    move v2, p1

    move p1, v1

    :goto_0
    const/4 v3, -0x1

    if-gt p1, v0, :cond_2

    add-int/2addr v2, v3

    if-ge v2, v1, :cond_0

    move v2, v0

    .line 199
    :cond_0
    invoke-virtual {p0, v2}, Lcom/android/deskclock/data/Weekdays;->isBitOn(I)Z

    move-result v3

    if-eqz v3, :cond_1

    return p1

    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    return v3
.end method

.method public hashCode()I
    .locals 0

    .line 242
    iget p0, p0, Lcom/android/deskclock/data/Weekdays;->mBits:I

    return p0
.end method

.method public isBitOn(I)Z
    .locals 2

    .line 167
    sget-object v0, Lcom/android/deskclock/data/Weekdays;->sCalendarDayToBit:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 171
    iget p0, p0, Lcom/android/deskclock/data/Weekdays;->mBits:I

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    and-int/2addr p0, p1

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0

    .line 169
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is not a valid weekday"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public isRepeating()Z
    .locals 0

    .line 182
    iget p0, p0, Lcom/android/deskclock/data/Weekdays;->mBits:I

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public setBit(IZ)Lcom/android/deskclock/data/Weekdays;
    .locals 1

    .line 146
    sget-object v0, Lcom/android/deskclock/data/Weekdays;->sCalendarDayToBit:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-nez p1, :cond_0

    return-object p0

    .line 150
    :cond_0
    new-instance v0, Lcom/android/deskclock/data/Weekdays;

    iget p0, p0, Lcom/android/deskclock/data/Weekdays;->mBits:I

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-eqz p2, :cond_1

    or-int/2addr p0, p1

    goto :goto_0

    :cond_1
    not-int p1, p1

    and-int/2addr p0, p1

    :goto_0
    invoke-direct {v0, p0}, Lcom/android/deskclock/data/Weekdays;-><init>(I)V

    return-object v0
.end method

.method public toAccessibilityString(Landroid/content/Context;Lcom/android/deskclock/data/Weekdays$Order;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    .line 290
    invoke-direct {p0, p1, p2, v0}, Lcom/android/deskclock/data/Weekdays;->toString(Landroid/content/Context;Lcom/android/deskclock/data/Weekdays$Order;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 247
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x13

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "["

    .line 248
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x2

    .line 249
    invoke-virtual {p0, v1}, Lcom/android/deskclock/data/Weekdays;->isBitOn(I)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 250
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-le v1, v2, :cond_0

    const-string v1, " M"

    goto :goto_0

    :cond_0
    const-string v1, "M"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const/4 v1, 0x3

    .line 252
    invoke-virtual {p0, v1}, Lcom/android/deskclock/data/Weekdays;->isBitOn(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 253
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-le v1, v2, :cond_2

    const-string v1, " T"

    goto :goto_1

    :cond_2
    const-string v1, "T"

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    const/4 v1, 0x4

    .line 255
    invoke-virtual {p0, v1}, Lcom/android/deskclock/data/Weekdays;->isBitOn(I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 256
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-le v1, v2, :cond_4

    const-string v1, " W"

    goto :goto_2

    :cond_4
    const-string v1, "W"

    :goto_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    const/4 v1, 0x5

    .line 258
    invoke-virtual {p0, v1}, Lcom/android/deskclock/data/Weekdays;->isBitOn(I)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 259
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-le v1, v2, :cond_6

    const-string v1, " Th"

    goto :goto_3

    :cond_6
    const-string v1, "Th"

    :goto_3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    const/4 v1, 0x6

    .line 261
    invoke-virtual {p0, v1}, Lcom/android/deskclock/data/Weekdays;->isBitOn(I)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 262
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-le v1, v2, :cond_8

    const-string v1, " F"

    goto :goto_4

    :cond_8
    const-string v1, "F"

    :goto_4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_9
    const/4 v1, 0x7

    .line 264
    invoke-virtual {p0, v1}, Lcom/android/deskclock/data/Weekdays;->isBitOn(I)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 265
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-le v1, v2, :cond_a

    const-string v1, " Sa"

    goto :goto_5

    :cond_a
    const-string v1, "Sa"

    :goto_5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    :cond_b
    invoke-virtual {p0, v2}, Lcom/android/deskclock/data/Weekdays;->isBitOn(I)Z

    move-result p0

    if-eqz p0, :cond_d

    .line 268
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    if-le p0, v2, :cond_c

    const-string p0, " Su"

    goto :goto_6

    :cond_c
    const-string p0, "Su"

    :goto_6
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_d
    const-string p0, "]"

    .line 270
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 271
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toString(Landroid/content/Context;Lcom/android/deskclock/data/Weekdays$Order;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 280
    invoke-direct {p0, p1, p2, v0}, Lcom/android/deskclock/data/Weekdays;->toString(Landroid/content/Context;Lcom/android/deskclock/data/Weekdays$Order;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
