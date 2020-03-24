.class public final Lcom/android/deskclock/settings/SettingsActivity;
.super Lcom/android/deskclock/BaseActivity;
.source "SettingsActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/deskclock/settings/SettingsActivity$PrefsFragment;
    }
.end annotation


# instance fields
.field private mDropShadowController:Lcom/android/deskclock/DropShadowController;

.field private final mOptionsMenuManager:Lcom/android/deskclock/actionbarmenu/OptionsMenuManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 53
    invoke-direct {p0}, Lcom/android/deskclock/BaseActivity;-><init>()V

    .line 78
    new-instance v0, Lcom/android/deskclock/actionbarmenu/OptionsMenuManager;

    invoke-direct {v0}, Lcom/android/deskclock/actionbarmenu/OptionsMenuManager;-><init>()V

    iput-object v0, p0, Lcom/android/deskclock/settings/SettingsActivity;->mOptionsMenuManager:Lcom/android/deskclock/actionbarmenu/OptionsMenuManager;

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 87
    invoke-super {p0, p1}, Lcom/android/deskclock/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0d007b

    .line 88
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 90
    iget-object v0, p0, Lcom/android/deskclock/settings/SettingsActivity;->mOptionsMenuManager:Lcom/android/deskclock/actionbarmenu/OptionsMenuManager;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/android/deskclock/actionbarmenu/MenuItemController;

    new-instance v2, Lcom/android/deskclock/actionbarmenu/NavUpMenuItemController;

    invoke-direct {v2, p0}, Lcom/android/deskclock/actionbarmenu/NavUpMenuItemController;-><init>(Landroid/app/Activity;)V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/android/deskclock/actionbarmenu/OptionsMenuManager;->addMenuItemController([Lcom/android/deskclock/actionbarmenu/MenuItemController;)Lcom/android/deskclock/actionbarmenu/OptionsMenuManager;

    .line 91
    invoke-static {}, Lcom/android/deskclock/actionbarmenu/MenuItemControllerFactory;->getInstance()Lcom/android/deskclock/actionbarmenu/MenuItemControllerFactory;

    move-result-object v1

    .line 92
    invoke-virtual {v1, p0}, Lcom/android/deskclock/actionbarmenu/MenuItemControllerFactory;->buildMenuItemControllers(Landroid/app/Activity;)[Lcom/android/deskclock/actionbarmenu/MenuItemController;

    move-result-object v1

    .line 91
    invoke-virtual {v0, v1}, Lcom/android/deskclock/actionbarmenu/OptionsMenuManager;->addMenuItemController([Lcom/android/deskclock/actionbarmenu/MenuItemController;)Lcom/android/deskclock/actionbarmenu/OptionsMenuManager;

    if-nez p1, :cond_0

    .line 96
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p0

    const p1, 0x7f0a00c5

    new-instance v0, Lcom/android/deskclock/settings/SettingsActivity$PrefsFragment;

    invoke-direct {v0}, Lcom/android/deskclock/settings/SettingsActivity$PrefsFragment;-><init>()V

    const-string v1, "prefs_fragment"

    .line 97
    invoke-virtual {p0, p1, v0, v1}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 98
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentTransaction;->disallowAddToBackStack()Landroidx/fragment/app/FragmentTransaction;

    .line 99
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    :cond_0
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 0

    .line 121
    iget-object p0, p0, Lcom/android/deskclock/settings/SettingsActivity;->mOptionsMenuManager:Lcom/android/deskclock/actionbarmenu/OptionsMenuManager;

    invoke-virtual {p0, p1}, Lcom/android/deskclock/actionbarmenu/OptionsMenuManager;->onCreateOptionsMenu(Landroid/view/Menu;)V

    const/4 p0, 0x1

    return p0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/android/deskclock/settings/SettingsActivity;->mOptionsMenuManager:Lcom/android/deskclock/actionbarmenu/OptionsMenuManager;

    invoke-virtual {v0, p1}, Lcom/android/deskclock/actionbarmenu/OptionsMenuManager;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 134
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

.method protected onPause()V
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/android/deskclock/settings/SettingsActivity;->mDropShadowController:Lcom/android/deskclock/DropShadowController;

    invoke-virtual {v0}, Lcom/android/deskclock/DropShadowController;->stop()V

    .line 116
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onPause()V

    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 0

    .line 127
    iget-object p0, p0, Lcom/android/deskclock/settings/SettingsActivity;->mOptionsMenuManager:Lcom/android/deskclock/actionbarmenu/OptionsMenuManager;

    invoke-virtual {p0, p1}, Lcom/android/deskclock/actionbarmenu/OptionsMenuManager;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    const/4 p0, 0x1

    return p0
.end method

.method protected onResume()V
    .locals 3

    .line 105
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    const v0, 0x7f0a008d

    .line 107
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 109
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const v2, 0x7f0a00c5

    invoke-virtual {v1, v2}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/android/deskclock/settings/SettingsActivity$PrefsFragment;

    .line 110
    new-instance v2, Lcom/android/deskclock/DropShadowController;

    invoke-virtual {v1}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v1

    invoke-direct {v2, v0, v1}, Lcom/android/deskclock/DropShadowController;-><init>(Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;)V

    iput-object v2, p0, Lcom/android/deskclock/settings/SettingsActivity;->mDropShadowController:Lcom/android/deskclock/DropShadowController;

    return-void
.end method
