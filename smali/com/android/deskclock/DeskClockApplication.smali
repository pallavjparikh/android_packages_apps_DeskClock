.class public Lcom/android/deskclock/DeskClockApplication;
.super Landroid/app/Application;
.source "DeskClockApplication.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method

.method private static getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x18
    .end annotation

    .line 52
    invoke-static {}, Lcom/android/deskclock/Utils;->isNOrLater()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 55
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferencesName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 56
    invoke-virtual {p0}, Landroid/content/Context;->createDeviceProtectedStorageContext()Landroid/content/Context;

    move-result-object v1

    .line 57
    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->moveSharedPreferencesFrom(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Object;

    const-string v0, "Failed to migrate shared preferences"

    .line 58
    invoke-static {v0, p0}, Lcom/android/deskclock/LogUtils;->wtf(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    move-object p0, v1

    .line 63
    :cond_1
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public onCreate()V
    .locals 2

    .line 35
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 37
    invoke-virtual {p0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 38
    invoke-static {p0}, Lcom/android/deskclock/DeskClockApplication;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 40
    invoke-static {}, Lcom/android/deskclock/data/DataModel;->getDataModel()Lcom/android/deskclock/data/DataModel;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lcom/android/deskclock/data/DataModel;->init(Landroid/content/Context;Landroid/content/SharedPreferences;)V

    .line 41
    invoke-static {}, Lcom/android/deskclock/uidata/UiDataModel;->getUiDataModel()Lcom/android/deskclock/uidata/UiDataModel;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lcom/android/deskclock/uidata/UiDataModel;->init(Landroid/content/Context;Landroid/content/SharedPreferences;)V

    .line 42
    invoke-static {}, Lcom/android/deskclock/controller/Controller;->getController()Lcom/android/deskclock/controller/Controller;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/deskclock/controller/Controller;->setContext(Landroid/content/Context;)V

    .line 43
    invoke-static {}, Lcom/android/deskclock/controller/Controller;->getController()Lcom/android/deskclock/controller/Controller;

    move-result-object v0

    new-instance v1, Lcom/android/deskclock/events/LogEventTracker;

    invoke-direct {v1, p0}, Lcom/android/deskclock/events/LogEventTracker;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/android/deskclock/controller/Controller;->addEventTracker(Lcom/android/deskclock/events/EventTracker;)V

    return-void
.end method
