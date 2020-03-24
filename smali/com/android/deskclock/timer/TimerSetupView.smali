.class public Lcom/android/deskclock/timer/TimerSetupView;
.super Landroid/widget/LinearLayout;
.source "TimerSetupView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field private mDeleteView:Landroid/view/View;

.field private mDigitViews:[Landroid/widget/TextView;

.field private mDividerView:Landroid/view/View;

.field private mFabContainer:Lcom/android/deskclock/FabContainer;

.field private final mInput:[I

.field private mInputPointer:I

.field private mTimeTemplate:Ljava/lang/CharSequence;

.field private mTimeView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 65
    invoke-direct {p0, p1, v0}, Lcom/android/deskclock/timer/TimerSetupView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    .line 69
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x6

    new-array v0, p2, [I

    .line 51
    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/deskclock/timer/TimerSetupView;->mInput:[I

    const/4 v0, -0x1

    .line 53
    iput v0, p0, Lcom/android/deskclock/timer/TimerSetupView;->mInputPointer:I

    const/4 v0, 0x0

    .line 71
    invoke-static {v0}, Landroid/text/BidiFormatter;->getInstance(Z)Landroid/text/BidiFormatter;

    move-result-object v1

    const v2, 0x7f1101de

    .line 72
    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f1101fa

    .line 73
    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f110221

    .line 74
    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-array p2, p2, [Ljava/lang/CharSequence;

    const-string v5, "^1"

    .line 78
    invoke-virtual {v1, v5}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, p2, v0

    const-string v0, "^2"

    .line 79
    invoke-virtual {v1, v0}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v5, 0x1

    aput-object v0, p2, v5

    const-string v0, "^3"

    .line 80
    invoke-virtual {v1, v0}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    aput-object v0, p2, v1

    new-instance v0, Landroid/text/style/RelativeSizeSpan;

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-direct {v0, v1}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    .line 81
    invoke-static {v2, v0}, Lcom/android/deskclock/FormattedTextUtils;->formatText(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    const/4 v2, 0x3

    aput-object v0, p2, v2

    new-instance v0, Landroid/text/style/RelativeSizeSpan;

    invoke-direct {v0, v1}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    .line 82
    invoke-static {v3, v0}, Lcom/android/deskclock/FormattedTextUtils;->formatText(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    const/4 v2, 0x4

    aput-object v0, p2, v2

    new-instance v0, Landroid/text/style/RelativeSizeSpan;

    invoke-direct {v0, v1}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    .line 83
    invoke-static {v4, v0}, Lcom/android/deskclock/FormattedTextUtils;->formatText(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    const/4 v1, 0x5

    aput-object v0, p2, v1

    const-string v0, "^1^4 ^2^5 ^3^6"

    .line 77
    invoke-static {v0, p2}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p2

    iput-object p2, p0, Lcom/android/deskclock/timer/TimerSetupView;->mTimeTemplate:Ljava/lang/CharSequence;

    .line 85
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const p2, 0x7f0d0085

    invoke-virtual {p1, p2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method private append(I)V
    .locals 6

    if-ltz p1, :cond_3

    const/16 v0, 0x9

    if-gt p1, v0, :cond_3

    .line 238
    iget v0, p0, Lcom/android/deskclock/timer/TimerSetupView;->mInputPointer:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    if-nez p1, :cond_0

    return-void

    .line 243
    :cond_0
    iget v0, p0, Lcom/android/deskclock/timer/TimerSetupView;->mInputPointer:I

    iget-object v1, p0, Lcom/android/deskclock/timer/TimerSetupView;->mInput:[I

    array-length v2, v1

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    if-ne v0, v2, :cond_1

    return-void

    :cond_1
    add-int/2addr v0, v3

    const/4 v2, 0x0

    .line 248
    invoke-static {v1, v2, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 249
    iget-object v0, p0, Lcom/android/deskclock/timer/TimerSetupView;->mInput:[I

    aput p1, v0, v2

    .line 250
    iget v0, p0, Lcom/android/deskclock/timer/TimerSetupView;->mInputPointer:I

    add-int/2addr v0, v3

    iput v0, p0, Lcom/android/deskclock/timer/TimerSetupView;->mInputPointer:I

    .line 251
    invoke-direct {p0}, Lcom/android/deskclock/timer/TimerSetupView;->updateTime()V

    .line 254
    iget-object v0, p0, Lcom/android/deskclock/timer/TimerSetupView;->mDeleteView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const v4, 0x7f110249

    new-array v3, v3, [Ljava/lang/Object;

    .line 256
    invoke-static {}, Lcom/android/deskclock/uidata/UiDataModel;->getUiDataModel()Lcom/android/deskclock/uidata/UiDataModel;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/android/deskclock/uidata/UiDataModel;->getFormattedNumber(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, v2

    .line 254
    invoke-virtual {v1, v4, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 259
    iget p1, p0, Lcom/android/deskclock/timer/TimerSetupView;->mInputPointer:I

    if-nez p1, :cond_2

    .line 260
    invoke-direct {p0}, Lcom/android/deskclock/timer/TimerSetupView;->updateFab()V

    .line 261
    invoke-direct {p0}, Lcom/android/deskclock/timer/TimerSetupView;->updateDeleteAndDivider()V

    :cond_2
    return-void

    .line 234
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid digit: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private delete()V
    .locals 7

    .line 267
    iget v0, p0, Lcom/android/deskclock/timer/TimerSetupView;->mInputPointer:I

    if-gez v0, :cond_0

    return-void

    .line 271
    :cond_0
    iget-object v1, p0, Lcom/android/deskclock/timer/TimerSetupView;->mInput:[I

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v1, v2, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 272
    iget-object v0, p0, Lcom/android/deskclock/timer/TimerSetupView;->mInput:[I

    iget v1, p0, Lcom/android/deskclock/timer/TimerSetupView;->mInputPointer:I

    aput v3, v0, v1

    sub-int/2addr v1, v2

    .line 273
    iput v1, p0, Lcom/android/deskclock/timer/TimerSetupView;->mInputPointer:I

    .line 274
    invoke-direct {p0}, Lcom/android/deskclock/timer/TimerSetupView;->updateTime()V

    .line 277
    iget v0, p0, Lcom/android/deskclock/timer/TimerSetupView;->mInputPointer:I

    if-ltz v0, :cond_1

    .line 278
    iget-object v0, p0, Lcom/android/deskclock/timer/TimerSetupView;->mDeleteView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const v4, 0x7f110249

    new-array v2, v2, [Ljava/lang/Object;

    .line 280
    invoke-static {}, Lcom/android/deskclock/uidata/UiDataModel;->getUiDataModel()Lcom/android/deskclock/uidata/UiDataModel;

    move-result-object v5

    iget-object v6, p0, Lcom/android/deskclock/timer/TimerSetupView;->mInput:[I

    aget v6, v6, v3

    invoke-virtual {v5, v6}, Lcom/android/deskclock/uidata/UiDataModel;->getFormattedNumber(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v3

    .line 278
    invoke-virtual {v1, v4, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 282
    :cond_1
    iget-object v0, p0, Lcom/android/deskclock/timer/TimerSetupView;->mDeleteView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f110247

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 286
    :goto_0
    iget v0, p0, Lcom/android/deskclock/timer/TimerSetupView;->mInputPointer:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    .line 287
    invoke-direct {p0}, Lcom/android/deskclock/timer/TimerSetupView;->updateFab()V

    .line 288
    invoke-direct {p0}, Lcom/android/deskclock/timer/TimerSetupView;->updateDeleteAndDivider()V

    :cond_2
    return-void
.end method

.method private getDigitForId(I)I
    .locals 2

    packed-switch p1, :pswitch_data_0

    .line 201
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    const/16 p0, 0x9

    return p0

    :pswitch_1
    const/16 p0, 0x8

    return p0

    :pswitch_2
    const/4 p0, 0x7

    return p0

    :pswitch_3
    const/4 p0, 0x6

    return p0

    :pswitch_4
    const/4 p0, 0x5

    return p0

    :pswitch_5
    const/4 p0, 0x4

    return p0

    :pswitch_6
    const/4 p0, 0x3

    return p0

    :pswitch_7
    const/4 p0, 0x2

    return p0

    :pswitch_8
    const/4 p0, 0x1

    return p0

    :pswitch_9
    const/4 p0, 0x0

    return p0

    :pswitch_data_0
    .packed-switch 0x7f0a0151
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private updateDeleteAndDivider()V
    .locals 2

    .line 223
    invoke-virtual {p0}, Lcom/android/deskclock/timer/TimerSetupView;->hasValidInput()Z

    move-result v0

    .line 224
    iget-object v1, p0, Lcom/android/deskclock/timer/TimerSetupView;->mDeleteView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 225
    iget-object p0, p0, Lcom/android/deskclock/timer/TimerSetupView;->mDividerView:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/View;->setActivated(Z)V

    return-void
.end method

.method private updateFab()V
    .locals 1

    .line 229
    iget-object p0, p0, Lcom/android/deskclock/timer/TimerSetupView;->mFabContainer:Lcom/android/deskclock/FabContainer;

    const/4 v0, 0x2

    invoke-interface {p0, v0}, Lcom/android/deskclock/FabContainer;->updateFab(I)V

    return-void
.end method

.method private updateTime()V
    .locals 12

    .line 205
    iget-object v0, p0, Lcom/android/deskclock/timer/TimerSetupView;->mInput:[I

    const/4 v1, 0x1

    aget v2, v0, v1

    mul-int/lit8 v2, v2, 0xa

    const/4 v3, 0x0

    aget v4, v0, v3

    add-int/2addr v2, v4

    const/4 v4, 0x3

    .line 206
    aget v5, v0, v4

    mul-int/lit8 v5, v5, 0xa

    const/4 v6, 0x2

    aget v7, v0, v6

    add-int/2addr v5, v7

    const/4 v7, 0x5

    .line 207
    aget v7, v0, v7

    mul-int/lit8 v7, v7, 0xa

    const/4 v8, 0x4

    aget v0, v0, v8

    add-int/2addr v7, v0

    .line 209
    invoke-static {}, Lcom/android/deskclock/uidata/UiDataModel;->getUiDataModel()Lcom/android/deskclock/uidata/UiDataModel;

    move-result-object v0

    .line 210
    iget-object v8, p0, Lcom/android/deskclock/timer/TimerSetupView;->mTimeView:Landroid/widget/TextView;

    iget-object v9, p0, Lcom/android/deskclock/timer/TimerSetupView;->mTimeTemplate:Ljava/lang/CharSequence;

    new-array v10, v4, [Ljava/lang/CharSequence;

    .line 211
    invoke-virtual {v0, v7, v6}, Lcom/android/deskclock/uidata/UiDataModel;->getFormattedNumber(II)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v3

    .line 212
    invoke-virtual {v0, v5, v6}, Lcom/android/deskclock/uidata/UiDataModel;->getFormattedNumber(II)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v1

    .line 213
    invoke-virtual {v0, v2, v6}, Lcom/android/deskclock/uidata/UiDataModel;->getFormattedNumber(II)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v10, v6

    .line 210
    invoke-static {v9, v10}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 215
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 216
    iget-object p0, p0, Lcom/android/deskclock/timer/TimerSetupView;->mTimeView:Landroid/widget/TextView;

    new-array v4, v4, [Ljava/lang/Object;

    new-array v8, v1, [Ljava/lang/Object;

    .line 217
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v3

    const v9, 0x7f0f0005

    invoke-virtual {v0, v9, v7, v8}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v3

    new-array v7, v1, [Ljava/lang/Object;

    .line 218
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v3

    const v8, 0x7f0f0007

    invoke-virtual {v0, v8, v5, v7}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    new-array v1, v1, [Ljava/lang/Object;

    .line 219
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v3

    const v3, 0x7f0f0009

    invoke-virtual {v0, v3, v2, v1}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v6

    const v1, 0x7f11025f

    .line 216
    invoke-virtual {v0, v1, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public getState()Ljava/io/Serializable;
    .locals 1

    .line 318
    iget-object p0, p0, Lcom/android/deskclock/timer/TimerSetupView;->mInput:[I

    array-length v0, p0

    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p0

    return-object p0
.end method

.method public getTimeInMillis()J
    .locals 7

    .line 306
    iget-object p0, p0, Lcom/android/deskclock/timer/TimerSetupView;->mInput:[I

    const/4 v0, 0x1

    aget v0, p0, v0

    mul-int/lit8 v0, v0, 0xa

    const/4 v1, 0x0

    aget v1, p0, v1

    add-int/2addr v0, v1

    const/4 v1, 0x3

    .line 307
    aget v1, p0, v1

    mul-int/lit8 v1, v1, 0xa

    const/4 v2, 0x2

    aget v2, p0, v2

    add-int/2addr v1, v2

    const/4 v2, 0x5

    .line 308
    aget v2, p0, v2

    mul-int/lit8 v2, v2, 0xa

    const/4 v3, 0x4

    aget p0, p0, v3

    add-int/2addr v2, p0

    int-to-long v3, v0

    const-wide/16 v5, 0x3e8

    mul-long/2addr v3, v5

    int-to-long v0, v1

    const-wide/32 v5, 0xea60

    mul-long/2addr v0, v5

    add-long/2addr v3, v0

    int-to-long v0, v2

    const-wide/32 v5, 0x36ee80

    mul-long/2addr v0, v5

    add-long/2addr v3, v0

    return-wide v3
.end method

.method public hasValidInput()Z
    .locals 1

    .line 302
    iget p0, p0, Lcom/android/deskclock/timer/TimerSetupView;->mInputPointer:I

    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 161
    iget-object v0, p0, Lcom/android/deskclock/timer/TimerSetupView;->mDeleteView:Landroid/view/View;

    if-ne p1, v0, :cond_0

    .line 162
    invoke-direct {p0}, Lcom/android/deskclock/timer/TimerSetupView;->delete()V

    goto :goto_0

    .line 164
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/deskclock/timer/TimerSetupView;->getDigitForId(I)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/deskclock/timer/TimerSetupView;->append(I)V

    :goto_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 10

    .line 90
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    const v0, 0x7f0a015c

    .line 92
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/deskclock/timer/TimerSetupView;->mTimeView:Landroid/widget/TextView;

    const v0, 0x7f0a0150

    .line 93
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/deskclock/timer/TimerSetupView;->mDeleteView:Landroid/view/View;

    const v0, 0x7f0a015b

    .line 94
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/deskclock/timer/TimerSetupView;->mDividerView:Landroid/view/View;

    const/16 v0, 0xa

    new-array v0, v0, [Landroid/widget/TextView;

    const v1, 0x7f0a0151

    .line 96
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const v1, 0x7f0a0152

    .line 97
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const v1, 0x7f0a0153

    .line 98
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const/4 v4, 0x2

    aput-object v1, v0, v4

    const v1, 0x7f0a0154

    .line 99
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const/4 v5, 0x3

    aput-object v1, v0, v5

    const v1, 0x7f0a0155

    .line 100
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const/4 v5, 0x4

    aput-object v1, v0, v5

    const v1, 0x7f0a0156

    .line 101
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const/4 v5, 0x5

    aput-object v1, v0, v5

    const v1, 0x7f0a0157

    .line 102
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const/4 v5, 0x6

    aput-object v1, v0, v5

    const v1, 0x7f0a0158

    .line 103
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const/4 v5, 0x7

    aput-object v1, v0, v5

    const v1, 0x7f0a0159

    .line 104
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const/16 v5, 0x8

    aput-object v1, v0, v5

    const v1, 0x7f0a015a

    .line 105
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const/16 v5, 0x9

    aput-object v1, v0, v5

    iput-object v0, p0, Lcom/android/deskclock/timer/TimerSetupView;->mDigitViews:[Landroid/widget/TextView;

    .line 110
    iget-object v0, p0, Lcom/android/deskclock/timer/TimerSetupView;->mDividerView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f04009f

    .line 111
    invoke-static {v0, v1}, Lcom/android/deskclock/ThemeUtils;->resolveColor(Landroid/content/Context;I)I

    move-result v1

    new-array v5, v3, [I

    const v6, -0x101009f

    aput v6, v5, v2

    const v6, 0x7f0400a1

    .line 113
    invoke-static {v0, v6, v5}, Lcom/android/deskclock/ThemeUtils;->resolveColor(Landroid/content/Context;I[I)I

    move-result v0

    .line 115
    iget-object v5, p0, Lcom/android/deskclock/timer/TimerSetupView;->mDividerView:Landroid/view/View;

    new-instance v6, Landroid/content/res/ColorStateList;

    new-array v7, v4, [[I

    new-array v8, v3, [I

    const v9, 0x10102fe

    aput v9, v8, v2

    aput-object v8, v7, v2

    new-array v8, v2, [I

    aput-object v8, v7, v3

    new-array v4, v4, [I

    aput v1, v4, v2

    aput v0, v4, v3

    invoke-direct {v6, v7, v4}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    invoke-static {v5, v6}, Landroidx/core/view/ViewCompat;->setBackgroundTintList(Landroid/view/View;Landroid/content/res/ColorStateList;)V

    .line 118
    iget-object v0, p0, Lcom/android/deskclock/timer/TimerSetupView;->mDividerView:Landroid/view/View;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-static {v0, v1}, Landroidx/core/view/ViewCompat;->setBackgroundTintMode(Landroid/view/View;Landroid/graphics/PorterDuff$Mode;)V

    .line 121
    invoke-static {}, Lcom/android/deskclock/uidata/UiDataModel;->getUiDataModel()Lcom/android/deskclock/uidata/UiDataModel;

    move-result-object v0

    .line 122
    iget-object v1, p0, Lcom/android/deskclock/timer/TimerSetupView;->mDigitViews:[Landroid/widget/TextView;

    array-length v4, v1

    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v5, v1, v2

    .line 123
    invoke-virtual {v5}, Landroid/widget/TextView;->getId()I

    move-result v6

    invoke-direct {p0, v6}, Lcom/android/deskclock/timer/TimerSetupView;->getDigitForId(I)I

    move-result v6

    .line 124
    invoke-virtual {v0, v6, v3}, Lcom/android/deskclock/uidata/UiDataModel;->getFormattedNumber(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 125
    invoke-virtual {v5, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 128
    :cond_0
    iget-object v0, p0, Lcom/android/deskclock/timer/TimerSetupView;->mDeleteView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 129
    iget-object v0, p0, Lcom/android/deskclock/timer/TimerSetupView;->mDeleteView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 131
    invoke-direct {p0}, Lcom/android/deskclock/timer/TimerSetupView;->updateTime()V

    .line 132
    invoke-direct {p0}, Lcom/android/deskclock/timer/TimerSetupView;->updateDeleteAndDivider()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/16 p2, 0x43

    if-ne p1, p2, :cond_0

    .line 143
    iget-object p1, p0, Lcom/android/deskclock/timer/TimerSetupView;->mDeleteView:Landroid/view/View;

    goto :goto_0

    :cond_0
    const/4 p2, 0x7

    if-lt p1, p2, :cond_1

    const/16 v0, 0x10

    if-gt p1, v0, :cond_1

    .line 145
    iget-object v0, p0, Lcom/android/deskclock/timer/TimerSetupView;->mDigitViews:[Landroid/widget/TextView;

    sub-int/2addr p1, p2

    aget-object p1, v0, p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_3

    .line 149
    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 150
    invoke-virtual {p0}, Lcom/android/deskclock/timer/TimerSetupView;->hasValidInput()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 151
    iget-object p0, p0, Lcom/android/deskclock/timer/TimerSetupView;->mFabContainer:Lcom/android/deskclock/FabContainer;

    const/4 p2, 0x4

    invoke-interface {p0, p2}, Lcom/android/deskclock/FabContainer;->updateFab(I)V

    :cond_2
    return p1

    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 1

    .line 170
    iget-object v0, p0, Lcom/android/deskclock/timer/TimerSetupView;->mDeleteView:Landroid/view/View;

    if-ne p1, v0, :cond_0

    .line 171
    invoke-virtual {p0}, Lcom/android/deskclock/timer/TimerSetupView;->reset()V

    .line 172
    invoke-direct {p0}, Lcom/android/deskclock/timer/TimerSetupView;->updateFab()V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public reset()V
    .locals 3

    .line 293
    iget v0, p0, Lcom/android/deskclock/timer/TimerSetupView;->mInputPointer:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 294
    iget-object v0, p0, Lcom/android/deskclock/timer/TimerSetupView;->mInput:[I

    const/4 v2, 0x0

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([II)V

    .line 295
    iput v1, p0, Lcom/android/deskclock/timer/TimerSetupView;->mInputPointer:I

    .line 296
    invoke-direct {p0}, Lcom/android/deskclock/timer/TimerSetupView;->updateTime()V

    .line 297
    invoke-direct {p0}, Lcom/android/deskclock/timer/TimerSetupView;->updateDeleteAndDivider()V

    :cond_0
    return-void
.end method

.method public setFabContainer(Lcom/android/deskclock/FabContainer;)V
    .locals 0

    .line 136
    iput-object p1, p0, Lcom/android/deskclock/timer/TimerSetupView;->mFabContainer:Lcom/android/deskclock/FabContainer;

    return-void
.end method

.method public setState(Ljava/io/Serializable;)V
    .locals 3

    .line 325
    check-cast p1, [I

    if-eqz p1, :cond_2

    .line 326
    iget-object v0, p0, Lcom/android/deskclock/timer/TimerSetupView;->mInput:[I

    array-length v0, v0

    array-length v1, p1

    if-ne v0, v1, :cond_2

    const/4 v0, 0x0

    .line 327
    :goto_0
    iget-object v1, p0, Lcom/android/deskclock/timer/TimerSetupView;->mInput:[I

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 328
    aget v2, p1, v0

    aput v2, v1, v0

    .line 329
    aget v1, v1, v0

    if-eqz v1, :cond_0

    .line 330
    iput v0, p0, Lcom/android/deskclock/timer/TimerSetupView;->mInputPointer:I

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 333
    :cond_1
    invoke-direct {p0}, Lcom/android/deskclock/timer/TimerSetupView;->updateTime()V

    .line 334
    invoke-direct {p0}, Lcom/android/deskclock/timer/TimerSetupView;->updateDeleteAndDivider()V

    :cond_2
    return-void
.end method
