.class public final Lcom/android/deskclock/actionbarmenu/OptionsMenuManager;
.super Ljava/lang/Object;
.source "OptionsMenuManager.java"


# instance fields
.field private final mControllers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/deskclock/actionbarmenu/MenuItemController;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/deskclock/actionbarmenu/OptionsMenuManager;->mControllers:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public varargs addMenuItemController([Lcom/android/deskclock/actionbarmenu/MenuItemController;)Lcom/android/deskclock/actionbarmenu/OptionsMenuManager;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/android/deskclock/actionbarmenu/OptionsMenuManager;->mControllers:Ljava/util/List;

    invoke-static {v0, p1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    return-object p0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)V
    .locals 1

    .line 52
    iget-object p0, p0, Lcom/android/deskclock/actionbarmenu/OptionsMenuManager;->mControllers:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/deskclock/actionbarmenu/MenuItemController;

    .line 53
    invoke-interface {v0, p1}, Lcom/android/deskclock/actionbarmenu/MenuItemController;->onCreateOptionsItem(Landroid/view/Menu;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .line 77
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 78
    iget-object p0, p0, Lcom/android/deskclock/actionbarmenu/OptionsMenuManager;->mControllers:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/deskclock/actionbarmenu/MenuItemController;

    .line 79
    invoke-interface {v1}, Lcom/android/deskclock/actionbarmenu/MenuItemController;->getId()I

    move-result v2

    if-ne v2, v0, :cond_0

    .line 80
    invoke-interface {v1, p1}, Lcom/android/deskclock/actionbarmenu/MenuItemController;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 2

    .line 63
    iget-object p0, p0, Lcom/android/deskclock/actionbarmenu/OptionsMenuManager;->mControllers:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/deskclock/actionbarmenu/MenuItemController;

    .line 64
    invoke-interface {v0}, Lcom/android/deskclock/actionbarmenu/MenuItemController;->getId()I

    move-result v1

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 66
    invoke-interface {v0, v1}, Lcom/android/deskclock/actionbarmenu/MenuItemController;->onPrepareOptionsItem(Landroid/view/MenuItem;)V

    goto :goto_0

    :cond_1
    return-void
.end method
