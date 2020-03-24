.class final Lcom/android/deskclock/uidata/TabModel;
.super Ljava/lang/Object;
.source "TabModel.java"


# instance fields
.field private final mPrefs:Landroid/content/SharedPreferences;

.field private mSelectedTab:Lcom/android/deskclock/uidata/UiDataModel$Tab;

.field private final mTabListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/deskclock/uidata/TabListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mTabScrollListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/deskclock/uidata/TabScrollListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mTabScrolledToTop:[Z


# direct methods
.method constructor <init>(Landroid/content/SharedPreferences;)V
    .locals 1

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/deskclock/uidata/TabModel;->mTabListeners:Ljava/util/List;

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/deskclock/uidata/TabModel;->mTabScrollListeners:Ljava/util/List;

    .line 44
    invoke-static {}, Lcom/android/deskclock/uidata/UiDataModel$Tab;->values()[Lcom/android/deskclock/uidata/UiDataModel$Tab;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/android/deskclock/uidata/TabModel;->mTabScrolledToTop:[Z

    .line 50
    iput-object p1, p0, Lcom/android/deskclock/uidata/TabModel;->mPrefs:Landroid/content/SharedPreferences;

    .line 51
    iget-object p0, p0, Lcom/android/deskclock/uidata/TabModel;->mTabScrolledToTop:[Z

    const/4 p1, 0x1

    invoke-static {p0, p1}, Ljava/util/Arrays;->fill([ZZ)V

    return-void
.end method


# virtual methods
.method addTabListener(Lcom/android/deskclock/uidata/TabListener;)V
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/android/deskclock/uidata/TabModel;->mTabListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method addTabScrollListener(Lcom/android/deskclock/uidata/TabScrollListener;)V
    .locals 0

    .line 143
    iget-object p0, p0, Lcom/android/deskclock/uidata/TabModel;->mTabScrollListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method getSelectedTab()Lcom/android/deskclock/uidata/UiDataModel$Tab;
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/android/deskclock/uidata/TabModel;->mSelectedTab:Lcom/android/deskclock/uidata/UiDataModel$Tab;

    if-nez v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/android/deskclock/uidata/TabModel;->mPrefs:Landroid/content/SharedPreferences;

    invoke-static {v0}, Lcom/android/deskclock/uidata/TabDAO;->getSelectedTab(Landroid/content/SharedPreferences;)Lcom/android/deskclock/uidata/UiDataModel$Tab;

    move-result-object v0

    iput-object v0, p0, Lcom/android/deskclock/uidata/TabModel;->mSelectedTab:Lcom/android/deskclock/uidata/UiDataModel$Tab;

    .line 108
    :cond_0
    iget-object p0, p0, Lcom/android/deskclock/uidata/TabModel;->mSelectedTab:Lcom/android/deskclock/uidata/UiDataModel$Tab;

    return-object p0
.end method

.method getTab(I)Lcom/android/deskclock/uidata/UiDataModel$Tab;
    .locals 0

    .line 84
    invoke-static {}, Lcom/android/deskclock/uidata/UiDataModel$Tab;->values()[Lcom/android/deskclock/uidata/UiDataModel$Tab;

    move-result-object p0

    aget-object p0, p0, p1

    return-object p0
.end method

.method getTabAt(I)Lcom/android/deskclock/uidata/UiDataModel$Tab;
    .locals 2

    .line 93
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 94
    invoke-virtual {p0}, Lcom/android/deskclock/uidata/TabModel;->getTabCount()I

    move-result v0

    sub-int/2addr v0, p1

    add-int/lit8 p1, v0, -0x1

    .line 98
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/deskclock/uidata/TabModel;->getTab(I)Lcom/android/deskclock/uidata/UiDataModel$Tab;

    move-result-object p0

    return-object p0
.end method

.method getTabCount()I
    .locals 0

    .line 76
    invoke-static {}, Lcom/android/deskclock/uidata/UiDataModel$Tab;->values()[Lcom/android/deskclock/uidata/UiDataModel$Tab;

    move-result-object p0

    array-length p0, p0

    return p0
.end method

.method isTabScrolledToTop(Lcom/android/deskclock/uidata/UiDataModel$Tab;)Z
    .locals 0

    .line 175
    iget-object p0, p0, Lcom/android/deskclock/uidata/TabModel;->mTabScrolledToTop:[Z

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget-boolean p0, p0, p1

    return p0
.end method

.method removeTabListener(Lcom/android/deskclock/uidata/TabListener;)V
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/android/deskclock/uidata/TabModel;->mTabListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method removeTabScrollListener(Lcom/android/deskclock/uidata/TabScrollListener;)V
    .locals 0

    .line 150
    iget-object p0, p0, Lcom/android/deskclock/uidata/TabModel;->mTabScrollListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method setSelectedTab(Lcom/android/deskclock/uidata/UiDataModel$Tab;)V
    .locals 3

    .line 115
    invoke-virtual {p0}, Lcom/android/deskclock/uidata/TabModel;->getSelectedTab()Lcom/android/deskclock/uidata/UiDataModel$Tab;

    move-result-object v0

    if-eq v0, p1, :cond_1

    .line 117
    iput-object p1, p0, Lcom/android/deskclock/uidata/TabModel;->mSelectedTab:Lcom/android/deskclock/uidata/UiDataModel$Tab;

    .line 118
    iget-object v1, p0, Lcom/android/deskclock/uidata/TabModel;->mPrefs:Landroid/content/SharedPreferences;

    invoke-static {v1, p1}, Lcom/android/deskclock/uidata/TabDAO;->setSelectedTab(Landroid/content/SharedPreferences;Lcom/android/deskclock/uidata/UiDataModel$Tab;)V

    .line 121
    iget-object v1, p0, Lcom/android/deskclock/uidata/TabModel;->mTabListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/deskclock/uidata/TabListener;

    .line 122
    invoke-interface {v2, v0, p1}, Lcom/android/deskclock/uidata/TabListener;->selectedTabChanged(Lcom/android/deskclock/uidata/UiDataModel$Tab;Lcom/android/deskclock/uidata/UiDataModel$Tab;)V

    goto :goto_0

    .line 126
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/deskclock/uidata/TabModel;->isTabScrolledToTop(Lcom/android/deskclock/uidata/UiDataModel$Tab;)Z

    move-result v1

    .line 127
    invoke-virtual {p0, v0}, Lcom/android/deskclock/uidata/TabModel;->isTabScrolledToTop(Lcom/android/deskclock/uidata/UiDataModel$Tab;)Z

    move-result v0

    if-eq v0, v1, :cond_1

    .line 128
    iget-object p0, p0, Lcom/android/deskclock/uidata/TabModel;->mTabScrollListeners:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/deskclock/uidata/TabScrollListener;

    .line 129
    invoke-interface {v0, p1, v1}, Lcom/android/deskclock/uidata/TabScrollListener;->selectedTabScrollToTopChanged(Lcom/android/deskclock/uidata/UiDataModel$Tab;Z)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method setTabScrolledToTop(Lcom/android/deskclock/uidata/UiDataModel$Tab;Z)V
    .locals 2

    .line 160
    invoke-virtual {p0, p1}, Lcom/android/deskclock/uidata/TabModel;->isTabScrolledToTop(Lcom/android/deskclock/uidata/UiDataModel$Tab;)Z

    move-result v0

    if-eq v0, p2, :cond_0

    .line 161
    iget-object v0, p0, Lcom/android/deskclock/uidata/TabModel;->mTabScrolledToTop:[Z

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput-boolean p2, v0, v1

    .line 162
    invoke-virtual {p0}, Lcom/android/deskclock/uidata/TabModel;->getSelectedTab()Lcom/android/deskclock/uidata/UiDataModel$Tab;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 163
    iget-object p0, p0, Lcom/android/deskclock/uidata/TabModel;->mTabScrollListeners:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/deskclock/uidata/TabScrollListener;

    .line 164
    invoke-interface {v0, p1, p2}, Lcom/android/deskclock/uidata/TabScrollListener;->selectedTabScrollToTopChanged(Lcom/android/deskclock/uidata/UiDataModel$Tab;Z)V

    goto :goto_0

    :cond_0
    return-void
.end method
