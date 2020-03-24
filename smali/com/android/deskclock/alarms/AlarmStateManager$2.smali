.class Lcom/android/deskclock/alarms/AlarmStateManager$2;
.super Ljava/lang/Object;
.source "AlarmStateManager.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/deskclock/alarms/AlarmStateManager;->fixAlarmInstances(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/android/deskclock/provider/AlarmInstance;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 819
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/deskclock/provider/AlarmInstance;Lcom/android/deskclock/provider/AlarmInstance;)I
    .locals 0

    .line 822
    invoke-virtual {p2}, Lcom/android/deskclock/provider/AlarmInstance;->getAlarmTime()Ljava/util/Calendar;

    move-result-object p0

    invoke-virtual {p1}, Lcom/android/deskclock/provider/AlarmInstance;->getAlarmTime()Ljava/util/Calendar;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/Calendar;->compareTo(Ljava/util/Calendar;)I

    move-result p0

    return p0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 819
    check-cast p1, Lcom/android/deskclock/provider/AlarmInstance;

    check-cast p2, Lcom/android/deskclock/provider/AlarmInstance;

    invoke-virtual {p0, p1, p2}, Lcom/android/deskclock/alarms/AlarmStateManager$2;->compare(Lcom/android/deskclock/provider/AlarmInstance;Lcom/android/deskclock/provider/AlarmInstance;)I

    move-result p0

    return p0
.end method
