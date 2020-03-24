.class public abstract Lcom/android/deskclock/alarms/dataadapter/AlarmItemViewHolder;
.super Lcom/android/deskclock/ItemAdapter$ItemViewHolder;
.source "AlarmItemViewHolder.java"

# interfaces
.implements Lcom/android/deskclock/ItemAnimator$OnAnimateChangeListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/deskclock/ItemAdapter$ItemViewHolder<",
        "Lcom/android/deskclock/alarms/dataadapter/AlarmItemHolder;",
        ">;",
        "Lcom/android/deskclock/ItemAnimator$OnAnimateChangeListener;"
    }
.end annotation


# instance fields
.field public final arrow:Landroid/widget/ImageView;

.field public final clock:Lcom/android/deskclock/widget/TextTime;

.field public final onOff:Landroid/widget/CompoundButton;

.field public final preemptiveDismissButton:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 58
    invoke-direct {p0, p1}, Lcom/android/deskclock/ItemAdapter$ItemViewHolder;-><init>(Landroid/view/View;)V

    const v0, 0x7f0a0089

    .line 60
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/deskclock/widget/TextTime;

    iput-object v0, p0, Lcom/android/deskclock/alarms/dataadapter/AlarmItemViewHolder;->clock:Lcom/android/deskclock/widget/TextTime;

    const v0, 0x7f0a00e3

    .line 61
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CompoundButton;

    iput-object v0, p0, Lcom/android/deskclock/alarms/dataadapter/AlarmItemViewHolder;->onOff:Landroid/widget/CompoundButton;

    const v0, 0x7f0a004b

    .line 62
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/deskclock/alarms/dataadapter/AlarmItemViewHolder;->arrow:Landroid/widget/ImageView;

    const v0, 0x7f0a00ef

    .line 64
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/deskclock/alarms/dataadapter/AlarmItemViewHolder;->preemptiveDismissButton:Landroid/widget/TextView;

    .line 65
    iget-object p1, p0, Lcom/android/deskclock/alarms/dataadapter/AlarmItemViewHolder;->preemptiveDismissButton:Landroid/widget/TextView;

    new-instance v0, Lcom/android/deskclock/alarms/dataadapter/AlarmItemViewHolder$1;

    invoke-direct {v0, p0}, Lcom/android/deskclock/alarms/dataadapter/AlarmItemViewHolder$1;-><init>(Lcom/android/deskclock/alarms/dataadapter/AlarmItemViewHolder;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    iget-object p1, p0, Lcom/android/deskclock/alarms/dataadapter/AlarmItemViewHolder;->onOff:Landroid/widget/CompoundButton;

    new-instance v0, Lcom/android/deskclock/alarms/dataadapter/AlarmItemViewHolder$2;

    invoke-direct {v0, p0}, Lcom/android/deskclock/alarms/dataadapter/AlarmItemViewHolder$2;-><init>(Lcom/android/deskclock/alarms/dataadapter/AlarmItemViewHolder;)V

    invoke-virtual {p1, v0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void
.end method


# virtual methods
.method protected bindClock(Lcom/android/deskclock/provider/Alarm;)V
    .locals 3

    .line 99
    iget-object v0, p0, Lcom/android/deskclock/alarms/dataadapter/AlarmItemViewHolder;->clock:Lcom/android/deskclock/widget/TextTime;

    iget v1, p1, Lcom/android/deskclock/provider/Alarm;->hour:I

    iget v2, p1, Lcom/android/deskclock/provider/Alarm;->minutes:I

    invoke-virtual {v0, v1, v2}, Lcom/android/deskclock/widget/TextTime;->setTime(II)V

    .line 100
    iget-object p0, p0, Lcom/android/deskclock/alarms/dataadapter/AlarmItemViewHolder;->clock:Lcom/android/deskclock/widget/TextTime;

    iget-boolean p1, p1, Lcom/android/deskclock/provider/Alarm;->enabled:Z

    if-eqz p1, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const p1, 0x3f30a3d7    # 0.69f

    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setAlpha(F)V

    return-void
.end method

.method protected bindOnOffSwitch(Lcom/android/deskclock/provider/Alarm;)V
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/android/deskclock/alarms/dataadapter/AlarmItemViewHolder;->onOff:Landroid/widget/CompoundButton;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    iget-boolean p1, p1, Lcom/android/deskclock/provider/Alarm;->enabled:Z

    if-eq v0, p1, :cond_0

    .line 94
    iget-object p0, p0, Lcom/android/deskclock/alarms/dataadapter/AlarmItemViewHolder;->onOff:Landroid/widget/CompoundButton;

    invoke-virtual {p0, p1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    :cond_0
    return-void
.end method

.method protected bindPreemptiveDismissButton(Landroid/content/Context;Lcom/android/deskclock/provider/Alarm;Lcom/android/deskclock/provider/AlarmInstance;)Z
    .locals 4

    .line 105
    invoke-virtual {p2}, Lcom/android/deskclock/provider/Alarm;->canPreemptivelyDismiss()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    if-eqz p3, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-eqz v0, :cond_2

    .line 107
    iget-object v3, p0, Lcom/android/deskclock/alarms/dataadapter/AlarmItemViewHolder;->preemptiveDismissButton:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 108
    iget p2, p2, Lcom/android/deskclock/provider/Alarm;->instanceState:I

    const/4 v3, 0x4

    if-ne p2, v3, :cond_1

    const p2, 0x7f11018f

    new-array v3, v1, [Ljava/lang/Object;

    .line 110
    invoke-static {p1, p3, v2}, Lcom/android/deskclock/AlarmUtils;->getAlarmText(Landroid/content/Context;Lcom/android/deskclock/provider/AlarmInstance;Z)Ljava/lang/String;

    move-result-object p3

    aput-object p3, v3, v2

    .line 109
    invoke-virtual {p1, p2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_1
    const p2, 0x7f11018b

    .line 111
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 112
    :goto_1
    iget-object p2, p0, Lcom/android/deskclock/alarms/dataadapter/AlarmItemViewHolder;->preemptiveDismissButton:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 113
    iget-object p0, p0, Lcom/android/deskclock/alarms/dataadapter/AlarmItemViewHolder;->preemptiveDismissButton:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setClickable(Z)V

    goto :goto_2

    .line 115
    :cond_2
    iget-object p1, p0, Lcom/android/deskclock/alarms/dataadapter/AlarmItemViewHolder;->preemptiveDismissButton:Landroid/widget/TextView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 116
    iget-object p0, p0, Lcom/android/deskclock/alarms/dataadapter/AlarmItemViewHolder;->preemptiveDismissButton:Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setClickable(Z)V

    :goto_2
    return v0
.end method

.method protected bridge synthetic onBindItemView(Lcom/android/deskclock/ItemAdapter$ItemHolder;)V
    .locals 0

    .line 36
    check-cast p1, Lcom/android/deskclock/alarms/dataadapter/AlarmItemHolder;

    invoke-virtual {p0, p1}, Lcom/android/deskclock/alarms/dataadapter/AlarmItemViewHolder;->onBindItemView(Lcom/android/deskclock/alarms/dataadapter/AlarmItemHolder;)V

    return-void
.end method

.method protected onBindItemView(Lcom/android/deskclock/alarms/dataadapter/AlarmItemHolder;)V
    .locals 3

    .line 85
    iget-object p1, p1, Lcom/android/deskclock/ItemAdapter$ItemHolder;->item:Ljava/lang/Object;

    check-cast p1, Lcom/android/deskclock/provider/Alarm;

    .line 86
    invoke-virtual {p0, p1}, Lcom/android/deskclock/alarms/dataadapter/AlarmItemViewHolder;->bindOnOffSwitch(Lcom/android/deskclock/provider/Alarm;)V

    .line 87
    invoke-virtual {p0, p1}, Lcom/android/deskclock/alarms/dataadapter/AlarmItemViewHolder;->bindClock(Lcom/android/deskclock/provider/Alarm;)V

    .line 88
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 89
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/android/deskclock/alarms/dataadapter/AlarmItemViewHolder;->clock:Lcom/android/deskclock/widget/TextTime;

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Lcom/android/deskclock/provider/Alarm;->getLabelOrDefault(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method
