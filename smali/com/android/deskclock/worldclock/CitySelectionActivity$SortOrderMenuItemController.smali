.class final Lcom/android/deskclock/worldclock/CitySelectionActivity$SortOrderMenuItemController;
.super Ljava/lang/Object;
.source "CitySelectionActivity.java"

# interfaces
.implements Lcom/android/deskclock/actionbarmenu/MenuItemController;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/deskclock/worldclock/CitySelectionActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SortOrderMenuItemController"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/deskclock/worldclock/CitySelectionActivity;


# direct methods
.method private constructor <init>(Lcom/android/deskclock/worldclock/CitySelectionActivity;)V
    .locals 0

    .line 616
    iput-object p1, p0, Lcom/android/deskclock/worldclock/CitySelectionActivity$SortOrderMenuItemController;->this$0:Lcom/android/deskclock/worldclock/CitySelectionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/deskclock/worldclock/CitySelectionActivity;Lcom/android/deskclock/worldclock/CitySelectionActivity$1;)V
    .locals 0

    .line 616
    invoke-direct {p0, p1}, Lcom/android/deskclock/worldclock/CitySelectionActivity$SortOrderMenuItemController;-><init>(Lcom/android/deskclock/worldclock/CitySelectionActivity;)V

    return-void
.end method


# virtual methods
.method public getId()I
    .locals 0

    const p0, 0x7f0a00cd

    return p0
.end method

.method public onCreateOptionsItem(Landroid/view/Menu;)V
    .locals 2

    const/4 p0, 0x0

    const v0, 0x7f0a00cd

    const v1, 0x7f1101f5

    .line 627
    invoke-interface {p1, p0, v0, p0, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object p1

    .line 628
    invoke-interface {p1, p0}, Landroid/view/MenuItem;->setShowAsAction(I)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 0

    .line 640
    invoke-static {}, Lcom/android/deskclock/data/DataModel;->getDataModel()Lcom/android/deskclock/data/DataModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/deskclock/data/DataModel;->toggleCitySort()V

    .line 643
    iget-object p1, p0, Lcom/android/deskclock/worldclock/CitySelectionActivity$SortOrderMenuItemController;->this$0:Lcom/android/deskclock/worldclock/CitySelectionActivity;

    invoke-static {p1}, Lcom/android/deskclock/worldclock/CitySelectionActivity;->access$000(Lcom/android/deskclock/worldclock/CitySelectionActivity;)Lcom/android/deskclock/worldclock/CitySelectionActivity$CityAdapter;

    move-result-object p1

    invoke-static {p1}, Lcom/android/deskclock/worldclock/CitySelectionActivity$CityAdapter;->access$1100(Lcom/android/deskclock/worldclock/CitySelectionActivity$CityAdapter;)V

    .line 646
    iget-object p1, p0, Lcom/android/deskclock/worldclock/CitySelectionActivity$SortOrderMenuItemController;->this$0:Lcom/android/deskclock/worldclock/CitySelectionActivity;

    invoke-static {p1}, Lcom/android/deskclock/worldclock/CitySelectionActivity;->access$000(Lcom/android/deskclock/worldclock/CitySelectionActivity;)Lcom/android/deskclock/worldclock/CitySelectionActivity$CityAdapter;

    move-result-object p1

    iget-object p0, p0, Lcom/android/deskclock/worldclock/CitySelectionActivity$SortOrderMenuItemController;->this$0:Lcom/android/deskclock/worldclock/CitySelectionActivity;

    invoke-static {p0}, Lcom/android/deskclock/worldclock/CitySelectionActivity;->access$1200(Lcom/android/deskclock/worldclock/CitySelectionActivity;)Lcom/android/deskclock/actionbarmenu/SearchMenuItemController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/deskclock/actionbarmenu/SearchMenuItemController;->getQueryText()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/deskclock/worldclock/CitySelectionActivity$CityAdapter;->access$100(Lcom/android/deskclock/worldclock/CitySelectionActivity$CityAdapter;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method

.method public onPrepareOptionsItem(Landroid/view/MenuItem;)V
    .locals 1

    .line 633
    invoke-static {}, Lcom/android/deskclock/data/DataModel;->getDataModel()Lcom/android/deskclock/data/DataModel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/deskclock/data/DataModel;->getCitySort()Lcom/android/deskclock/data/DataModel$CitySort;

    move-result-object p0

    sget-object v0, Lcom/android/deskclock/data/DataModel$CitySort;->NAME:Lcom/android/deskclock/data/DataModel$CitySort;

    if-ne p0, v0, :cond_0

    const p0, 0x7f1101f5

    goto :goto_0

    :cond_0
    const p0, 0x7f1101f6

    :goto_0
    invoke-interface {p1, p0}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    return-void
.end method
