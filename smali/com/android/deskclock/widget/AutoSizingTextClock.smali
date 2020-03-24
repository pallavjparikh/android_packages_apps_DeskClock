.class public Lcom/android/deskclock/widget/AutoSizingTextClock;
.super Landroid/widget/TextClock;
.source "AutoSizingTextClock.java"


# instance fields
.field private mSuppressLayout:Z

.field private final mTextSizeHelper:Lcom/android/deskclock/widget/TextSizeHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 32
    invoke-direct {p0, p1, v0}, Lcom/android/deskclock/widget/AutoSizingTextClock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 36
    invoke-direct {p0, p1, p2, v0}, Lcom/android/deskclock/widget/AutoSizingTextClock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 40
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextClock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 29
    iput-boolean p1, p0, Lcom/android/deskclock/widget/AutoSizingTextClock;->mSuppressLayout:Z

    .line 41
    new-instance p1, Lcom/android/deskclock/widget/TextSizeHelper;

    invoke-direct {p1, p0}, Lcom/android/deskclock/widget/TextSizeHelper;-><init>(Landroid/widget/TextView;)V

    iput-object p1, p0, Lcom/android/deskclock/widget/AutoSizingTextClock;->mTextSizeHelper:Lcom/android/deskclock/widget/TextSizeHelper;

    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/android/deskclock/widget/AutoSizingTextClock;->mTextSizeHelper:Lcom/android/deskclock/widget/TextSizeHelper;

    invoke-virtual {v0, p1, p2}, Lcom/android/deskclock/widget/TextSizeHelper;->onMeasure(II)V

    .line 47
    invoke-super {p0, p1, p2}, Landroid/widget/TextClock;->onMeasure(II)V

    return-void
.end method

.method protected onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 52
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextClock;->onTextChanged(Ljava/lang/CharSequence;III)V

    .line 53
    iget-object p1, p0, Lcom/android/deskclock/widget/AutoSizingTextClock;->mTextSizeHelper:Lcom/android/deskclock/widget/TextSizeHelper;

    if-eqz p1, :cond_1

    if-eq p3, p4, :cond_0

    const/4 p1, 0x0

    .line 55
    iput-boolean p1, p0, Lcom/android/deskclock/widget/AutoSizingTextClock;->mSuppressLayout:Z

    .line 57
    :cond_0
    iget-object p0, p0, Lcom/android/deskclock/widget/AutoSizingTextClock;->mTextSizeHelper:Lcom/android/deskclock/widget/TextSizeHelper;

    invoke-virtual {p0, p3, p4}, Lcom/android/deskclock/widget/TextSizeHelper;->onTextChanged(II)V

    goto :goto_0

    .line 59
    :cond_1
    invoke-virtual {p0}, Lcom/android/deskclock/widget/AutoSizingTextClock;->requestLayout()V

    :goto_0
    return-void
.end method

.method public requestLayout()V
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/android/deskclock/widget/AutoSizingTextClock;->mTextSizeHelper:Lcom/android/deskclock/widget/TextSizeHelper;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/deskclock/widget/TextSizeHelper;->shouldIgnoreRequestLayout()Z

    move-result v0

    if-nez v0, :cond_1

    .line 73
    :cond_0
    iget-boolean v0, p0, Lcom/android/deskclock/widget/AutoSizingTextClock;->mSuppressLayout:Z

    if-nez v0, :cond_1

    .line 74
    invoke-super {p0}, Landroid/widget/TextClock;->requestLayout()V

    :cond_1
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
    .locals 1

    const/4 v0, 0x1

    .line 65
    iput-boolean v0, p0, Lcom/android/deskclock/widget/AutoSizingTextClock;->mSuppressLayout:Z

    .line 66
    invoke-super {p0, p1, p2}, Landroid/widget/TextClock;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    const/4 p1, 0x0

    .line 67
    iput-boolean p1, p0, Lcom/android/deskclock/widget/AutoSizingTextClock;->mSuppressLayout:Z

    return-void
.end method
