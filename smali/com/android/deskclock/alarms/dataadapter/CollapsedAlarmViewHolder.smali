.class public final Lcom/android/deskclock/alarms/dataadapter/CollapsedAlarmViewHolder;
.super Lcom/android/deskclock/alarms/dataadapter/AlarmItemViewHolder;
.source "CollapsedAlarmViewHolder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/deskclock/alarms/dataadapter/CollapsedAlarmViewHolder$Factory;
    }
.end annotation


# instance fields
.field private final alarmLabel:Landroid/widget/TextView;

.field public final daysOfWeek:Landroid/widget/TextView;

.field private final hairLine:Landroid/view/View;

.field private final upcomingInstanceLabel:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroid/view/View;)V
    .locals 2

    .line 56
    invoke-direct {p0, p1}, Lcom/android/deskclock/alarms/dataadapter/AlarmItemViewHolder;-><init>(Landroid/view/View;)V

    const v0, 0x7f0a00b7

    .line 58
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/deskclock/alarms/dataadapter/CollapsedAlarmViewHolder;->alarmLabel:Landroid/widget/TextView;

    const v0, 0x7f0a007e

    .line 59
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/deskclock/alarms/dataadapter/CollapsedAlarmViewHolder;->daysOfWeek:Landroid/widget/TextView;

    const v0, 0x7f0a0170

    .line 60
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/deskclock/alarms/dataadapter/CollapsedAlarmViewHolder;->upcomingInstanceLabel:Landroid/widget/TextView;

    const v0, 0x7f0a00a7

    .line 61
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/deskclock/alarms/dataadapter/CollapsedAlarmViewHolder;->hairLine:Landroid/view/View;

    .line 64
    new-instance v0, Lcom/android/deskclock/alarms/dataadapter/CollapsedAlarmViewHolder$1;

    invoke-direct {v0, p0}, Lcom/android/deskclock/alarms/dataadapter/CollapsedAlarmViewHolder$1;-><init>(Lcom/android/deskclock/alarms/dataadapter/CollapsedAlarmViewHolder;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    iget-object v0, p0, Lcom/android/deskclock/alarms/dataadapter/CollapsedAlarmViewHolder;->alarmLabel:Landroid/widget/TextView;

    new-instance v1, Lcom/android/deskclock/alarms/dataadapter/CollapsedAlarmViewHolder$2;

    invoke-direct {v1, p0}, Lcom/android/deskclock/alarms/dataadapter/CollapsedAlarmViewHolder$2;-><init>(Lcom/android/deskclock/alarms/dataadapter/CollapsedAlarmViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    iget-object v0, p0, Lcom/android/deskclock/alarms/dataadapter/AlarmItemViewHolder;->arrow:Landroid/widget/ImageView;

    new-instance v1, Lcom/android/deskclock/alarms/dataadapter/CollapsedAlarmViewHolder$3;

    invoke-direct {v1, p0}, Lcom/android/deskclock/alarms/dataadapter/CollapsedAlarmViewHolder$3;-><init>(Lcom/android/deskclock/alarms/dataadapter/CollapsedAlarmViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    iget-object v0, p0, Lcom/android/deskclock/alarms/dataadapter/AlarmItemViewHolder;->clock:Lcom/android/deskclock/widget/TextTime;

    new-instance v1, Lcom/android/deskclock/alarms/dataadapter/CollapsedAlarmViewHolder$4;

    invoke-direct {v1, p0}, Lcom/android/deskclock/alarms/dataadapter/CollapsedAlarmViewHolder$4;-><init>(Lcom/android/deskclock/alarms/dataadapter/CollapsedAlarmViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 p0, 0x2

    .line 95
    invoke-virtual {p1, p0}, Landroid/view/View;->setImportantForAccessibility(I)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/view/View;Lcom/android/deskclock/alarms/dataadapter/CollapsedAlarmViewHolder$1;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1}, Lcom/android/deskclock/alarms/dataadapter/CollapsedAlarmViewHolder;-><init>(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/deskclock/alarms/dataadapter/CollapsedAlarmViewHolder;F)V
    .locals 0

    .line 46
    invoke-direct {p0, p1}, Lcom/android/deskclock/alarms/dataadapter/CollapsedAlarmViewHolder;->setChangingViewsAlpha(F)V

    return-void
.end method

.method private bindReadOnlyLabel(Landroid/content/Context;Lcom/android/deskclock/provider/Alarm;)V
    .locals 2

    .line 111
    iget-object v0, p2, Lcom/android/deskclock/provider/Alarm;->label:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/android/deskclock/alarms/dataadapter/CollapsedAlarmViewHolder;->alarmLabel:Landroid/widget/TextView;

    iget-object v1, p2, Lcom/android/deskclock/provider/Alarm;->label:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 113
    iget-object v0, p0, Lcom/android/deskclock/alarms/dataadapter/CollapsedAlarmViewHolder;->alarmLabel:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 114
    iget-object p0, p0, Lcom/android/deskclock/alarms/dataadapter/CollapsedAlarmViewHolder;->alarmLabel:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const v1, 0x7f1101e5

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p2, Lcom/android/deskclock/provider/Alarm;->label:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 117
    :cond_0
    iget-object p0, p0, Lcom/android/deskclock/alarms/dataadapter/CollapsedAlarmViewHolder;->alarmLabel:Landroid/widget/TextView;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private bindRepeatText(Landroid/content/Context;Lcom/android/deskclock/provider/Alarm;)V
    .locals 3

    .line 122
    iget-object v0, p2, Lcom/android/deskclock/provider/Alarm;->daysOfWeek:Lcom/android/deskclock/data/Weekdays;

    invoke-virtual {v0}, Lcom/android/deskclock/data/Weekdays;->isRepeating()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 123
    invoke-static {}, Lcom/android/deskclock/data/DataModel;->getDataModel()Lcom/android/deskclock/data/DataModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/deskclock/data/DataModel;->getWeekdayOrder()Lcom/android/deskclock/data/Weekdays$Order;

    move-result-object v0

    .line 124
    iget-object v1, p2, Lcom/android/deskclock/provider/Alarm;->daysOfWeek:Lcom/android/deskclock/data/Weekdays;

    invoke-virtual {v1, p1, v0}, Lcom/android/deskclock/data/Weekdays;->toString(Landroid/content/Context;Lcom/android/deskclock/data/Weekdays$Order;)Ljava/lang/String;

    move-result-object v1

    .line 125
    iget-object v2, p0, Lcom/android/deskclock/alarms/dataadapter/CollapsedAlarmViewHolder;->daysOfWeek:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 127
    iget-object p2, p2, Lcom/android/deskclock/provider/Alarm;->daysOfWeek:Lcom/android/deskclock/data/Weekdays;

    invoke-virtual {p2, p1, v0}, Lcom/android/deskclock/data/Weekdays;->toAccessibilityString(Landroid/content/Context;Lcom/android/deskclock/data/Weekdays$Order;)Ljava/lang/String;

    move-result-object p1

    .line 128
    iget-object p2, p0, Lcom/android/deskclock/alarms/dataadapter/CollapsedAlarmViewHolder;->daysOfWeek:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 130
    iget-object p0, p0, Lcom/android/deskclock/alarms/dataadapter/CollapsedAlarmViewHolder;->daysOfWeek:Landroid/widget/TextView;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 132
    :cond_0
    iget-object p0, p0, Lcom/android/deskclock/alarms/dataadapter/CollapsedAlarmViewHolder;->daysOfWeek:Landroid/widget/TextView;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private bindUpcomingInstance(Landroid/content/Context;Lcom/android/deskclock/provider/Alarm;)V
    .locals 2

    .line 137
    iget-object v0, p2, Lcom/android/deskclock/provider/Alarm;->daysOfWeek:Lcom/android/deskclock/data/Weekdays;

    invoke-virtual {v0}, Lcom/android/deskclock/data/Weekdays;->isRepeating()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 138
    iget-object p0, p0, Lcom/android/deskclock/alarms/dataadapter/CollapsedAlarmViewHolder;->upcomingInstanceLabel:Landroid/widget/TextView;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 140
    :cond_0
    iget-object v0, p0, Lcom/android/deskclock/alarms/dataadapter/CollapsedAlarmViewHolder;->upcomingInstanceLabel:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 141
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/android/deskclock/provider/Alarm;->isTomorrow(Lcom/android/deskclock/provider/Alarm;Ljava/util/Calendar;)Z

    move-result p2

    if-eqz p2, :cond_1

    const p2, 0x7f11019c

    .line 142
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    const p2, 0x7f11019b

    .line 143
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 144
    :goto_0
    iget-object p0, p0, Lcom/android/deskclock/alarms/dataadapter/CollapsedAlarmViewHolder;->upcomingInstanceLabel:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    return-void
.end method

.method private createCollapsingAnimator(Lcom/android/deskclock/alarms/dataadapter/AlarmItemViewHolder;J)Landroid/animation/Animator;
    .locals 12

    .line 209
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v1, 0x5

    new-array v1, v1, [Landroid/animation/Animator;

    .line 210
    iget-object v2, p0, Lcom/android/deskclock/alarms/dataadapter/CollapsedAlarmViewHolder;->alarmLabel:Landroid/widget/TextView;

    sget-object v3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v4, 0x1

    new-array v5, v4, [F

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    aput v6, v5, v7

    .line 211
    invoke-static {v2, v3, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v7

    iget-object v2, p0, Lcom/android/deskclock/alarms/dataadapter/CollapsedAlarmViewHolder;->daysOfWeek:Landroid/widget/TextView;

    sget-object v3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v5, v4, [F

    aput v6, v5, v7

    .line 212
    invoke-static {v2, v3, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/android/deskclock/alarms/dataadapter/CollapsedAlarmViewHolder;->upcomingInstanceLabel:Landroid/widget/TextView;

    sget-object v3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v5, v4, [F

    aput v6, v5, v7

    .line 213
    invoke-static {v2, v3, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/android/deskclock/alarms/dataadapter/AlarmItemViewHolder;->preemptiveDismissButton:Landroid/widget/TextView;

    sget-object v5, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v8, v4, [F

    aput v6, v8, v7

    .line 214
    invoke-static {v2, v5, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    const/4 v5, 0x3

    aput-object v2, v1, v5

    iget-object v2, p0, Lcom/android/deskclock/alarms/dataadapter/CollapsedAlarmViewHolder;->hairLine:Landroid/view/View;

    sget-object v8, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v9, v4, [F

    aput v6, v9, v7

    .line 215
    invoke-static {v2, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    const/4 v6, 0x4

    aput-object v2, v1, v6

    .line 210
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    long-to-float v1, p2

    const v2, 0x3e2aaaab

    mul-float/2addr v1, v2

    float-to-long v1, v1

    .line 217
    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    sub-long v1, p2, v1

    .line 218
    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    .line 220
    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 221
    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 222
    invoke-static {v2, v1, v2}, Lcom/android/deskclock/AnimatorUtils;->getBoundsAnimator(Landroid/view/View;Landroid/view/View;Landroid/view/View;)Landroid/animation/Animator;

    move-result-object v6

    .line 223
    invoke-virtual {v6, p2, p3}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v6

    .line 224
    sget-object v8, Lcom/android/deskclock/AnimatorUtils;->INTERPOLATOR_FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v6, v8}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 226
    iget-object p1, p1, Lcom/android/deskclock/alarms/dataadapter/AlarmItemViewHolder;->arrow:Landroid/widget/ImageView;

    .line 227
    new-instance v8, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v9

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v10

    invoke-direct {v8, v7, v7, v9, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 228
    new-instance v9, Landroid/graphics/Rect;

    iget-object v10, p0, Lcom/android/deskclock/alarms/dataadapter/AlarmItemViewHolder;->arrow:Landroid/widget/ImageView;

    invoke-virtual {v10}, Landroid/widget/ImageView;->getWidth()I

    move-result v10

    iget-object v11, p0, Lcom/android/deskclock/alarms/dataadapter/AlarmItemViewHolder;->arrow:Landroid/widget/ImageView;

    invoke-virtual {v11}, Landroid/widget/ImageView;->getHeight()I

    move-result v11

    invoke-direct {v9, v7, v7, v10, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 229
    check-cast v2, Landroid/view/ViewGroup;

    iget-object v10, p0, Lcom/android/deskclock/alarms/dataadapter/AlarmItemViewHolder;->arrow:Landroid/widget/ImageView;

    invoke-virtual {v2, v10, v9}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 230
    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, p1, v8}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 231
    iget p1, v8, Landroid/graphics/Rect;->bottom:I

    iget v1, v9, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p1, v1

    int-to-float p1, p1

    .line 232
    iget-object v1, p0, Lcom/android/deskclock/alarms/dataadapter/AlarmItemViewHolder;->arrow:Landroid/widget/ImageView;

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setTranslationY(F)V

    .line 233
    iget-object p1, p0, Lcom/android/deskclock/alarms/dataadapter/AlarmItemViewHolder;->arrow:Landroid/widget/ImageView;

    invoke-virtual {p1, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 234
    iget-object p1, p0, Lcom/android/deskclock/alarms/dataadapter/AlarmItemViewHolder;->clock:Lcom/android/deskclock/widget/TextTime;

    invoke-virtual {p1, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 235
    iget-object p1, p0, Lcom/android/deskclock/alarms/dataadapter/AlarmItemViewHolder;->onOff:Landroid/widget/CompoundButton;

    invoke-virtual {p1, v7}, Landroid/widget/CompoundButton;->setVisibility(I)V

    .line 237
    iget-object p1, p0, Lcom/android/deskclock/alarms/dataadapter/AlarmItemViewHolder;->arrow:Landroid/widget/ImageView;

    sget-object v1, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v2, v4, [F

    const/4 v8, 0x0

    aput v8, v2, v7

    invoke-static {p1, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 238
    invoke-virtual {p1, p2, p3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 239
    sget-object p2, Lcom/android/deskclock/AnimatorUtils;->INTERPOLATOR_FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 241
    new-instance p2, Landroid/animation/AnimatorSet;

    invoke-direct {p2}, Landroid/animation/AnimatorSet;-><init>()V

    new-array p3, v5, [Landroid/animation/Animator;

    aput-object v0, p3, v7

    aput-object v6, p3, v4

    aput-object p1, p3, v3

    .line 242
    invoke-virtual {p2, p3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 243
    new-instance p1, Lcom/android/deskclock/alarms/dataadapter/CollapsedAlarmViewHolder$6;

    invoke-direct {p1, p0}, Lcom/android/deskclock/alarms/dataadapter/CollapsedAlarmViewHolder$6;-><init>(Lcom/android/deskclock/alarms/dataadapter/CollapsedAlarmViewHolder;)V

    invoke-virtual {p2, p1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object p2
.end method

.method private createExpandingAnimator(Lcom/android/deskclock/alarms/dataadapter/AlarmItemViewHolder;J)Landroid/animation/Animator;
    .locals 10

    .line 184
    iget-object v0, p0, Lcom/android/deskclock/alarms/dataadapter/AlarmItemViewHolder;->clock:Lcom/android/deskclock/widget/TextTime;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 185
    iget-object v0, p0, Lcom/android/deskclock/alarms/dataadapter/AlarmItemViewHolder;->onOff:Landroid/widget/CompoundButton;

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setVisibility(I)V

    .line 186
    iget-object v0, p0, Lcom/android/deskclock/alarms/dataadapter/AlarmItemViewHolder;->arrow:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 188
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v2, 0x5

    new-array v2, v2, [Landroid/animation/Animator;

    .line 189
    iget-object v3, p0, Lcom/android/deskclock/alarms/dataadapter/CollapsedAlarmViewHolder;->alarmLabel:Landroid/widget/TextView;

    sget-object v4, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v5, 0x1

    new-array v6, v5, [F

    const/4 v7, 0x0

    const/4 v8, 0x0

    aput v7, v6, v8

    .line 190
    invoke-static {v3, v4, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v2, v8

    iget-object v3, p0, Lcom/android/deskclock/alarms/dataadapter/CollapsedAlarmViewHolder;->daysOfWeek:Landroid/widget/TextView;

    sget-object v4, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v6, v5, [F

    aput v7, v6, v8

    .line 191
    invoke-static {v3, v4, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v2, v5

    iget-object v3, p0, Lcom/android/deskclock/alarms/dataadapter/CollapsedAlarmViewHolder;->upcomingInstanceLabel:Landroid/widget/TextView;

    sget-object v4, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v6, v5, [F

    aput v7, v6, v8

    .line 192
    invoke-static {v3, v4, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    const/4 v4, 0x2

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/android/deskclock/alarms/dataadapter/AlarmItemViewHolder;->preemptiveDismissButton:Landroid/widget/TextView;

    sget-object v6, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v9, v5, [F

    aput v7, v9, v8

    .line 193
    invoke-static {v3, v6, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    const/4 v6, 0x3

    aput-object v3, v2, v6

    iget-object v3, p0, Lcom/android/deskclock/alarms/dataadapter/CollapsedAlarmViewHolder;->hairLine:Landroid/view/View;

    sget-object v6, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v9, v5, [F

    aput v7, v9, v8

    .line 194
    invoke-static {v3, v6, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v2, v1

    .line 189
    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    long-to-float v1, p2

    const/high16 v2, 0x3e800000    # 0.25f

    mul-float/2addr v1, v2

    float-to-long v1, v1

    .line 195
    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 197
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 198
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 199
    invoke-static {p0, p0, p1}, Lcom/android/deskclock/AnimatorUtils;->getBoundsAnimator(Landroid/view/View;Landroid/view/View;Landroid/view/View;)Landroid/animation/Animator;

    move-result-object p0

    .line 200
    invoke-virtual {p0, p2, p3}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object p0

    .line 201
    sget-object p1, Lcom/android/deskclock/AnimatorUtils;->INTERPOLATOR_FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {p0, p1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 203
    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    new-array p2, v4, [Landroid/animation/Animator;

    aput-object v0, p2, v8

    aput-object p0, p2, v5

    .line 204
    invoke-virtual {p1, p2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    return-object p1
.end method

.method private setChangingViewsAlpha(F)V
    .locals 1

    .line 253
    iget-object v0, p0, Lcom/android/deskclock/alarms/dataadapter/CollapsedAlarmViewHolder;->alarmLabel:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 254
    iget-object v0, p0, Lcom/android/deskclock/alarms/dataadapter/CollapsedAlarmViewHolder;->daysOfWeek:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 255
    iget-object v0, p0, Lcom/android/deskclock/alarms/dataadapter/CollapsedAlarmViewHolder;->upcomingInstanceLabel:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 256
    iget-object v0, p0, Lcom/android/deskclock/alarms/dataadapter/CollapsedAlarmViewHolder;->hairLine:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 257
    iget-object p0, p0, Lcom/android/deskclock/alarms/dataadapter/AlarmItemViewHolder;->preemptiveDismissButton:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setAlpha(F)V

    return-void
.end method


# virtual methods
.method public onAnimateChange(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;J)Landroid/animation/Animator;
    .locals 2

    .line 158
    instance-of v0, p1, Lcom/android/deskclock/alarms/dataadapter/AlarmItemViewHolder;

    if-eqz v0, :cond_4

    instance-of v0, p2, Lcom/android/deskclock/alarms/dataadapter/AlarmItemViewHolder;

    if-nez v0, :cond_0

    goto :goto_3

    :cond_0
    if-ne p0, p2, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    const/high16 v1, 0x3f800000    # 1.0f

    .line 164
    :goto_1
    invoke-direct {p0, v1}, Lcom/android/deskclock/alarms/dataadapter/CollapsedAlarmViewHolder;->setChangingViewsAlpha(F)V

    if-eqz v0, :cond_3

    .line 167
    check-cast p1, Lcom/android/deskclock/alarms/dataadapter/AlarmItemViewHolder;

    invoke-direct {p0, p1, p3, p4}, Lcom/android/deskclock/alarms/dataadapter/CollapsedAlarmViewHolder;->createCollapsingAnimator(Lcom/android/deskclock/alarms/dataadapter/AlarmItemViewHolder;J)Landroid/animation/Animator;

    move-result-object p1

    goto :goto_2

    .line 168
    :cond_3
    check-cast p2, Lcom/android/deskclock/alarms/dataadapter/AlarmItemViewHolder;

    invoke-direct {p0, p2, p3, p4}, Lcom/android/deskclock/alarms/dataadapter/CollapsedAlarmViewHolder;->createExpandingAnimator(Lcom/android/deskclock/alarms/dataadapter/AlarmItemViewHolder;J)Landroid/animation/Animator;

    move-result-object p1

    .line 169
    :goto_2
    new-instance p2, Lcom/android/deskclock/alarms/dataadapter/CollapsedAlarmViewHolder$5;

    invoke-direct {p2, p0}, Lcom/android/deskclock/alarms/dataadapter/CollapsedAlarmViewHolder$5;-><init>(Lcom/android/deskclock/alarms/dataadapter/CollapsedAlarmViewHolder;)V

    invoke-virtual {p1, p2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object p1

    :cond_4
    :goto_3
    const/4 p0, 0x0

    return-object p0
.end method

.method public onAnimateChange(Ljava/util/List;IIIIJ)Landroid/animation/Animator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;IIIIJ)",
            "Landroid/animation/Animator;"
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method protected bridge synthetic onBindItemView(Lcom/android/deskclock/ItemAdapter$ItemHolder;)V
    .locals 0

    .line 46
    check-cast p1, Lcom/android/deskclock/alarms/dataadapter/AlarmItemHolder;

    invoke-virtual {p0, p1}, Lcom/android/deskclock/alarms/dataadapter/CollapsedAlarmViewHolder;->onBindItemView(Lcom/android/deskclock/alarms/dataadapter/AlarmItemHolder;)V

    return-void
.end method

.method protected onBindItemView(Lcom/android/deskclock/alarms/dataadapter/AlarmItemHolder;)V
    .locals 2

    .line 100
    invoke-super {p0, p1}, Lcom/android/deskclock/alarms/dataadapter/AlarmItemViewHolder;->onBindItemView(Lcom/android/deskclock/alarms/dataadapter/AlarmItemHolder;)V

    .line 101
    iget-object v0, p1, Lcom/android/deskclock/ItemAdapter$ItemHolder;->item:Ljava/lang/Object;

    check-cast v0, Lcom/android/deskclock/provider/Alarm;

    .line 102
    invoke-virtual {p1}, Lcom/android/deskclock/alarms/dataadapter/AlarmItemHolder;->getAlarmInstance()Lcom/android/deskclock/provider/AlarmInstance;

    move-result-object p1

    .line 103
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 104
    invoke-direct {p0, v1, v0}, Lcom/android/deskclock/alarms/dataadapter/CollapsedAlarmViewHolder;->bindRepeatText(Landroid/content/Context;Lcom/android/deskclock/provider/Alarm;)V

    .line 105
    invoke-direct {p0, v1, v0}, Lcom/android/deskclock/alarms/dataadapter/CollapsedAlarmViewHolder;->bindReadOnlyLabel(Landroid/content/Context;Lcom/android/deskclock/provider/Alarm;)V

    .line 106
    invoke-direct {p0, v1, v0}, Lcom/android/deskclock/alarms/dataadapter/CollapsedAlarmViewHolder;->bindUpcomingInstance(Landroid/content/Context;Lcom/android/deskclock/provider/Alarm;)V

    .line 107
    invoke-virtual {p0, v1, v0, p1}, Lcom/android/deskclock/alarms/dataadapter/AlarmItemViewHolder;->bindPreemptiveDismissButton(Landroid/content/Context;Lcom/android/deskclock/provider/Alarm;Lcom/android/deskclock/provider/AlarmInstance;)Z

    return-void
.end method
