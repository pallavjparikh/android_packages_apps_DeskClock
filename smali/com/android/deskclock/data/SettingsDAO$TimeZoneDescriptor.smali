.class Lcom/android/deskclock/data/SettingsDAO$TimeZoneDescriptor;
.super Ljava/lang/Object;
.source "SettingsDAO.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/deskclock/data/SettingsDAO;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TimeZoneDescriptor"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/android/deskclock/data/SettingsDAO$TimeZoneDescriptor;",
        ">;"
    }
.end annotation


# instance fields
.field private final mOffset:I

.field private final mTimeZoneId:Ljava/lang/String;

.field private final mTimeZoneName:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/util/Locale;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 4

    .line 379
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 380
    iput-object p2, p0, Lcom/android/deskclock/data/SettingsDAO$TimeZoneDescriptor;->mTimeZoneId:Ljava/lang/String;

    .line 382
    invoke-static {p2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object p2

    .line 383
    invoke-virtual {p2, p4, p5}, Ljava/util/TimeZone;->getOffset(J)I

    move-result p2

    iput p2, p0, Lcom/android/deskclock/data/SettingsDAO$TimeZoneDescriptor;->mOffset:I

    .line 385
    iget p2, p0, Lcom/android/deskclock/data/SettingsDAO$TimeZoneDescriptor;->mOffset:I

    if-gez p2, :cond_0

    const/16 p2, 0x2d

    goto :goto_0

    :cond_0
    const/16 p2, 0x2b

    .line 386
    :goto_0
    iget p4, p0, Lcom/android/deskclock/data/SettingsDAO$TimeZoneDescriptor;->mOffset:I

    invoke-static {p4}, Ljava/lang/Math;->abs(I)I

    move-result p4

    int-to-long p4, p4

    const-wide/32 v0, 0x36ee80

    .line 387
    div-long v0, p4, v0

    const-wide/32 v2, 0xea60

    .line 388
    div-long/2addr p4, v2

    const-wide/16 v2, 0x3c

    rem-long/2addr p4, v2

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 389
    invoke-static {p2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p2

    aput-object p2, v2, v3

    const/4 p2, 0x1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v2, p2

    const/4 p2, 0x2

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p4

    aput-object p4, v2, p2

    const/4 p2, 0x3

    aput-object p3, v2, p2

    const-string p2, "(GMT%s%d:%02d) %s"

    invoke-static {p1, p2, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/deskclock/data/SettingsDAO$TimeZoneDescriptor;->mTimeZoneName:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Ljava/util/Locale;Ljava/lang/String;Ljava/lang/String;JLcom/android/deskclock/data/SettingsDAO$1;)V
    .locals 0

    .line 373
    invoke-direct/range {p0 .. p5}, Lcom/android/deskclock/data/SettingsDAO$TimeZoneDescriptor;-><init>(Ljava/util/Locale;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/deskclock/data/SettingsDAO$TimeZoneDescriptor;)Ljava/lang/String;
    .locals 0

    .line 373
    iget-object p0, p0, Lcom/android/deskclock/data/SettingsDAO$TimeZoneDescriptor;->mTimeZoneId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/deskclock/data/SettingsDAO$TimeZoneDescriptor;)Ljava/lang/String;
    .locals 0

    .line 373
    iget-object p0, p0, Lcom/android/deskclock/data/SettingsDAO$TimeZoneDescriptor;->mTimeZoneName:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public compareTo(Lcom/android/deskclock/data/SettingsDAO$TimeZoneDescriptor;)I
    .locals 0

    .line 394
    iget p0, p0, Lcom/android/deskclock/data/SettingsDAO$TimeZoneDescriptor;->mOffset:I

    iget p1, p1, Lcom/android/deskclock/data/SettingsDAO$TimeZoneDescriptor;->mOffset:I

    sub-int/2addr p0, p1

    return p0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 373
    check-cast p1, Lcom/android/deskclock/data/SettingsDAO$TimeZoneDescriptor;

    invoke-virtual {p0, p1}, Lcom/android/deskclock/data/SettingsDAO$TimeZoneDescriptor;->compareTo(Lcom/android/deskclock/data/SettingsDAO$TimeZoneDescriptor;)I

    move-result p0

    return p0
.end method
