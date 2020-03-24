.class public Lcom/android/alarmclock/AnalogAppWidgetProvider;
.super Landroid/appwidget/AppWidgetProvider;
.source "AnalogAppWidgetProvider.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Landroid/appwidget/AppWidgetProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 39
    invoke-super {p0, p1, p2}, Landroid/appwidget/AppWidgetProvider;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 41
    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    .line 47
    :cond_0
    new-instance p2, Landroid/content/ComponentName;

    const-class v0, Lcom/android/alarmclock/AnalogAppWidgetProvider;

    invoke-direct {p2, p1, v0}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 48
    invoke-virtual {p0, p2}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object p0

    array-length p0, p0

    .line 50
    invoke-static {}, Lcom/android/deskclock/data/DataModel;->getDataModel()Lcom/android/deskclock/data/DataModel;

    move-result-object p1

    .line 51
    const-class p2, Lcom/android/alarmclock/AnalogAppWidgetProvider;

    const v0, 0x7f1101af

    invoke-virtual {p1, p2, p0, v0}, Lcom/android/deskclock/data/DataModel;->updateWidgetCount(Ljava/lang/Class;II)V

    return-void
.end method

.method public onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .locals 6

    .line 59
    invoke-super {p0, p1, p2, p3}, Landroid/appwidget/AppWidgetProvider;->onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V

    .line 61
    array-length p0, p3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p0, :cond_1

    aget v2, p3, v1

    .line 62
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 63
    new-instance v4, Landroid/widget/RemoteViews;

    const v5, 0x7f0d0023

    invoke-direct {v4, v3, v5}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 66
    invoke-static {p2, v2}, Lcom/android/deskclock/Utils;->isWidgetClickable(Landroid/appwidget/AppWidgetManager;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 67
    new-instance v3, Landroid/content/Intent;

    const-class v5, Lcom/android/deskclock/DeskClock;

    invoke-direct {v3, p1, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 68
    invoke-static {p1, v0, v3, v0}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    const v5, 0x7f0a0049

    .line 69
    invoke-virtual {v4, v5, v3}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 72
    :cond_0
    invoke-virtual {p2, v2, v4}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
