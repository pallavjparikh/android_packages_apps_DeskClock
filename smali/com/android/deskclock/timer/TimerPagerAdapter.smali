.class Lcom/android/deskclock/timer/TimerPagerAdapter;
.super Landroidx/viewpager/widget/PagerAdapter;
.source "TimerPagerAdapter.java"

# interfaces
.implements Lcom/android/deskclock/data/TimerListener;


# instance fields
.field private mCurrentPrimaryItem:Landroid/app/Fragment;

.field private mCurrentTransaction:Landroid/app/FragmentTransaction;

.field private final mFragmentManager:Landroid/app/FragmentManager;

.field private final mFragments:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/android/deskclock/timer/TimerItemFragment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/FragmentManager;)V
    .locals 1

    .line 52
    invoke-direct {p0}, Landroidx/viewpager/widget/PagerAdapter;-><init>()V

    .line 44
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/deskclock/timer/TimerPagerAdapter;->mFragments:Ljava/util/Map;

    .line 53
    iput-object p1, p0, Lcom/android/deskclock/timer/TimerPagerAdapter;->mFragmentManager:Landroid/app/FragmentManager;

    return-void
.end method

.method private getTimers()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/deskclock/data/Timer;",
            ">;"
        }
    .end annotation

    .line 178
    invoke-static {}, Lcom/android/deskclock/data/DataModel;->getDataModel()Lcom/android/deskclock/data/DataModel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/deskclock/data/DataModel;->getTimers()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private static setItemVisible(Landroid/app/Fragment;Z)V
    .locals 0

    .line 182
    invoke-static {p0, p1}, Landroidx/legacy/app/FragmentCompat;->setMenuVisibility(Landroid/app/Fragment;Z)V

    .line 183
    invoke-static {p0, p1}, Landroidx/legacy/app/FragmentCompat;->setUserVisibleHint(Landroid/app/Fragment;Z)V

    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CommitTransaction"
        }
    .end annotation

    .line 109
    check-cast p3, Lcom/android/deskclock/timer/TimerItemFragment;

    .line 111
    iget-object p1, p0, Lcom/android/deskclock/timer/TimerPagerAdapter;->mCurrentTransaction:Landroid/app/FragmentTransaction;

    if-nez p1, :cond_0

    .line 112
    iget-object p1, p0, Lcom/android/deskclock/timer/TimerPagerAdapter;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {p1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object p1

    iput-object p1, p0, Lcom/android/deskclock/timer/TimerPagerAdapter;->mCurrentTransaction:Landroid/app/FragmentTransaction;

    .line 115
    :cond_0
    iget-object p1, p0, Lcom/android/deskclock/timer/TimerPagerAdapter;->mFragments:Ljava/util/Map;

    invoke-virtual {p3}, Lcom/android/deskclock/timer/TimerItemFragment;->getTimerId()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    iget-object p0, p0, Lcom/android/deskclock/timer/TimerPagerAdapter;->mCurrentTransaction:Landroid/app/FragmentTransaction;

    invoke-virtual {p0, p3}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    return-void
.end method

.method public finishUpdate(Landroid/view/ViewGroup;)V
    .locals 0

    .line 137
    iget-object p1, p0, Lcom/android/deskclock/timer/TimerPagerAdapter;->mCurrentTransaction:Landroid/app/FragmentTransaction;

    if-eqz p1, :cond_0

    .line 138
    invoke-virtual {p1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    const/4 p1, 0x0

    .line 139
    iput-object p1, p0, Lcom/android/deskclock/timer/TimerPagerAdapter;->mCurrentTransaction:Landroid/app/FragmentTransaction;

    .line 140
    iget-object p0, p0, Lcom/android/deskclock/timer/TimerPagerAdapter;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {p0}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    :cond_0
    return-void
.end method

.method public getCount()I
    .locals 0

    .line 58
    invoke-direct {p0}, Lcom/android/deskclock/timer/TimerPagerAdapter;->getTimers()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .locals 0

    .line 68
    check-cast p1, Lcom/android/deskclock/timer/TimerItemFragment;

    .line 69
    invoke-virtual {p1}, Lcom/android/deskclock/timer/TimerItemFragment;->getTimer()Lcom/android/deskclock/data/Timer;

    move-result-object p1

    .line 71
    invoke-direct {p0}, Lcom/android/deskclock/timer/TimerPagerAdapter;->getTimers()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p0

    const/4 p1, -0x1

    if-ne p0, p1, :cond_0

    const/4 p0, -0x2

    :cond_0
    return p0
.end method

.method getTimer(I)Lcom/android/deskclock/data/Timer;
    .locals 0

    .line 174
    invoke-direct {p0}, Lcom/android/deskclock/timer/TimerPagerAdapter;->getTimers()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/deskclock/data/Timer;

    return-object p0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Landroid/app/Fragment;
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CommitTransaction"
        }
    .end annotation

    .line 78
    iget-object v0, p0, Lcom/android/deskclock/timer/TimerPagerAdapter;->mCurrentTransaction:Landroid/app/FragmentTransaction;

    if-nez v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/android/deskclock/timer/TimerPagerAdapter;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    iput-object v0, p0, Lcom/android/deskclock/timer/TimerPagerAdapter;->mCurrentTransaction:Landroid/app/FragmentTransaction;

    .line 82
    :cond_0
    invoke-direct {p0}, Lcom/android/deskclock/timer/TimerPagerAdapter;->getTimers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/deskclock/data/Timer;

    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/android/deskclock/timer/TimerPagerAdapter;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/android/deskclock/data/Timer;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 86
    iget-object v1, p0, Lcom/android/deskclock/timer/TimerPagerAdapter;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v1, v0}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/android/deskclock/timer/TimerItemFragment;

    if-eqz v1, :cond_1

    .line 90
    iget-object p1, p0, Lcom/android/deskclock/timer/TimerPagerAdapter;->mCurrentTransaction:Landroid/app/FragmentTransaction;

    invoke-virtual {p1, v1}, Landroid/app/FragmentTransaction;->attach(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    goto :goto_0

    .line 93
    :cond_1
    invoke-static {p2}, Lcom/android/deskclock/timer/TimerItemFragment;->newInstance(Lcom/android/deskclock/data/Timer;)Lcom/android/deskclock/timer/TimerItemFragment;

    move-result-object v1

    .line 94
    iget-object v2, p0, Lcom/android/deskclock/timer/TimerPagerAdapter;->mCurrentTransaction:Landroid/app/FragmentTransaction;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getId()I

    move-result p1

    invoke-virtual {v2, p1, v1, v0}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 97
    :goto_0
    iget-object p1, p0, Lcom/android/deskclock/timer/TimerPagerAdapter;->mCurrentPrimaryItem:Landroid/app/Fragment;

    if-eq v1, p1, :cond_2

    const/4 p1, 0x0

    .line 98
    invoke-static {v1, p1}, Lcom/android/deskclock/timer/TimerPagerAdapter;->setItemVisible(Landroid/app/Fragment;Z)V

    .line 101
    :cond_2
    iget-object p0, p0, Lcom/android/deskclock/timer/TimerPagerAdapter;->mFragments:Ljava/util/Map;

    invoke-virtual {p2}, Lcom/android/deskclock/data/Timer;->getId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1
.end method

.method public bridge synthetic instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CommitTransaction"
        }
    .end annotation

    .line 39
    invoke-virtual {p0, p1, p2}, Lcom/android/deskclock/timer/TimerPagerAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Landroid/app/Fragment;

    move-result-object p0

    return-object p0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 0

    .line 63
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

    .line 121
    check-cast p3, Landroid/app/Fragment;

    .line 122
    iget-object p1, p0, Lcom/android/deskclock/timer/TimerPagerAdapter;->mCurrentPrimaryItem:Landroid/app/Fragment;

    if-eq p3, p1, :cond_1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 124
    invoke-static {p1, p2}, Lcom/android/deskclock/timer/TimerPagerAdapter;->setItemVisible(Landroid/app/Fragment;Z)V

    .line 127
    :cond_0
    iput-object p3, p0, Lcom/android/deskclock/timer/TimerPagerAdapter;->mCurrentPrimaryItem:Landroid/app/Fragment;

    .line 129
    iget-object p0, p0, Lcom/android/deskclock/timer/TimerPagerAdapter;->mCurrentPrimaryItem:Landroid/app/Fragment;

    if-eqz p0, :cond_1

    const/4 p1, 0x1

    .line 130
    invoke-static {p0, p1}, Lcom/android/deskclock/timer/TimerPagerAdapter;->setItemVisible(Landroid/app/Fragment;Z)V

    :cond_1
    return-void
