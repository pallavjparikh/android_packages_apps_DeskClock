.class public final Lcom/android/deskclock/worldclock/CitySelectionActivity;
.super Lcom/android/deskclock/BaseActivity;
.source "CitySelectionActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/deskclock/worldclock/CitySelectionActivity$SortOrderMenuItemController;,
        Lcom/android/deskclock/worldclock/CitySelectionActivity$CityAdapter;
    }
.end annotation


# instance fields
.field private mCitiesAdapter:Lcom/android/deskclock/worldclock/CitySelectionActivity$CityAdapter;

.field private mCitiesList:Landroid/widget/ListView;

.field private mDropShadowController:Lcom/android/deskclock/DropShadowController;

.field private final mOptionsMenuManager:Lcom/android/deskclock/actionbarmenu/OptionsMenuManager;

.field private mSearchMenuItemController:Lcom/android/deskclock/actionbarmenu/SearchMenuItemController;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 76
    invoke-direct {p0}, Lcom/android/deskclock/BaseActivity;-><init>()V

    .line 91
    new-instance v0, Lcom/android/deskclock/actionbarmenu/OptionsMenuManager;

    invoke-direct {v0}, Lcom/android/deskclock/actionbarmenu/OptionsMenuManager;-><init>()V

    iput-object v0, p0, Lcom/android/deskclock/worldclock/CitySelectionActivity;->mOptionsMenuManager:Lcom/android/deskclock/actionbarmenu/OptionsMenuManager;

    return-void
.end method

.method static synthetic access$000(Lcom/android/deskclock/worldclock/CitySelectionActivity;)Lcom/android/deskclock/worldclock/CitySelectionActivity$CityAdapter;
    .locals 0

    .line 76
    iget-object p0, p0, Lcom/android/deskclock/worldclock/CitySelectionActivity;->mCitiesAdapter:Lcom/android/deskclock/worldclock/CitySelectionActivity$CityAdapter;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/android/deskclock/worldclock/CitySelectionActivity;)Lcom/android/deskclock/actionbarmenu/SearchMenuItemController;
    .locals 0

    .line 76
    iget-object p0, p0, Lcom/android/deskclock/worldclock/CitySelectionActivity;->mSearchMenuItemController:Lcom/android/deskclock/actionbarmenu/SearchMenuItemController;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/deskclock/worldclock/CitySelectionActivity;)V
    .locals 0

    .line 76
    invoke-direct {p0}, Lcom/android/deskclock/worldclock/CitySelectionActivity;->updateFastScrolling()V

    return-void
.end method

