.class final Lcom/android/deskclock/actionbarmenu/SearchMenuItemController$SearchModeChangeListener;
.super Ljava/lang/Object;
.source "SearchMenuItemController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroidx/appcompat/widget/SearchView$OnCloseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/deskclock/actionbarmenu/SearchMenuItemController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SearchModeChangeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/deskclock/actionbarmenu/SearchMenuItemController;


# direct methods
.method private constructor <init>(Lcom/android/deskclock/actionbarmenu/SearchMenuItemController;)V
    .locals 0

    .line 114
    iput-object p1, p0, Lcom/android/deskclock/actionbarmenu/SearchMenuItemController$SearchModeChangeListener;->this$0:Lcom/android/deskclock/actionbarmenu/SearchMenuItemController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/deskclock/actionbarmenu/SearchMenuItemController;Lcom/android/deskclock/actionbarmenu/SearchMenuItemController$1;)V
    .locals 0

    .line 114
    invoke-direct {p0, p1}, Lcom/android/deskclock/actionbarmenu/SearchMenuItemController$SearchModeChangeListener;-><init>(Lcom/android/deskclock/actionbarmenu/SearchMenuItemController;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 118
    iget-object p0, p0, Lcom/android/deskclock/actionbarmenu/SearchMenuItemController$SearchModeChangeListener;->this$0:Lcom/android/deskclock/actionbarmenu/SearchMenuItemController;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/android/deskclock/actionbarmenu/SearchMenuItemController;->access$102(Lcom/android/deskclock/actionbarmenu/SearchMenuItemController;Z)Z

    return-void
.end method

.method public onClose()Z
    .locals 1

    .line 123
    iget-object p0, p0, Lcom/android/deskclock/actionbarmenu/SearchMenuItemController$SearchModeChangeListener;->this$0:Lcom/android/deskclock/actionbarmenu/SearchMenuItemController;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/deskclock/actionbarmenu/SearchMenuItemController;->access$102(Lcom/android/deskclock/actionbarmenu/SearchMenuItemController;Z)Z

    return v0
.end method
