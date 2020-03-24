.class final Lcom/android/alarmclock/DigitalAppWidgetCityViewsFactory$RefreshRunnable;
.super Ljava/lang/Object;
.source "DigitalAppWidgetCityViewsFactory.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/alarmclock/DigitalAppWidgetCityViewsFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "RefreshRunnable"
.end annotation


# instance fields
.field private mCities:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/deskclock/data/City;",
            ">;"
        }
    .end annotation
.end field

.field private mHomeCity:Lcom/android/deskclock/data/City;

.field private mShowHomeClock:Z


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 218
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/alarmclock/DigitalAppWidgetCityViewsFactory$1;)V
    .locals 0

    .line 218
    invoke-direct {p0}, Lcom/android/alarmclock/DigitalAppWidgetCityViewsFactory$RefreshRunnable;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/alarmclock/DigitalAppWidgetCityViewsFactory$RefreshRunnable;)Lcom/android/deskclock/data/City;
    .locals 0

    .line 218
    iget-object p0, p0, Lcom/android/alarmclock/DigitalAppWidgetCityViewsFactory$RefreshRunnable;->mHomeCity:Lcom/android/deskclock/data/City;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/alarmclock/DigitalAppWidgetCityViewsFactory$RefreshRunnable;)Ljava/util/List;
    .locals 0

    .line 218
    iget-object p0, p0, Lcom/android/alarmclock/DigitalAppWidgetCityViewsFactory$RefreshRunnable;->mCities:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/alarmclock/DigitalAppWidgetCityViewsFactory$RefreshRunnable;)Z
    .locals 0

    .line 218
    iget-boolean p0, p0, Lcom/android/alarmclock/DigitalAppWidgetCityViewsFactory$RefreshRunnable;->mShowHomeClock:Z

    return p0
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 226
    invoke-static {}, Lcom/android/deskclock/data/DataModel;->getDataModel()Lcom/android/deskclock/data/DataModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/deskclock/data/DataModel;->getHomeCity()Lcom/android/deskclock/data/City;

    move-result-object v0

    iput-object v0, p0, Lcom/android/alarmclock/DigitalAppWidgetCityViewsFactory$RefreshRunnable;->mHomeCity:Lcom/android/deskclock/data/City;

    .line 227
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {}, Lcom/android/deskclock/data/DataModel;->getDataModel()Lcom/android/deskclock/data/DataModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/deskclock/data/DataModel;->getSelectedCities()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/alarmclock/DigitalAppWidgetCityViewsFactory$RefreshRunnable;->mCities:Ljava/util/List;

    .line 228
    invoke-static {}, Lcom/android/deskclock/data/DataModel;->getDataModel()Lcom/android/deskclock/data/DataModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/deskclock/data/DataModel;->getShowHomeClock()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/alarmclock/DigitalAppWidgetCityViewsFactory$RefreshRunnable;->mShowHomeClock:Z

    return-void
.end method
