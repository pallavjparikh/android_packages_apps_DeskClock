.class public abstract Lcom/android/deskclock/DeskClockFragment;
.super Landroid/app/Fragment;
.source "DeskClockFragment.java"

# interfaces
.implements Lcom/android/deskclock/FabContainer;
.implements Lcom/android/deskclock/FabController;


# instance fields
.field private mFabContainer:Lcom/android/deskclock/FabContainer;

.field private final mTab:Lcom/android/deskclock/uidata/UiDataModel$Tab;


# direct methods
.method public constructor <init>(Lcom/android/deskclock/uidata/UiDataModel$Tab;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/android/deskclock/DeskClockFragment;->mTab:Lcom/android/deskclock/uidata/UiDataModel$Tab;

    return-void
.end method


# virtual methods
.method public final isTabSelected()Z
    .locals 1

    .line 101
    invoke-static {}, Lcom/android/deskclock/uidata/UiDataModel;->getUiDataModel()Lcom/android/deskclock/uidata/UiDataModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/deskclock/uidata/UiDataModel;->getSelectedTab()Lcom/android/deskclock/uidata/UiDataModel$Tab;

    move-result-object v0

    iget-object p0, p0, Lcom/android/deskclock/DeskClockFragment;->mTab:Lcom/android/deskclock/uidata/UiDataModel$Tab;

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onLeftButtonClick(Landroid/widget/Button;)V
    .locals 0

    return-void
.end method

.method public onMorphFab(Landroid/widget/ImageView;)V
    .locals 0

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 43
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 46
    invoke-virtual {p0}, Lcom/android/deskclock/DeskClockFragment;->isTabSelected()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x9

    .line 47
    invoke-virtual {p0, v0}, Lcom/android/deskclock/DeskClockFragment;->updateFab(I)V

    :cond_0
    return-void
.end method

.method public onRightButtonClick(Landroid/widget/Button;)V
    .locals 0

    return-void
.end method

.method public final selectTab()V
    .locals 1

    .line 108
    invoke-static {}, Lcom/android/deskclock/uidata/UiDataModel;->getUiDataModel()Lcom/android/deskclock/uidata/UiDataModel;

    move-result-object v0

    iget-object p0, p0, Lcom/android/deskclock/DeskClockFragment;->mTab:Lcom/android/deskclock/uidata/UiDataModel$Tab;

    invoke-virtual {v0, p0}, Lcom/android/deskclock/uidata/UiDataModel;->setSelectedTab(Lcom/android/deskclock/uidata/UiDataModel$Tab;)V

    return-void
.end method

.method public final setFabContainer(Lcom/android/deskclock/FabContainer;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/android/deskclock/DeskClockFragment;->mFabContainer:Lcom/android/deskclock/FabContainer;

    return-void
.end method

.method public final setTabScrolledToTop(Z)V
    .locals 1

    .line 117
    invoke-static {}, Lcom/android/deskclock/uidata/UiDataModel;->getUiDataModel()Lcom/android/deskclock/uidata/UiDataModel;

    move-result-object v0

    iget-object p0, p0, Lcom/android/deskclock/DeskClockFragment;->mTab:Lcom/android/deskclock/uidata/UiDataModel$Tab;

    invoke-virtual {v0, p0, p1}, Lcom/android/deskclock/uidata/UiDataModel;->setTabScrolledToTop(Lcom/android/deskclock/uidata/UiDataModel$Tab;Z)V

    return-void
.end method

.method public final updateFab(I)V
    .locals 0

    .line 92
    iget-object p0, p0, Lcom/android/deskclock/DeskClockFragment;->mFabContainer:Lcom/android/deskclock/FabContainer;

    if-eqz p0, :cond_0

    .line 93
    invoke-interface {p0, p1}, Lcom/android/deskclock/FabContainer;->updateFab(I)V

    :cond_0
    return-void
.end method
