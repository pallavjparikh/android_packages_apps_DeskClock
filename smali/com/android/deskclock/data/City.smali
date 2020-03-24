.class public final Lcom/android/deskclock/data/City;
.super Ljava/lang/Object;
.source "City.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/deskclock/data/City$NameIndexComparator;,
        Lcom/android/deskclock/data/City$NameComparator;,
        Lcom/android/deskclock/data/City$UtcOffsetIndexComparator;,
        Lcom/android/deskclock/data/City$UtcOffsetComparator;
    }
.end annotation


# instance fields
.field private final mId:Ljava/lang/String;

.field private final mIndex:I

.field private final mIndexString:Ljava/lang/String;

.field private final mName:Ljava/lang/String;

.field private mNameUpperCase:Ljava/lang/String;

.field private mNameUpperCaseNoSpecialCharacters:Ljava/lang/String;

.field private final mPhoneticName:Ljava/lang/String;

.field private final mTimeZone:Ljava/util/TimeZone;


# direct methods
.method constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/TimeZone;)V
    .locals 0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lcom/android/deskclock/data/City;->mId:Ljava/lang/String;

    .line 59
    iput p2, p0, Lcom/android/deskclock/data/City;->mIndex:I

    .line 60
    iput-object p3, p0, Lcom/android/deskclock/data/City;->mIndexString:Ljava/lang/String;

    .line 61
    iput-object p4, p0, Lcom/android/deskclock/data/City;->mName:Ljava/lang/String;

    .line 62
    iput-object p5, p0, Lcom/android/deskclock/data/City;->mPhoneticName:Ljava/lang/String;

    .line 63
    iput-object p6, p0, Lcom/android/deskclock/data/City;->mTimeZone:Ljava/util/TimeZone;

    return-void
.end method

.method private getNameUpperCaseNoSpecialCharacters()Ljava/lang/String;
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/android/deskclock/data/City;->mNameUpperCaseNoSpecialCharacters:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 88
    invoke-virtual {p0}, Lcom/android/deskclock/data/City;->getNameUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/deskclock/data/City;->removeSpecialCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/deskclock/data/City;->mNameUpperCaseNoSpecialCharacters:Ljava/lang/String;

    .line 90
    :cond_0
    iget-object p0, p0, Lcom/android/deskclock/data/City;->mNameUpperCaseNoSpecialCharacters:Ljava/lang/String;

    return-object p0
.end method

.method public static removeSpecialCharacters(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "[ -.\']"

    const-string v1, ""

    .line 119
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/android/deskclock/data/City;->mId:Ljava/lang/String;

    return-object p0
.end method

.method public getIndex()I
    .locals 0

    .line 67
    iget p0, p0, Lcom/android/deskclock/data/City;->mIndex:I

    return p0
.end method

.method public getIndexString()Ljava/lang/String;
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/android/deskclock/data/City;->mIndexString:Ljava/lang/String;

    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/android/deskclock/data/City;->mName:Ljava/lang/String;

    return-object p0
.end method

.method public getNameUpperCase()Ljava/lang/String;
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/android/deskclock/data/City;->mNameUpperCase:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/android/deskclock/data/City;->mName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/deskclock/data/City;->mNameUpperCase:Ljava/lang/String;

    .line 80
    :cond_0
    iget-object p0, p0, Lcom/android/deskclock/data/City;->mNameUpperCase:Ljava/lang/String;

    return-object p0
.end method

.method public getPhoneticName()Ljava/lang/String;
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/android/deskclock/data/City;->mPhoneticName:Ljava/lang/String;

    return-object p0
.end method

.method public getTimeZone()Ljava/util/TimeZone;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/android/deskclock/data/City;->mTimeZone:Ljava/util/TimeZone;

    return-object p0
.end method

.method public matches(Ljava/lang/String;)Z
    .locals 0

    .line 101
    invoke-direct {p0}, Lcom/android/deskclock/data/City;->getNameUpperCaseNoSpecialCharacters()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 106
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/deskclock/data/City;->mId:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget v2, p0, Lcom/android/deskclock/data/City;->mIndex:I

    .line 108
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/android/deskclock/data/City;->mIndexString:Ljava/lang/String;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/android/deskclock/data/City;->mName:Ljava/lang/String;

    const/4 v3, 0x3

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/android/deskclock/data/City;->mPhoneticName:Ljava/lang/String;

    const/4 v3, 0x4

    aput-object v2, v1, v3

    iget-object p0, p0, Lcom/android/deskclock/data/City;->mTimeZone:Ljava/util/TimeZone;

    invoke-virtual {p0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x5

    aput-object p0, v1, v2

    const-string p0, "City {id=%s, index=%d, indexString=%s, name=%s, phonetic=%s, tz=%s}"

    .line 106
    invoke-static {v0, p0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
