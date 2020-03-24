.class public Lcom/android/deskclock/widget/AutoSizingTextView;
.super Landroidx/appcompat/widget/AppCompatTextView;
.source "AutoSizingTextView.java"


# instance fields
.field private final mTextSizeHelper:Lcom/android/deskclock/widget/TextSizeHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 31
    invoke-direct {p0, p1, v0}, Lcom/android/deskclock/widget/AutoSizingTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x1010084

    .line 35
    invoke-direct {p0, p1, p2, v0}, Lcom/android/deskclock/widget/AutoSizingTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 39
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 40
    new-instance p1, Lcom/android/deskclock/widget/TextSizeHelper;

    invoke-direct {p1, p0}, Lcom/android/deskclock/widget/TextSizeHelper;-><init>(Landroid/widget/TextView;)V

    iput-object p1, p0, Lcom/android/deskclock/widget/AutoSizingTextView;->mTextSizeHelper:Lcom/android/deskclock/widget/TextSizeHelper;

    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/android/deskclock/widget/AutoSizingTextView;->mTextSizeHelper:Lcom/android/deskclock/widget/TextSizeHelper;

    invoke-virtual {v0, p1, p2}, Lcom/android/deskclock/widget/TextSizeHelper;->onMeasure(II)V

    .line 46
    invoke-super {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatTextView;->onMeasure(II)V

    return-void
.end method

.method protected onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 51
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/appcompat/widget/AppCompatTextView;->onTextChanged(Ljava/lang/CharSequence;III)V

    .line 52
    iget-object p1, p0, Lcom/android/deskclock/widget/AutoSizingTextView;->mTextSizeHelper:Lcom/android/deskclock/widget/TextSizeHelper;

    if-eqz p1, :cond_0

    .line 53
    invoke-virtual {p1, p3, p4}, Lcom/android/deskclock/widget/TextSizeHelper;->onTextChanged(II)V

    goto :goto_0

    .line 55
    :cond_0
    invoke-virtual {p0}, Lcom/android/deskclock/widget/AutoSizingTextView;->requestLayout()V

    :goto_0
    return-void
.end method

.method public requestLayout()V
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/android/deskclock/widget/AutoSizingTextView;->mTextSizeHelper:Lcom/android/deskclock/widget/TextSizeHelper;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/deskclock/widget/TextSizeHelper;->shouldIgnoreRequestLayout()Z

    move-result v0

    if-nez v0, :cond_1

    .line 62
    :cond_0
    invoke-super {p0}, Landroid/widget/TextView;->requestLayout()V

    :cond_1
    return-void
.end method
