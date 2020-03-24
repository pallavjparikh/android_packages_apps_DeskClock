.class final Lcom/android/deskclock/ClockFragment$SelectedCitiesAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "ClockFragment.java"

# interfaces
.implements Lcom/android/deskclock/data/CityListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/deskclock/ClockFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SelectedCitiesAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/deskclock/ClockFragment$SelectedCitiesAdapter$MainClockViewHolder;,
        Lcom/android/deskclock/ClockFragment$SelectedCitiesAdapter$CityViewHolder;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mDateFormat:Ljava/lang/String;

.field private final mDateFormatForAccessibility:Ljava/lang/String;

.field private final mInflater:Landroid/view/LayoutInflater;

.field private final mIsPortrait:Z

.field private final mShowHomeClock:Z


# direct methods
.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 350
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 351
    iput-object p1, p0, Lcom/android/deskclock/ClockFragment$SelectedCitiesAdapter;->mContext:Landroid/content/Context;

    .line 352
    iput-object p2, p0, Lcom/android/deskclock/ClockFragment$SelectedCitiesAdapter;->mDateFormat:Ljava/lang/String;

    .line 353
    iput-object p3, p0, Lcom/android/deskclock/ClockFragment$SelectedCitiesAdapter;->mDateFormatForAccessibility:Ljava/lang/String;

    .line 354
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    iput-object p2, p0, Lcom/android/deskclock/ClockFragment$SelectedCitiesAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 355
    invoke-static {p1}, Lcom/android/deskclock/Utils;->isPortrait(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/deskclock/ClockFragment$SelectedCitiesAdapter;->mIsPortrait:Z

    .line 356
    invoke-static {}, Lcom/android/deskclock/data/DataModel;->getDataModel()Lcom/android/deskclock/data/DataModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/deskclock/data/DataModel;->getShowHomeClock()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/deskclock/ClockFragment$SelectedCitiesAdapter;->mShowHomeClock:Z

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/android/deskclock/ClockFragment$1;)V
    .locals 0

    .line 336
    invoke-direct {p0, p1, p2, p3}, Lcom/android/deskclock/ClockFragment$SelectedCitiesAdapter;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/deskclock/ClockFragment$SelectedCitiesAdapter;)V
    .locals 0

    .line 336
    invoke-direct {p0}, Lcom/android/deskclock/ClockFragment$SelectedCitiesAdapter;->refreshAlarm()V

    return-void
.end method

.method private getCities()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/deskclock/data/City;",
            ">;"
        }
    .end annotation

    .line 419
    invoke-static {}, Lcom/android/deskclock/data/DataModel;->getDataModel()Lcom/android/deskclock/data/DataModel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/deskclock/data/DataModel;->getSelectedCities()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private getHomeCity()Lcom/android/deskclock/data/City;
    .locals 0

    .line 415
    invoke-static {}, Lcom/android/deskclock/data/DataModel;->getDataModel()Lcom/android/deskclock/data/DataModel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/deskclock/data/DataModel;->getHomeCity()Lcom/android/deskclock/data/City;

    move-result-object p0

    return-object p0
.end method