.method private updateFastScrolling()V
    .locals 2

    .line 185
    iget-object v0, p0, Lcom/android/deskclock/worldclock/CitySelectionActivity;->mCitiesAdapter:Lcom/android/deskclock/worldclock/CitySelectionActivity$CityAdapter;

    invoke-static {v0}, Lcom/android/deskclock/worldclock/CitySelectionActivity$CityAdapter;->access$600(Lcom/android/deskclock/worldclock/CitySelectionActivity$CityAdapter;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 186
    iget-object v1, p0, Lcom/android/deskclock/worldclock/CitySelectionActivity;->mCitiesList:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setFastScrollAlwaysVisible(Z)V

    .line 187
    iget-object p0, p0, Lcom/android/deskclock/worldclock/CitySelectionActivity;->mCitiesList:Landroid/widget/ListView;

    invoke-virtual {p0, v0}, Landroid/widget/ListView;->setFastScrollEnabled(Z)V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 105
    invoke-super {p0, p1}, Lcom/android/deskclock/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0d0025

    .line 107
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 108
    new-instance v0, Lcom/android/deskclock/actionbarmenu/SearchMenuItemController;

    .line 109
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/appcompat/app/ActionBar;->getThemedContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/android/deskclock/worldclock/CitySelectionActivity$1;

    invoke-direct {v2, p0}, Lcom/android/deskclock/worldclock/CitySelectionActivity$1;-><init>(Lcom/android/deskclock/worldclock/CitySelectionActivity;)V

    invoke-direct {v0, v1, v2, p1}, Lcom/android/deskclock/actionbarmenu/SearchMenuItemController;-><init>(Landroid/content/Context;Landroidx/appcompat/widget/SearchView$OnQueryTextListener;Landroid/os/Bundle;)V

    iput-object v0, p0, Lcom/android/deskclock/worldclock/CitySelectionActivity;->mSearchMenuItemController:Lcom/android/deskclock/actionbarmenu/SearchMenuItemController;

    .line 123
    new-instance p1, Lcom/android/deskclock/worldclock/CitySelectionActivity$CityAdapter;

    iget-object v0, p0, Lcom/android/deskclock/worldclock/CitySelectionActivity;->mSearchMenuItemController:Lcom/android/deskclock/actionbarmenu/SearchMenuItemController;

    invoke-direct {p1, p0, v0}, Lcom/android/deskclock/worldclock/CitySelectionActivity$CityAdapter;-><init>(Landroid/content/Context;Lcom/android/deskclock/actionbarmenu/SearchMenuItemController;)V

    iput-object p1, p0, Lcom/android/deskclock/worldclock/CitySelectionActivity;->mCitiesAdapter:Lcom/android/deskclock/worldclock/CitySelectionActivity$CityAdapter;

    .line 124
    iget-object p1, p0, Lcom/android/deskclock/worldclock/CitySelectionActivity;->mOptionsMenuManager:Lcom/android/deskclock/actionbarmenu/OptionsMenuManager;

    const/4 v0, 0x1

    new-array v1, v0, [Lcom/android/deskclock/actionbarmenu/MenuItemController;

    new-instance v2, Lcom/android/deskclock/actionbarmenu/NavUpMenuItemController;

    invoke-direct {v2, p0}, Lcom/android/deskclock/actionbarmenu/NavUpMenuItemController;-><init>(Landroid/app/Activity;)V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p1, v1}, Lcom/android/deskclock/actionbarmenu/OptionsMenuManager;->addMenuItemController([Lcom/android/deskclock/actionbarmenu/MenuItemController;)Lcom/android/deskclock/actionbarmenu/OptionsMenuManager;

    new-array v1, v0, [Lcom/android/deskclock/actionbarmenu/MenuItemController;

    iget-object v2, p0, Lcom/android/deskclock/worldclock/CitySelectionActivity;->mSearchMenuItemController:Lcom/android/deskclock/actionbarmenu/SearchMenuItemController;

    aput-object v2, v1, v3

    .line 125
    invoke-virtual {p1, v1}, Lcom/android/deskclock/actionbarmenu/OptionsMenuManager;->addMenuItemController([Lcom/android/deskclock/actionbarmenu/MenuItemController;)Lcom/android/deskclock/actionbarmenu/OptionsMenuManager;

    new-array v1, v0, [Lcom/android/deskclock/actionbarmenu/MenuItemController;

    new-instance v2, Lcom/android/deskclock/worldclock/CitySelectionActivity$SortOrderMenuItemController;

    const/4 v4, 0x0

    invoke-direct {v2, p0, v4}, Lcom/android/deskclock/worldclock/CitySelectionActivity$SortOrderMenuItemController;-><init>(Lcom/android/deskclock/worldclock/CitySelectionActivity;Lcom/android/deskclock/worldclock/CitySelectionActivity$1;)V

    aput-object v2, v1, v3

    .line 126
    invoke-virtual {p1, v1}, Lcom/android/deskclock/actionbarmenu/OptionsMenuManager;->addMenuItemController([Lcom/android/deskclock/actionbarmenu/MenuItemController;)Lcom/android/deskclock/actionbarmenu/OptionsMenuManager;

    new-array v0, v0, [Lcom/android/deskclock/actionbarmenu/MenuItemController;

    new-instance v1, Lcom/android/deskclock/actionbarmenu/SettingsMenuItemController;

    invoke-direct {v1, p0}, Lcom/android/deskclock/actionbarmenu/SettingsMenuItemController;-><init>(Landroid/app/Activity;)V

    aput-object v1, v0, v3

    .line 127
    invoke-virtual {p1, v0}, Lcom/android/deskclock/actionbarmenu/OptionsMenuManager;->addMenuItemController([Lcom/android/deskclock/actionbarmenu/MenuItemController;)Lcom/android/deskclock/actionbarmenu/OptionsMenuManager;

    .line 128
    invoke-static {}, Lcom/android/deskclock/actionbarmenu/MenuItemControllerFactory;->getInstance()Lcom/android/deskclock/actionbarmenu/MenuItemControllerFactory;

    move-result-object v0

    .line 129
    invoke-virtual {v0, p0}, Lcom/android/deskclock/actionbarmenu/MenuItemControllerFactory;->buildMenuItemControllers(Landroid/app/Activity;)[Lcom/android/deskclock/actionbarmenu/MenuItemController;

    move-result-object v0

    .line 128
    invoke-virtual {p1, v0}, Lcom/android/deskclock/actionbarmenu/OptionsMenuManager;->addMenuItemController([Lcom/android/deskclock/actionbarmenu/MenuItemController;)Lcom/android/deskclock/actionbarmenu/OptionsMenuManager;

    const p1, 0x7f0a005e

    .line 130
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ListView;

    iput-object p1, p0, Lcom/android/deskclock/worldclock/CitySelectionActivity;->mCitiesList:Landroid/widget/ListView;

    .line 131
    iget-object p1, p0, Lcom/android/deskclock/worldclock/CitySelectionActivity;->mCitiesList:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/android/deskclock/worldclock/CitySelectionActivity;->mCitiesAdapter:Lcom/android/deskclock/worldclock/CitySelectionActivity$CityAdapter;

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 133
    invoke-direct {p0}, Lcom/android/deskclock/worldclock/CitySelectionActivity;->updateFastScrolling()V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 0

    .line 165
    iget-object p0, p0, Lcom/android/deskclock/worldclock/CitySelectionActivity;->mOptionsMenuManager:Lcom/android/deskclock/actionbarmenu/OptionsMenuManager;

    invoke-virtual {p0, p1}, Lcom/android/deskclock/actionbarmenu/OptionsMenuManager;->onCreateOptionsMenu(Landroid/view/Menu;)V

    const/4 p0, 0x1

    return p0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    .line 177
    iget-object v0, p0, Lcom/android/deskclock/worldclock/CitySelectionActivity;->mOptionsMenuManager:Lcom/android/deskclock/actionbarmenu/OptionsMenuManager;

    invoke-virtual {v0, p1}, Lcom/android/deskclock/actionbarmenu/OptionsMenuManager;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 178
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public onPause()V
    .locals 1

    .line 155
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onPause()V

    .line 157
    iget-object v0, p0, Lcom/android/deskclock/worldclock/CitySelectionActivity;->mDropShadowController:Lcom/android/deskclock/DropShadowController;

    invoke-virtual {v0}, Lcom/android/deskclock/DropShadowController;->stop()V

    .line 160
    invoke-static {}, Lcom/android/deskclock/data/DataModel;->getDataModel()Lcom/android/deskclock/data/DataModel;

    move-result-object v0

    iget-object p0, p0, Lcom/android/deskclock/worldclock/CitySelectionActivity;->mCitiesAdapter:Lcom/android/deskclock/worldclock/CitySelectionActivity$CityAdapter;

    invoke-static {p0}, Lcom/android/deskclock/worldclock/CitySelectionActivity$CityAdapter;->access$500(Lcom/android/deskclock/worldclock/CitySelectionActivity$CityAdapter;)Ljava/util/Collection;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/deskclock/data/DataModel;->setSelectedCities(Ljava/util/Collection;)V

    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 0

    .line 171
    iget-object p0, p0, Lcom/android/deskclock/worldclock/CitySelectionActivity;->mOptionsMenuManager:Lcom/android/deskclock/actionbarmenu/OptionsMenuManager;

    invoke-virtual {p0, p1}, Lcom/android/deskclock/actionbarmenu/OptionsMenuManager;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    const/4 p0, 0x1

    return p0
.end method

.method public onResume()V
    .locals 3

    .line 144
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    .line 147
    iget-object v0, p0, Lcom/android/deskclock/worldclock/CitySelectionActivity;->mCitiesAdapter:Lcom/android/deskclock/worldclock/CitySelectionActivity$CityAdapter;

    invoke-static {v0}, Lcom/android/deskclock/worldclock/CitySelectionActivity$CityAdapter;->access$400(Lcom/android/deskclock/worldclock/CitySelectionActivity$CityAdapter;)V

    const v0, 0x7f0a008d

    .line 149
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 150
    new-instance v1, Lcom/android/deskclock/DropShadowController;

    iget-object v2, p0, Lcom/android/deskclock/worldclock/CitySelectionActivity;->mCitiesList:Landroid/widget/ListView;

    invoke-direct {v1, v0, v2}, Lcom/android/deskclock/DropShadowController;-><init>(Landroid/view/View;Landroid/widget/ListView;)V

    iput-object v1, p0, Lcom/android/deskclock/worldclock/CitySelectionActivity;->mDropShadowController:Lcom/android/deskclock/DropShadowController;

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0

    .line 138
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 139
    iget-object p0, p0, Lcom/android/deskclock/worldclock/CitySelectionActivity;->mSearchMenuItemController:Lcom/android/deskclock/actionbarmenu/SearchMenuItemController;

    invoke-virtual {p0, p1}, Lcom/android/deskclock/actionbarmenu/SearchMenuItemController;->saveInstance(Landroid/os/Bundle;)V

    return-void
.end method
