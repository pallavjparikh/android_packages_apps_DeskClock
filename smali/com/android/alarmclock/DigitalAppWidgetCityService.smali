.class public Lcom/android/alarmclock/DigitalAppWidgetCityService;
.super Landroid/widget/RemoteViewsService;
.source "DigitalAppWidgetCityService.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Landroid/widget/RemoteViewsService;-><init>()V

    return-void
.end method


# virtual methods
.method public onGetViewFactory(Landroid/content/Intent;)Landroid/widget/RemoteViewsService$RemoteViewsFactory;
    .locals 1

    .line 26
    new-instance v0, Lcom/android/alarmclock/DigitalAppWidgetCityViewsFactory;

    invoke-virtual {p0}, Landroid/widget/RemoteViewsService;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Lcom/android/alarmclock/DigitalAppWidgetCityViewsFactory;-><init>(Landroid/content/Context;Landroid/content/Intent;)V

    return-object v0
.end method
