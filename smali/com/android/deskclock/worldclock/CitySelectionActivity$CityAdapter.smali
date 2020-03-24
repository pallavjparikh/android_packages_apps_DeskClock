.class final Lcom/android/deskclock/worldclock/CitySelectionActivity$CityAdapter;
.super Landroid/widget/BaseAdapter;
.source "CitySelectionActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Landroid/widget/SectionIndexer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/deskclock/worldclock/CitySelectionActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CityAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/deskclock/worldclock/CitySelectionActivity$CityAdapter$CityItemHolder;
    }
.end annotation


# instance fields
.field private final mCalendar:Ljava/util/Calendar;

.field private final mContext:Landroid/content/Context;

.field private mFilteredCities:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/deskclock/data/City;",
            ">;"
        }
    .end annotation
.end field

.field private final mInflater:Landroid/view/LayoutInflater;

.field private mIs24HoursMode:Z

.field private mOriginalUserSelectionCount:I

.field private final mPattern12:Ljava/lang/String;

.field private final mPattern24:Ljava/lang/String;

.field private final mSearchMenuItemController:Lcom/android/deskclock/actionbarmenu/SearchMenuItemController;

.field private mSectionHeaderPositions:[Ljava/lang/Integer;

.field private mSectionHeaders:[Ljava/lang/String;

.field private final mUserSelectedCities:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/android/deskclock/data/City;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/deskclock/actionbarmenu/SearchMenuItemController;)V
    .locals 2

    .line 284
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 257
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/deskclock/worldclock/CitySelectionActivity$CityAdapter;->mFilteredCities:Ljava/util/List;

    .line 262
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/deskclock/worldclock/CitySelectionActivity$CityAdapter;->mUserSelectedCities:Ljava/util/Set;

    .line 285
    iput-object p1, p0, Lcom/android/deskclock/worldclock/CitySelectionActivity$CityAdapter;->mContext:Landroid/content/Context;

    .line 286
    iput-object p2, p0, Lcom/android/deskclock/worldclock/CitySelectionActivity$CityAdapter;->mSearchMenuItemController:Lcom/android/deskclock/actionbarmenu/SearchMenuItemController;

    .line 287
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/android/deskclock/worldclock/CitySelectionActivity$CityAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 289
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    iput-object p1, p0, Lcom/android/deskclock/worldclock/CitySelectionActivity$CityAdapter;->mCalendar:Ljava/util/Calendar;

    .line 290
    iget-object p1, p0, Lcom/android/deskclock/worldclock/CitySelectionActivity$CityAdapter;->mCalendar:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 292
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    const-string p2, "Hm"

    .line 293
    invoke-static {p1, p2}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/deskclock/worldclock/CitySelectionActivity$CityAdapter;->mPattern24:Ljava/lang/String;

    const-string p2, "hma"

    .line 295
    invoke-static {p1, p2}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 296
    invoke-static {p1}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const-string p1, "h"

    const-string v0, "hh"

    .line 300
    invoke-virtual {p2, p1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 302
    :cond_0
    iput-object p2, p0, Lcom/android/deskclock/worldclock/CitySelectionActivity$CityAdapter;->mPattern12:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$100(Lcom/android/deskclock/worldclock/CitySelectionActivity$CityAdapter;Ljava/lang/String;)V
    .locals 0

    .line 217
    invoke-direct {p0, p1}, Lcom/android/deskclock/worldclock/CitySelectionActivity$CityAdapter;->filter(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/deskclock/worldclock/CitySelectionActivity$CityAdapter;)V
    .locals 0

    .line 217
    invoke-direct {p0}, Lcom/android/deskclock/worldclock/CitySelectionActivity$CityAdapter;->clearSectionHeaders()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/deskclock/worldclock/CitySelectionActivity$CityAdapter;)V
    .locals 0

    .line 217
    invoke-direct {p0}, Lcom/android/deskclock/worldclock/CitySelectionActivity$CityAdapter;->refresh()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/deskclock/worldclock/CitySelectionActivity$CityAdapter;)Ljava/util/Collection;
    .locals 0

    .line 217
    invoke-direct {p0}, Lcom/android/deskclock/worldclock/CitySelectionActivity$CityAdapter;->getSelectedCities()Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/deskclock/worldclock/CitySelectionActivity$CityAdapter;)Z
    .locals 0

    .line 217
    invoke-direct {p0}, Lcom/android/deskclock/worldclock/CitySelectionActivity$CityAdapter;->isFiltering()Z

    move-result p0

    return p0
