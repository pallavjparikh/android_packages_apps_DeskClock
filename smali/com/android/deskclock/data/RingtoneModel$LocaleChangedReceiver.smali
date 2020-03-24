.class final Lcom/android/deskclock/data/RingtoneModel$LocaleChangedReceiver;
.super Landroid/content/BroadcastReceiver;
.source "RingtoneModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/deskclock/data/RingtoneModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "LocaleChangedReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/deskclock/data/RingtoneModel;


# direct methods
.method private constructor <init>(Lcom/android/deskclock/data/RingtoneModel;)V
    .locals 0

    .line 224
    iput-object p1, p0, Lcom/android/deskclock/data/RingtoneModel$LocaleChangedReceiver;->this$0:Lcom/android/deskclock/data/RingtoneModel;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/deskclock/data/RingtoneModel;Lcom/android/deskclock/data/RingtoneModel$1;)V
    .locals 0

    .line 224
    invoke-direct {p0, p1}, Lcom/android/deskclock/data/RingtoneModel$LocaleChangedReceiver;-><init>(Lcom/android/deskclock/data/RingtoneModel;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 228
    iget-object p0, p0, Lcom/android/deskclock/data/RingtoneModel$LocaleChangedReceiver;->this$0:Lcom/android/deskclock/data/RingtoneModel;

    invoke-static {p0}, Lcom/android/deskclock/data/RingtoneModel;->access$200(Lcom/android/deskclock/data/RingtoneModel;)Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->clear()V

    return-void
.end method
