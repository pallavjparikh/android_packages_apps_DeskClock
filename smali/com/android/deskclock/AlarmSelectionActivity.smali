.class public Lcom/android/deskclock/AlarmSelectionActivity;
.super Landroid/app/ListActivity;
.source "AlarmSelectionActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/deskclock/AlarmSelectionActivity$ProcessAlarmActionAsync;
    }
.end annotation


# instance fields
.field private mAction:I

.field private final mSelections:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/deskclock/widget/selector/AlarmSelection;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/deskclock/AlarmSelectionActivity;->mSelections:Ljava/util/List;

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8

    .line 61
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d007a

    .line 62
    invoke-virtual {p0, p1}, Landroid/app/ListActivity;->setContentView(I)V

    const p1, 0x7f0a0053

    .line 64
    invoke-virtual {p0, p1}, Landroid/app/ListActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    .line 65
    new-instance v0, Lcom/android/deskclock/AlarmSelectionActivity$1;

    invoke-direct {v0, p0}, Lcom/android/deskclock/AlarmSelectionActivity$1;-><init>(Lcom/android/deskclock/AlarmSelectionActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    invoke-virtual {p0}, Landroid/app/ListActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "com.android.deskclock.EXTRA_ALARMS"

    .line 73
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableArrayExtra(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v0

    const-string v1, "com.android.deskclock.EXTRA_ACTION"

    const/4 v2, -0x1

    .line 74
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/android/deskclock/AlarmSelectionActivity;->mAction:I

    .line 79
    array-length p1, v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, p1, :cond_0

    aget-object v3, v0, v2

    .line 80
    check-cast v3, Lcom/android/deskclock/provider/Alarm;

    .line 83
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    iget v6, v3, Lcom/android/deskclock/provider/Alarm;->hour:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    iget v6, v3, Lcom/android/deskclock/provider/Alarm;->minutes:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x1

    aput-object v6, v5, v7

    const-string v6, "%d %02d"

    invoke-static {v4, v6, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 84
    iget-object v5, p0, Lcom/android/deskclock/AlarmSelectionActivity;->mSelections:Ljava/util/List;

    new-instance v6, Lcom/android/deskclock/widget/selector/AlarmSelection;

    invoke-direct {v6, v4, v3}, Lcom/android/deskclock/widget/selector/AlarmSelection;-><init>(Ljava/lang/String;Lcom/android/deskclock/provider/Alarm;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 87
    :cond_0
    new-instance p1, Lcom/android/deskclock/widget/selector/AlarmSelectionAdapter;

    const v0, 0x7f0d001e

    iget-object v1, p0, Lcom/android/deskclock/AlarmSelectionActivity;->mSelections:Ljava/util/List;

    invoke-direct {p1, p0, v0, v1}, Lcom/android/deskclock/widget/selector/AlarmSelectionAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    invoke-virtual {p0, p1}, Landroid/app/ListActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 0

    .line 92
    invoke-super/range {p0 .. p5}, Landroid/app/ListActivity;->onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V

    .line 94
    iget-object p1, p0, Lcom/android/deskclock/AlarmSelectionActivity;->mSelections:Ljava/util/List;

    long-to-int p2, p4

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/deskclock/widget/selector/AlarmSelection;

    .line 95
    invoke-virtual {p1}, Lcom/android/deskclock/widget/selector/AlarmSelection;->getAlarm()Lcom/android/deskclock/provider/Alarm;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 97
    new-instance p2, Lcom/android/deskclock/AlarmSelectionActivity$ProcessAlarmActionAsync;

    iget p3, p0, Lcom/android/deskclock/AlarmSelectionActivity;->mAction:I

    invoke-direct {p2, p1, p0, p3}, Lcom/android/deskclock/AlarmSelectionActivity$ProcessAlarmActionAsync;-><init>(Lcom/android/deskclock/provider/Alarm;Landroid/app/Activity;I)V

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Void;

    invoke-virtual {p2, p1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 99
    :cond_0
    invoke-virtual {p0}, Landroid/app/ListActivity;->finish()V

    return-void
.end method
