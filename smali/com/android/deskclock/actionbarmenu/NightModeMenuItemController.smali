.class public final Lcom/android/deskclock/actionbarmenu/NightModeMenuItemController;
.super Ljava/lang/Object;
.source "NightModeMenuItemController.java"

# interfaces
.implements Lcom/android/deskclock/actionbarmenu/MenuItemController;


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/android/deskclock/actionbarmenu/NightModeMenuItemController;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getId()I
    .locals 0

    const p0, 0x7f0a00ca

    return p0
.end method

.method public onCreateOptionsItem(Landroid/view/Menu;)V
    .locals 2

    const/4 p0, 0x0

    const v0, 0x7f0a00ca

    const v1, 0x7f1101f3

    .line 49
    invoke-interface {p1, p0, v0, p0, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object p1

    .line 50
    invoke-interface {p1, p0}, Landroid/view/MenuItem;->setShowAsAction(I)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 59
    iget-object p0, p0, Lcom/android/deskclock/actionbarmenu/NightModeMenuItemController;->mContext:Landroid/content/Context;

    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/android/deskclock/ScreensaverActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v0, 0x10000000

    .line 60
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object p1

    const-string v0, "com.android.deskclock.extra.EVENT_LABEL"

    const v1, 0x7f1101e6

    .line 61
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p1

    .line 59
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const/4 p0, 0x1

    return p0
.end method

.method public onPrepareOptionsItem(Landroid/view/MenuItem;)V
    .locals 0

    return-void
.end method
