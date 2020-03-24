.class public Lcom/android/deskclock/DeskClock;
.super Lcom/android/deskclock/BaseActivity;
.source "DeskClock.java"

# interfaces
.implements Lcom/android/deskclock/FabContainer;
.implements Lcom/android/deskclock/LabelDialogFragment$AlarmLabelDialogHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/deskclock/DeskClock$TabChangeWatcher;,
        Lcom/android/deskclock/DeskClock$ShowSilentSettingSnackbarRunnable;,
        Lcom/android/deskclock/DeskClock$SilentSettingChangeWatcher;,
        Lcom/android/deskclock/DeskClock$AutoStartShowListener;,
        Lcom/android/deskclock/DeskClock$PageChangeWatcher;,
        Lcom/android/deskclock/DeskClock$FabState;
    }
.end annotation


# instance fields
.field private final mAutoStartShowListener:Landroid/animation/AnimatorListenerAdapter;

.field private mDropShadowController:Lcom/android/deskclock/DropShadowController;

.field private mFab:Landroid/widget/ImageView;

.field private mFabState:Lcom/android/deskclock/DeskClock$FabState;

.field private mFragmentTabPager:Landroidx/viewpager/widget/ViewPager;

.field private mFragmentTabPagerAdapter:Lcom/android/deskclock/FragmentTabPagerAdapter;

.field private final mHideAnimation:Landroid/animation/AnimatorSet;

.field private mLeftButton:Landroid/widget/Button;

.field private final mOptionsMenuManager:Lcom/android/deskclock/actionbarmenu/OptionsMenuManager;

.field private mRecreateActivity:Z

.field private mRightButton:Landroid/widget/Button;

.field private final mShowAnimation:Landroid/animation/AnimatorSet;

.field private mShowSilentSettingSnackbarRunnable:Ljava/lang/Runnable;

.field private final mSilentSettingChangeWatcher:Lcom/android/deskclock/data/OnSilentSettingsListener;

.field private mSnackbarAnchor:Landroid/view/View;

.field private final mTabChangeWatcher:Lcom/android/deskclock/uidata/TabListener;

.field private mTabLayout:Lcom/google/android/material/tabs/TabLayout;

.field private final mUpdateButtonsOnlyAnimation:Landroid/animation/AnimatorSet;

.field private final mUpdateFabOnlyAnimation:Landroid/animation/AnimatorSet;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 69
    invoke-direct {p0}, Lcom/android/deskclock/BaseActivity;-><init>()V

    .line 76
    new-instance v0, Lcom/android/deskclock/actionbarmenu/OptionsMenuManager;

    invoke-direct {v0}, Lcom/android/deskclock/actionbarmenu/OptionsMenuManager;-><init>()V

    iput-object v0, p0, Lcom/android/deskclock/DeskClock;->mOptionsMenuManager:Lcom/android/deskclock/actionbarmenu/OptionsMenuManager;

    .line 79
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/android/deskclock/DeskClock;->mHideAnimation:Landroid/animation/AnimatorSet;

    .line 82
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/android/deskclock/DeskClock;->mShowAnimation:Landroid/animation/AnimatorSet;

    .line 85
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/android/deskclock/DeskClock;->mUpdateFabOnlyAnimation:Landroid/animation/AnimatorSet;

    .line 88
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/android/deskclock/DeskClock;->mUpdateButtonsOnlyAnimation:Landroid/animation/AnimatorSet;

    .line 91
    new-instance v0, Lcom/android/deskclock/DeskClock$AutoStartShowListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/deskclock/DeskClock$AutoStartShowListener;-><init>(Lcom/android/deskclock/DeskClock;Lcom/android/deskclock/DeskClock$1;)V

    iput-object v0, p0, Lcom/android/deskclock/DeskClock;->mAutoStartShowListener:Landroid/animation/AnimatorListenerAdapter;

    .line 94
    new-instance v0, Lcom/android/deskclock/DeskClock$TabChangeWatcher;

    invoke-direct {v0, p0, v1}, Lcom/android/deskclock/DeskClock$TabChangeWatcher;-><init>(Lcom/android/deskclock/DeskClock;Lcom/android/deskclock/DeskClock$1;)V

    iput-object v0, p0, Lcom/android/deskclock/DeskClock;->mTabChangeWatcher:Lcom/android/deskclock/uidata/TabListener;

    .line 97
    new-instance v0, Lcom/android/deskclock/DeskClock$SilentSettingChangeWatcher;

    invoke-direct {v0, p0, v1}, Lcom/android/deskclock/DeskClock$SilentSettingChangeWatcher;-><init>(Lcom/android/deskclock/DeskClock;Lcom/android/deskclock/DeskClock$1;)V

    iput-object v0, p0, Lcom/android/deskclock/DeskClock;->mSilentSettingChangeWatcher:Lcom/android/deskclock/data/OnSilentSettingsListener;

    .line 107
    sget-object v0, Lcom/android/deskclock/DeskClock$FabState;->SHOWING:Lcom/android/deskclock/DeskClock$FabState;

    iput-object v0, p0, Lcom/android/deskclock/DeskClock;->mFabState:Lcom/android/deskclock/DeskClock$FabState;

    return-void
