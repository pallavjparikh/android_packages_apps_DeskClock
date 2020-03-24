.class final Lcom/android/deskclock/FragmentTabPagerAdapter;
.super Landroidx/viewpager/widget/PagerAdapter;
.source "FragmentTabPagerAdapter.java"


# instance fields
.field private mCurrentPrimaryItem:Landroid/app/Fragment;

.field private mCurrentTransaction:Landroid/app/FragmentTransaction;

.field private final mDeskClock:Lcom/android/deskclock/DeskClock;

.field private final mFragmentCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/android/deskclock/uidata/UiDataModel$Tab;",
            "Lcom/android/deskclock/DeskClockFragment;",
            ">;"
        }
    .end annotation
.end field

.field private final mFragmentManager:Landroid/app/FragmentManager;


# direct methods
.method constructor <init>(Lcom/android/deskclock/DeskClock;)V
    .locals 2

    .line 55
    invoke-direct {p0}, Landroidx/viewpager/widget/PagerAdapter;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/android/deskclock/FragmentTabPagerAdapter;->mDeskClock:Lcom/android/deskclock/DeskClock;

    .line 57
    new-instance v0, Landroid/util/ArrayMap;

    invoke-virtual {p0}, Lcom/android/deskclock/FragmentTabPagerAdapter;->getCount()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/util/ArrayMap;-><init>(I)V

    iput-object v0, p0, Lcom/android/deskclock/FragmentTabPagerAdapter;->mFragmentCache:Ljava/util/Map;

    .line 58
    invoke-virtual {p1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/deskclock/FragmentTabPagerAdapter;->mFragmentManager:Landroid/app/FragmentManager;

    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0

    .line 131
    iget-object p1, p0, Lcom/android/deskclock/FragmentTabPagerAdapter;->mCurrentTransaction:Landroid/app/FragmentTransaction;

    if-nez p1, :cond_0

    .line 132
    iget-object p1, p0, Lcom/android/deskclock/FragmentTabPagerAdapter;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {p1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object p1

    iput-object p1, p0, Lcom/android/deskclock/FragmentTabPagerAdapter;->mCurrentTransaction:Landroid/app/FragmentTransaction;

    .line 134
    :cond_0
    check-cast p3, Lcom/android/deskclock/DeskClockFragment;

    const/4 p1, 0x0

    .line 135
    invoke-virtual {p3, p1}, Lcom/android/deskclock/DeskClockFragment;->setFabContainer(Lcom/android/deskclock/FabContainer;)V

    .line 136
    iget-object p0, p0, Lcom/android/deskclock/FragmentTabPagerAdapter;->mCurrentTransaction:Landroid/app/FragmentTransaction;

    invoke-virtual {p0, p3}, Landroid/app/FragmentTransaction;->detach(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    return-void
.end method

.method public finishUpdate(Landroid/view/ViewGroup;)V
    .locals 0

    .line 157
    iget-object p1, p0, Lcom/android/deskclock/FragmentTabPagerAdapter;->mCurrentTransaction:Landroid/app/FragmentTransaction;

    if-eqz p1, :cond_0

    .line 158
    invoke-virtual {p1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    const/4 p1, 0x0

    .line 159
    iput-object p1, p0, Lcom/android/deskclock/FragmentTabPagerAdapter;->mCurrentTransaction:Landroid/app/FragmentTransaction;

    .line 160
    iget-object p0, p0, Lcom/android/deskclock/FragmentTabPagerAdapter;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {p0}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    :cond_0
    return-void
.end method

.method public getCount()I
    .locals 0

    .line 63
    invoke-static {}, Lcom/android/deskclock/uidata/UiDataModel;->getUiDataModel()Lcom/android/deskclock/uidata/UiDataModel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/deskclock/uidata/UiDataModel;->getTabCount()I

    move-result p0

    return p0
.end method

.method getDeskClockFragment(I)Lcom/android/deskclock/DeskClockFragment;
    .locals 2

    .line 72
    invoke-static {}, Lcom/android/deskclock/uidata/UiDataModel;->getUiDataModel()Lcom/android/deskclock/uidata/UiDataModel;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/deskclock/uidata/UiDataModel;->getTabAt(I)Lcom/android/deskclock/uidata/UiDataModel$Tab;

    move-result-object p1

    .line 75
    iget-object v0, p0, Lcom/android/deskclock/FragmentTabPagerAdapter;->mFragmentCache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/deskclock/DeskClockFragment;

    if-eqz v0, :cond_0

    return-object v0

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/android/deskclock/FragmentTabPagerAdapter;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/deskclock/DeskClockFragment;

    if-eqz v0, :cond_1

    .line 85
    iget-object v1, p0, Lcom/android/deskclock/FragmentTabPagerAdapter;->mDeskClock:Lcom/android/deskclock/DeskClock;

    invoke-virtual {v0, v1}, Lcom/android/deskclock/DeskClockFragment;->setFabContainer(Lcom/android/deskclock/FabContainer;)V

    .line 86
    iget-object p0, p0, Lcom/android/deskclock/FragmentTabPagerAdapter;->mFragmentCache:Ljava/util/Map;

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    .line 91
    :cond_1
    invoke-virtual {p1}, Lcom/android/deskclock/uidata/UiDataModel$Tab;->getFragmentClassName()Ljava/lang/String;

    move-result-object v0

    .line 92
    iget-object v1, p0, Lcom/android/deskclock/FragmentTabPagerAdapter;->mDeskClock:Lcom/android/deskclock/DeskClock;

    invoke-static {v1, v0}, Landroid/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/deskclock/DeskClockFragment;

    .line 93
    iget-object v1, p0, Lcom/android/deskclock/FragmentTabPagerAdapter;->mDeskClock:Lcom/android/deskclock/DeskClock;

    invoke-virtual {v0, v1}, Lcom/android/deskclock/DeskClockFragment;->setFabContainer(Lcom/android/deskclock/FabContainer;)V

    .line 94
    iget-object p0, p0, Lcom/android/deskclock/FragmentTabPagerAdapter;->mFragmentCache:Ljava/util/Map;

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 3

    .line 107
    iget-object v0, p0, Lcom/android/deskclock/FragmentTabPagerAdapter;->mCurrentTransaction:Landroid/app/FragmentTransaction;

    if-nez v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/android/deskclock/FragmentTabPagerAdapter;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    iput-object v0, p0, Lcom/android/deskclock/FragmentTabPagerAdapter;->mCurrentTransaction:Landroid/app/FragmentTransaction;

    .line 112
    :cond_0
    invoke-static {}, Lcom/android/deskclock/uidata/UiDataModel;->getUiDataModel()Lcom/android/deskclock/uidata/UiDataModel;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/deskclock/uidata/UiDataModel;->getTabAt(I)Lcom/android/deskclock/uidata/UiDataModel$Tab;

    move-result-object v0

    .line 113
    iget-object v1, p0, Lcom/android/deskclock/FragmentTabPagerAdapter;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 115
    iget-object p1, p0, Lcom/android/deskclock/FragmentTabPagerAdapter;->mCurrentTransaction:Landroid/app/FragmentTransaction;

    invoke-virtual {p1, v1}, Landroid/app/FragmentTransaction;->attach(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    goto :goto_0

    .line 117
    :cond_1
    invoke-virtual {p0, p2}, Lcom/android/deskclock/FragmentTabPagerAdapter;->getDeskClockFragment(I)Lcom/android/deskclock/DeskClockFragment;

    move-result-object v1

    .line 118
    iget-object p2, p0, Lcom/android/deskclock/FragmentTabPagerAdapter;->mCurrentTransaction:Landroid/app/FragmentTransaction;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getId()I

    move-result p1

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, p1, v1, v0}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 121
    :goto_0
    iget-object p0, p0, Lcom/android/deskclock/FragmentTabPagerAdapter;->mCurrentPrimaryItem:Landroid/app/Fragment;

    if-eq v1, p0, :cond_2

    const/4 p0, 0x0

    .line 122
    invoke-static {v1, p0}, Landroidx/legacy/app/FragmentCompat;->setMenuVisibility(Landroid/app/Fragment;Z)V

    .line 123
    invoke-static {v1, p0}, Landroidx/legacy/app/FragmentCompat;->setUserVisibleHint(Landroid/app/Fragment;Z)V

    :cond_2
    return-object v1
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 0

    .line 166
    check-cast p2, Landroid/app/Fragment;

    invoke-virtual {p2}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object p0

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public setPrimaryItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0

    .line 141
    check-cast p3, Landroid/app/Fragment;

    .line 142
    iget-object p1, p0, Lcom/android/deskclock/FragmentTabPagerAdapter;->mCurrentPrimaryItem:Landroid/app/Fragment;

    if-eq p3, p1, :cond_2

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 144
    invoke-static {p1, p2}, Landroidx/legacy/app/FragmentCompat;->setMenuVisibility(Landroid/app/Fragment;Z)V

    .line 145
    iget-object p1, p0, Lcom/android/deskclock/FragmentTabPagerAdapter;->mCurrentPrimaryItem:Landroid/app/Fragment;

    invoke-static {p1, p2}, Landroidx/legacy/app/FragmentCompat;->setUserVisibleHint(Landroid/app/Fragment;Z)V

    :cond_0
    if-eqz p3, :cond_1

    const/4 p1, 0x1

    .line 148
    invoke-static {p3, p1}, Landroidx/legacy/app/FragmentCompat;->setMenuVisibility(Landroid/app/Fragment;Z)V

    .line 149
    invoke-static {p3, p1}, Landroidx/legacy/app/FragmentCompat;->setUserVisibleHint(Landroid/app/Fragment;Z)V

    .line 151
    :cond_1
    iput-object p3, p0, Lcom/android/deskclock/FragmentTabPagerAdapter;->mCurrentPrimaryItem:Landroid/app/Fragment;

    :cond_2
    return-void
.end method

.method public startUpdate(Landroid/view/ViewGroup;)V
    .locals 2

    .line 100
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getId()I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    return-void

    .line 101
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ViewPager with adapter "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " has no id"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