.end method

.method private clearSectionHeaders()V
    .locals 1

    const/4 v0, 0x0

    .line 488
    iput-object v0, p0, Lcom/android/deskclock/worldclock/CitySelectionActivity$CityAdapter;->mSectionHeaders:[Ljava/lang/String;

    .line 489
    iput-object v0, p0, Lcom/android/deskclock/worldclock/CitySelectionActivity$CityAdapter;->mSectionHeaderPositions:[Ljava/lang/Integer;

    return-void
.end method

.method private filter(Ljava/lang/String;)V
    .locals 4

    .line 516
    iget-object v0, p0, Lcom/android/deskclock/worldclock/CitySelectionActivity$CityAdapter;->mSearchMenuItemController:Lcom/android/deskclock/actionbarmenu/SearchMenuItemController;

    invoke-virtual {v0, p1}, Lcom/android/deskclock/actionbarmenu/SearchMenuItemController;->setQueryText(Ljava/lang/String;)V

    .line 517
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/deskclock/data/City;->removeSpecialCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 521
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 522
    invoke-static {}, Lcom/android/deskclock/data/DataModel;->getDataModel()Lcom/android/deskclock/data/DataModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/deskclock/data/DataModel;->getAllCities()Ljava/util/List;

    move-result-object p1

    goto :goto_1

    .line 524
    :cond_0
    invoke-static {}, Lcom/android/deskclock/data/DataModel;->getDataModel()Lcom/android/deskclock/data/DataModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/deskclock/data/DataModel;->getUnselectedCities()Ljava/util/List;

    move-result-object v0

    .line 525
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 526
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/deskclock/data/City;

    .line 527
    invoke-virtual {v2, p1}, Lcom/android/deskclock/data/City;->matches(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 528
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    move-object p1, v1

    .line 534
    :goto_1
    iput-object p1, p0, Lcom/android/deskclock/worldclock/CitySelectionActivity$CityAdapter;->mFilteredCities:Ljava/util/List;

    .line 535
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method private getCitySort()Lcom/android/deskclock/data/DataModel$CitySort;
    .locals 0

    .line 551
    invoke-static {}, Lcom/android/deskclock/data/DataModel;->getDataModel()Lcom/android/deskclock/data/DataModel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/deskclock/data/DataModel;->getCitySort()Lcom/android/deskclock/data/DataModel$CitySort;

    move-result-object p0

    return-object p0
.end method

.method private getCitySortComparator()Ljava/util/Comparator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "Lcom/android/deskclock/data/City;",
            ">;"
        }
    .end annotation

    .line 555
    invoke-static {}, Lcom/android/deskclock/data/DataModel;->getDataModel()Lcom/android/deskclock/data/DataModel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/deskclock/data/DataModel;->getCityIndexComparator()Ljava/util/Comparator;

    move-result-object p0

    return-object p0
.end method

.method private getSelectedCities()Ljava/util/Collection;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/android/deskclock/data/City;",
            ">;"
        }
    .end annotation

    .line 543
    iget-object p0, p0, Lcom/android/deskclock/worldclock/CitySelectionActivity$CityAdapter;->mUserSelectedCities:Ljava/util/Set;

    return-object p0
.end method

.method private getShowIndex(I)Z
    .locals 3

    .line 565
    invoke-direct {p0}, Lcom/android/deskclock/worldclock/CitySelectionActivity$CityAdapter;->isFiltering()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 569
    :cond_0
    invoke-direct {p0}, Lcom/android/deskclock/worldclock/CitySelectionActivity$CityAdapter;->hasHeader()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 571
    iget v0, p0, Lcom/android/deskclock/worldclock/CitySelectionActivity$CityAdapter;->mOriginalUserSelectionCount:I

    if-gt p1, v0, :cond_1

    return v1

    :cond_1
    add-int/2addr v0, v2

    if-ne p1, v0, :cond_4

    return v2

    .line 581
    :cond_2
    iget v0, p0, Lcom/android/deskclock/worldclock/CitySelectionActivity$CityAdapter;->mOriginalUserSelectionCount:I

    if-ge p1, v0, :cond_3

    return v1

    :cond_3
    if-ne p1, v0, :cond_4

    return v2

    :cond_4
    add-int/lit8 v0, p1, -0x1

    .line 592
    invoke-virtual {p0, v0}, Lcom/android/deskclock/worldclock/CitySelectionActivity$CityAdapter;->getItem(I)Lcom/android/deskclock/data/City;

    move-result-object v0

    .line 593
    invoke-virtual {p0, p1}, Lcom/android/deskclock/worldclock/CitySelectionActivity$CityAdapter;->getItem(I)Lcom/android/deskclock/data/City;

    move-result-object p1

    .line 594
    invoke-direct {p0}, Lcom/android/deskclock/worldclock/CitySelectionActivity$CityAdapter;->getCitySortComparator()Ljava/util/Comparator;

    move-result-object p0

    invoke-interface {p0, v0, p1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p0

    if-eqz p0, :cond_5

    move v1, v2

    :cond_5
    return v1
.end method

.method private getTimeCharSequence(Ljava/util/TimeZone;)Ljava/lang/CharSequence;
    .locals 1

    .line 559
    iget-object v0, p0, Lcom/android/deskclock/worldclock/CitySelectionActivity$CityAdapter;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v0, p1}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 560
    iget-boolean p1, p0, Lcom/android/deskclock/worldclock/CitySelectionActivity$CityAdapter;->mIs24HoursMode:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/deskclock/worldclock/CitySelectionActivity$CityAdapter;->mPattern24:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/deskclock/worldclock/CitySelectionActivity$CityAdapter;->mPattern12:Ljava/lang/String;

    :goto_0
    iget-object p0, p0, Lcom/android/deskclock/worldclock/CitySelectionActivity$CityAdapter;->mCalendar:Ljava/util/Calendar;

    invoke-static {p1, p0}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method private hasHeader()Z
    .locals 1

    .line 547
    invoke-direct {p0}, Lcom/android/deskclock/worldclock/CitySelectionActivity$CityAdapter;->isFiltering()Z

    move-result v0

    if-nez v0, :cond_0

    iget p0, p0, Lcom/android/deskclock/worldclock/CitySelectionActivity$CityAdapter;->mOriginalUserSelectionCount:I

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isFiltering()Z
    .locals 0

    .line 539
    iget-object p0, p0, Lcom/android/deskclock/worldclock/CitySelectionActivity$CityAdapter;->mSearchMenuItemController:Lcom/android/deskclock/actionbarmenu/SearchMenuItemController;

    invoke-virtual {p0}, Lcom/android/deskclock/actionbarmenu/SearchMenuItemController;->getQueryText()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private refresh()V
    .locals 2

    .line 497
    iget-object v0, p0, Lcom/android/deskclock/worldclock/CitySelectionActivity$CityAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/deskclock/worldclock/CitySelectionActivity$CityAdapter;->mIs24HoursMode:Z

    .line 500
    invoke-static {}, Lcom/android/deskclock/data/DataModel;->getDataModel()Lcom/android/deskclock/data/DataModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/deskclock/data/DataModel;->getSelectedCities()Ljava/util/List;

    move-result-object v0

    .line 501
    iget-object v1, p0, Lcom/android/deskclock/worldclock/CitySelectionActivity$CityAdapter;->mUserSelectedCities:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 502
    iget-object v1, p0, Lcom/android/deskclock/worldclock/CitySelectionActivity$CityAdapter;->mUserSelectedCities:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 503
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lcom/android/deskclock/worldclock/CitySelectionActivity$CityAdapter;->mOriginalUserSelectionCount:I

    .line 506
    invoke-direct {p0}, Lcom/android/deskclock/worldclock/CitySelectionActivity$CityAdapter;->clearSectionHeaders()V

    .line 509
    iget-object v0, p0, Lcom/android/deskclock/worldclock/CitySelectionActivity$CityAdapter;->mSearchMenuItemController:Lcom/android/deskclock/actionbarmenu/SearchMenuItemController;

    invoke-virtual {v0}, Lcom/android/deskclock/actionbarmenu/SearchMenuItemController;->getQueryText()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/deskclock/worldclock/CitySelectionActivity$CityAdapter;->filter(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 307
    invoke-direct {p0}, Lcom/android/deskclock/worldclock/CitySelectionActivity$CityAdapter;->hasHeader()Z

    move-result v0

    .line 308
    iget-object p0, p0, Lcom/android/deskclock/worldclock/CitySelectionActivity$CityAdapter;->mFilteredCities:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public getItem(I)Lcom/android/deskclock/data/City;
    .locals 2

    .line 313
    invoke-direct {p0}, Lcom/android/deskclock/worldclock/CitySelectionActivity$CityAdapter;->hasHeader()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 314
    invoke-virtual {p0, p1}, Lcom/android/deskclock/worldclock/CitySelectionActivity$CityAdapter;->getItemViewType(I)I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 319
    iget-object p0, p0, Lcom/android/deskclock/worldclock/CitySelectionActivity$CityAdapter;->mFilteredCities:Ljava/util/List;

    sub-int/2addr p1, v1

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/deskclock/data/City;

    return-object p0

    .line 321
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unexpected item view type: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    const/4 p0, 0x0

    return-object p0

    .line 324
    :cond_2
    iget-object p0, p0, Lcom/android/deskclock/worldclock/CitySelectionActivity$CityAdapter;->mFilteredCities:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/deskclock/data/City;

    return-object p0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    .line 217
    invoke-virtual {p0, p1}, Lcom/android/deskclock/worldclock/CitySelectionActivity$CityAdapter;->getItem(I)Lcom/android/deskclock/data/City;

    move-result-object p0

    return-object p0
.end method

.method public getItemId(I)J
    .locals 0

    int-to-long p0, p1

    return-wide p0
.end method

.method public getItemViewType(I)I
    .locals 0

    .line 400
    invoke-direct {p0}, Lcom/android/deskclock/worldclock/CitySelectionActivity$CityAdapter;->hasHeader()Z

    move-result p0

    if-eqz p0, :cond_0

    if-nez p1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    :goto_0
    return p0
.end method

.method public getPositionForSection(I)I
    .locals 1

    .line 465
    invoke-virtual {p0}, Lcom/android/deskclock/worldclock/CitySelectionActivity$CityAdapter;->getSections()[Ljava/lang/Object;

    move-result-object v0

    array-length v0, v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/deskclock/worldclock/CitySelectionActivity$CityAdapter;->mSectionHeaderPositions:[Ljava/lang/Integer;

    aget-object p0, p0, p1

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    :goto_0
    return p0
.end method

.method public getSectionForPosition(I)I
    .locals 3

    .line 470
    invoke-virtual {p0}, Lcom/android/deskclock/worldclock/CitySelectionActivity$CityAdapter;->getSections()[Ljava/lang/Object;

    move-result-object v0

    array-length v0, v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 474
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/deskclock/worldclock/CitySelectionActivity$CityAdapter;->mSectionHeaderPositions:[Ljava/lang/Integer;

    array-length v2, v0

    add-int/lit8 v2, v2, -0x2

    if-ge v1, v2, :cond_3

    .line 475
    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ge p1, v0, :cond_1

    goto :goto_1

    .line 476
    :cond_1
    iget-object v0, p0, Lcom/android/deskclock/worldclock/CitySelectionActivity$CityAdapter;->mSectionHeaderPositions:[Ljava/lang/Integer;

    add-int/lit8 v2, v1, 0x1

    aget-object v0, v0, v2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lt p1, v0, :cond_2

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v1

    .line 481
    :cond_3
    array-length p0, v0

    add-int/lit8 p0, p0, -0x1

    return p0
.end method

.method public getSections()[Ljava/lang/Object;
    .locals 6

    .line 425
    iget-object v0, p0, Lcom/android/deskclock/worldclock/CitySelectionActivity$CityAdapter;->mSectionHeaders:[Ljava/lang/String;

    if-nez v0, :cond_6

    .line 427
    invoke-virtual {p0}, Lcom/android/deskclock/worldclock/CitySelectionActivity$CityAdapter;->getCount()I

    move-result v0

    div-int/lit8 v0, v0, 0x5

    .line 428
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 429
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 432
    invoke-direct {p0}, Lcom/android/deskclock/worldclock/CitySelectionActivity$CityAdapter;->hasHeader()Z

    move-result v0

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    const-string v0, "+"

    .line 433
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 434
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 437
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/deskclock/worldclock/CitySelectionActivity$CityAdapter;->getCount()I

    move-result v0

    if-ge v3, v0, :cond_5

    .line 439
    invoke-direct {p0, v3}, Lcom/android/deskclock/worldclock/CitySelectionActivity$CityAdapter;->getShowIndex(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 440
    invoke-virtual {p0, v3}, Lcom/android/deskclock/worldclock/CitySelectionActivity$CityAdapter;->getItem(I)Lcom/android/deskclock/data/City;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 444
    sget-object v4, Lcom/android/deskclock/worldclock/CitySelectionActivity$2;->$SwitchMap$com$android$deskclock$data$DataModel$CitySort:[I

    invoke-direct {p0}, Lcom/android/deskclock/worldclock/CitySelectionActivity$CityAdapter;->getCitySort()Lcom/android/deskclock/data/DataModel$CitySort;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget v4, v4, v5

    const/4 v5, 0x1

    if-eq v4, v5, :cond_2

    const/4 v5, 0x2

    if-eq v4, v5, :cond_1

    goto :goto_1

    .line 449
    :cond_1
    invoke-virtual {v0}, Lcom/android/deskclock/data/City;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v0

    .line 450
    invoke-static {}, Lcom/android/deskclock/Utils;->isPreL()Z

    move-result v4

    invoke-static {v0, v4}, Lcom/android/deskclock/Utils;->getGMTHourOffset(Ljava/util/TimeZone;Z)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 446
    :cond_2
    invoke-virtual {v0}, Lcom/android/deskclock/data/City;->getIndexString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 453
    :goto_1
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 442
    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "The desired city does not exist"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 457
    :cond_5
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/deskclock/worldclock/CitySelectionActivity$CityAdapter;->mSectionHeaders:[Ljava/lang/String;

    .line 458
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/Integer;

    invoke-interface {v2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Integer;

    iput-object v0, p0, Lcom/android/deskclock/worldclock/CitySelectionActivity$CityAdapter;->mSectionHeaderPositions:[Ljava/lang/Integer;

    .line 460
    :cond_6
    iget-object p0, p0, Lcom/android/deskclock/worldclock/CitySelectionActivity$CityAdapter;->mSectionHeaders:[Ljava/lang/String;

    return-object p0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8

    .line 334
    invoke-virtual {p0, p1}, Lcom/android/deskclock/worldclock/CitySelectionActivity$CityAdapter;->getItemViewType(I)I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    const/4 v2, 0x1

    if-ne v0, v2, :cond_6

    .line 343
    invoke-virtual {p0, p1}, Lcom/android/deskclock/worldclock/CitySelectionActivity$CityAdapter;->getItem(I)Lcom/android/deskclock/data/City;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 347
    invoke-virtual {v0}, Lcom/android/deskclock/data/City;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v3

    if-nez p2, :cond_0

    .line 351
    iget-object p2, p0, Lcom/android/deskclock/worldclock/CitySelectionActivity$CityAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f0d0027

    invoke-virtual {p2, v4, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    const p3, 0x7f0a00b3

    .line 352
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    const v4, 0x7f0a0062

    .line 353
    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v5, 0x7f0a0067

    .line 354
    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const v6, 0x7f0a0065

    .line 355
    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/CheckBox;

    .line 356
    new-instance v7, Lcom/android/deskclock/worldclock/CitySelectionActivity$CityAdapter$CityItemHolder;

    invoke-direct {v7, p3, v4, v5, v6}, Lcom/android/deskclock/worldclock/CitySelectionActivity$CityAdapter$CityItemHolder;-><init>(Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/CheckBox;)V

    invoke-virtual {p2, v7}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 360
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/deskclock/worldclock/CitySelectionActivity$CityAdapter$CityItemHolder;

    .line 361
    invoke-static {p3}, Lcom/android/deskclock/worldclock/CitySelectionActivity$CityAdapter$CityItemHolder;->access$700(Lcom/android/deskclock/worldclock/CitySelectionActivity$CityAdapter$CityItemHolder;)Landroid/widget/CheckBox;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/widget/CheckBox;->setTag(Ljava/lang/Object;)V

    .line 362
    invoke-static {p3}, Lcom/android/deskclock/worldclock/CitySelectionActivity$CityAdapter$CityItemHolder;->access$700(Lcom/android/deskclock/worldclock/CitySelectionActivity$CityAdapter$CityItemHolder;)Landroid/widget/CheckBox;

    move-result-object v4

    iget-object v5, p0, Lcom/android/deskclock/worldclock/CitySelectionActivity$CityAdapter;->mUserSelectedCities:Ljava/util/Set;

    invoke-interface {v5, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 363
    invoke-static {p3}, Lcom/android/deskclock/worldclock/CitySelectionActivity$CityAdapter$CityItemHolder;->access$700(Lcom/android/deskclock/worldclock/CitySelectionActivity$CityAdapter$CityItemHolder;)Landroid/widget/CheckBox;

    move-result-object v4

    invoke-virtual {v0}, Lcom/android/deskclock/data/City;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/CheckBox;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 364
    invoke-static {p3}, Lcom/android/deskclock/worldclock/CitySelectionActivity$CityAdapter$CityItemHolder;->access$700(Lcom/android/deskclock/worldclock/CitySelectionActivity$CityAdapter$CityItemHolder;)Landroid/widget/CheckBox;

    move-result-object v4

    invoke-virtual {v4, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 365
    invoke-static {p3}, Lcom/android/deskclock/worldclock/CitySelectionActivity$CityAdapter$CityItemHolder;->access$800(Lcom/android/deskclock/worldclock/CitySelectionActivity$CityAdapter$CityItemHolder;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v0}, Lcom/android/deskclock/data/City;->getName()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v4, v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 366
    invoke-static {p3}, Lcom/android/deskclock/worldclock/CitySelectionActivity$CityAdapter$CityItemHolder;->access$900(Lcom/android/deskclock/worldclock/CitySelectionActivity$CityAdapter$CityItemHolder;)Landroid/widget/TextView;

    move-result-object v4

    invoke-direct {p0, v3}, Lcom/android/deskclock/worldclock/CitySelectionActivity$CityAdapter;->getTimeCharSequence(Ljava/util/TimeZone;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 368
    invoke-direct {p0, p1}, Lcom/android/deskclock/worldclock/CitySelectionActivity$CityAdapter;->getShowIndex(I)Z

    move-result p1

    .line 369
    invoke-static {p3}, Lcom/android/deskclock/worldclock/CitySelectionActivity$CityAdapter$CityItemHolder;->access$1000(Lcom/android/deskclock/worldclock/CitySelectionActivity$CityAdapter$CityItemHolder;)Landroid/widget/TextView;

    move-result-object v4

    if-eqz p1, :cond_1

    move v5, v1

    goto :goto_0

    :cond_1
    const/4 v5, 0x4

    :goto_0
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    if-eqz p1, :cond_4

    .line 371
    sget-object p1, Lcom/android/deskclock/worldclock/CitySelectionActivity$2;->$SwitchMap$com$android$deskclock$data$DataModel$CitySort:[I

    invoke-direct {p0}, Lcom/android/deskclock/worldclock/CitySelectionActivity$CityAdapter;->getCitySort()Lcom/android/deskclock/data/DataModel$CitySort;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget p1, p1, v4

    const/4 v4, 0x2

    if-eq p1, v2, :cond_3

    if-eq p1, v4, :cond_2

    goto :goto_1

    .line 378
    :cond_2
    invoke-static {p3}, Lcom/android/deskclock/worldclock/CitySelectionActivity$CityAdapter$CityItemHolder;->access$1000(Lcom/android/deskclock/worldclock/CitySelectionActivity$CityAdapter$CityItemHolder;)Landroid/widget/TextView;

    move-result-object p1

    invoke-static {v3, v1}, Lcom/android/deskclock/Utils;->getGMTHourOffset(Ljava/util/TimeZone;Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 379
    invoke-static {p3}, Lcom/android/deskclock/worldclock/CitySelectionActivity$CityAdapter$CityItemHolder;->access$1000(Lcom/android/deskclock/worldclock/CitySelectionActivity$CityAdapter$CityItemHolder;)Landroid/widget/TextView;

    move-result-object p1

    const/high16 p3, 0x41600000    # 14.0f

    invoke-virtual {p1, v4, p3}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_1

    .line 373
    :cond_3
    invoke-static {p3}, Lcom/android/deskclock/worldclock/CitySelectionActivity$CityAdapter$CityItemHolder;->access$1000(Lcom/android/deskclock/worldclock/CitySelectionActivity$CityAdapter$CityItemHolder;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {v0}, Lcom/android/deskclock/data/City;->getIndexString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 374
    invoke-static {p3}, Lcom/android/deskclock/worldclock/CitySelectionActivity$CityAdapter$CityItemHolder;->access$1000(Lcom/android/deskclock/worldclock/CitySelectionActivity$CityAdapter$CityItemHolder;)Landroid/widget/TextView;

    move-result-object p1

    const/high16 p3, 0x41c00000    # 24.0f

    invoke-virtual {p1, v4, p3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 385
    :cond_4
    :goto_1
    invoke-virtual {p2}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    .line 386
    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p2

    .line 345
    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "The desired city does not exist"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 390
    :cond_6
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "unexpected item view type: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    if-nez p2, :cond_8

    .line 338
    iget-object p0, p0, Lcom/android/deskclock/worldclock/CitySelectionActivity$CityAdapter;->mInflater:Landroid/view/LayoutInflater;

    const p1, 0x7f0d0026

    invoke-virtual {p0, p1, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    :cond_8
    return-object p2
.end method

.method public getViewTypeCount()I
    .locals 0

    const/4 p0, 0x2

    return p0
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3

    .line 405
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/deskclock/data/City;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p2, :cond_0

    .line 407
    iget-object p2, p0, Lcom/android/deskclock/worldclock/CitySelectionActivity$CityAdapter;->mUserSelectedCities:Ljava/util/Set;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 408
    iget-object p0, p0, Lcom/android/deskclock/worldclock/CitySelectionActivity$CityAdapter;->mContext:Landroid/content/Context;

    const p2, 0x7f1101bb

    new-array v2, v2, [Ljava/lang/Object;

    .line 409
    invoke-virtual {v0}, Lcom/android/deskclock/data/City;->getName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v1

    .line 408
    invoke-virtual {p0, p2, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/CompoundButton;->announceForAccessibility(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 411
    :cond_0
    iget-object p2, p0, Lcom/android/deskclock/worldclock/CitySelectionActivity$CityAdapter;->mUserSelectedCities:Ljava/util/Set;

    invoke-interface {p2, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 412
    iget-object p0, p0, Lcom/android/deskclock/worldclock/CitySelectionActivity$CityAdapter;->mContext:Landroid/content/Context;

    const p2, 0x7f1101bc

    new-array v2, v2, [Ljava/lang/Object;

    .line 413
    invoke-virtual {v0}, Lcom/android/deskclock/data/City;->getName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v1

    .line 412
    invoke-virtual {p0, p2, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/CompoundButton;->announceForAccessibility(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    const p0, 0x7f0a0065

    .line 419
    invoke-virtual {p1, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/CheckBox;

    .line 420
    invoke-virtual {p0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    return-void
.end method