.end method

.method static synthetic access$1000(Lcom/android/deskclock/DeskClock;)Landroid/animation/AnimatorListenerAdapter;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/android/deskclock/DeskClock;->mAutoStartShowListener:Landroid/animation/AnimatorListenerAdapter;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/android/deskclock/DeskClock;)Landroid/animation/AnimatorSet;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/android/deskclock/DeskClock;->mShowAnimation:Landroid/animation/AnimatorSet;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/android/deskclock/DeskClock;)Lcom/android/deskclock/FragmentTabPagerAdapter;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/android/deskclock/DeskClock;->mFragmentTabPagerAdapter:Lcom/android/deskclock/FragmentTabPagerAdapter;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/android/deskclock/DeskClock;)Ljava/lang/Runnable;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/android/deskclock/DeskClock;->mShowSilentSettingSnackbarRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$1302(Lcom/android/deskclock/DeskClock;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/android/deskclock/DeskClock;->mShowSilentSettingSnackbarRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/android/deskclock/DeskClock;)Landroid/view/View;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/android/deskclock/DeskClock;->mSnackbarAnchor:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/android/deskclock/DeskClock;I)Lcom/google/android/material/snackbar/Snackbar;
    .locals 0

    .line 69
    invoke-direct {p0, p1}, Lcom/android/deskclock/DeskClock;->createSnackbar(I)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1700(Lcom/android/deskclock/DeskClock;)V
    .locals 0

    .line 69
    invoke-direct {p0}, Lcom/android/deskclock/DeskClock;->updateCurrentTab()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/deskclock/DeskClock;)Landroid/widget/ImageView;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/android/deskclock/DeskClock;->mFab:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/deskclock/DeskClock;)Lcom/android/deskclock/DeskClockFragment;
    .locals 0

    .line 69
    invoke-direct {p0}, Lcom/android/deskclock/DeskClock;->getSelectedDeskClockFragment()Lcom/android/deskclock/DeskClockFragment;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/deskclock/DeskClock;)Landroid/widget/Button;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/android/deskclock/DeskClock;->mLeftButton:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/deskclock/DeskClock;)Landroid/widget/Button;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/android/deskclock/DeskClock;->mRightButton:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic access$800(Lcom/android/deskclock/DeskClock;)Lcom/android/deskclock/DeskClock$FabState;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/android/deskclock/DeskClock;->mFabState:Lcom/android/deskclock/DeskClock$FabState;

    return-object p0
.end method

.method static synthetic access$802(Lcom/android/deskclock/DeskClock;Lcom/android/deskclock/DeskClock$FabState;)Lcom/android/deskclock/DeskClock$FabState;
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/android/deskclock/DeskClock;->mFabState:Lcom/android/deskclock/DeskClock$FabState;

    return-object p1
.end method

.method static synthetic access$900(Lcom/android/deskclock/DeskClock;)Landroid/animation/AnimatorSet;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/android/deskclock/DeskClock;->mHideAnimation:Landroid/animation/AnimatorSet;

    return-object p0
.end method

.method private checkPermissions()V
    .locals 2

    const-string v0, "org.codeaurora.permission.POWER_OFF_ALARM"

    .line 476
    invoke-virtual {p0, v0}, Landroid/app/Activity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 478
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method private createSnackbar(I)Lcom/google/android/material/snackbar/Snackbar;
    .locals 1

    .line 535
    iget-object p0, p0, Lcom/android/deskclock/DeskClock;->mSnackbarAnchor:Landroid/view/View;

    const/16 v0, 0x1388

    invoke-static {p0, p1, v0}, Lcom/google/android/material/snackbar/Snackbar;->make(Landroid/view/View;II)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object p0

    return-object p0
.end method

