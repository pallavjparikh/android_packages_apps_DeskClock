.class final Lcom/android/deskclock/data/CityModel;
.super Ljava/lang/Object;
.source "CityModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/deskclock/data/CityModel$PreferenceListener;,
        Lcom/android/deskclock/data/CityModel$LocaleChangedReceiver;
    }
.end annotation


# instance fields
.field private mAllCities:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/deskclock/data/City;",
            ">;"
        }
    .end annotation
.end field

.field private final mCityListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/deskclock/data/CityListener;",
            ">;"
        }
    .end annotation
.end field

.field private mCityMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/deskclock/data/City;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mHomeCity:Lcom/android/deskclock/data/City;

.field private final mLocaleChangedReceiver:Landroid/content/BroadcastReceiver;

.field private final mPreferenceListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

.field private final mPrefs:Landroid/content/SharedPreferences;

.field private mSelectedCities:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/deskclock/data/City;",
            ">;"
        }
    .end annotation
.end field

.field private final mSettingsModel:Lcom/android/deskclock/data/SettingsModel;

.field private mUnselectedCities:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/deskclock/data/City;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/content/SharedPreferences;Lcom/android/deskclock/data/SettingsModel;)V
    .locals 2

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Lcom/android/deskclock/data/CityModel$PreferenceListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/deskclock/data/CityModel$PreferenceListener;-><init>(Lcom/android/deskclock/data/CityModel;Lcom/android/deskclock/data/CityModel$1;)V

    iput-object v0, p0, Lcom/android/deskclock/data/CityModel;->mPreferenceListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 60
    new-instance v0, Lcom/android/deskclock/data/CityModel$LocaleChangedReceiver;

    invoke-direct {v0, p0, v1}, Lcom/android/deskclock/data/CityModel$LocaleChangedReceiver;-><init>(Lcom/android/deskclock/data/CityModel;Lcom/android/deskclock/data/CityModel$1;)V

    iput-object v0, p0, Lcom/android/deskclock/data/CityModel;->mLocaleChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/deskclock/data/CityModel;->mCityListeners:Ljava/util/List;

    .line 82
    iput-object p1, p0, Lcom/android/deskclock/data/CityModel;->mContext:Landroid/content/Context;

    .line 83
    iput-object p2, p0, Lcom/android/deskclock/data/CityModel;->mPrefs:Landroid/content/SharedPreferences;

    .line 84
    iput-object p3, p0, Lcom/android/deskclock/data/CityModel;->mSettingsModel:Lcom/android/deskclock/data/SettingsModel;

    .line 87
    new-instance p1, Landroid/content/IntentFilter;

    const-string p3, "android.intent.action.LOCALE_CHANGED"

    invoke-direct {p1, p3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 88
    iget-object p3, p0, Lcom/android/deskclock/data/CityModel;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/deskclock/data/CityModel;->mLocaleChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p3, v0, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 91
    iget-object p0, p0, Lcom/android/deskclock/data/CityModel;->mPreferenceListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {p2, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    return-void
.end method

.method static synthetic access$202(Lcom/android/deskclock/data/CityModel;Ljava/util/Map;)Ljava/util/Map;
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/android/deskclock/data/CityModel;->mCityMap:Ljava/util/Map;

    return-object p1
.end method

.method static synthetic access$302(Lcom/android/deskclock/data/CityModel;Lcom/android/deskclock/data/City;)Lcom/android/deskclock/data/City;
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/android/deskclock/data/CityModel;->mHomeCity:Lcom/android/deskclock/data/City;

    return-object p1
.end method

.method static synthetic access$402(Lcom/android/deskclock/data/CityModel;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/android/deskclock/data/CityModel;->mAllCities:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$502(Lcom/android/deskclock/data/CityModel;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/android/deskclock/data/CityModel;->mSelectedCities:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$602(Lcom/android/deskclock/data/CityModel;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/android/deskclock/data/CityModel;->mUnselectedCities:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/deskclock/data/CityModel;Ljava/util/List;Ljava/util/List;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1, p2}, Lcom/android/deskclock/data/CityModel;->fireCitiesChanged(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method private fireCitiesChanged(Ljava/util/List;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/deskclock/data/City;",
            ">;",
            "Ljava/util/List<",
            "Lcom/android/deskclock/data/City;",
            ">;)V"
        }
    .end annotation

    .line 238
    iget-object v0, p0, Lcom/android/deskclock/data/CityModel;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.deskclock.WORLD_CITIES_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 239
    iget-object p0, p0, Lcom/android/deskclock/data/CityModel;->mCityListeners:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/deskclock/data/CityListener;

    .line 240
    invoke-interface {v0, p1, p2}, Lcom/android/deskclock/data/CityListener;->citiesChanged(Ljava/util/List;Ljava/util/List;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private getCityMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/deskclock/data/City;",
            ">;"
        }
    .end annotation

    .line 221
    iget-object v0, p0, Lcom/android/deskclock/data/CityModel;->mCityMap:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 222
    iget-object v0, p0, Lcom/android/deskclock/data/CityModel;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/deskclock/data/CityDAO;->getCities(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/android/deskclock/data/CityModel;->mCityMap:Ljava/util/Map;

    .line 225
    :cond_0
    iget-object p0, p0, Lcom/android/deskclock/data/CityModel;->mCityMap:Ljava/util/Map;

    return-object p0
.end method

.method private getCitySortComparator()Ljava/util/Comparator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "Lcom/android/deskclock/data/City;",
            ">;"
        }
    .end annotation

    .line 229
    iget-object p0, p0, Lcom/android/deskclock/data/CityModel;->mSettingsModel:Lcom/android/deskclock/data/SettingsModel;

    invoke-virtual {p0}, Lcom/android/deskclock/data/SettingsModel;->getCitySort()Lcom/android/deskclock/data/DataModel$CitySort;

    move-result-object p0

    .line 230
    sget-object v0, Lcom/android/deskclock/data/CityModel$1;->$SwitchMap$com$android$deskclock$data$DataModel$CitySort:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 232
    new-instance p0, Lcom/android/deskclock/data/City$UtcOffsetComparator;

    invoke-direct {p0}, Lcom/android/deskclock/data/City$UtcOffsetComparator;-><init>()V

    return-object p0

    .line 234
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unexpected city sort: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 231
    :cond_1
    new-instance p0, Lcom/android/deskclock/data/City$NameComparator;

    invoke-direct {p0}, Lcom/android/deskclock/data/City$NameComparator;-><init>()V

    return-object p0
.end method


# virtual methods
.method addCityListener(Lcom/android/deskclock/data/CityListener;)V
    .locals 0

    .line 95
    iget-object p0, p0, Lcom/android/deskclock/data/CityModel;->mCityListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method getAllCities()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/deskclock/data/City;",
            ">;"
        }
    .end annotation

    .line 106
    iget-object v0, p0, Lcom/android/deskclock/data/CityModel;->mAllCities:Ljava/util/List;

    if-nez v0, :cond_0

    .line 108
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/android/deskclock/data/CityModel;->getSelectedCities()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 111
    new-instance v1, Lcom/android/deskclock/data/City$NameComparator;

    invoke-direct {v1}, Lcom/android/deskclock/data/City$NameComparator;-><init>()V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 114
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {p0}, Lcom/android/deskclock/data/CityModel;->getCityMap()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 115
    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 116
    invoke-virtual {p0}, Lcom/android/deskclock/data/CityModel;->getUnselectedCities()Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 117
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/deskclock/data/CityModel;->mAllCities:Ljava/util/List;

    .line 120
    :cond_0
    iget-object p0, p0, Lcom/android/deskclock/data/CityModel;->mAllCities:Ljava/util/List;

    return-object p0
.end method

.method getCityIndexComparator()Ljava/util/Comparator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "Lcom/android/deskclock/data/City;",
            ">;"
        }
    .end annotation

    .line 194
    iget-object p0, p0, Lcom/android/deskclock/data/CityModel;->mSettingsModel:Lcom/android/deskclock/data/SettingsModel;

    invoke-virtual {p0}, Lcom/android/deskclock/data/SettingsModel;->getCitySort()Lcom/android/deskclock/data/DataModel$CitySort;

    move-result-object p0

    .line 195
    sget-object v0, Lcom/android/deskclock/data/CityModel$1;->$SwitchMap$com$android$deskclock$data$DataModel$CitySort:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 197
    new-instance p0, Lcom/android/deskclock/data/City$UtcOffsetIndexComparator;

    invoke-direct {p0}, Lcom/android/deskclock/data/City$UtcOffsetIndexComparator;-><init>()V

    return-object p0

    .line 199
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unexpected city sort: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 196
    :cond_1
    new-instance p0, Lcom/android/deskclock/data/City$NameIndexComparator;

    invoke-direct {p0}, Lcom/android/deskclock/data/City$NameIndexComparator;-><init>()V

    return-object p0
.end method

.method getCitySort()Lcom/android/deskclock/data/DataModel$CitySort;
    .locals 0

    .line 206
    iget-object p0, p0, Lcom/android/deskclock/data/CityModel;->mSettingsModel:Lcom/android/deskclock/data/SettingsModel;

    invoke-virtual {p0}, Lcom/android/deskclock/data/SettingsModel;->getCitySort()Lcom/android/deskclock/data/DataModel$CitySort;

    move-result-object p0

    return-object p0
.end method

.method getHomeCity()Lcom/android/deskclock/data/City;
    .locals 9

    .line 127
    iget-object v0, p0, Lcom/android/deskclock/data/CityModel;->mHomeCity:Lcom/android/deskclock/data/City;

    if-nez v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/android/deskclock/data/CityModel;->mContext:Landroid/content/Context;

    const v1, 0x7f1101db

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 129
    iget-object v0, p0, Lcom/android/deskclock/data/CityModel;->mSettingsModel:Lcom/android/deskclock/data/SettingsModel;

    invoke-virtual {v0}, Lcom/android/deskclock/data/SettingsModel;->getHomeTimeZone()Ljava/util/TimeZone;

    move-result-object v8

    .line 130
    new-instance v0, Lcom/android/deskclock/data/City;

    const/4 v3, 0x0

    const/4 v4, -0x1

    const/4 v5, 0x0

    move-object v2, v0

    move-object v6, v7

    invoke-direct/range {v2 .. v8}, Lcom/android/deskclock/data/City;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/TimeZone;)V

    iput-object v0, p0, Lcom/android/deskclock/data/CityModel;->mHomeCity:Lcom/android/deskclock/data/City;

    .line 133
    :cond_0
    iget-object p0, p0, Lcom/android/deskclock/data/CityModel;->mHomeCity:Lcom/android/deskclock/data/City;

    return-object p0
.end method

.method getSelectedCities()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/deskclock/data/City;",
            ">;"
        }
    .end annotation

    .line 165
    iget-object v0, p0, Lcom/android/deskclock/data/CityModel;->mSelectedCities:Ljava/util/List;

    if-nez v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/android/deskclock/data/CityModel;->mPrefs:Landroid/content/SharedPreferences;

    invoke-direct {p0}, Lcom/android/deskclock/data/CityModel;->getCityMap()Ljava/util/Map;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/deskclock/data/CityDAO;->getSelectedCities(Landroid/content/SharedPreferences;Ljava/util/Map;)Ljava/util/List;

    move-result-object v0

    .line 167
    new-instance v1, Lcom/android/deskclock/data/City$UtcOffsetComparator;

    invoke-direct {v1}, Lcom/android/deskclock/data/City$UtcOffsetComparator;-><init>()V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 168
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/deskclock/data/CityModel;->mSelectedCities:Ljava/util/List;

    .line 171
    :cond_0
    iget-object p0, p0, Lcom/android/deskclock/data/CityModel;->mSelectedCities:Ljava/util/List;

    return-object p0
.end method

.method getUnselectedCities()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/deskclock/data/City;",
            ">;"
        }
    .end annotation

    .line 140
    iget-object v0, p0, Lcom/android/deskclock/data/CityModel;->mUnselectedCities:Ljava/util/List;

    if-nez v0, :cond_2

    .line 142
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/android/deskclock/data/CityModel;->getSelectedCities()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 143
    invoke-static {v0}, Lcom/android/deskclock/Utils;->newArraySet(Ljava/util/Collection;)Landroid/util/ArraySet;

    move-result-object v0

    .line 145
    invoke-direct {p0}, Lcom/android/deskclock/data/CityModel;->getCityMap()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    .line 146
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v3

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 147
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/deskclock/data/City;

    .line 148
    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 149
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 154
    :cond_1
    invoke-direct {p0}, Lcom/android/deskclock/data/CityModel;->getCitySortComparator()Ljava/util/Comparator;

    move-result-object v0

    invoke-static {v2, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 155
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/deskclock/data/CityModel;->mUnselectedCities:Ljava/util/List;

    .line 158
    :cond_2
    iget-object p0, p0, Lcom/android/deskclock/data/CityModel;->mUnselectedCities:Ljava/util/List;

    return-object p0
.end method

.method removeCityListener(Lcom/android/deskclock/data/CityListener;)V
    .locals 0

    .line 99
    iget-object p0, p0, Lcom/android/deskclock/data/CityModel;->mCityListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method setSelectedCities(Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/android/deskclock/data/City;",
            ">;)V"
        }
    .end annotation

    .line 178
    invoke-virtual {p0}, Lcom/android/deskclock/data/CityModel;->getAllCities()Ljava/util/List;

    move-result-object v0

    .line 179
    iget-object v1, p0, Lcom/android/deskclock/data/CityModel;->mPrefs:Landroid/content/SharedPreferences;

    invoke-static {v1, p1}, Lcom/android/deskclock/data/CityDAO;->setSelectedCities(Landroid/content/SharedPreferences;Ljava/util/Collection;)V

    const/4 p1, 0x0

    .line 182
    iput-object p1, p0, Lcom/android/deskclock/data/CityModel;->mAllCities:Ljava/util/List;

    .line 183
    iput-object p1, p0, Lcom/android/deskclock/data/CityModel;->mSelectedCities:Ljava/util/List;

    .line 184
    iput-object p1, p0, Lcom/android/deskclock/data/CityModel;->mUnselectedCities:Ljava/util/List;

    .line 187
    invoke-virtual {p0}, Lcom/android/deskclock/data/CityModel;->getAllCities()Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/android/deskclock/data/CityModel;->fireCitiesChanged(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method toggleCitySort()V
    .locals 1

    .line 213
    iget-object v0, p0, Lcom/android/deskclock/data/CityModel;->mSettingsModel:Lcom/android/deskclock/data/SettingsModel;

    invoke-virtual {v0}, Lcom/android/deskclock/data/SettingsModel;->toggleCitySort()V

    const/4 v0, 0x0

    .line 216
    iput-object v0, p0, Lcom/android/deskclock/data/CityModel;->mAllCities:Ljava/util/List;

    .line 217
    iput-object v0, p0, Lcom/android/deskclock/data/CityModel;->mUnselectedCities:Ljava/util/List;

    return-void
.end method
