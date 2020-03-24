.class public final Lcom/android/deskclock/actionbarmenu/SettingsMenuItemController;
.super Ljava/lang/Object;
.source "SettingsMenuItemController.java"

# interfaces
.implements Lcom/android/deskclock/actionbarmenu/MenuItemController;


# instance fields
.field private final mActivity:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/android/deskclock/actionbarmenu/SettingsMenuItemController;->mActivity:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public getId()I
    .locals 0

    const p0, 0x7f0a00cc

    return p0
.end method

.method public onCreateOptionsItem(Landroid/view/Menu;)V
    .locals 2

    const/4 p0, 0x0

    const v0, 0x7f0a00cc

    const v1, 0x7f1101f4

    .line 51
    invoke-interface {p1, p0, v0, p0, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object p1

    .line 52
    invoke-interface {p1, p0}, Landroid/view/MenuItem;->setShowAsAction(I)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 61
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/deskclock/actionbarmenu/SettingsMenuItemController;->mActivity:Landroid/app/Activity;

    const-class v1, Lcom/android/deskclock/settings/SettingsActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 62
    iget-object p0, p0, Lcom/android/deskclock/actionbarmenu/SettingsMenuItemController;->mActivity:Landroid/app/Activity;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return v0
.end method

.method public onPrepareOptionsItem(Landroid/view/MenuItem;)V
    .locals 0

    return-void
.end method
