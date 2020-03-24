.class public final Lcom/android/deskclock/alarms/dataadapter/ExpandedAlarmViewHolder;
.super Lcom/android/deskclock/alarms/dataadapter/AlarmItemViewHolder;
.source "ExpandedAlarmViewHolder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/deskclock/alarms/dataadapter/ExpandedAlarmViewHolder$Factory;
    }
.end annotation


# instance fields
.field private final dayButtons:[Landroid/widget/CompoundButton;

.field public final delete:Landroid/widget/TextView;

.field private final editLabel:Landroid/widget/TextView;

.field private final hairLine:Landroid/view/View;

.field private final mHasVibrator:Z

.field public final repeat:Landroid/widget/CheckBox;

.field public final repeatDays:Landroid/widget/LinearLayout;

.field public final ringtone:Landroid/widget/TextView;

.field public final vibrate:Landroid/widget/CheckBox;


# direct methods
.method private constructor <init>(Landroid/view/View;Z)V
    .locals 10

    .line 75
    invoke-direct {p0, p1}, Lcom/android/deskclock/alarms/dataadapter/AlarmItemViewHolder;-><init>(Landroid/view/View;)V

    const/4 v0, 0x7

    new-array v1, v0, [Landroid/widget/CompoundButton;

    .line 66
    iput-object v1, p0, Lcom/android/deskclock/alarms/dataadapter/ExpandedAlarmViewHolder;->dayButtons:[Landroid/widget/CompoundButton;

    .line 77
    iput-boolean p2, p0, Lcom/android/deskclock/alarms/dataadapter/ExpandedAlarmViewHolder;->mHasVibrator:Z

    const p2, 0x7f0a0081

    .line 79
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/android/deskclock/alarms/dataadapter/ExpandedAlarmViewHolder;->delete:Landroid/widget/TextView;

    const p2, 0x7f0a00f6

    .line 80
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/CheckBox;

    iput-object p2, p0, Lcom/android/deskclock/alarms/dataadapter/ExpandedAlarmViewHolder;->repeat:Landroid/widget/CheckBox;

    const p2, 0x7f0a0174

    .line 81
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/CheckBox;

    iput-object p2, p0, Lcom/android/deskclock/alarms/dataadapter/ExpandedAlarmViewHolder;->vibrate:Landroid/widget/CheckBox;

    const p2, 0x7f0a005b

    .line 82
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/android/deskclock/alarms/dataadapter/ExpandedAlarmViewHolder;->ringtone:Landroid/widget/TextView;

    const p2, 0x7f0a008e

    .line 83
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/android/deskclock/alarms/dataadapter/ExpandedAlarmViewHolder;->editLabel:Landroid/widget/TextView;

    const p2, 0x7f0a00f5

    .line 84
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/android/deskclock/alarms/dataadapter/ExpandedAlarmViewHolder;->repeatDays:Landroid/widget/LinearLayout;

    const p2, 0x7f0a00a7

    .line 85
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/android/deskclock/alarms/dataadapter/ExpandedAlarmViewHolder;->hairLine:Landroid/view/View;

    .line 87
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    .line 88
    new-instance v1, Landroid/graphics/drawable/LayerDrawable;

    const/4 v2, 0x2

    new-array v3, v2, [Landroid/graphics/drawable/Drawable;

    const v4, 0x7f08005d

    .line 89
    invoke-static {p2, v4}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const v4, 0x7f0401f1

    .line 90
    invoke-static {p2, v4}, Lcom/android/deskclock/ThemeUtils;->resolveDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    const/4 v6, 0x1

    aput-object v4, v3, v6

    invoke-direct {v1, v3}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 88
    invoke-virtual {p1, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 94
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 95
    invoke-static {}, Lcom/android/deskclock/data/DataModel;->getDataModel()Lcom/android/deskclock/data/DataModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/deskclock/data/DataModel;->getWeekdayOrder()Lcom/android/deskclock/data/Weekdays$Order;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/deskclock/data/Weekdays$Order;->getCalendarDays()Ljava/util/List;

    move-result-object v3

    move v4, v5

    :goto_0
    if-ge v4, v0, :cond_0

    const v6, 0x7f0d002b

    .line 97
    iget-object v7, p0, Lcom/android/deskclock/alarms/dataadapter/ExpandedAlarmViewHolder;->repeatDays:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v6, v7, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    const v7, 0x7f0a007c

    .line 100
    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/CompoundButton;

    .line 101
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 102
    invoke-static {}, Lcom/android/deskclock/uidata/UiDataModel;->getUiDataModel()Lcom/android/deskclock/uidata/UiDataModel;

    move-result-object v9

    invoke-virtual {v9, v8}, Lcom/android/deskclock/uidata/UiDataModel;->getShortWeekday(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/widget/CompoundButton;->setText(Ljava/lang/CharSequence;)V

    .line 103
    invoke-static {}, Lcom/android/deskclock/uidata/UiDataModel;->getUiDataModel()Lcom/android/deskclock/uidata/UiDataModel;

    move-result-object v9

    invoke-virtual {v9, v8}, Lcom/android/deskclock/uidata/UiDataModel;->getLongWeekday(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/CompoundButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 104
    iget-object v8, p0, Lcom/android/deskclock/alarms/dataadapter/ExpandedAlarmViewHolder;->repeatDays:Landroid/widget/LinearLayout;

    invoke-virtual {v8, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 105
    iget-object v6, p0, Lcom/android/deskclock/alarms/dataadapter/ExpandedAlarmViewHolder;->dayButtons:[Landroid/widget/CompoundButton;

    aput-object v7, v6, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    const v0, 0x7f080091

    .line 109
    invoke-static {p2, v0}, Lcom/android/deskclock/Utils;->getVectorDrawable(Landroid/content/Context;I)Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;

    move-result-object v0

    .line 110
    iget-object v1, p0, Lcom/android/deskclock/alarms/dataadapter/ExpandedAlarmViewHolder;->editLabel:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3, v3, v3}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    const v0, 0x7f08008e

    .line 111
    invoke-static {p2, v0}, Lcom/android/deskclock/Utils;->getVectorDrawable(Landroid/content/Context;I)Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;

    move-result-object v0

    .line 112
    iget-object v1, p0, Lcom/android/deskclock/alarms/dataadapter/ExpandedAlarmViewHolder;->delete:Landroid/widget/TextView;

    invoke-virtual {v1, v0, v3, v3, v3}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 115
    new-instance v0, Lcom/android/deskclock/alarms/dataadapter/ExpandedAlarmViewHolder$1;

    invoke-direct {v0, p0}, Lcom/android/deskclock/alarms/dataadapter/ExpandedAlarmViewHolder$1;-><init>(Lcom/android/deskclock/alarms/dataadapter/ExpandedAlarmViewHolder;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 122
    iget-object v0, p0, Lcom/android/deskclock/alarms/dataadapter/AlarmItemViewHolder;->arrow:Landroid/widget/ImageView;

    new-instance v1, Lcom/android/deskclock/alarms/dataadapter/ExpandedAlarmViewHolder$2;

    invoke-direct {v1, p0}, Lcom/android/deskclock/alarms/dataadapter/ExpandedAlarmViewHolder$2;-><init>(Lcom/android/deskclock/alarms/dataadapter/ExpandedAlarmViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 130
    iget-object v0, p0, Lcom/android/deskclock/alarms/dataadapter/AlarmItemViewHolder;->clock:Lcom/android/deskclock/widget/TextTime;

    new-instance v1, Lcom/android/deskclock/alarms/dataadapter/ExpandedAlarmViewHolder$3;

    invoke-direct {v1, p0}, Lcom/android/deskclock/alarms/dataadapter/ExpandedAlarmViewHolder$3;-><init>(Lcom/android/deskclock/alarms/dataadapter/ExpandedAlarmViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 137
    iget-object v0, p0, Lcom/android/deskclock/alarms/dataadapter/ExpandedAlarmViewHolder;->editLabel:Landroid/widget/TextView;

    new-instance v1, Lcom/android/deskclock/alarms/dataadapter/ExpandedAlarmViewHolder$4;

    invoke-direct {v1, p0}, Lcom/android/deskclock/alarms/dataadapter/ExpandedAlarmViewHolder$4;-><init>(Lcom/android/deskclock/alarms/dataadapter/ExpandedAlarmViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 144
    iget-object v0, p0, Lcom/android/deskclock/alarms/dataadapter/ExpandedAlarmViewHolder;->vibrate:Landroid/widget/CheckBox;

    new-instance v1, Lcom/android/deskclock/alarms/dataadapter/ExpandedAlarmViewHolder$5;

    invoke-direct {v1, p0}, Lcom/android/deskclock/alarms/dataadapter/ExpandedAlarmViewHolder$5;-><init>(Lcom/android/deskclock/alarms/dataadapter/ExpandedAlarmViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 152
    iget-object v0, p0, Lcom/android/deskclock/alarms/dataadapter/ExpandedAlarmViewHolder;->ringtone:Landroid/widget/TextView;

    new-instance v1, Lcom/android/deskclock/alarms/dataadapter/ExpandedAlarmViewHolder$6;

    invoke-direct {v1, p0, p2}, Lcom/android/deskclock/alarms/dataadapter/ExpandedAlarmViewHolder$6;-><init>(Lcom/android/deskclock/alarms/dataadapter/ExpandedAlarmViewHolder;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 159
    iget-object v0, p0, Lcom/android/deskclock/alarms/dataadapter/ExpandedAlarmViewHolder;->delete:Landroid/widget/TextView;

    new-instance v1, Lcom/android/deskclock/alarms/dataadapter/ExpandedAlarmViewHolder$7;

    invoke-direct {v1, p0, p2}, Lcom/android/deskclock/alarms/dataadapter/ExpandedAlarmViewHolder$7;-><init>(Lcom/android/deskclock/alarms/dataadapter/ExpandedAlarmViewHolder;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 167
    iget-object p2, p0, Lcom/android/deskclock/alarms/dataadapter/ExpandedAlarmViewHolder;->repeat:Landroid/widget/CheckBox;

    new-instance v0, Lcom/android/deskclock/alarms/dataadapter/ExpandedAlarmViewHolder$8;

    invoke-direct {v0, p0}, Lcom/android/deskclock/alarms/dataadapter/ExpandedAlarmViewHolder$8;-><init>(Lcom/android/deskclock/alarms/dataadapter/ExpandedAlarmViewHolder;)V

    invoke-virtual {p2, v0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 176
    :goto_1
    iget-object p2, p0, Lcom/android/deskclock/alarms/dataadapter/ExpandedAlarmViewHolder;->dayButtons:[Landroid/widget/CompoundButton;

    array-length v0, p2

    if-ge v5, v0, :cond_1

    .line 178
    aget-object p2, p2, v5

    new-instance v0, Lcom/android/deskclock/alarms/dataadapter/ExpandedAlarmViewHolder$9;

    invoke-direct {v0, p0, v5}, Lcom/android/deskclock/alarms/dataadapter/ExpandedAlarmViewHolder$9;-><init>(Lcom/android/deskclock/alarms/dataadapter/ExpandedAlarmViewHolder;I)V

    invoke-virtual {p2, v0}, Landroid/widget/CompoundButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 188
    :cond_1
    invoke-virtual {p1, v2}, Landroid/view/View;->setImportantForAccessibility(I)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/view/View;ZLcom/android/deskclock/alarms/dataadapter/ExpandedAlarmViewHolder$1;)V
    .locals 0

    .line 60
    invoke-direct {p0, p1, p2}, Lcom/android/deskclock/alarms/dataadapter/ExpandedAlarmViewHolder;-><init>(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/deskclock/alarms/dataadapter/ExpandedAlarmViewHolder;)Lcom/android/deskclock/alarms/AlarmTimeClickHandler;
    .locals 0

    .line 60
    invoke-direct {p0}, Lcom/android/deskclock/alarms/dataadapter/ExpandedAlarmViewHolder;->getAlarmTimeClickHandler()Lcom/android/deskclock/alarms/AlarmTimeClickHandler;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/deskclock/alarms/dataadapter/ExpandedAlarmViewHolder;FF)V
    .locals 0

    .line 60
    invoke-direct {p0, p1, p2}, Lcom/android/deskclock/alarms/dataadapter/ExpandedAlarmViewHolder;->setTranslationY(FF)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/deskclock/alarms/dataadapter/ExpandedAlarmViewHolder;F)V
    .locals 0

    .line 60
    invoke-direct {p0, p1}, Lcom/android/deskclock/alarms/dataadapter/ExpandedAlarmViewHolder;->setChangingViewsAlpha(F)V

    return-void
.end method

.method private bindDaysOfWeekButtons(Lcom/android/deskclock/provider/Alarm;Landroid/content/Context;)V
    .locals 7

    .line 219
    invoke-static {}, Lcom/android/deskclock/data/DataModel;->getDataModel()Lcom/android/deskclock/data/DataModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/deskclock/data/DataModel;->getWeekdayOrder()Lcom/android/deskclock/data/Weekdays$Order;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/deskclock/data/Weekdays$Order;->getCalendarDays()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    .line 220
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ge v2, v3, :cond_1

    .line 221
    iget-object v3, p0, Lcom/android/deskclock/alarms/dataadapter/ExpandedAlarmViewHolder;->dayButtons:[Landroid/widget/CompoundButton;

    aget-object v3, v3, v2

    .line 222
    iget-object v5, p1, Lcom/android/deskclock/provider/Alarm;->daysOfWeek:Lcom/android/deskclock/data/Weekdays;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/deskclock/data/Weekdays;->isBitOn(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 223
    invoke-virtual {v3, v4}, Landroid/widget/CompoundButton;->setChecked(Z)V

    const v4, 0x1010054

    .line 224
    invoke-static {p2, v4}, Lcom/android/deskclock/ThemeUtils;->resolveColor(Landroid/content/Context;I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/CompoundButton;->setTextColor(I)V

    goto :goto_1

    .line 227
    :cond_0
    invoke-virtual {v3, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    const/4 v4, -0x1

    .line 228
    invoke-virtual {v3, v4}, Landroid/widget/CompoundButton;->setTextColor(I)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 231
    :cond_1
    iget-object p1, p1, Lcom/android/deskclock/provider/Alarm;->daysOfWeek:Lcom/android/deskclock/data/Weekdays;

    invoke-virtual {p1}, Lcom/android/deskclock/data/Weekdays;->isRepeating()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 232
    iget-object p1, p0, Lcom/android/deskclock/alarms/dataadapter/ExpandedAlarmViewHolder;->repeat:Landroid/widget/CheckBox;

    invoke-virtual {p1, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 233
    iget-object p0, p0, Lcom/android/deskclock/alarms/dataadapter/ExpandedAlarmViewHolder;->repeatDays:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_2

    .line 235
    :cond_2
    iget-object p1, p0, Lcom/android/deskclock/alarms/dataadapter/ExpandedAlarmViewHolder;->repeat:Landroid/widget/CheckBox;

    invoke-virtual {p1, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 236
    iget-object p0, p0, Lcom/android/deskclock/alarms/dataadapter/ExpandedAlarmViewHolder;->repeatDays:Landroid/widget/LinearLayout;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_2
    return-void
.end method

.method private bindEditLabel(Landroid/content/Context;Lcom/android/deskclock/provider/Alarm;)V
    .locals 2

    .line 241
    iget-object v0, p0, Lcom/android/deskclock/alarms/dataadapter/ExpandedAlarmViewHolder;->editLabel:Landroid/widget/TextView;

    iget-object v1, p2, Lcom/android/deskclock/provider/Alarm;->label:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 242
    iget-object p0, p0, Lcom/android/deskclock/alarms/dataadapter/ExpandedAlarmViewHolder;->editLabel:Landroid/widget/TextView;

    iget-object v0, p2, Lcom/android/deskclock/provider/Alarm;->label:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 243
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

    goto :goto_0

    :cond_0
    const p2, 0x7f110211

    .line 244
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 242
    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private bindRingtone(Landroid/content/Context;Lcom/android/deskclock/provider/Alarm;)V
    .locals 4

    .line 206
    invoke-static {}, Lcom/android/deskclock/data/DataModel;->getDataModel()Lcom/android/deskclock/data/DataModel;

    move-result-object v0

    iget-object v1, p2, Lcom/android/deskclock/provider/Alarm;->alert:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/android/deskclock/data/DataModel;->getRingtoneTitle(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 207
    iget-object v1, p0, Lcom/android/deskclock/alarms/dataadapter/ExpandedAlarmViewHolder;->ringtone:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f11021d

    .line 209
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 210
    iget-object v2, p0, Lcom/android/deskclock/alarms/dataadapter/ExpandedAlarmViewHolder;->ringtone:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 212
    sget-object v0, Lcom/android/deskclock/Utils;->RINGTONE_SILENT:Landroid/net/Uri;

    iget-object p2, p2, Lcom/android/deskclock/provider/Alarm;->alert:Landroid/net/Uri;

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const p2, 0x7f0800a6

    goto :goto_0

    :cond_0
    const p2, 0x7f0800a1

    .line 213
    :goto_0
    invoke-static {p1, p2}, Lcom/android/deskclock/Utils;->getVectorDrawable(Landroid/content/Context;I)Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;

    move-result-object p1

    .line 215
    iget-object p0, p0, Lcom/android/deskclock/alarms/dataadapter/ExpandedAlarmViewHolder;->ringtone:Landroid/widget/TextView;

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2, p2, p2}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private bindVibrator(Lcom/android/deskclock/provider/Alarm;)V
    .locals 2

    .line 248
    iget-boolean v0, p0, Lcom/android/deskclock/alarms/dataadapter/ExpandedAlarmViewHolder;->mHasVibrator:Z

    if-nez v0, :cond_0

    .line 249
    iget-object p0, p0, Lcom/android/deskclock/alarms/dataadapter/ExpandedAlarmViewHolder;->vibrate:Landroid/widget/CheckBox;

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Landroid/widget/CheckBox;->setVisibility(I)V

    goto :goto_0

    .line 251
    :cond_0
    iget-object v0, p0, Lcom/android/deskclock/alarms/dataadapter/ExpandedAlarmViewHolder;->vibrate:Landroid/widget/CheckBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 252
    iget-object p0, p0, Lcom/android/deskclock/alarms/dataadapter/ExpandedAlarmViewHolder;->vibrate:Landroid/widget/CheckBox;

    iget-boolean p1, p1, Lcom/android/deskclock/provider/Alarm;->vibrate:Z

    invoke-virtual {p0, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    :goto_0
    return-void
.end method

.method private countNumberOfItems()I
    .locals 1

    .line 495
    iget-object v0, p0, Lcom/android/deskclock/alarms/dataadapter/AlarmItemViewHolder;->preemptiveDismissButton:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x5

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    .line 498
    :goto_0
    iget-object p0, p0, Lcom/android/deskclock/alarms/dataadapter/ExpandedAlarmViewHolder;->repeatDays:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result p0

    if-nez p0, :cond_1

    add-int/lit8 v0, v0, 0x1

    :cond_1
    return v0
.end method

.method private createCollapsingAnimator(Lcom/android/deskclock/alarms/dataadapter/AlarmItemViewHolder;J)Landroid/animation/Animator;
    .locals 19

    move-object/from16 v0, p0

    move-wide/from16 v1, p2

    .line 343
    iget-object v3, v0, Lcom/android/deskclock/alarms/dataadapter/AlarmItemViewHolder;->arrow:Landroid/widget/ImageView;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 344
    iget-object v3, v0, Lcom/android/deskclock/alarms/dataadapter/AlarmItemViewHolder;->clock:Lcom/android/deskclock/widget/TextTime;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 345
    iget-object v3, v0, Lcom/android/deskclock/alarms/dataadapter/AlarmItemViewHolder;->onOff:Landroid/widget/CompoundButton;

    invoke-virtual {v3, v4}, Landroid/widget/CompoundButton;->setVisibility(I)V

    .line 347
    iget-object v3, v0, Lcom/android/deskclock/alarms/dataadapter/ExpandedAlarmViewHolder;->repeatDays:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v3

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-nez v3, :cond_0

    move v3, v6

    goto :goto_0

    :cond_0
    move v3, v5

    .line 348
    :goto_0
    invoke-direct/range {p0 .. p0}, Lcom/android/deskclock/alarms/dataadapter/ExpandedAlarmViewHolder;->countNumberOfItems()I

    move-result v7

    .line 350
    iget-object v8, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move-object/from16 v9, p1

    .line 351
    iget-object v9, v9, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-array v10, v6, [Landroid/animation/PropertyValuesHolder;

    .line 353
    sget-object v11, Lcom/android/deskclock/AnimatorUtils;->BACKGROUND_ALPHA:Landroid/util/Property;

    const/4 v12, 0x2

    new-array v13, v12, [I

    fill-array-data v13, :array_0

    .line 354
    invoke-static {v11, v13}, Landroid/animation/PropertyValuesHolder;->ofInt(Landroid/util/Property;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v11

    aput-object v11, v10, v5

    .line 353
    invoke-static {v8, v10}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v10

    .line 355
    invoke-virtual {v10, v1, v2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 357
    invoke-static {v8, v8, v9}, Lcom/android/deskclock/AnimatorUtils;->getBoundsAnimator(Landroid/view/View;Landroid/view/View;Landroid/view/View;)Landroid/animation/Animator;

    move-result-object v8

    .line 358
    invoke-virtual {v8, v1, v2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 359
    sget-object v9, Lcom/android/deskclock/AnimatorUtils;->INTERPOLATOR_FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v8, v9}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    long-to-float v1, v1

    const/high16 v2, 0x3e800000    # 0.25f

    mul-float/2addr v2, v1

    float-to-long v13, v2

    .line 362
    iget-object v2, v0, Lcom/android/deskclock/alarms/dataadapter/ExpandedAlarmViewHolder;->repeat:Landroid/widget/CheckBox;

    sget-object v9, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v11, v6, [F

    const/4 v15, 0x0

    aput v15, v11, v5

    invoke-static {v2, v9, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 363
    invoke-virtual {v2, v13, v14}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 364
    iget-object v9, v0, Lcom/android/deskclock/alarms/dataadapter/ExpandedAlarmViewHolder;->editLabel:Landroid/widget/TextView;

    sget-object v11, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v4, v6, [F

    aput v15, v4, v5

    invoke-static {v9, v11, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 365
    invoke-virtual {v4, v13, v14}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 366
    iget-object v9, v0, Lcom/android/deskclock/alarms/dataadapter/ExpandedAlarmViewHolder;->repeatDays:Landroid/widget/LinearLayout;

    sget-object v11, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v12, v6, [F

    aput v15, v12, v5

    invoke-static {v9, v11, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v9

    .line 367
    invoke-virtual {v9, v13, v14}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v9

    .line 368
    iget-object v11, v0, Lcom/android/deskclock/alarms/dataadapter/ExpandedAlarmViewHolder;->vibrate:Landroid/widget/CheckBox;

    sget-object v12, Landroid/view/View;->ALPHA:Landroid/util/Property;

    move-object/from16 v16, v8

    new-array v8, v6, [F

    aput v15, v8, v5

    invoke-static {v11, v12, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    .line 369
    invoke-virtual {v8, v13, v14}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v8

    .line 370
    iget-object v11, v0, Lcom/android/deskclock/alarms/dataadapter/ExpandedAlarmViewHolder;->ringtone:Landroid/widget/TextView;

    sget-object v12, Landroid/view/View;->ALPHA:Landroid/util/Property;

    move-object/from16 v17, v10

    new-array v10, v6, [F

    aput v15, v10, v5

    invoke-static {v11, v12, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v10

    .line 371
    invoke-virtual {v10, v13, v14}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v10

    .line 372
    iget-object v11, v0, Lcom/android/deskclock/alarms/dataadapter/AlarmItemViewHolder;->preemptiveDismissButton:Landroid/widget/TextView;

    sget-object v12, Landroid/view/View;->ALPHA:Landroid/util/Property;

    move-object/from16 p2, v2

    new-array v2, v6, [F

    aput v15, v2, v5

    invoke-static {v11, v12, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 373
    invoke-virtual {v2, v13, v14}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 374
    iget-object v11, v0, Lcom/android/deskclock/alarms/dataadapter/ExpandedAlarmViewHolder;->delete:Landroid/widget/TextView;

    sget-object v12, Landroid/view/View;->ALPHA:Landroid/util/Property;

    move-object/from16 p3, v9

    new-array v9, v6, [F

    aput v15, v9, v5

    invoke-static {v11, v12, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v9

    .line 375
    invoke-virtual {v9, v13, v14}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v9

    .line 376
    iget-object v11, v0, Lcom/android/deskclock/alarms/dataadapter/ExpandedAlarmViewHolder;->hairLine:Landroid/view/View;

    sget-object v12, Landroid/view/View;->ALPHA:Landroid/util/Property;

    move/from16 v18, v3

    new-array v3, v6, [F

    aput v15, v3, v5

    invoke-static {v11, v12, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 377
    invoke-virtual {v3, v13, v14}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v3

    const-wide/16 v11, 0x0

    const v13, 0x3f155555

    mul-float/2addr v1, v13

    float-to-long v13, v1

    sub-int/2addr v7, v6

    int-to-long v6, v7

    .line 383
    div-long/2addr v13, v6

    .line 385
    invoke-virtual {v9, v11, v12}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 386
    iget-object v0, v0, Lcom/android/deskclock/alarms/dataadapter/AlarmItemViewHolder;->preemptiveDismissButton:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    add-long/2addr v11, v13

    .line 388
    invoke-virtual {v2, v11, v12}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 390
    :cond_1
    invoke-virtual {v3, v11, v12}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    add-long/2addr v11, v13

    .line 392
    invoke-virtual {v4, v11, v12}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    add-long/2addr v11, v13

    .line 394
    invoke-virtual {v8, v11, v12}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 395
    invoke-virtual {v10, v11, v12}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    add-long/2addr v11, v13

    move-object/from16 v0, p3

    if-eqz v18, :cond_2

    .line 398
    invoke-virtual {v0, v11, v12}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    add-long/2addr v11, v13

    :cond_2
    move-object/from16 v6, p2

    .line 401
    invoke-virtual {v6, v11, v12}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 403
    new-instance v7, Landroid/animation/AnimatorSet;

    invoke-direct {v7}, Landroid/animation/AnimatorSet;-><init>()V

    const/16 v11, 0xa

    new-array v11, v11, [Landroid/animation/Animator;

    aput-object v17, v11, v5

    const/4 v1, 0x1

    aput-object v16, v11, v1

    const/4 v1, 0x2

    aput-object v6, v11, v1

    const/4 v1, 0x3

    aput-object v0, v11, v1

    const/4 v0, 0x4

    aput-object v8, v11, v0

    const/4 v0, 0x5

    aput-object v10, v11, v0

    const/4 v0, 0x6

    aput-object v4, v11, v0

    const/4 v0, 0x7

    aput-object v9, v11, v0

    const/16 v0, 0x8

    aput-object v3, v11, v0

    const/16 v0, 0x9

    aput-object v2, v11, v0

    .line 404
    invoke-virtual {v7, v11}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    return-object v7

    nop

    :array_0
    .array-data 4
        0xff
        0x0
    .end array-data
.end method

.method private createExpandingAnimator(Lcom/android/deskclock/alarms/dataadapter/AlarmItemViewHolder;J)Landroid/animation/Animator;
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    .line 411
    iget-object v4, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 412
    iget-object v5, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 413
    invoke-static {v5, v4, v5}, Lcom/android/deskclock/AnimatorUtils;->getBoundsAnimator(Landroid/view/View;Landroid/view/View;Landroid/view/View;)Landroid/animation/Animator;

    move-result-object v6

    .line 414
    invoke-virtual {v6, v2, v3}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 415
    sget-object v7, Lcom/android/deskclock/AnimatorUtils;->INTERPOLATOR_FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v6, v7}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const/4 v7, 0x1

    new-array v8, v7, [Landroid/animation/PropertyValuesHolder;

    .line 417
    sget-object v9, Lcom/android/deskclock/AnimatorUtils;->BACKGROUND_ALPHA:Landroid/util/Property;

    const/4 v10, 0x2

    new-array v11, v10, [I

    fill-array-data v11, :array_0

    .line 418
    invoke-static {v9, v11}, Landroid/animation/PropertyValuesHolder;->ofInt(Landroid/util/Property;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v9

    const/4 v11, 0x0

    aput-object v9, v8, v11

    .line 417
    invoke-static {v5, v8}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v8

    .line 419
    invoke-virtual {v8, v2, v3}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 421
    iget-object v1, v1, Lcom/android/deskclock/alarms/dataadapter/AlarmItemViewHolder;->arrow:Landroid/widget/ImageView;

    .line 422
    new-instance v9, Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v12

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v13

    invoke-direct {v9, v11, v11, v12, v13}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 423
    new-instance v12, Landroid/graphics/Rect;

    iget-object v13, v0, Lcom/android/deskclock/alarms/dataadapter/AlarmItemViewHolder;->arrow:Landroid/widget/ImageView;

    invoke-virtual {v13}, Landroid/widget/ImageView;->getWidth()I

    move-result v13

    iget-object v14, v0, Lcom/android/deskclock/alarms/dataadapter/AlarmItemViewHolder;->arrow:Landroid/widget/ImageView;

    invoke-virtual {v14}, Landroid/widget/ImageView;->getHeight()I

    move-result v14

    invoke-direct {v12, v11, v11, v13, v14}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 424
    check-cast v5, Landroid/view/ViewGroup;

    iget-object v13, v0, Lcom/android/deskclock/alarms/dataadapter/AlarmItemViewHolder;->arrow:Landroid/widget/ImageView;

    invoke-virtual {v5, v13, v12}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 425
    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual {v4, v1, v9}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 426
    iget v1, v9, Landroid/graphics/Rect;->bottom:I

    iget v4, v12, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v4

    int-to-float v1, v1

    .line 428
    iget-object v4, v0, Lcom/android/deskclock/alarms/dataadapter/AlarmItemViewHolder;->arrow:Landroid/widget/ImageView;

    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setTranslationY(F)V

    .line 429
    iget-object v1, v0, Lcom/android/deskclock/alarms/dataadapter/AlarmItemViewHolder;->arrow:Landroid/widget/ImageView;

    invoke-virtual {v1, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 430
    iget-object v1, v0, Lcom/android/deskclock/alarms/dataadapter/AlarmItemViewHolder;->clock:Lcom/android/deskclock/widget/TextTime;

    invoke-virtual {v1, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 431
    iget-object v1, v0, Lcom/android/deskclock/alarms/dataadapter/AlarmItemViewHolder;->onOff:Landroid/widget/CompoundButton;

    invoke-virtual {v1, v11}, Landroid/widget/CompoundButton;->setVisibility(I)V

    long-to-float v1, v2

    const v4, 0x3f2aaaab

    mul-float/2addr v4, v1

    float-to-long v4, v4

    .line 434
    iget-object v9, v0, Lcom/android/deskclock/alarms/dataadapter/ExpandedAlarmViewHolder;->repeat:Landroid/widget/CheckBox;

    sget-object v12, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v13, v7, [F

    const/high16 v14, 0x3f800000    # 1.0f

    aput v14, v13, v11

    invoke-static {v9, v12, v13}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v9

    .line 435
    invoke-virtual {v9, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v9

    .line 436
    iget-object v12, v0, Lcom/android/deskclock/alarms/dataadapter/ExpandedAlarmViewHolder;->repeatDays:Landroid/widget/LinearLayout;

    sget-object v13, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v15, v7, [F

    aput v14, v15, v11

    invoke-static {v12, v13, v15}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v12

    .line 437
    invoke-virtual {v12, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v12

    .line 438
    iget-object v13, v0, Lcom/android/deskclock/alarms/dataadapter/ExpandedAlarmViewHolder;->ringtone:Landroid/widget/TextView;

    sget-object v15, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v10, v7, [F

    aput v14, v10, v11

    invoke-static {v13, v15, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v10

    .line 439
    invoke-virtual {v10, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v10

    .line 440
    iget-object v13, v0, Lcom/android/deskclock/alarms/dataadapter/AlarmItemViewHolder;->preemptiveDismissButton:Landroid/widget/TextView;

    sget-object v15, Landroid/view/View;->ALPHA:Landroid/util/Property;

    move-object/from16 v16, v6

    new-array v6, v7, [F

    aput v14, v6, v11

    invoke-static {v13, v15, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    .line 441
    invoke-virtual {v6, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v6

    .line 442
    iget-object v13, v0, Lcom/android/deskclock/alarms/dataadapter/ExpandedAlarmViewHolder;->vibrate:Landroid/widget/CheckBox;

    sget-object v15, Landroid/view/View;->ALPHA:Landroid/util/Property;

    move-object/from16 v17, v8

    new-array v8, v7, [F

    aput v14, v8, v11

    invoke-static {v13, v15, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    .line 443
    invoke-virtual {v8, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v8

    .line 444
    iget-object v13, v0, Lcom/android/deskclock/alarms/dataadapter/ExpandedAlarmViewHolder;->editLabel:Landroid/widget/TextView;

    sget-object v15, Landroid/view/View;->ALPHA:Landroid/util/Property;

    move-object/from16 p1, v6

    new-array v6, v7, [F

    aput v14, v6, v11

    invoke-static {v13, v15, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    .line 445
    invoke-virtual {v6, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v6

    .line 446
    iget-object v13, v0, Lcom/android/deskclock/alarms/dataadapter/ExpandedAlarmViewHolder;->hairLine:Landroid/view/View;

    sget-object v15, Landroid/view/View;->ALPHA:Landroid/util/Property;

    move-object/from16 v18, v6

    new-array v6, v7, [F

    aput v14, v6, v11

    invoke-static {v13, v15, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    .line 447
    invoke-virtual {v6, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v6

    .line 448
    iget-object v13, v0, Lcom/android/deskclock/alarms/dataadapter/ExpandedAlarmViewHolder;->delete:Landroid/widget/TextView;

    sget-object v15, Landroid/view/View;->ALPHA:Landroid/util/Property;

    move-object/from16 v19, v6

    new-array v6, v7, [F

    aput v14, v6, v11

    invoke-static {v13, v15, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    .line 449
    invoke-virtual {v6, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 450
    iget-object v5, v0, Lcom/android/deskclock/alarms/dataadapter/AlarmItemViewHolder;->arrow:Landroid/widget/ImageView;

    sget-object v6, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v13, v7, [F

    const/4 v14, 0x0

    aput v14, v13, v11

    invoke-static {v5, v6, v13}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .line 451
    invoke-virtual {v5, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 452
    sget-object v3, Lcom/android/deskclock/AnimatorUtils;->INTERPOLATOR_FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const v3, 0x3e2aaaab

    mul-float/2addr v3, v1

    float-to-long v5, v3

    .line 457
    invoke-direct/range {p0 .. p0}, Lcom/android/deskclock/alarms/dataadapter/ExpandedAlarmViewHolder;->countNumberOfItems()I

    move-result v3

    const v13, 0x3daaaaa8

    mul-float/2addr v1, v13

    float-to-long v13, v1

    sub-int/2addr v3, v7

    move-object v15, v8

    int-to-long v7, v3

    .line 458
    div-long/2addr v13, v7

    .line 460
    invoke-virtual {v9, v5, v6}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    add-long/2addr v5, v13

    .line 462
    iget-object v3, v0, Lcom/android/deskclock/alarms/dataadapter/ExpandedAlarmViewHolder;->repeatDays:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v11

    :goto_0
    if-eqz v3, :cond_1

    .line 464
    invoke-virtual {v12, v5, v6}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    add-long/2addr v5, v13

    .line 467
    :cond_1
    invoke-virtual {v10, v5, v6}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    move-object v3, v15

    .line 468
    invoke-virtual {v3, v5, v6}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    add-long/2addr v5, v13

    move-object/from16 v7, v18

    .line 470
    invoke-virtual {v7, v5, v6}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    add-long/2addr v5, v13

    move-object/from16 v8, v19

    .line 472
    invoke-virtual {v8, v5, v6}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 473
    iget-object v15, v0, Lcom/android/deskclock/alarms/dataadapter/AlarmItemViewHolder;->preemptiveDismissButton:Landroid/widget/TextView;

    invoke-virtual {v15}, Landroid/widget/TextView;->getVisibility()I

    move-result v15

    if-nez v15, :cond_2

    move-object/from16 v15, p1

    .line 474
    invoke-virtual {v15, v5, v6}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    add-long/2addr v5, v13

    goto :goto_1

    :cond_2
    move-object/from16 v15, p1

    .line 477
    :goto_1
    invoke-virtual {v4, v5, v6}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 479
    new-instance v5, Landroid/animation/AnimatorSet;

    invoke-direct {v5}, Landroid/animation/AnimatorSet;-><init>()V

    const/16 v6, 0xb

    new-array v6, v6, [Landroid/animation/Animator;

    aput-object v17, v6, v11

    const/4 v1, 0x1

    aput-object v9, v6, v1

    const/4 v1, 0x2

    aput-object v16, v6, v1

    const/4 v1, 0x3

    aput-object v12, v6, v1

    const/4 v1, 0x4

    aput-object v3, v6, v1

    const/4 v1, 0x5

    aput-object v10, v6, v1

    const/4 v1, 0x6

    aput-object v7, v6, v1

    const/4 v1, 0x7

    aput-object v4, v6, v1

    const/16 v1, 0x8

    aput-object v8, v6, v1

    const/16 v1, 0x9

    aput-object v15, v6, v1

    const/16 v1, 0xa

    aput-object v2, v6, v1

    .line 480
    invoke-virtual {v5, v6}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 483
    new-instance v1, Lcom/android/deskclock/alarms/dataadapter/ExpandedAlarmViewHolder$12;

    invoke-direct {v1, v0}, Lcom/android/deskclock/alarms/dataadapter/ExpandedAlarmViewHolder$12;-><init>(Lcom/android/deskclock/alarms/dataadapter/ExpandedAlarmViewHolder;)V

    invoke-virtual {v5, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object v5

    nop

    :array_0
    .array-data 4
        0x0
        0xff
    .end array-data
.end method

.method private getAlarmTimeClickHandler()Lcom/android/deskclock/alarms/AlarmTimeClickHandler;
    .locals 0

    .line 257
    invoke-virtual {p0}, Lcom/android/deskclock/ItemAdapter$ItemViewHolder;->getItemHolder()Lcom/android/deskclock/ItemAdapter$ItemHolder;

    move-result-object p0

    check-cast p0, Lcom/android/deskclock/alarms/dataadapter/AlarmItemHolder;

    invoke-virtual {p0}, Lcom/android/deskclock/alarms/dataadapter/AlarmItemHolder;->getAlarmTimeClickHandler()Lcom/android/deskclock/alarms/AlarmTimeClickHandler;

    move-result-object p0

    return-object p0
.end method

.method private setChangingViewsAlpha(F)V
    .locals 1

    .line 505
    iget-object v0, p0, Lcom/android/deskclock/alarms/dataadapter/ExpandedAlarmViewHolder;->repeat:Landroid/widget/CheckBox;

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setAlpha(F)V

    .line 506
    iget-object v0, p0, Lcom/android/deskclock/alarms/dataadapter/ExpandedAlarmViewHolder;->editLabel:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 507
    iget-object v0, p0, Lcom/android/deskclock/alarms/dataadapter/ExpandedAlarmViewHolder;->repeatDays:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 508
    iget-object v0, p0, Lcom/android/deskclock/alarms/dataadapter/ExpandedAlarmViewHolder;->vibrate:Landroid/widget/CheckBox;

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setAlpha(F)V

    .line 509
    iget-object v0, p0, Lcom/android/deskclock/alarms/dataadapter/ExpandedAlarmViewHolder;->ringtone:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 510
    iget-object v0, p0, Lcom/android/deskclock/alarms/dataadapter/ExpandedAlarmViewHolder;->hairLine:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 511
    iget-object v0, p0, Lcom/android/deskclock/alarms/dataadapter/ExpandedAlarmViewHolder;->delete:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 512
    iget-object p0, p0, Lcom/android/deskclock/alarms/dataadapter/AlarmItemViewHolder;->preemptiveDismissButton:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setAlpha(F)V

    return-void
.end method

.method private setTranslationY(FF)V
    .locals 1

    .line 302
    iget-object v0, p0, Lcom/android/deskclock/alarms/dataadapter/ExpandedAlarmViewHolder;->repeatDays:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setTranslationY(F)V

    .line 303
    iget-object p1, p0, Lcom/android/deskclock/alarms/dataadapter/ExpandedAlarmViewHolder;->ringtone:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTranslationY(F)V

    .line 304
    iget-object p1, p0, Lcom/android/deskclock/alarms/dataadapter/ExpandedAlarmViewHolder;->vibrate:Landroid/widget/CheckBox;

    invoke-virtual {p1, p2}, Landroid/widget/CheckBox;->setTranslationY(F)V

    .line 305
    iget-object p1, p0, Lcom/android/deskclock/alarms/dataadapter/ExpandedAlarmViewHolder;->editLabel:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTranslationY(F)V

    .line 306
    iget-object p1, p0, Lcom/android/deskclock/alarms/dataadapter/AlarmItemViewHolder;->preemptiveDismissButton:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTranslationY(F)V

    .line 307
    iget-object p1, p0, Lcom/android/deskclock/alarms/dataadapter/ExpandedAlarmViewHolder;->hairLine:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationY(F)V

    .line 308
    iget-object p1, p0, Lcom/android/deskclock/alarms/dataadapter/ExpandedAlarmViewHolder;->delete:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTranslationY(F)V

    .line 309
    iget-object p0, p0, Lcom/android/deskclock/alarms/dataadapter/AlarmItemViewHolder;->arrow:Landroid/widget/ImageView;

    invoke-virtual {p0, p2}, Landroid/widget/ImageView;->setTranslationY(F)V

    return-void
.end method


# virtual methods
.method public onAnimateChange(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;J)Landroid/animation/Animator;
    .locals 3

    .line 315
    instance-of v0, p1, Lcom/android/deskclock/alarms/dataadapter/AlarmItemViewHolder;

    if-eqz v0, :cond_5

    instance-of v0, p2, Lcom/android/deskclock/alarms/dataadapter/AlarmItemViewHolder;

    if-nez v0, :cond_0

    goto :goto_4

    :cond_0
    const/4 v0, 0x0

    if-ne p0, p2, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    move v1, v0

    .line 321
    :goto_0
    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    const/16 v0, 0xff

    :goto_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/deskclock/AnimatorUtils;->setBackgroundAlpha(Landroid/view/View;Ljava/lang/Integer;)V

    if-eqz v1, :cond_3

    const/4 v0, 0x0

    goto :goto_2

    :cond_3
    const/high16 v0, 0x3f800000    # 1.0f

    .line 322
    :goto_2
    invoke-direct {p0, v0}, Lcom/android/deskclock/alarms/dataadapter/ExpandedAlarmViewHolder;->setChangingViewsAlpha(F)V

    if-eqz v1, :cond_4

    .line 325
    check-cast p1, Lcom/android/deskclock/alarms/dataadapter/AlarmItemViewHolder;

    invoke-direct {p0, p1, p3, p4}, Lcom/android/deskclock/alarms/dataadapter/ExpandedAlarmViewHolder;->createExpandingAnimator(Lcom/android/deskclock/alarms/dataadapter/AlarmItemViewHolder;J)Landroid/animation/Animator;

    move-result-object p1

    goto :goto_3

    .line 326
    :cond_4
    check-cast p2, Lcom/android/deskclock/alarms/dataadapter/AlarmItemViewHolder;

    invoke-direct {p0, p2, p3, p4}, Lcom/android/deskclock/alarms/dataadapter/ExpandedAlarmViewHolder;->createCollapsingAnimator(Lcom/android/deskclock/alarms/dataadapter/AlarmItemViewHolder;J)Landroid/animation/Animator;

    move-result-object p1

    .line 327
    :goto_3
    new-instance p2, Lcom/android/deskclock/alarms/dataadapter/ExpandedAlarmViewHolder$11;

    invoke-direct {p2, p0}, Lcom/android/deskclock/alarms/dataadapter/ExpandedAlarmViewHolder$11;-><init>(Lcom/android/deskclock/alarms/dataadapter/ExpandedAlarmViewHolder;)V

    invoke-virtual {p1, p2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object p1

    :cond_5
    :goto_4
    const/4 p0, 0x0

    return-object p0
.end method

.method public onAnimateChange(Ljava/util/List;IIIIJ)Landroid/animation/Animator;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;IIIIJ)",
            "Landroid/animation/Animator;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    if-eqz v1, :cond_7

    .line 263
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_7

    const-string v2, "ANIMATE_REPEAT_DAYS"

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_6

    .line 267
    :cond_0
    iget-object v1, v0, Lcom/android/deskclock/alarms/dataadapter/ExpandedAlarmViewHolder;->repeatDays:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    move v1, v3

    .line 268
    :goto_0
    iget-object v4, v0, Lcom/android/deskclock/alarms/dataadapter/ExpandedAlarmViewHolder;->repeatDays:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v4

    const/4 v5, 0x0

    if-eqz v1, :cond_2

    neg-int v6, v4

    int-to-float v6, v6

    goto :goto_1

    :cond_2
    move v6, v5

    :goto_1
    if-eqz v1, :cond_3

    neg-int v7, v4

    int-to-float v7, v7

    goto :goto_2

    :cond_3
    int-to-float v7, v4

    .line 269
    :goto_2
    invoke-direct {v0, v6, v7}, Lcom/android/deskclock/alarms/dataadapter/ExpandedAlarmViewHolder;->setTranslationY(FF)V

    .line 270
    iget-object v6, v0, Lcom/android/deskclock/alarms/dataadapter/ExpandedAlarmViewHolder;->repeatDays:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 271
    iget-object v6, v0, Lcom/android/deskclock/alarms/dataadapter/ExpandedAlarmViewHolder;->repeatDays:Landroid/widget/LinearLayout;

    const/high16 v7, 0x3f800000    # 1.0f

    if-eqz v1, :cond_4

    move v8, v5

    goto :goto_3

    :cond_4
    move v8, v7

    :goto_3
    invoke-virtual {v6, v8}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 273
    new-instance v6, Landroid/animation/AnimatorSet;

    invoke-direct {v6}, Landroid/animation/AnimatorSet;-><init>()V

    const/16 v8, 0xa

    new-array v8, v8, [Landroid/animation/Animator;

    .line 274
    iget-object v9, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 276
    invoke-virtual {v9}, Landroid/view/View;->getLeft()I

    move-result v14

    iget-object v10, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v15

    iget-object v10, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getRight()I

    move-result v16

    iget-object v10, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getBottom()I

    move-result v17

    move/from16 v10, p2

    move/from16 v11, p3

    move/from16 v12, p4

    move/from16 v13, p5

    .line 274
    invoke-static/range {v9 .. v17}, Lcom/android/deskclock/AnimatorUtils;->getBoundsAnimator(Landroid/view/View;IIIIIIII)Landroid/animation/Animator;

    move-result-object v9

    aput-object v9, v8, v3

    iget-object v9, v0, Lcom/android/deskclock/alarms/dataadapter/ExpandedAlarmViewHolder;->repeatDays:Landroid/widget/LinearLayout;

    sget-object v10, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v11, v2, [F

    if-eqz v1, :cond_5

    goto :goto_4

    :cond_5
    move v7, v5

    :goto_4
    aput v7, v11, v3

    .line 277
    invoke-static {v9, v10, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    aput-object v7, v8, v2

    const/4 v7, 0x2

    iget-object v9, v0, Lcom/android/deskclock/alarms/dataadapter/ExpandedAlarmViewHolder;->repeatDays:Landroid/widget/LinearLayout;

    sget-object v10, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v11, v2, [F

    if-eqz v1, :cond_6

    move v4, v5

    goto :goto_5

    :cond_6
    neg-int v4, v4

    int-to-float v4, v4

    :goto_5
    aput v4, v11, v3

    .line 278
    invoke-static {v9, v10, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v8, v7

    const/4 v4, 0x3

    iget-object v7, v0, Lcom/android/deskclock/alarms/dataadapter/ExpandedAlarmViewHolder;->ringtone:Landroid/widget/TextView;

    sget-object v9, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v10, v2, [F

    aput v5, v10, v3

    .line 279
    invoke-static {v7, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    aput-object v7, v8, v4

    const/4 v4, 0x4

    iget-object v7, v0, Lcom/android/deskclock/alarms/dataadapter/ExpandedAlarmViewHolder;->vibrate:Landroid/widget/CheckBox;

    sget-object v9, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v10, v2, [F

    aput v5, v10, v3

    .line 280
    invoke-static {v7, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    aput-object v7, v8, v4

    const/4 v4, 0x5

    iget-object v7, v0, Lcom/android/deskclock/alarms/dataadapter/ExpandedAlarmViewHolder;->editLabel:Landroid/widget/TextView;

    sget-object v9, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v10, v2, [F

    aput v5, v10, v3

    .line 281
    invoke-static {v7, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    aput-object v7, v8, v4

    const/4 v4, 0x6

    iget-object v7, v0, Lcom/android/deskclock/alarms/dataadapter/AlarmItemViewHolder;->preemptiveDismissButton:Landroid/widget/TextView;

    sget-object v9, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v10, v2, [F

    aput v5, v10, v3

    .line 282
    invoke-static {v7, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    aput-object v7, v8, v4

    const/4 v4, 0x7

    iget-object v7, v0, Lcom/android/deskclock/alarms/dataadapter/ExpandedAlarmViewHolder;->hairLine:Landroid/view/View;

    sget-object v9, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v10, v2, [F

    aput v5, v10, v3

    .line 283
    invoke-static {v7, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    aput-object v7, v8, v4

    const/16 v4, 0x8

    iget-object v7, v0, Lcom/android/deskclock/alarms/dataadapter/ExpandedAlarmViewHolder;->delete:Landroid/widget/TextView;

    sget-object v9, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v10, v2, [F

    aput v5, v10, v3

    .line 284
    invoke-static {v7, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    aput-object v7, v8, v4

    const/16 v4, 0x9

    iget-object v7, v0, Lcom/android/deskclock/alarms/dataadapter/AlarmItemViewHolder;->arrow:Landroid/widget/ImageView;

    sget-object v9, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v2, v2, [F

    aput v5, v2, v3

    .line 285
    invoke-static {v7, v9, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v8, v4

    .line 274
    invoke-virtual {v6, v8}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 286
    new-instance v2, Lcom/android/deskclock/alarms/dataadapter/ExpandedAlarmViewHolder$10;

    invoke-direct {v2, v0, v1}, Lcom/android/deskclock/alarms/dataadapter/ExpandedAlarmViewHolder$10;-><init>(Lcom/android/deskclock/alarms/dataadapter/ExpandedAlarmViewHolder;Z)V

    invoke-virtual {v6, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    move-wide/from16 v0, p6

    .line 295
    invoke-virtual {v6, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 296
    sget-object v0, Lcom/android/deskclock/AnimatorUtils;->INTERPOLATOR_FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v6, v0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-object v6

    :cond_7
    :goto_6
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic onBindItemView(Lcom/android/deskclock/ItemAdapter$ItemHolder;)V
    .locals 0

    .line 60
    check-cast p1, Lcom/android/deskclock/alarms/dataadapter/AlarmItemHolder;

    invoke-virtual {p0, p1}, Lcom/android/deskclock/alarms/dataadapter/ExpandedAlarmViewHolder;->onBindItemView(Lcom/android/deskclock/alarms/dataadapter/AlarmItemHolder;)V

    return-void
.end method

.method protected onBindItemView(Lcom/android/deskclock/alarms/dataadapter/AlarmItemHolder;)V
    .locals 2

    .line 193
    invoke-super {p0, p1}, Lcom/android/deskclock/alarms/dataadapter/AlarmItemViewHolder;->onBindItemView(Lcom/android/deskclock/alarms/dataadapter/AlarmItemHolder;)V

    .line 195
    iget-object v0, p1, Lcom/android/deskclock/ItemAdapter$ItemHolder;->item:Ljava/lang/Object;

    check-cast v0, Lcom/android/deskclock/provider/Alarm;

    .line 196
    invoke-virtual {p1}, Lcom/android/deskclock/alarms/dataadapter/AlarmItemHolder;->getAlarmInstance()Lcom/android/deskclock/provider/AlarmInstance;

    move-result-object p1

    .line 197
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 198
    invoke-direct {p0, v1, v0}, Lcom/android/deskclock/alarms/dataadapter/ExpandedAlarmViewHolder;->bindEditLabel(Landroid/content/Context;Lcom/android/deskclock/provider/Alarm;)V

    .line 199
    invoke-direct {p0, v0, v1}, Lcom/android/deskclock/alarms/dataadapter/ExpandedAlarmViewHolder;->bindDaysOfWeekButtons(Lcom/android/deskclock/provider/Alarm;Landroid/content/Context;)V

    .line 200
    invoke-direct {p0, v0}, Lcom/android/deskclock/alarms/dataadapter/ExpandedAlarmViewHolder;->bindVibrator(Lcom/android/deskclock/provider/Alarm;)V

    .line 201
    invoke-direct {p0, v1, v0}, Lcom/android/deskclock/alarms/dataadapter/ExpandedAlarmViewHolder;->bindRingtone(Landroid/content/Context;Lcom/android/deskclock/provider/Alarm;)V

    .line 202
    invoke-virtual {p0, v1, v0, p1}, Lcom/android/deskclock/alarms/dataadapter/AlarmItemViewHolder;->bindPreemptiveDismissButton(Landroid/content/Context;Lcom/android/deskclock/provider/Alarm;Lcom/android/deskclock/provider/AlarmInstance;)Z

    return-void
.end method
