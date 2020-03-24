.class public final Lcom/android/deskclock/StopwatchTextController;
.super Ljava/lang/Object;
.source "StopwatchTextController.java"


# instance fields
.field private final mHundredthsTextView:Landroid/widget/TextView;

.field private mLastTime:J

.field private final mMainTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 2

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/high16 v0, -0x8000000000000000L

    .line 36
    iput-wide v0, p0, Lcom/android/deskclock/StopwatchTextController;->mLastTime:J

    .line 39
    iput-object p1, p0, Lcom/android/deskclock/StopwatchTextController;->mMainTextView:Landroid/widget/TextView;

    .line 40
    iput-object p2, p0, Lcom/android/deskclock/StopwatchTextController;->mHundredthsTextView:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public setTimeString(J)V
    .locals 9

    .line 46
    iget-wide v0, p0, Lcom/android/deskclock/StopwatchTextController;->mLastTime:J

    const-wide/16 v2, 0xa

    div-long/2addr v0, v2

    div-long v2, p1, v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-wide/32 v0, 0x36ee80

    .line 50
    div-long v2, p1, v0

    long-to-int v2, v2

    .line 51
    rem-long v0, p1, v0

    long-to-int v0, v0

    int-to-long v0, v0

    const-wide/32 v3, 0xea60

    .line 53
    div-long v5, v0, v3

    long-to-int v5, v5

    .line 54
    rem-long/2addr v0, v3

    long-to-int v0, v0

    int-to-long v0, v0

    const-wide/16 v3, 0x3e8

    .line 56
    div-long v6, v0, v3

    long-to-int v6, v6

    .line 57
    rem-long/2addr v0, v3

    long-to-int v0, v0

    .line 59
    iget-object v1, p0, Lcom/android/deskclock/StopwatchTextController;->mHundredthsTextView:Landroid/widget/TextView;

    invoke-static {}, Lcom/android/deskclock/uidata/UiDataModel;->getUiDataModel()Lcom/android/deskclock/uidata/UiDataModel;

    move-result-object v7

    div-int/lit8 v0, v0, 0xa

    const/4 v8, 0x2

    invoke-virtual {v7, v0, v8}, Lcom/android/deskclock/uidata/UiDataModel;->getFormattedNumber(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    iget-wide v0, p0, Lcom/android/deskclock/StopwatchTextController;->mLastTime:J

    div-long/2addr v0, v3

    div-long v3, p1, v3

    cmp-long v0, v0, v3

    if-eqz v0, :cond_1

    .line 65
    iget-object v0, p0, Lcom/android/deskclock/StopwatchTextController;->mMainTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 66
    invoke-static {v0, v2, v5, v6}, Lcom/android/deskclock/Utils;->getTimeString(Landroid/content/Context;III)Ljava/lang/String;

    move-result-object v0

    .line 67
    iget-object v1, p0, Lcom/android/deskclock/StopwatchTextController;->mMainTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    :cond_1
    iput-wide p1, p0, Lcom/android/deskclock/StopwatchTextController;->mLastTime:J

    return-void
.end method
