.class Lcom/android/deskclock/worldclock/CitySelectionActivity$1;
.super Ljava/lang/Object;
.source "CitySelectionActivity.java"

# interfaces
.implements Landroidx/appcompat/widget/SearchView$OnQueryTextListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/deskclock/worldclock/CitySelectionActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/deskclock/worldclock/CitySelectionActivity;


# direct methods
.method constructor <init>(Lcom/android/deskclock/worldclock/CitySelectionActivity;)V
    .locals 0

    .line 110
    iput-object p1, p0, Lcom/android/deskclock/worldclock/CitySelectionActivity$1;->this$0:Lcom/android/deskclock/worldclock/CitySelectionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/android/deskclock/worldclock/CitySelectionActivity$1;->this$0:Lcom/android/deskclock/worldclock/CitySelectionActivity;

    invoke-static {v0}, Lcom/android/deskclock/worldclock/CitySelectionActivity;->access$000(Lcom/android/deskclock/worldclock/CitySelectionActivity;)Lcom/android/deskclock/worldclock/CitySelectionActivity$CityAdapter;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/deskclock/worldclock/CitySelectionActivity$CityAdapter;->access$100(Lcom/android/deskclock/worldclock/CitySelectionActivity$CityAdapter;Ljava/lang/String;)V

    .line 119
    iget-object p0, p0, Lcom/android/deskclock/worldclock/CitySelectionActivity$1;->this$0:Lcom/android/deskclock/worldclock/CitySelectionActivity;

    invoke-static {p0}, Lcom/android/deskclock/worldclock/CitySelectionActivity;->access$200(Lcom/android/deskclock/worldclock/CitySelectionActivity;)V

    const/4 p0, 0x1

    return p0
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
