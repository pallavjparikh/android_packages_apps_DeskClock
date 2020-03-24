.class public Lcom/android/deskclock/widget/selector/AlarmSelectionAdapter;
.super Landroid/widget/ArrayAdapter;
.source "AlarmSelectionAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Lcom/android/deskclock/widget/selector/AlarmSelection;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List<",
            "Lcom/android/deskclock/widget/selector/AlarmSelection;",
            ">;)V"
        }
    .end annotation

    .line 39
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .line 45
    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez p2, :cond_0

    .line 48
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v1, 0x7f0d001e

    const/4 v2, 0x0

    .line 49
    invoke-virtual {p2, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 52
    :cond_0
    invoke-virtual {p0, p1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/deskclock/widget/selector/AlarmSelection;

    .line 53
    invoke-virtual {p0}, Lcom/android/deskclock/widget/selector/AlarmSelection;->getAlarm()Lcom/android/deskclock/provider/Alarm;

    move-result-object p0

    const p1, 0x7f0a0089

    .line 55
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/deskclock/widget/TextTime;

    .line 56
    iget p3, p0, Lcom/android/deskclock/provider/Alarm;->hour:I

    iget v1, p0, Lcom/android/deskclock/provider/Alarm;->minutes:I

    invoke-virtual {p1, p3, v1}, Lcom/android/deskclock/widget/TextTime;->setTime(II)V

    const p1, 0x7f0a00b7

    .line 58
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 59
    iget-object p3, p0, Lcom/android/deskclock/provider/Alarm;->label:Ljava/lang/String;

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    iget-object p1, p0, Lcom/android/deskclock/provider/Alarm;->daysOfWeek:Lcom/android/deskclock/data/Weekdays;

    invoke-virtual {p1}, Lcom/android/deskclock/data/Weekdays;->isRepeating()Z

    move-result p1

    if-nez p1, :cond_2

    .line 64
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/deskclock/provider/Alarm;->isTomorrow(Lcom/android/deskclock/provider/Alarm;Ljava/util/Calendar;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 65
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f11019c

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 66
    :cond_1
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f11019b

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 68
    :cond_2
    invoke-static {}, Lcom/android/deskclock/data/DataModel;->getDataModel()Lcom/android/deskclock/data/DataModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/deskclock/data/DataModel;->getWeekdayOrder()Lcom/android/deskclock/data/Weekdays$Order;

    move-result-object p1

    .line 69
    iget-object p0, p0, Lcom/android/deskclock/provider/Alarm;->daysOfWeek:Lcom/android/deskclock/data/Weekdays;

    invoke-virtual {p0, v0, p1}, Lcom/android/deskclock/data/Weekdays;->toString(Landroid/content/Context;Lcom/android/deskclock/data/Weekdays$Order;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    const p1, 0x7f0a007d

    .line 72
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 73
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p2
.end method