.end method

.method public timerAdded(Lcom/android/deskclock/data/Timer;)V
    .locals 0

    .line 146
    invoke-virtual {p0}, Landroidx/viewpager/widget/PagerAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public timerRemoved(Lcom/android/deskclock/data/Timer;)V
    .locals 0

    .line 151
    invoke-virtual {p0}, Landroidx/viewpager/widget/PagerAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public timerUpdated(Lcom/android/deskclock/data/Timer;Lcom/android/deskclock/data/Timer;)V
    .locals 0

    .line 156
    iget-object p0, p0, Lcom/android/deskclock/timer/TimerPagerAdapter;->mFragments:Ljava/util/Map;

    invoke-virtual {p2}, Lcom/android/deskclock/data/Timer;->getId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/deskclock/timer/TimerItemFragment;

    if-eqz p0, :cond_0

    .line 158
    invoke-virtual {p0}, Lcom/android/deskclock/timer/TimerItemFragment;->updateTime()Z

    :cond_0
    return-void
.end method

.method updateTime()Z
    .locals 2

    .line 167
    iget-object p0, p0, Lcom/android/deskclock/timer/TimerPagerAdapter;->mFragments:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/deskclock/timer/TimerItemFragment;

    .line 168
    invoke-virtual {v1}, Lcom/android/deskclock/timer/TimerItemFragment;->updateTime()Z

    move-result v1

    or-int/2addr v0, v1

    goto :goto_0

    :cond_0
    return v0
.end method
