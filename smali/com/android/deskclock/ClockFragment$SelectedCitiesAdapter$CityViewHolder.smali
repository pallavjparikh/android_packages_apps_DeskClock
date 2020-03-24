.class final Lcom/android/deskclock/ClockFragment$SelectedCitiesAdapter$CityViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "ClockFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/deskclock/ClockFragment$SelectedCitiesAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CityViewHolder"
.end annotation


# instance fields
.field private final mAnalogClock:Lcom/android/deskclock/AnalogClock;

.field private final mDigitalClock:Landroid/widget/TextClock;

.field private final mHoursAhead:Landroid/widget/TextView;

.field private final mName:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 441
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const v0, 0x7f0a0062

    .line 443
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/deskclock/ClockFragment$SelectedCitiesAdapter$CityViewHolder;->mName:Landroid/widget/TextView;

    const v0, 0x7f0a0089

    .line 444
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextClock;

    iput-object v0, p0, Lcom/android/deskclock/ClockFragment$SelectedCitiesAdapter$CityViewHolder;->mDigitalClock:Landroid/widget/TextClock;

    const v0, 0x7f0a004a

    .line 445
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/deskclock/AnalogClock;

    iput-object v0, p0, Lcom/android/deskclock/ClockFragment$SelectedCitiesAdapter$CityViewHolder;->mAnalogClock:Lcom/android/deskclock/AnalogClock;

    const v0, 0x7f0a00ad

    .line 446
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/deskclock/ClockFragment$SelectedCitiesAdapter$CityViewHolder;->mHoursAhead:Landroid/widget/TextView;

    return-void
.end method

.method synthetic constructor <init>(Landroid/view/View;Lcom/android/deskclock/ClockFragment$1;)V
    .locals 0

    .line 433
    invoke-direct {p0, p1}, Lcom/android/deskclock/ClockFragment$SelectedCitiesAdapter$CityViewHolder;-><init>(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/deskclock/ClockFragment$SelectedCitiesAdapter$CityViewHolder;Landroid/content/Context;Lcom/android/deskclock/data/City;IZ)V
    .locals 0

    .line 433
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/deskclock/ClockFragment$SelectedCitiesAdapter$CityViewHolder;->bind(Landroid/content/Context;Lcom/android/deskclock/data/City;IZ)V

    return-void
.end method

