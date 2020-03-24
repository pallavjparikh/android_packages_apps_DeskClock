.class final Lcom/android/deskclock/uidata/TabDAO;
.super Ljava/lang/Object;
.source "TabDAO.java"


# direct methods
.method static getSelectedTab(Landroid/content/SharedPreferences;)Lcom/android/deskclock/uidata/UiDataModel$Tab;
    .locals 2

    .line 37
    sget-object v0, Lcom/android/deskclock/uidata/UiDataModel$Tab;->CLOCKS:Lcom/android/deskclock/uidata/UiDataModel$Tab;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const-string v1, "selected_tab"

    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    .line 38
    invoke-static {}, Lcom/android/deskclock/uidata/UiDataModel$Tab;->values()[Lcom/android/deskclock/uidata/UiDataModel$Tab;

    move-result-object v0

    aget-object p0, v0, p0

    return-object p0
.end method

.method static setSelectedTab(Landroid/content/SharedPreferences;Lcom/android/deskclock/uidata/UiDataModel$Tab;)V
    .locals 1

    .line 45
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const-string v0, "selected_tab"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method
