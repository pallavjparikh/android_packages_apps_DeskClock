.class final Lcom/android/deskclock/data/TimerModel$PreferenceListener;
.super Ljava/lang/Object;
.source "TimerModel.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/deskclock/data/TimerModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PreferenceListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/deskclock/data/TimerModel;


# direct methods
.method private constructor <init>(Lcom/android/deskclock/data/TimerModel;)V
    .locals 0

    .line 825
    iput-object p1, p0, Lcom/android/deskclock/data/TimerModel$PreferenceListener;->this$0:Lcom/android/deskclock/data/TimerModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/deskclock/data/TimerModel;Lcom/android/deskclock/data/TimerModel$1;)V
    .locals 0

    .line 825
    invoke-direct {p0, p1}, Lcom/android/deskclock/data/TimerModel$PreferenceListener;-><init>(Lcom/android/deskclock/data/TimerModel;)V

    return-void
.end method


# virtual methods
.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 1

    .line 828
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result p1

    const v0, -0x4a803ca4

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "timer_ringtone"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, -0x1

    :goto_1
    if-eqz p1, :cond_2

    goto :goto_2

    .line 830
    :cond_2
    iget-object p1, p0, Lcom/android/deskclock/data/TimerModel$PreferenceListener;->this$0:Lcom/android/deskclock/data/TimerModel;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/android/deskclock/data/TimerModel;->access$402(Lcom/android/deskclock/data/TimerModel;Landroid/net/Uri;)Landroid/net/Uri;

    .line 831
    iget-object p0, p0, Lcom/android/deskclock/data/TimerModel$PreferenceListener;->this$0:Lcom/android/deskclock/data/TimerModel;

    invoke-static {p0, p2}, Lcom/android/deskclock/data/TimerModel;->access$202(Lcom/android/deskclock/data/TimerModel;Ljava/lang/String;)Ljava/lang/String;

    :goto_2
    return-void
.end method
