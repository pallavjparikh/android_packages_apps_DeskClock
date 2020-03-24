.class final Lcom/android/deskclock/data/CityModel$LocaleChangedReceiver;
.super Landroid/content/BroadcastReceiver;
.source "CityModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/deskclock/data/CityModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "LocaleChangedReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/deskclock/data/CityModel;


# direct methods
.method private constructor <init>(Lcom/android/deskclock/data/CityModel;)V
    .locals 0

    .line 247
    iput-object p1, p0, Lcom/android/deskclock/data/CityModel$LocaleChangedReceiver;->this$0:Lcom/android/deskclock/data/CityModel;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/deskclock/data/CityModel;Lcom/android/deskclock/data/CityModel$1;)V
    .locals 0

    .line 247
    invoke-direct {p0, p1}, Lcom/android/deskclock/data/CityModel$LocaleChangedReceiver;-><init>(Lcom/android/deskclock/data/CityModel;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 250
    iget-object p1, p0, Lcom/android/deskclock/data/CityModel$LocaleChangedReceiver;->this$0:Lcom/android/deskclock/data/CityModel;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/android/deskclock/data/CityModel;->access$202(Lcom/android/deskclock/data/CityModel;Ljava/util/Map;)Ljava/util/Map;

    .line 251
    iget-object p1, p0, Lcom/android/deskclock/data/CityModel$LocaleChangedReceiver;->this$0:Lcom/android/deskclock/data/CityModel;

    invoke-static {p1, p2}, Lcom/android/deskclock/data/CityModel;->access$302(Lcom/android/deskclock/data/CityModel;Lcom/android/deskclock/data/City;)Lcom/android/deskclock/data/City;

    .line 252
    iget-object p1, p0, Lcom/android/deskclock/data/CityModel$LocaleChangedReceiver;->this$0:Lcom/android/deskclock/data/CityModel;

    invoke-static {p1, p2}, Lcom/android/deskclock/data/CityModel;->access$402(Lcom/android/deskclock/data/CityModel;Ljava/util/List;)Ljava/util/List;

    .line 253
    iget-object p1, p0, Lcom/android/deskclock/data/CityModel$LocaleChangedReceiver;->this$0:Lcom/android/deskclock/data/CityModel;

    invoke-static {p1, p2}, Lcom/android/deskclock/data/CityModel;->access$502(Lcom/android/deskclock/data/CityModel;Ljava/util/List;)Ljava/util/List;

    .line 254
    iget-object p0, p0, Lcom/android/deskclock/data/CityModel$LocaleChangedReceiver;->this$0:Lcom/android/deskclock/data/CityModel;

    invoke-static {p0, p2}, Lcom/android/deskclock/data/CityModel;->access$602(Lcom/android/deskclock/data/CityModel;Ljava/util/List;)Ljava/util/List;

    return-void
.end method