.method private refreshAlarm()V
    .locals 1

    .line 423
    iget-boolean v0, p0, Lcom/android/deskclock/ClockFragment$SelectedCitiesAdapter;->mIsPortrait:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/deskclock/ClockFragment$SelectedCitiesAdapter;->getItemCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    .line 424
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public citiesChanged(Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/deskclock/data/City;",
            ">;",
            "Ljava/util/List<",
            "Lcom/android/deskclock/data/City;",
            ">;)V"
        }
    .end annotation

    .line 430
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public getItemCount()I
    .locals 2

    .line 408
    iget-boolean v0, p0, Lcom/android/deskclock/ClockFragment$SelectedCitiesAdapter;->mIsPortrait:Z

    .line 409
    iget-boolean v1, p0, Lcom/android/deskclock/ClockFragment$SelectedCitiesAdapter;->mShowHomeClock:Z

    .line 410
    invoke-direct {p0}, Lcom/android/deskclock/ClockFragment$SelectedCitiesAdapter;->getCities()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    add-int/2addr v0, v1

    add-int/2addr v0, p0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 0

    if-nez p1, :cond_0

    .line 361
    iget-boolean p0, p0, Lcom/android/deskclock/ClockFragment$SelectedCitiesAdapter;->mIsPortrait:Z

    if-eqz p0, :cond_0

    const p0, 0x7f0d0045

    return p0

    :cond_0
    const p0, 0x7f0d008b

    return p0
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 3

    .line 382
    invoke-virtual {p0, p2}, Lcom/android/deskclock/ClockFragment$SelectedCitiesAdapter;->getItemViewType(I)I

    move-result v0

    const v1, 0x7f0d0045

    if-eq v0, v1, :cond_2

    const v1, 0x7f0d008b

    if-ne v0, v1, :cond_1

    .line 388
    iget-boolean v0, p0, Lcom/android/deskclock/ClockFragment$SelectedCitiesAdapter;->mShowHomeClock:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/deskclock/ClockFragment$SelectedCitiesAdapter;->mIsPortrait:Z

    if-ne p2, v0, :cond_0

    .line 389
    invoke-direct {p0}, Lcom/android/deskclock/ClockFragment$SelectedCitiesAdapter;->getHomeCity()Lcom/android/deskclock/data/City;

    move-result-object v0

    goto :goto_0

    .line 391
    :cond_0
    iget-boolean v0, p0, Lcom/android/deskclock/ClockFragment$SelectedCitiesAdapter;->mIsPortrait:Z

    .line 392
    iget-boolean v1, p0, Lcom/android/deskclock/ClockFragment$SelectedCitiesAdapter;->mShowHomeClock:Z

    add-int/2addr v0, v1

    .line 393
    invoke-direct {p0}, Lcom/android/deskclock/ClockFragment$SelectedCitiesAdapter;->getCities()Ljava/util/List;

    move-result-object v1

    sub-int v0, p2, v0

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/deskclock/data/City;

    .line 395
    :goto_0
    check-cast p1, Lcom/android/deskclock/ClockFragment$SelectedCitiesAdapter$CityViewHolder;

    iget-object v1, p0, Lcom/android/deskclock/ClockFragment$SelectedCitiesAdapter;->mContext:Landroid/content/Context;

    iget-boolean p0, p0, Lcom/android/deskclock/ClockFragment$SelectedCitiesAdapter;->mIsPortrait:Z

    invoke-static {p1, v1, v0, p2, p0}, Lcom/android/deskclock/ClockFragment$SelectedCitiesAdapter$CityViewHolder;->access$1300(Lcom/android/deskclock/ClockFragment$SelectedCitiesAdapter$CityViewHolder;Landroid/content/Context;Lcom/android/deskclock/data/City;IZ)V

    goto :goto_2

    .line 402
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Unexpected view type: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 398
    :cond_2
    check-cast p1, Lcom/android/deskclock/ClockFragment$SelectedCitiesAdapter$MainClockViewHolder;

    iget-object p2, p0, Lcom/android/deskclock/ClockFragment$SelectedCitiesAdapter;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/deskclock/ClockFragment$SelectedCitiesAdapter;->mDateFormat:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/deskclock/ClockFragment$SelectedCitiesAdapter;->mDateFormatForAccessibility:Ljava/lang/String;

    .line 399
    invoke-virtual {p0}, Lcom/android/deskclock/ClockFragment$SelectedCitiesAdapter;->getItemCount()I

    move-result p0

    const/4 v2, 0x1

    if-le p0, v2, :cond_3

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    .line 398
    :goto_1
    invoke-static {p1, p2, v0, v1, v2}, Lcom/android/deskclock/ClockFragment$SelectedCitiesAdapter$MainClockViewHolder;->access$1400(Lcom/android/deskclock/ClockFragment$SelectedCitiesAdapter$MainClockViewHolder;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_2
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 1

    .line 369
    iget-object p0, p0, Lcom/android/deskclock/ClockFragment$SelectedCitiesAdapter;->mInflater:Landroid/view/LayoutInflater;

    const/4 v0, 0x0

    invoke-virtual {p0, p2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    const p1, 0x7f0d0045

    const/4 v0, 0x0

    if-eq p2, p1, :cond_1

    const p1, 0x7f0d008b

    if-ne p2, p1, :cond_0

    .line 372
    new-instance p1, Lcom/android/deskclock/ClockFragment$SelectedCitiesAdapter$CityViewHolder;

    invoke-direct {p1, p0, v0}, Lcom/android/deskclock/ClockFragment$SelectedCitiesAdapter$CityViewHolder;-><init>(Landroid/view/View;Lcom/android/deskclock/ClockFragment$1;)V

    return-object p1

    .line 376
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "View type not recognized"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 374
    :cond_1
    new-instance p1, Lcom/android/deskclock/ClockFragment$SelectedCitiesAdapter$MainClockViewHolder;

    invoke-direct {p1, p0, v0}, Lcom/android/deskclock/ClockFragment$SelectedCitiesAdapter$MainClockViewHolder;-><init>(Landroid/view/View;Lcom/android/deskclock/ClockFragment$1;)V

    return-object p1
.end method
