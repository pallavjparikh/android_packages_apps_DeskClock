.class final Lcom/android/deskclock/data/CityModel$PreferenceListener;
.super Ljava/lang/Object;
.source "CityModel.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/deskclock/data/CityModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PreferenceListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/deskclock/data/CityModel;


# direct methods
.method private constructor <init>(Lcom/android/deskclock/data/CityModel;)V
    .locals 0

    .line 262
    iput-object p1, p0, Lcom/android/deskclock/data/CityModel$PreferenceListener;->this$0:Lcom/android/deskclock/data/CityModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/deskclock/data/CityModel;Lcom/android/deskclock/data/CityModel$1;)V
    .locals 0

    .line 262
    invoke-direct {p0, p1}, Lcom/android/deskclock/data/CityModel$PreferenceListener;-><init>(Lcom/android/deskclock/data/CityModel;)V

    return-void
.end method


# virtual methods
.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 2

    .line 265
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result p1

    const v0, -0x6a0684be

    const/4 v1, 0x1

    if-eq p1, v0, :cond_1

    const v0, -0x24c51982

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "home_time_zone"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    const-string p1, "automatic_home_clock"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    move p1, v1

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p1, -0x1

    :goto_1
    if-eqz p1, :cond_3

    if-eq p1, v1, :cond_4

    goto :goto_2

    .line 267
    :cond_3
    iget-object p1, p0, Lcom/android/deskclock/data/CityModel$PreferenceListener;->this$0:Lcom/android/deskclock/data/CityModel;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/android/deskclock/data/CityModel;->access$302(Lcom/android/deskclock/data/CityModel;Lcom/android/deskclock/data/City;)Lcom/android/deskclock/data/City;

    .line 269
    :cond_4
    iget-object p1, p0, Lcom/android/deskclock/data/CityModel$PreferenceListener;->this$0:Lcom/android/deskclock/data/CityModel;

    invoke-virtual {p1}, Lcom/android/deskclock/data/CityModel;->getAllCities()Ljava/util/List;

    move-result-object p1

    .line 270
    iget-object p0, p0, Lcom/android/deskclock/data/CityModel$PreferenceListener;->this$0:Lcom/android/deskclock/data/CityModel;

    invoke-static {p0, p1, p1}, Lcom/android/deskclock/data/CityModel;->access$700(Lcom/android/deskclock/data/CityModel;Ljava/util/List;Ljava/util/List;)V

    :goto_2
    return-void
.end method
