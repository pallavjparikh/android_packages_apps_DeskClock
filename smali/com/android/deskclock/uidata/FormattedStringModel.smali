.class final Lcom/android/deskclock/uidata/FormattedStringModel;
.super Ljava/lang/Object;
.source "FormattedStringModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/deskclock/uidata/FormattedStringModel$LocaleChangedReceiver;
    }
.end annotation


# instance fields
.field private final mLocaleChangedReceiver:Landroid/content/BroadcastReceiver;

.field private mLongWeekdayNames:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mNumberFormatCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mShortWeekdayNames:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Lcom/android/deskclock/uidata/FormattedStringModel$LocaleChangedReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/deskclock/uidata/FormattedStringModel$LocaleChangedReceiver;-><init>(Lcom/android/deskclock/uidata/FormattedStringModel;Lcom/android/deskclock/uidata/FormattedStringModel$1;)V

    iput-object v0, p0, Lcom/android/deskclock/uidata/FormattedStringModel;->mLocaleChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 48
    new-instance v0, Landroid/util/SparseArray;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/deskclock/uidata/FormattedStringModel;->mNumberFormatCache:Landroid/util/SparseArray;

    .line 58
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.LOCALE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 59
    iget-object p0, p0, Lcom/android/deskclock/uidata/FormattedStringModel;->mLocaleChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method static synthetic access$100(Lcom/android/deskclock/uidata/FormattedStringModel;)Landroid/util/SparseArray;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/android/deskclock/uidata/FormattedStringModel;->mNumberFormatCache:Landroid/util/SparseArray;

    return-object p0
.end method

.method static synthetic access$202(Lcom/android/deskclock/uidata/FormattedStringModel;Ljava/util/Map;)Ljava/util/Map;
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/android/deskclock/uidata/FormattedStringModel;->mShortWeekdayNames:Ljava/util/Map;

    return-object p1
.end method

.method static synthetic access$302(Lcom/android/deskclock/uidata/FormattedStringModel;Ljava/util/Map;)Ljava/util/Map;
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/android/deskclock/uidata/FormattedStringModel;->mLongWeekdayNames:Ljava/util/Map;

    return-object p1
.end method


# virtual methods
.method getFormattedNumber(I)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    int-to-double v1, p1

    .line 72
    invoke-static {v1, v2}, Ljava/lang/Math;->log10(D)D

    move-result-wide v1

    double-to-int v1, v1

    add-int/2addr v0, v1

    :goto_0
    const/4 v1, 0x0

    .line 73
    invoke-virtual {p0, v1, p1, v0}, Lcom/android/deskclock/uidata/FormattedStringModel;->getFormattedNumber(ZII)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method getFormattedNumber(II)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 88
    invoke-virtual {p0, v0, p1, p2}, Lcom/android/deskclock/uidata/FormattedStringModel;->getFormattedNumber(ZII)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method getFormattedNumber(ZII)Ljava/lang/String;
    .locals 6

    if-ltz p2, :cond_4

    if-eqz p1, :cond_0

    neg-int v0, p3

    goto :goto_0

    :cond_0
    move v0, p3

    .line 112
    :goto_0
    iget-object v1, p0, Lcom/android/deskclock/uidata/FormattedStringModel;->mNumberFormatCache:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseArray;

    if-nez v1, :cond_1

    .line 114
    new-instance v1, Landroid/util/SparseArray;

    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    int-to-double v4, p3

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-int v2, v2

    invoke-direct {v1, v2}, Landroid/util/SparseArray;-><init>(I)V

    .line 115
    iget-object p0, p0, Lcom/android/deskclock/uidata/FormattedStringModel;->mNumberFormatCache:Landroid/util/SparseArray;

    invoke-virtual {p0, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 119
    :cond_1
    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-nez p0, :cond_3

    if-eqz p1, :cond_2

    const-string p0, "\u2212"

    goto :goto_1

    :cond_2
    const-string p0, ""

    .line 122
    :goto_1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "%0"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "d"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p3, 0x1

    new-array p3, p3, [Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, p3, v0

    invoke-static {p1, p0, p3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 123
    invoke-virtual {v1, p2, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_3
    return-object p0

    .line 107
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "value may not be negative: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method getLongWeekday(I)Ljava/lang/String;
    .locals 9

    .line 171
    iget-object v0, p0, Lcom/android/deskclock/uidata/FormattedStringModel;->mLongWeekdayNames:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 172
    new-instance v0, Landroid/util/ArrayMap;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Landroid/util/ArrayMap;-><init>(I)V

    iput-object v0, p0, Lcom/android/deskclock/uidata/FormattedStringModel;->mLongWeekdayNames:Ljava/util/Map;

    .line 174
    new-instance v0, Ljava/util/GregorianCalendar;

    const/16 v2, 0x7de

    const/16 v3, 0x14

    const/4 v4, 0x6

    invoke-direct {v0, v2, v4, v3}, Ljava/util/GregorianCalendar;-><init>(III)V

    .line 175
    new-instance v2, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    const-string v5, "EEEE"

    invoke-direct {v2, v5, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    const/4 v3, 0x1

    move v5, v3

    :goto_0
    if-gt v5, v1, :cond_0

    .line 177
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    .line 178
    iget-object v7, p0, Lcom/android/deskclock/uidata/FormattedStringModel;->mLongWeekdayNames:Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    invoke-virtual {v0, v4, v3}, Ljava/util/GregorianCalendar;->add(II)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 183
    :cond_0
    iget-object p0, p0, Lcom/android/deskclock/uidata/FormattedStringModel;->mLongWeekdayNames:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method getShortWeekday(I)Ljava/lang/String;
    .locals 8

    .line 143
    iget-object v0, p0, Lcom/android/deskclock/uidata/FormattedStringModel;->mShortWeekdayNames:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 144
    new-instance v0, Landroid/util/ArrayMap;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Landroid/util/ArrayMap;-><init>(I)V

    iput-object v0, p0, Lcom/android/deskclock/uidata/FormattedStringModel;->mShortWeekdayNames:Ljava/util/Map;

    .line 146
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    const-string v3, "ccccc"

    invoke-direct {v0, v3, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    const/4 v2, 0x1

    move v3, v2

    :goto_0
    if-gt v3, v1, :cond_0

    .line 148
    new-instance v4, Ljava/util/GregorianCalendar;

    const/16 v5, 0x7de

    const/4 v6, 0x6

    add-int/lit8 v7, v3, 0x14

    sub-int/2addr v7, v2

    invoke-direct {v4, v5, v6, v7}, Ljava/util/GregorianCalendar;-><init>(III)V

    .line 149
    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    .line 150
    iget-object v5, p0, Lcom/android/deskclock/uidata/FormattedStringModel;->mShortWeekdayNames:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 154
    :cond_0
    iget-object p0, p0, Lcom/android/deskclock/uidata/FormattedStringModel;->mShortWeekdayNames:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method
