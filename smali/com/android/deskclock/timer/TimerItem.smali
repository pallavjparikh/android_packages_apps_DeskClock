.class public Lcom/android/deskclock/timer/TimerItem;
.super Landroid/widget/LinearLayout;
.source "TimerItem.java"


# instance fields
.field private mCircleView:Lcom/android/deskclock/timer/TimerCircleView;

.field private mLabelView:Landroid/widget/TextView;

.field private mLastState:Lcom/android/deskclock/data/Timer$State;

.field private mResetAddButton:Landroid/widget/Button;

.field private mTimerText:Landroid/widget/TextView;

.field private mTimerTextController:Lcom/android/deskclock/TimerTextController;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 62
    invoke-direct {p0, p1, v0}, Lcom/android/deskclock/timer/TimerItem;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 66
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 8

    .line 71
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    const v0, 0x7f0a014e

    .line 72
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/deskclock/timer/TimerItem;->mLabelView:Landroid/widget/TextView;

    const v0, 0x7f0a00f7

    .line 73
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/deskclock/timer/TimerItem;->mResetAddButton:Landroid/widget/Button;

    const v0, 0x7f0a015d

    .line 74
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/deskclock/timer/TimerCircleView;

    iput-object v0, p0, Lcom/android/deskclock/timer/TimerItem;->mCircleView:Lcom/android/deskclock/timer/TimerCircleView;

    const v0, 0x7f0a015e

    .line 75
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/deskclock/timer/TimerItem;->mTimerText:Landroid/widget/TextView;

    .line 76
    new-instance v0, Lcom/android/deskclock/TimerTextController;

    iget-object v1, p0, Lcom/android/deskclock/timer/TimerItem;->mTimerText:Landroid/widget/TextView;

    invoke-direct {v0, v1}, Lcom/android/deskclock/TimerTextController;-><init>(Landroid/widget/TextView;)V

    iput-object v0, p0, Lcom/android/deskclock/timer/TimerItem;->mTimerTextController:Lcom/android/deskclock/TimerTextController;

    .line 78
    iget-object v0, p0, Lcom/android/deskclock/timer/TimerItem;->mTimerText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f04009c

    .line 79
    invoke-static {v0, v1}, Lcom/android/deskclock/ThemeUtils;->resolveColor(Landroid/content/Context;I)I

    move-result v1

    const v2, 0x1010036

    .line 80
    invoke-static {v0, v2}, Lcom/android/deskclock/ThemeUtils;->resolveColor(Landroid/content/Context;I)I

    move-result v0

    .line 81
    iget-object p0, p0, Lcom/android/deskclock/timer/TimerItem;->mTimerText:Landroid/widget/TextView;

    new-instance v2, Landroid/content/res/ColorStateList;

    const/4 v3, 0x2

    new-array v4, v3, [[I

    new-array v5, v3, [I

    fill-array-data v5, :array_0

    const/4 v6, 0x0

    aput-object v5, v4, v6

    new-array v5, v6, [I

    const/4 v7, 0x1

    aput-object v5, v4, v7

    new-array v3, v3, [I

    aput v0, v3, v6

    aput v1, v3, v7

    invoke-direct {v2, v4, v3}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    return-void

    nop

    :array_0
    .array-data 4
        -0x10102fe
        -0x10100a7
    .end array-data
.end method

.method update(Lcom/android/deskclock/data/Timer;)V
    .locals 8

    .line 91
    iget-object v0, p0, Lcom/android/deskclock/timer/TimerItem;->mTimerTextController:Lcom/android/deskclock/TimerTextController;

    invoke-virtual {p1}, Lcom/android/deskclock/data/Timer;->getRemainingTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/android/deskclock/TimerTextController;->setTimeString(J)V

    .line 94
    invoke-virtual {p1}, Lcom/android/deskclock/data/Timer;->getLabel()Ljava/lang/String;

    move-result-object v0

    .line 95
    iget-object v1, p0, Lcom/android/deskclock/timer/TimerItem;->mLabelView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 96
    iget-object v1, p0, Lcom/android/deskclock/timer/TimerItem;->mLabelView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 100
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    rem-long/2addr v0, v2

    const-wide/16 v2, 0x1f4

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-gez v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    .line 101
    :goto_0
    iget-object v3, p0, Lcom/android/deskclock/timer/TimerItem;->mCircleView:Lcom/android/deskclock/timer/TimerCircleView;

    const/4 v4, 0x4

    if-eqz v3, :cond_5

    .line 102
    invoke-virtual {p1}, Lcom/android/deskclock/data/Timer;->isExpired()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {p1}, Lcom/android/deskclock/data/Timer;->isMissed()Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    if-eqz v0, :cond_3

    move v3, v2

    goto :goto_1

    :cond_3
    move v3, v1

    .line 103
    :goto_1
    iget-object v5, p0, Lcom/android/deskclock/timer/TimerItem;->mCircleView:Lcom/android/deskclock/timer/TimerCircleView;

    if-eqz v3, :cond_4

    move v6, v4

    goto :goto_2

    :cond_4
    move v6, v1

    :goto_2
    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    if-nez v3, :cond_5

    .line 107
    iget-object v3, p0, Lcom/android/deskclock/timer/TimerItem;->mCircleView:Lcom/android/deskclock/timer/TimerCircleView;

    invoke-virtual {v3, p1}, Lcom/android/deskclock/timer/TimerCircleView;->update(Lcom/android/deskclock/data/Timer;)V

    .line 110
    :cond_5
    invoke-virtual {p1}, Lcom/android/deskclock/data/Timer;->isPaused()Z

    move-result v3

    if-eqz v3, :cond_7

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/deskclock/timer/TimerItem;->mTimerText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_3

    .line 113
    :cond_6
    iget-object v0, p0, Lcom/android/deskclock/timer/TimerItem;->mTimerText:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setAlpha(F)V

    goto :goto_4

    .line 111
    :cond_7
    :goto_3
    iget-object v0, p0, Lcom/android/deskclock/timer/TimerItem;->mTimerText:Landroid/widget/TextView;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setAlpha(F)V

    .line 117
    :goto_4
    invoke-virtual {p1}, Lcom/android/deskclock/data/Timer;->getState()Lcom/android/deskclock/data/Timer$State;

    move-result-object v0

    iget-object v3, p0, Lcom/android/deskclock/timer/TimerItem;->mLastState:Lcom/android/deskclock/data/Timer$State;

    if-eq v0, v3, :cond_b

    .line 118
    invoke-virtual {p1}, Lcom/android/deskclock/data/Timer;->getState()Lcom/android/deskclock/data/Timer$State;

    move-result-object p1

    iput-object p1, p0, Lcom/android/deskclock/timer/TimerItem;->mLastState:Lcom/android/deskclock/data/Timer$State;

    .line 119
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 120
    sget-object v0, Lcom/android/deskclock/timer/TimerItem$1;->$SwitchMap$com$android$deskclock$data$Timer$State:[I

    iget-object v3, p0, Lcom/android/deskclock/timer/TimerItem;->mLastState:Lcom/android/deskclock/data/Timer$State;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v0, v0, v3

    if-eq v0, v2, :cond_a

    const/4 v3, 0x2

    if-eq v0, v3, :cond_a

    const/4 v5, 0x3

    const v6, 0x7f110242

    const v7, 0x7f110258

    if-eq v0, v5, :cond_9

    if-eq v0, v4, :cond_8

    const/4 v4, 0x5

    if-eq v0, v4, :cond_8

    goto/16 :goto_5

    .line 145
    :cond_8
    invoke-virtual {p1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 146
    iget-object v0, p0, Lcom/android/deskclock/timer/TimerItem;->mResetAddButton:Landroid/widget/Button;

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setText(I)V

    .line 147
    iget-object v0, p0, Lcom/android/deskclock/timer/TimerItem;->mResetAddButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 148
    iget-object p1, p0, Lcom/android/deskclock/timer/TimerItem;->mTimerText:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setClickable(Z)V

    .line 149
    iget-object p1, p0, Lcom/android/deskclock/timer/TimerItem;->mTimerText:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setActivated(Z)V

    .line 150
    iget-object p0, p0, Lcom/android/deskclock/timer/TimerItem;->mTimerText:Landroid/widget/TextView;

    invoke-virtual {p0, v3}, Landroid/widget/TextView;->setImportantForAccessibility(I)V

    goto :goto_5

    .line 133
    :cond_9
    invoke-virtual {p1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 134
    iget-object v3, p0, Lcom/android/deskclock/timer/TimerItem;->mResetAddButton:Landroid/widget/Button;

    invoke-virtual {v3, v6}, Landroid/widget/Button;->setText(I)V

    .line 135
    iget-object v3, p0, Lcom/android/deskclock/timer/TimerItem;->mResetAddButton:Landroid/widget/Button;

    invoke-virtual {v3, v0}, Landroid/widget/Button;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 136
    iget-object v0, p0, Lcom/android/deskclock/timer/TimerItem;->mTimerText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setClickable(Z)V

    .line 137
    iget-object v0, p0, Lcom/android/deskclock/timer/TimerItem;->mTimerText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setActivated(Z)V

    .line 138
    iget-object v0, p0, Lcom/android/deskclock/timer/TimerItem;->mTimerText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setImportantForAccessibility(I)V

    .line 139
    iget-object p0, p0, Lcom/android/deskclock/timer/TimerItem;->mTimerText:Landroid/widget/TextView;

    new-instance v0, Lcom/android/deskclock/Utils$ClickAccessibilityDelegate;

    const v1, 0x7f110255

    .line 140
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/android/deskclock/Utils$ClickAccessibilityDelegate;-><init>(Ljava/lang/String;)V

    .line 139
    invoke-static {p0, v0}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    goto :goto_5

    .line 123
    :cond_a
    iget-object v0, p0, Lcom/android/deskclock/timer/TimerItem;->mResetAddButton:Landroid/widget/Button;

    const v3, 0x7f11025b

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(I)V

    .line 124
    iget-object v0, p0, Lcom/android/deskclock/timer/TimerItem;->mResetAddButton:Landroid/widget/Button;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 125
    iget-object v0, p0, Lcom/android/deskclock/timer/TimerItem;->mTimerText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setClickable(Z)V

    .line 126
    iget-object v0, p0, Lcom/android/deskclock/timer/TimerItem;->mTimerText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setActivated(Z)V

    .line 127
    iget-object v0, p0, Lcom/android/deskclock/timer/TimerItem;->mTimerText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setImportantForAccessibility(I)V

    .line 128
    iget-object p0, p0, Lcom/android/deskclock/timer/TimerItem;->mTimerText:Landroid/widget/TextView;

    new-instance v0, Lcom/android/deskclock/Utils$ClickAccessibilityDelegate;

    const v1, 0x7f110261

    .line 129
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, v2}, Lcom/android/deskclock/Utils$ClickAccessibilityDelegate;-><init>(Ljava/lang/String;Z)V

    .line 128
    invoke-static {p0, v0}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    :cond_b
    :goto_5
    return-void
.end method