.method private bind(Landroid/content/Context;Lcom/android/deskclock/data/City;IZ)V
    .locals 9

    .line 450
    invoke-virtual {p2}, Lcom/android/deskclock/data/City;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v0

    .line 453
    invoke-static {}, Lcom/android/deskclock/data/DataModel;->getDataModel()Lcom/android/deskclock/data/DataModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/deskclock/data/DataModel;->getClockStyle()Lcom/android/deskclock/data/DataModel$ClockStyle;

    move-result-object v1

    sget-object v2, Lcom/android/deskclock/data/DataModel$ClockStyle;->ANALOG:Lcom/android/deskclock/data/DataModel$ClockStyle;

    const/16 v3, 0x8

    const/4 v4, 0x0

    if-ne v1, v2, :cond_0

    .line 454
    iget-object v1, p0, Lcom/android/deskclock/ClockFragment$SelectedCitiesAdapter$CityViewHolder;->mDigitalClock:Landroid/widget/TextClock;

    invoke-virtual {v1, v3}, Landroid/widget/TextClock;->setVisibility(I)V

    .line 455
    iget-object v1, p0, Lcom/android/deskclock/ClockFragment$SelectedCitiesAdapter$CityViewHolder;->mAnalogClock:Lcom/android/deskclock/AnalogClock;

    invoke-virtual {v1, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 456
    iget-object v1, p0, Lcom/android/deskclock/ClockFragment$SelectedCitiesAdapter$CityViewHolder;->mAnalogClock:Lcom/android/deskclock/AnalogClock;

    invoke-virtual {v1, v0}, Lcom/android/deskclock/AnalogClock;->setTimeZone(Ljava/lang/String;)V

    .line 457
    iget-object v1, p0, Lcom/android/deskclock/ClockFragment$SelectedCitiesAdapter$CityViewHolder;->mAnalogClock:Lcom/android/deskclock/AnalogClock;

    invoke-virtual {v1, v4}, Lcom/android/deskclock/AnalogClock;->enableSeconds(Z)V

    goto :goto_0

    .line 459
    :cond_0
    iget-object v1, p0, Lcom/android/deskclock/ClockFragment$SelectedCitiesAdapter$CityViewHolder;->mAnalogClock:Lcom/android/deskclock/AnalogClock;

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 460
    iget-object v1, p0, Lcom/android/deskclock/ClockFragment$SelectedCitiesAdapter$CityViewHolder;->mDigitalClock:Landroid/widget/TextClock;

    invoke-virtual {v1, v4}, Landroid/widget/TextClock;->setVisibility(I)V

    .line 461
    iget-object v1, p0, Lcom/android/deskclock/ClockFragment$SelectedCitiesAdapter$CityViewHolder;->mDigitalClock:Landroid/widget/TextClock;

    invoke-virtual {v1, v0}, Landroid/widget/TextClock;->setTimeZone(Ljava/lang/String;)V

    .line 462
    iget-object v1, p0, Lcom/android/deskclock/ClockFragment$SelectedCitiesAdapter$CityViewHolder;->mDigitalClock:Landroid/widget/TextClock;

    const v2, 0x3e99999a    # 0.3f

    invoke-static {v2, v4}, Lcom/android/deskclock/Utils;->get12ModeFormat(FZ)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextClock;->setFormat12Hour(Ljava/lang/CharSequence;)V

    .line 464
    iget-object v1, p0, Lcom/android/deskclock/ClockFragment$SelectedCitiesAdapter$CityViewHolder;->mDigitalClock:Landroid/widget/TextClock;

    invoke-static {v4}, Lcom/android/deskclock/Utils;->get24ModeFormat(Z)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextClock;->setFormat24Hour(Ljava/lang/CharSequence;)V

    .line 468
    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0700c8

    .line 469
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    if-nez p3, :cond_1

    if-nez p4, :cond_1

    move v1, v4

    .line 471
    :cond_1
    iget-object p3, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p3}, Landroid/view/View;->getPaddingLeft()I

    move-result p3

    .line 472
    iget-object p4, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p4}, Landroid/view/View;->getPaddingRight()I

    move-result p4

    .line 473
    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    .line 474
    iget-object v5, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v5, p3, v1, p4, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 477
    iget-object p3, p0, Lcom/android/deskclock/ClockFragment$SelectedCitiesAdapter$CityViewHolder;->mName:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/android/deskclock/data/City;->getName()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 480
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object p3

    invoke-static {p3}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object p3

    .line 481
    invoke-virtual {p2}, Lcom/android/deskclock/data/City;->getTimeZone()Ljava/util/TimeZone;

    move-result-object p2

    invoke-static {p2}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object p2

    const/4 p4, 0x7

    .line 483
    invoke-virtual {p3, p4}, Ljava/util/Calendar;->get(I)I

    move-result p3

    invoke-virtual {p2, p4}, Ljava/util/Calendar;->get(I)I

    move-result p2

    const/4 p4, 0x1

    if-eq p3, p2, :cond_2

    move p2, p4

    goto :goto_1

    :cond_2
    move p2, v4

    .line 486
    :goto_1
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object p3

    .line 487
    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    .line 488
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 489
    invoke-virtual {p3, v1, v2}, Ljava/util/TimeZone;->getOffset(J)I

    move-result p3

    int-to-long v5, p3

    .line 490
    invoke-virtual {v0, v1, v2}, Ljava/util/TimeZone;->getOffset(J)I

    move-result p3

    int-to-long v0, p3

    sub-long/2addr v0, v5

    const-wide/32 v5, 0x36ee80

    .line 493
    div-long v7, v0, v5

    long-to-int p3, v7

    const-wide/32 v7, 0xea60

    .line 494
    div-long v7, v0, v7

    long-to-int v2, v7

    rem-int/lit8 v2, v2, 0x3c

    .line 495
    rem-long/2addr v0, v5

    const-wide/16 v5, 0x0

    cmp-long v0, v0, v5

    if-eqz v0, :cond_3

    move v0, p4

    goto :goto_2

    :cond_3
    move v0, v4

    :goto_2
    if-gtz p3, :cond_5

    if-nez p3, :cond_4

    if-lez v2, :cond_4

    goto :goto_3

    :cond_4
    move v1, v4

    goto :goto_4

    :cond_5
    :goto_3
    move v1, p4

    .line 498
    :goto_4
    invoke-static {p1}, Lcom/android/deskclock/Utils;->isLandscape(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_b

    if-nez p3, :cond_7

    if-eqz v0, :cond_6

    goto :goto_5

    :cond_6
    move v5, v4

    goto :goto_6

    :cond_7
    :goto_5
    move v5, p4

    .line 501
    :goto_6
    iget-object v6, p0, Lcom/android/deskclock/ClockFragment$SelectedCitiesAdapter$CityViewHolder;->mHoursAhead:Landroid/widget/TextView;

    if-eqz v5, :cond_8

    move v3, v4

    :cond_8
    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 502
    invoke-static {p1, v0, v1, p3, v2}, Lcom/android/deskclock/Utils;->createHoursDifferentString(Landroid/content/Context;ZZII)Ljava/lang/String;

    move-result-object p3

    .line 504
    iget-object p0, p0, Lcom/android/deskclock/ClockFragment$SelectedCitiesAdapter$CityViewHolder;->mHoursAhead:Landroid/widget/TextView;

    if-eqz p2, :cond_a

    if-eqz v1, :cond_9

    const p2, 0x7f110271

    goto :goto_7

    :cond_9
    const p2, 0x7f110272

    :goto_7
    new-array p4, p4, [Ljava/lang/Object;

    aput-object p3, p4, v4

    .line 505
    invoke-virtual {p1, p2, p4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    .line 504
    :cond_a
    invoke-virtual {p0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_9

    .line 510
    :cond_b
    iget-object p3, p0, Lcom/android/deskclock/ClockFragment$SelectedCitiesAdapter$CityViewHolder;->mHoursAhead:Landroid/widget/TextView;

    if-eqz p2, :cond_c

    move v3, v4

    :cond_c
    invoke-virtual {p3, v3}, Landroid/widget/TextView;->setVisibility(I)V

    if-eqz p2, :cond_e

    .line 512
    iget-object p0, p0, Lcom/android/deskclock/ClockFragment$SelectedCitiesAdapter$CityViewHolder;->mHoursAhead:Landroid/widget/TextView;

    if-eqz v1, :cond_d

    const p2, 0x7f110275

    goto :goto_8

    :cond_d
    const p2, 0x7f110276

    :goto_8
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_e
    :goto_9
    return-void
.end method