.method private getSelectedDeskClockFragment()Lcom/android/deskclock/DeskClockFragment;
    .locals 3

    const/4 v0, 0x0

    .line 521
    :goto_0
    iget-object v1, p0, Lcom/android/deskclock/DeskClock;->mFragmentTabPagerAdapter:Lcom/android/deskclock/FragmentTabPagerAdapter;

    invoke-virtual {v1}, Lcom/android/deskclock/FragmentTabPagerAdapter;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 522
    iget-object v1, p0, Lcom/android/deskclock/DeskClock;->mFragmentTabPagerAdapter:Lcom/android/deskclock/FragmentTabPagerAdapter;

    invoke-virtual {v1, v0}, Lcom/android/deskclock/FragmentTabPagerAdapter;->getDeskClockFragment(I)Lcom/android/deskclock/DeskClockFragment;

    move-result-object v1

    .line 523
    invoke-virtual {v1}, Lcom/android/deskclock/DeskClockFragment;->isTabSelected()Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 527
    :cond_1
    invoke-static {}, Lcom/android/deskclock/uidata/UiDataModel;->getUiDataModel()Lcom/android/deskclock/uidata/UiDataModel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/deskclock/uidata/UiDataModel;->getSelectedTab()Lcom/android/deskclock/uidata/UiDataModel$Tab;

    move-result-object p0

    .line 528
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to locate selected fragment ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private updateCurrentTab()V
    .locals 5

    .line 496
    invoke-static {}, Lcom/android/deskclock/uidata/UiDataModel;->getUiDataModel()Lcom/android/deskclock/uidata/UiDataModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/deskclock/uidata/UiDataModel;->getSelectedTab()Lcom/android/deskclock/uidata/UiDataModel$Tab;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    .line 499
    :goto_0
    iget-object v3, p0, Lcom/android/deskclock/DeskClock;->mTabLayout:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v3}, Lcom/google/android/material/tabs/TabLayout;->getTabCount()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 500
    iget-object v3, p0, Lcom/android/deskclock/DeskClock;->mTabLayout:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v3, v2}, Lcom/google/android/material/tabs/TabLayout;->getTabAt(I)Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 501
    invoke-virtual {v3}, Lcom/google/android/material/tabs/TabLayout$Tab;->getTag()Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v0, :cond_0

    invoke-virtual {v3}, Lcom/google/android/material/tabs/TabLayout$Tab;->isSelected()Z

    move-result v4

    if-nez v4, :cond_0

    .line 502
    invoke-virtual {v3}, Lcom/google/android/material/tabs/TabLayout$Tab;->select()V

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 508
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/android/deskclock/DeskClock;->mFragmentTabPagerAdapter:Lcom/android/deskclock/FragmentTabPagerAdapter;

    invoke-virtual {v0}, Lcom/android/deskclock/FragmentTabPagerAdapter;->getCount()I

    move-result v0

    if-ge v1, v0, :cond_3

    .line 509
    iget-object v0, p0, Lcom/android/deskclock/DeskClock;->mFragmentTabPagerAdapter:Lcom/android/deskclock/FragmentTabPagerAdapter;

    invoke-virtual {v0, v1}, Lcom/android/deskclock/FragmentTabPagerAdapter;->getDeskClockFragment(I)Lcom/android/deskclock/DeskClockFragment;

    move-result-object v0

    .line 510
    invoke-virtual {v0}, Lcom/android/deskclock/DeskClockFragment;->isTabSelected()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/deskclock/DeskClock;->mFragmentTabPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v0

    if-eq v0, v1, :cond_2

    .line 511
    iget-object p0, p0, Lcom/android/deskclock/DeskClock;->mFragmentTabPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p0, v1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    goto :goto_2

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    const/4 p3, 0x1

    if-ne p1, p3, :cond_0

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    .line 471
    iput-boolean p3, p0, Lcom/android/deskclock/DeskClock;->mRecreateActivity:Z

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10

    .line 148
    invoke-super {p0, p1}, Lcom/android/deskclock/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d003b

    .line 150
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    const p1, 0x7f0a006f

    .line 151
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/deskclock/DeskClock;->mSnackbarAnchor:Landroid/view/View;

    .line 153
    invoke-direct {p0}, Lcom/android/deskclock/DeskClock;->checkPermissions()V

    const p1, 0x7f0a0163

    .line 156
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/Toolbar;

    .line 157
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 159
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 161
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 165
    :cond_0
    iget-object v0, p0, Lcom/android/deskclock/DeskClock;->mOptionsMenuManager:Lcom/android/deskclock/actionbarmenu/OptionsMenuManager;

    const/4 v2, 0x3

    new-array v3, v2, [Lcom/android/deskclock/actionbarmenu/MenuItemController;

    new-instance v4, Lcom/android/deskclock/actionbarmenu/NightModeMenuItemController;

    invoke-direct {v4, p0}, Lcom/android/deskclock/actionbarmenu/NightModeMenuItemController;-><init>(Landroid/content/Context;)V

    aput-object v4, v3, v1

    new-instance v4, Lcom/android/deskclock/actionbarmenu/SettingsMenuItemController;

    invoke-direct {v4, p0}, Lcom/android/deskclock/actionbarmenu/SettingsMenuItemController;-><init>(Landroid/app/Activity;)V

    const/4 v5, 0x1

    aput-object v4, v3, v5

    new-instance v4, Lcom/android/deskclock/actionbarmenu/WidgetMenuItemController;

    invoke-direct {v4, p0}, Lcom/android/deskclock/actionbarmenu/WidgetMenuItemController;-><init>(Landroid/content/Context;)V

    const/4 v5, 0x2

    aput-object v4, v3, v5

    invoke-virtual {v0, v3}, Lcom/android/deskclock/actionbarmenu/OptionsMenuManager;->addMenuItemController([Lcom/android/deskclock/actionbarmenu/MenuItemController;)Lcom/android/deskclock/actionbarmenu/OptionsMenuManager;

    .line 168
    iget-object v0, p0, Lcom/android/deskclock/DeskClock;->mOptionsMenuManager:Lcom/android/deskclock/actionbarmenu/OptionsMenuManager;

    .line 169
    invoke-static {}, Lcom/android/deskclock/actionbarmenu/MenuItemControllerFactory;->getInstance()Lcom/android/deskclock/actionbarmenu/MenuItemControllerFactory;

    move-result-object v3

    invoke-virtual {v3, p0}, Lcom/android/deskclock/actionbarmenu/MenuItemControllerFactory;->buildMenuItemControllers(Landroid/app/Activity;)[Lcom/android/deskclock/actionbarmenu/MenuItemController;

    move-result-object v3

    .line 168
    invoke-virtual {v0, v3}, Lcom/android/deskclock/actionbarmenu/OptionsMenuManager;->addMenuItemController([Lcom/android/deskclock/actionbarmenu/MenuItemController;)Lcom/android/deskclock/actionbarmenu/OptionsMenuManager;

    .line 173
    invoke-virtual {p1}, Landroidx/appcompat/widget/Toolbar;->getMenu()Landroid/view/Menu;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/deskclock/DeskClock;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    const p1, 0x7f0a013a

    .line 176
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/tabs/TabLayout;

    iput-object p1, p0, Lcom/android/deskclock/DeskClock;->mTabLayout:Lcom/google/android/material/tabs/TabLayout;

    .line 177
    invoke-static {}, Lcom/android/deskclock/uidata/UiDataModel;->getUiDataModel()Lcom/android/deskclock/uidata/UiDataModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/deskclock/uidata/UiDataModel;->getTabCount()I

    move-result p1

    .line 178
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f050007

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 179
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f050006

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    :goto_0
    const/4 v4, 0x0

    if-ge v1, p1, :cond_3

    .line 181
    invoke-static {}, Lcom/android/deskclock/uidata/UiDataModel;->getUiDataModel()Lcom/android/deskclock/uidata/UiDataModel;

    move-result-object v6

    invoke-virtual {v6, v1}, Lcom/android/deskclock/uidata/UiDataModel;->getTab(I)Lcom/android/deskclock/uidata/UiDataModel$Tab;

    move-result-object v6

    .line 182
    invoke-virtual {v6}, Lcom/android/deskclock/uidata/UiDataModel$Tab;->getLabelResId()I

    move-result v7

    .line 184
    iget-object v8, p0, Lcom/android/deskclock/DeskClock;->mTabLayout:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v8}, Lcom/google/android/material/tabs/TabLayout;->newTab()Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object v8

    .line 185
    invoke-virtual {v8, v6}, Lcom/google/android/material/tabs/TabLayout$Tab;->setTag(Ljava/lang/Object;)Lcom/google/android/material/tabs/TabLayout$Tab;

    .line 186
    invoke-virtual {v6}, Lcom/android/deskclock/uidata/UiDataModel$Tab;->getIconResId()I

    move-result v6

    invoke-virtual {v8, v6}, Lcom/google/android/material/tabs/TabLayout$Tab;->setIcon(I)Lcom/google/android/material/tabs/TabLayout$Tab;

    .line 187
    invoke-virtual {v8, v7}, Lcom/google/android/material/tabs/TabLayout$Tab;->setContentDescription(I)Lcom/google/android/material/tabs/TabLayout$Tab;

    if-eqz v0, :cond_2

    .line 190
    invoke-virtual {v8, v7}, Lcom/google/android/material/tabs/TabLayout$Tab;->setText(I)Lcom/google/android/material/tabs/TabLayout$Tab;

    const v6, 0x7f0d0080

    .line 191
    invoke-virtual {v8, v6}, Lcom/google/android/material/tabs/TabLayout$Tab;->setCustomView(I)Lcom/google/android/material/tabs/TabLayout$Tab;

    .line 194
    invoke-virtual {v8}, Lcom/google/android/material/tabs/TabLayout$Tab;->getCustomView()Landroid/view/View;

    move-result-object v6

    const v7, 0x1020014

    .line 195
    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 196
    iget-object v7, p0, Lcom/android/deskclock/DeskClock;->mTabLayout:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v7}, Lcom/google/android/material/tabs/TabLayout;->getTabTextColors()Landroid/content/res/ColorStateList;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 199
    invoke-virtual {v8}, Lcom/google/android/material/tabs/TabLayout$Tab;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    if-eqz v3, :cond_1

    .line 202
    invoke-virtual {v8, v4}, Lcom/google/android/material/tabs/TabLayout$Tab;->setIcon(Landroid/graphics/drawable/Drawable;)Lcom/google/android/material/tabs/TabLayout$Tab;

    .line 203
    invoke-virtual {v6, v7, v4, v4, v4}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 205
    :cond_1
    invoke-virtual {v6, v4, v7, v4, v4}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 209
    :cond_2
    :goto_1
    iget-object v4, p0, Lcom/android/deskclock/DeskClock;->mTabLayout:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v4, v8}, Lcom/google/android/material/tabs/TabLayout;->addTab(Lcom/google/android/material/tabs/TabLayout$Tab;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    const p1, 0x7f0a009a

    .line 213
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/android/deskclock/DeskClock;->mFab:Landroid/widget/ImageView;

    const p1, 0x7f0a00bf

    .line 214
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/android/deskclock/DeskClock;->mLeftButton:Landroid/widget/Button;

    const p1, 0x7f0a00f9

    .line 215
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/android/deskclock/DeskClock;->mRightButton:Landroid/widget/Button;

    .line 217
    iget-object p1, p0, Lcom/android/deskclock/DeskClock;->mFab:Landroid/widget/ImageView;

    new-instance v0, Lcom/android/deskclock/DeskClock$1;

    invoke-direct {v0, p0}, Lcom/android/deskclock/DeskClock$1;-><init>(Lcom/android/deskclock/DeskClock;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 223
    iget-object p1, p0, Lcom/android/deskclock/DeskClock;->mLeftButton:Landroid/widget/Button;

    new-instance v0, Lcom/android/deskclock/DeskClock$2;

    invoke-direct {v0, p0}, Lcom/android/deskclock/DeskClock$2;-><init>(Lcom/android/deskclock/DeskClock;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 229
    iget-object p1, p0, Lcom/android/deskclock/DeskClock;->mRightButton:Landroid/widget/Button;

    new-instance v0, Lcom/android/deskclock/DeskClock$3;

    invoke-direct {v0, p0}, Lcom/android/deskclock/DeskClock$3;-><init>(Lcom/android/deskclock/DeskClock;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 236
    invoke-static {}, Lcom/android/deskclock/uidata/UiDataModel;->getUiDataModel()Lcom/android/deskclock/uidata/UiDataModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/deskclock/uidata/UiDataModel;->getShortAnimationDuration()J

    move-result-wide v0

    .line 238
    iget-object p1, p0, Lcom/android/deskclock/DeskClock;->mFab:Landroid/widget/ImageView;

    new-array v3, v5, [F

    fill-array-data v3, :array_0

    invoke-static {p1, v3}, Lcom/android/deskclock/AnimatorUtils;->getScaleAnimator(Landroid/view/View;[F)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 239
    iget-object v3, p0, Lcom/android/deskclock/DeskClock;->mFab:Landroid/widget/ImageView;

    new-array v6, v5, [F

    fill-array-data v6, :array_1

    invoke-static {v3, v6}, Lcom/android/deskclock/AnimatorUtils;->getScaleAnimator(Landroid/view/View;[F)Landroid/animation/ValueAnimator;

    move-result-object v3

    .line 241
    iget-object v6, p0, Lcom/android/deskclock/DeskClock;->mLeftButton:Landroid/widget/Button;

    new-array v7, v5, [F

    fill-array-data v7, :array_2

    invoke-static {v6, v7}, Lcom/android/deskclock/AnimatorUtils;->getScaleAnimator(Landroid/view/View;[F)Landroid/animation/ValueAnimator;

    move-result-object v6

    .line 242
    iget-object v7, p0, Lcom/android/deskclock/DeskClock;->mRightButton:Landroid/widget/Button;

    new-array v8, v5, [F

    fill-array-data v8, :array_3

    invoke-static {v7, v8}, Lcom/android/deskclock/AnimatorUtils;->getScaleAnimator(Landroid/view/View;[F)Landroid/animation/ValueAnimator;

    move-result-object v7

    .line 243
    iget-object v8, p0, Lcom/android/deskclock/DeskClock;->mLeftButton:Landroid/widget/Button;

    new-array v9, v5, [F

    fill-array-data v9, :array_4

    invoke-static {v8, v9}, Lcom/android/deskclock/AnimatorUtils;->getScaleAnimator(Landroid/view/View;[F)Landroid/animation/ValueAnimator;

    move-result-object v8

    .line 244
    iget-object v9, p0, Lcom/android/deskclock/DeskClock;->mRightButton:Landroid/widget/Button;

    new-array v5, v5, [F

    fill-array-data v5, :array_5

    invoke-static {v9, v5}, Lcom/android/deskclock/AnimatorUtils;->getScaleAnimator(Landroid/view/View;[F)Landroid/animation/ValueAnimator;

    move-result-object v5

    .line 246
    new-instance v9, Lcom/android/deskclock/DeskClock$4;

    invoke-direct {v9, p0}, Lcom/android/deskclock/DeskClock$4;-><init>(Lcom/android/deskclock/DeskClock;)V

    invoke-virtual {p1, v9}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 253
    new-instance v9, Lcom/android/deskclock/DeskClock$5;

    invoke-direct {v9, p0}, Lcom/android/deskclock/DeskClock$5;-><init>(Lcom/android/deskclock/DeskClock;)V

    invoke-virtual {v6, v9}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 262
    iget-object v9, p0, Lcom/android/deskclock/DeskClock;->mHideAnimation:Landroid/animation/AnimatorSet;

    .line 263
    invoke-virtual {v9, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    move-result-object v9

    .line 264
    invoke-virtual {v9, p1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v9

    .line 265
    invoke-virtual {v9, v6}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v9

    .line 266
    invoke-virtual {v9, v7}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 268
    iget-object v9, p0, Lcom/android/deskclock/DeskClock;->mShowAnimation:Landroid/animation/AnimatorSet;

    .line 269
    invoke-virtual {v9, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    move-result-object v9

    .line 270
    invoke-virtual {v9, v3}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v9

    .line 271
    invoke-virtual {v9, v8}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v9

    .line 272
    invoke-virtual {v9, v5}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 275
    iget-object v9, p0, Lcom/android/deskclock/DeskClock;->mUpdateFabOnlyAnimation:Landroid/animation/AnimatorSet;

    .line 276
    invoke-virtual {v9, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    move-result-object v9

    .line 277
    invoke-virtual {v9, v3}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v3

    .line 278
    invoke-virtual {v3, p1}, Landroid/animation/AnimatorSet$Builder;->after(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 281
    iget-object p1, p0, Lcom/android/deskclock/DeskClock;->mUpdateButtonsOnlyAnimation:Landroid/animation/AnimatorSet;

    .line 282
    invoke-virtual {p1, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    move-result-object p1

    .line 283
    invoke-virtual {p1, v8}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object p1

    .line 284
    invoke-virtual {p1, v5}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object p1

    .line 285
    invoke-virtual {p1, v6}, Landroid/animation/AnimatorSet$Builder;->after(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object p1

    .line 286
    invoke-virtual {p1, v7}, Landroid/animation/AnimatorSet$Builder;->after(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 289
    new-instance p1, Lcom/android/deskclock/FragmentTabPagerAdapter;

    invoke-direct {p1, p0}, Lcom/android/deskclock/FragmentTabPagerAdapter;-><init>(Lcom/android/deskclock/DeskClock;)V

    iput-object p1, p0, Lcom/android/deskclock/DeskClock;->mFragmentTabPagerAdapter:Lcom/android/deskclock/FragmentTabPagerAdapter;

    const p1, 0x7f0a0087

    .line 290
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/viewpager/widget/ViewPager;

    iput-object p1, p0, Lcom/android/deskclock/DeskClock;->mFragmentTabPager:Landroidx/viewpager/widget/ViewPager;

    .line 292
    iget-object p1, p0, Lcom/android/deskclock/DeskClock;->mFragmentTabPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p1, v2}, Landroidx/viewpager/widget/ViewPager;->setOffscreenPageLimit(I)V

    .line 295
    iget-object p1, p0, Lcom/android/deskclock/DeskClock;->mFragmentTabPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p1, v4}, Landroid/view/ViewGroup;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 297
    iget-object p1, p0, Lcom/android/deskclock/DeskClock;->mFragmentTabPager:Landroidx/viewpager/widget/ViewPager;

    new-instance v0, Lcom/android/deskclock/DeskClock$PageChangeWatcher;

    invoke-direct {v0, p0, v4}, Lcom/android/deskclock/DeskClock$PageChangeWatcher;-><init>(Lcom/android/deskclock/DeskClock;Lcom/android/deskclock/DeskClock$1;)V

    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 298
    iget-object p1, p0, Lcom/android/deskclock/DeskClock;->mFragmentTabPager:Landroidx/viewpager/widget/ViewPager;

    iget-object v0, p0, Lcom/android/deskclock/DeskClock;->mFragmentTabPagerAdapter:Lcom/android/deskclock/FragmentTabPagerAdapter;

    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 301
    iget-object p1, p0, Lcom/android/deskclock/DeskClock;->mTabLayout:Lcom/google/android/material/tabs/TabLayout;

    new-instance v0, Lcom/android/deskclock/DeskClock$6;

    invoke-direct {v0, p0}, Lcom/android/deskclock/DeskClock$6;-><init>(Lcom/android/deskclock/DeskClock;)V

    invoke-virtual {p1, v0}, Lcom/google/android/material/tabs/TabLayout;->addOnTabSelectedListener(Lcom/google/android/material/tabs/TabLayout$OnTabSelectedListener;)V

    .line 317
    invoke-static {}, Lcom/android/deskclock/uidata/UiDataModel;->getUiDataModel()Lcom/android/deskclock/uidata/UiDataModel;

    move-result-object p1

    iget-object p0, p0, Lcom/android/deskclock/DeskClock;->mTabChangeWatcher:Lcom/android/deskclock/uidata/TabListener;

    invoke-virtual {p1, p0}, Lcom/android/deskclock/uidata/UiDataModel;->addTabListener(Lcom/android/deskclock/uidata/TabListener;)V

    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_3
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_4
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_5
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 0

    .line 385
    iget-object p0, p0, Lcom/android/deskclock/DeskClock;->mOptionsMenuManager:Lcom/android/deskclock/actionbarmenu/OptionsMenuManager;

    invoke-virtual {p0, p1}, Lcom/android/deskclock/actionbarmenu/OptionsMenuManager;->onCreateOptionsMenu(Landroid/view/Menu;)V

    const/4 p0, 0x1

    return p0
.end method

.method protected onDestroy()V
    .locals 2

    .line 379
    invoke-static {}, Lcom/android/deskclock/uidata/UiDataModel;->getUiDataModel()Lcom/android/deskclock/uidata/UiDataModel;

    move-result-object v0

    iget-object v1, p0, Lcom/android/deskclock/DeskClock;->mTabChangeWatcher:Lcom/android/deskclock/uidata/TabListener;

    invoke-virtual {v0, v1}, Lcom/android/deskclock/uidata/UiDataModel;->removeTabListener(Lcom/android/deskclock/uidata/TabListener;)V

    .line 380
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    return-void
.end method

.method public onDialogLabelSet(Lcom/android/deskclock/provider/Alarm;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 406
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p0

    invoke-virtual {p0, p3}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object p0

    .line 407
    instance-of p3, p0, Lcom/android/deskclock/AlarmClockFragment;

    if-eqz p3, :cond_0

    .line 408
    check-cast p0, Lcom/android/deskclock/AlarmClockFragment;

    invoke-virtual {p0, p1, p2}, Lcom/android/deskclock/AlarmClockFragment;->setLabel(Lcom/android/deskclock/provider/Alarm;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 418
    invoke-direct {p0}, Lcom/android/deskclock/DeskClock;->getSelectedDeskClockFragment()Lcom/android/deskclock/DeskClockFragment;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/deskclock/DeskClockFragment;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 419
    invoke-super {p0, p1, p2}, Landroidx/appcompat/app/AppCompatActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

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

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 0

    .line 140
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 143
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    .line 398
    iget-object v0, p0, Lcom/android/deskclock/DeskClock;->mOptionsMenuManager:Lcom/android/deskclock/actionbarmenu/OptionsMenuManager;

    invoke-virtual {v0, p1}, Lcom/android/deskclock/actionbarmenu/OptionsMenuManager;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    if-nez v0, :cond_1

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

    .line 359
    iget-object v0, p0, Lcom/android/deskclock/DeskClock;->mDropShadowController:Lcom/android/deskclock/DropShadowController;

    if-eqz v0, :cond_0

    .line 360
    invoke-virtual {v0}, Lcom/android/deskclock/DropShadowController;->stop()V

    const/4 v0, 0x0

    .line 361
    iput-object v0, p0, Lcom/android/deskclock/DeskClock;->mDropShadowController:Lcom/android/deskclock/DropShadowController;

    .line 364
    :cond_0
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onPause()V

    return-void
.end method

.method protected onPostResume()V
    .locals 2

    .line 341
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onPostResume()V

    .line 343
    iget-boolean v0, p0, Lcom/android/deskclock/DeskClock;->mRecreateActivity:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 344
    iput-boolean v0, p0, Lcom/android/deskclock/DeskClock;->mRecreateActivity:Z

    .line 348
    iget-object v0, p0, Lcom/android/deskclock/DeskClock;->mFragmentTabPager:Landroidx/viewpager/widget/ViewPager;

    new-instance v1, Lcom/android/deskclock/DeskClock$7;

    invoke-direct {v1, p0}, Lcom/android/deskclock/DeskClock$7;-><init>(Lcom/android/deskclock/DeskClock;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 0

    .line 391
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 392
    iget-object p0, p0, Lcom/android/deskclock/DeskClock;->mOptionsMenuManager:Lcom/android/deskclock/actionbarmenu/OptionsMenuManager;

    invoke-virtual {p0, p1}, Lcom/android/deskclock/actionbarmenu/OptionsMenuManager;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    const/4 p0, 0x1

    return p0
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 0

    const/4 p0, 0x1

    if-ne p1, p0, :cond_0

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Object;

    const-string p1, "Power off alarm permission is granted."

    .line 486
    invoke-static {p1, p0}, Lcom/android/deskclock/LogUtils;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 5

    .line 329
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    const v0, 0x7f0a008d

    .line 331
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 332
    new-instance v1, Lcom/android/deskclock/DropShadowController;

    invoke-static {}, Lcom/android/deskclock/uidata/UiDataModel;->getUiDataModel()Lcom/android/deskclock/uidata/UiDataModel;

    move-result-object v2

    iget-object v3, p0, Lcom/android/deskclock/DeskClock;->mSnackbarAnchor:Landroid/view/View;

    const v4, 0x7f0a0139

    .line 333
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-direct {v1, v0, v2, v3}, Lcom/android/deskclock/DropShadowController;-><init>(Landroid/view/View;Lcom/android/deskclock/uidata/UiDataModel;Landroid/view/View;)V

    iput-object v1, p0, Lcom/android/deskclock/DeskClock;->mDropShadowController:Lcom/android/deskclock/DropShadowController;

    .line 336
    invoke-direct {p0}, Lcom/android/deskclock/DeskClock;->updateCurrentTab()V

    return-void
.end method

.method protected onStart()V
    .locals 1

    .line 322
    invoke-super {p0}, Lcom/android/deskclock/BaseActivity;->onStart()V

    .line 323
    invoke-static {}, Lcom/android/deskclock/data/DataModel;->getDataModel()Lcom/android/deskclock/data/DataModel;

    move-result-object v0

    iget-object p0, p0, Lcom/android/deskclock/DeskClock;->mSilentSettingChangeWatcher:Lcom/android/deskclock/data/OnSilentSettingsListener;

    invoke-virtual {v0, p0}, Lcom/android/deskclock/data/DataModel;->addSilentSettingsListener(Lcom/android/deskclock/data/OnSilentSettingsListener;)V

    .line 324
    invoke-static {}, Lcom/android/deskclock/data/DataModel;->getDataModel()Lcom/android/deskclock/data/DataModel;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/deskclock/data/DataModel;->setApplicationInForeground(Z)V

    return-void
.end method

.method protected onStop()V
    .locals 2

    .line 369
    invoke-static {}, Lcom/android/deskclock/data/DataModel;->getDataModel()Lcom/android/deskclock/data/DataModel;

    move-result-object v0

    iget-object v1, p0, Lcom/android/deskclock/DeskClock;->mSilentSettingChangeWatcher:Lcom/android/deskclock/data/OnSilentSettingsListener;

    invoke-virtual {v0, v1}, Lcom/android/deskclock/data/DataModel;->removeSilentSettingsListener(Lcom/android/deskclock/data/OnSilentSettingsListener;)V

    .line 370
    invoke-virtual {p0}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v0

    if-nez v0, :cond_0

    .line 371
    invoke-static {}, Lcom/android/deskclock/data/DataModel;->getDataModel()Lcom/android/deskclock/data/DataModel;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/deskclock/data/DataModel;->setApplicationInForeground(Z)V

    .line 374
    :cond_0
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStop()V

    return-void
.end method

.method public updateFab(I)V
    .locals 3

    .line 424
    invoke-direct {p0}, Lcom/android/deskclock/DeskClock;->getSelectedDeskClockFragment()Lcom/android/deskclock/DeskClockFragment;

    move-result-object v0

    and-int/lit8 v1, p1, 0x3

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    goto :goto_0

    .line 434
    :cond_0
    iget-object v1, p0, Lcom/android/deskclock/DeskClock;->mFab:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/android/deskclock/DeskClockFragment;->onMorphFab(Landroid/widget/ImageView;)V

    goto :goto_0

    .line 428
    :cond_1
    iget-object v1, p0, Lcom/android/deskclock/DeskClock;->mUpdateFabOnlyAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0

    .line 431
    :cond_2
    iget-object v1, p0, Lcom/android/deskclock/DeskClock;->mFab:Landroid/widget/ImageView;

    invoke-interface {v0, v1}, Lcom/android/deskclock/FabController;->onUpdateFab(Landroid/widget/ImageView;)V

    :goto_0
    and-int/lit8 v1, p1, 0x4

    const/4 v2, 0x4

    if-eq v1, v2, :cond_3

    goto :goto_1

    .line 439
    :cond_3
    iget-object v1, p0, Lcom/android/deskclock/DeskClock;->mFab:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->requestFocus()Z

    :goto_1
    and-int/lit8 v1, p1, 0x18

    const/16 v2, 0x8

    if-eq v1, v2, :cond_5

    const/16 v0, 0x10

    if-eq v1, v0, :cond_4

    goto :goto_2

    .line 447
    :cond_4
    iget-object v0, p0, Lcom/android/deskclock/DeskClock;->mUpdateButtonsOnlyAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_2

    .line 444
    :cond_5
    iget-object v1, p0, Lcom/android/deskclock/DeskClock;->mLeftButton:Landroid/widget/Button;

    iget-object v2, p0, Lcom/android/deskclock/DeskClock;->mRightButton:Landroid/widget/Button;

    invoke-interface {v0, v1, v2}, Lcom/android/deskclock/FabController;->onUpdateFabButtons(Landroid/widget/Button;Landroid/widget/Button;)V

    :goto_2
    and-int/lit8 v0, p1, 0x20

    const/16 v1, 0x20

    if-eq v0, v1, :cond_6

    goto :goto_3

    .line 452
    :cond_6
    iget-object v0, p0, Lcom/android/deskclock/DeskClock;->mLeftButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setClickable(Z)V

    .line 453
    iget-object v0, p0, Lcom/android/deskclock/DeskClock;->mRightButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setClickable(Z)V

    :goto_3
    and-int/lit16 p1, p1, 0xc0

    const/16 v0, 0x40

    if-eq p1, v0, :cond_8

    const/16 v0, 0x80

    if-eq p1, v0, :cond_7

    goto :goto_4

    .line 458
    :cond_7
    iget-object p0, p0, Lcom/android/deskclock/DeskClock;->mHideAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_4

    .line 461
    :cond_8
    iget-object p0, p0, Lcom/android/deskclock/DeskClock;->mShowAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    :goto_4
    return-void
.end method
