.class public final Lcom/android/deskclock/data/TimeZones;
.super Ljava/lang/Object;
.source "TimeZones.java"


# instance fields
.field private final mTimeZoneIds:[Ljava/lang/CharSequence;

.field private final mTimeZoneNames:[Ljava/lang/CharSequence;


# direct methods
.method constructor <init>([Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/android/deskclock/data/TimeZones;->mTimeZoneIds:[Ljava/lang/CharSequence;

    .line 31
    iput-object p2, p0, Lcom/android/deskclock/data/TimeZones;->mTimeZoneNames:[Ljava/lang/CharSequence;

    return-void
.end method


# virtual methods
.method contains(Ljava/lang/String;)Z
    .locals 0

    .line 61
    invoke-virtual {p0, p1}, Lcom/android/deskclock/data/TimeZones;->getTimeZoneName(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getTimeZoneIds()[Ljava/lang/CharSequence;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/android/deskclock/data/TimeZones;->mTimeZoneIds:[Ljava/lang/CharSequence;

    return-object p0
.end method

.method getTimeZoneName(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 3

    const/4 v0, 0x0

    .line 47
    :goto_0
    iget-object v1, p0, Lcom/android/deskclock/data/TimeZones;->mTimeZoneIds:[Ljava/lang/CharSequence;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 48
    aget-object v1, v1, v0

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 49
    iget-object p0, p0, Lcom/android/deskclock/data/TimeZones;->mTimeZoneNames:[Ljava/lang/CharSequence;

    aget-object p0, p0, v0

    return-object p0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getTimeZoneNames()[Ljava/lang/CharSequence;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/android/deskclock/data/TimeZones;->mTimeZoneNames:[Ljava/lang/CharSequence;

    return-object p0
.end method
