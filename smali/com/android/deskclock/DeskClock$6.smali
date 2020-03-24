.class Lcom/android/deskclock/DeskClock$6;
.super Ljava/lang/Object;
.source "DeskClock.java"

# interfaces
.implements Lcom/google/android/material/tabs/TabLayout$OnTabSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/deskclock/DeskClock;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/deskclock/DeskClock;


# direct methods
.method constructor <init>(Lcom/android/deskclock/DeskClock;)V
    .locals 0

    .line 301
    iput-object p1, p0, Lcom/android/deskclock/DeskClock$6;->this$0:Lcom/android/deskclock/DeskClock;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTabReselected(Lcom/google/android/material/tabs/TabLayout$Tab;)V
    .locals 0

    return-void
.end method

.method public onTabSelected(Lcom/google/android/material/tabs/TabLayout$Tab;)V
    .locals 0

    .line 304
    invoke-static {}, Lcom/android/deskclock/uidata/UiDataModel;->getUiDataModel()Lcom/android/deskclock/uidata/UiDataModel;

    move-result-object p0

    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout$Tab;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/deskclock/uidata/UiDataModel$Tab;

    invoke-virtual {p0, p1}, Lcom/android/deskclock/uidata/UiDataModel;->setSelectedTab(Lcom/android/deskclock/uidata/UiDataModel$Tab;)V

    return-void
.end method

.method public onTabUnselected(Lcom/google/android/material/tabs/TabLayout$Tab;)V
    .locals 0

    return-void
.end method
