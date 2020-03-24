.class public final Lcom/android/deskclock/actionbarmenu/SearchMenuItemController;
.super Ljava/lang/Object;
.source "SearchMenuItemController.java"

# interfaces
.implements Lcom/android/deskclock/actionbarmenu/MenuItemController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/deskclock/actionbarmenu/SearchMenuItemController$SearchModeChangeListener;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mQuery:Ljava/lang/String;

.field private final mQueryListener:Landroidx/appcompat/widget/SearchView$OnQueryTextListener;

.field private mSearchMode:Z

.field private final mSearchModeChangeListener:Lcom/android/deskclock/actionbarmenu/SearchMenuItemController$SearchModeChangeListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/appcompat/widget/SearchView$OnQueryTextListener;Landroid/os/Bundle;)V
    .locals 2

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 48
    iput-object v0, p0, Lcom/android/deskclock/actionbarmenu/SearchMenuItemController;->mQuery:Ljava/lang/String;

    .line 53
    iput-object p1, p0, Lcom/android/deskclock/actionbarmenu/SearchMenuItemController;->mContext:Landroid/content/Context;

    .line 54
    new-instance p1, Lcom/android/deskclock/actionbarmenu/SearchMenuItemController$SearchModeChangeListener;

    const/4 v1, 0x0

    invoke-direct {p1, p0, v1}, Lcom/android/deskclock/actionbarmenu/SearchMenuItemController$SearchModeChangeListener;-><init>(Lcom/android/deskclock/actionbarmenu/SearchMenuItemController;Lcom/android/deskclock/actionbarmenu/SearchMenuItemController$1;)V

    iput-object p1, p0, Lcom/android/deskclock/actionbarmenu/SearchMenuItemController;->mSearchModeChangeListener:Lcom/android/deskclock/actionbarmenu/SearchMenuItemController$SearchModeChangeListener;

    .line 55
    iput-object p2, p0, Lcom/android/deskclock/actionbarmenu/SearchMenuItemController;->mQueryListener:Landroidx/appcompat/widget/SearchView$OnQueryTextListener;

    if-eqz p3, :cond_0

    const/4 p1, 0x0

    const-string p2, "search_mode"

    .line 58
    invoke-virtual {p3, p2, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/deskclock/actionbarmenu/SearchMenuItemController;->mSearchMode:Z

    const-string p1, "search_query"

    .line 59
    invoke-virtual {p3, p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/deskclock/actionbarmenu/SearchMenuItemController;->mQuery:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method static synthetic access$102(Lcom/android/deskclock/actionbarmenu/SearchMenuItemController;Z)Z
    .locals 0

    .line 37
    iput-boolean p1, p0, Lcom/android/deskclock/actionbarmenu/SearchMenuItemController;->mSearchMode:Z

    return p1
.end method


# virtual methods
.method public getId()I
    .locals 0

    const p0, 0x7f0a00cb

    return p0
.end method

.method public getQueryText()Ljava/lang/String;
    .locals 0

    .line 104
    iget-object p0, p0, Lcom/android/deskclock/actionbarmenu/SearchMenuItemController;->mQuery:Ljava/lang/String;

    return-object p0
.end method

.method public onCreateOptionsItem(Landroid/view/Menu;)V
    .locals 5

    .line 75
    new-instance v0, Landroidx/appcompat/widget/SearchView;

    iget-object v1, p0, Lcom/android/deskclock/actionbarmenu/SearchMenuItemController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroidx/appcompat/widget/SearchView;-><init>(Landroid/content/Context;)V

    const/high16 v1, 0x10000000

    .line 76
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SearchView;->setImeOptions(I)V

    const/16 v1, 0x2001

    .line 77
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SearchView;->setInputType(I)V

    .line 78
    iget-object v1, p0, Lcom/android/deskclock/actionbarmenu/SearchMenuItemController;->mQuery:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    .line 79
    iget-object v1, p0, Lcom/android/deskclock/actionbarmenu/SearchMenuItemController;->mSearchModeChangeListener:Lcom/android/deskclock/actionbarmenu/SearchMenuItemController$SearchModeChangeListener;

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SearchView;->setOnCloseListener(Landroidx/appcompat/widget/SearchView$OnCloseListener;)V

    .line 80
    iget-object v1, p0, Lcom/android/deskclock/actionbarmenu/SearchMenuItemController;->mSearchModeChangeListener:Lcom/android/deskclock/actionbarmenu/SearchMenuItemController$SearchModeChangeListener;

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SearchView;->setOnSearchClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    iget-object v1, p0, Lcom/android/deskclock/actionbarmenu/SearchMenuItemController;->mQueryListener:Landroidx/appcompat/widget/SearchView$OnQueryTextListener;

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SearchView;->setOnQueryTextListener(Landroidx/appcompat/widget/SearchView$OnQueryTextListener;)V

    const/4 v1, 0x1

    const v3, 0x7f0a00cb

    const v4, 0x104000c

    .line 83
    invoke-interface {p1, v2, v3, v1, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object p1

    .line 84
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    move-result-object p1

    .line 85
    invoke-interface {p1, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 87
    iget-boolean p0, p0, Lcom/android/deskclock/actionbarmenu/SearchMenuItemController;->mSearchMode:Z

    if-eqz p0, :cond_0

    .line 88
    invoke-virtual {v0}, Landroid/view/ViewGroup;->requestFocus()Z

    .line 89
    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/SearchView;->setIconified(Z)V

    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onPrepareOptionsItem(Landroid/view/MenuItem;)V
    .locals 0

    return-void
.end method

.method public saveInstance(Landroid/os/Bundle;)V
    .locals 2

    .line 64
    iget-object v0, p0, Lcom/android/deskclock/actionbarmenu/SearchMenuItemController;->mQuery:Ljava/lang/String;

    const-string v1, "search_query"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    iget-boolean p0, p0, Lcom/android/deskclock/actionbarmenu/SearchMenuItemController;->mSearchMode:Z

    const-string v0, "search_mode"

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public setQueryText(Ljava/lang/String;)V
    .locals 0

    .line 108
    iput-object p1, p0, Lcom/android/deskclock/actionbarmenu/SearchMenuItemController;->mQuery:Ljava/lang/String;

    return-void
.end method
