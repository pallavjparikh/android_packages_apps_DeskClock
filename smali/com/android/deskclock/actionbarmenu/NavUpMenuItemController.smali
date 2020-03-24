.class public final Lcom/android/deskclock/actionbarmenu/NavUpMenuItemController;
.super Ljava/lang/Object;
.source "NavUpMenuItemController.java"

# interfaces
.implements Lcom/android/deskclock/actionbarmenu/MenuItemController;


# instance fields
.field private final mActivity:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/android/deskclock/actionbarmenu/NavUpMenuItemController;->mActivity:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public getId()I
    .locals 0

    const p0, 0x102002c

    return p0
.end method

.method public onCreateOptionsItem(Landroid/view/Menu;)V
    .locals 0

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/android/deskclock/actionbarmenu/NavUpMenuItemController;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    const/4 p0, 0x1

    return p0
.end method

.method public onPrepareOptionsItem(Landroid/view/MenuItem;)V
    .locals 0

    return-void
.end method
