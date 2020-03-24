.class public final Lcom/android/deskclock/TimerTextController;
.super Ljava/lang/Object;
.source "TimerTextController.java"


# instance fields
.field private final mTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/widget/TextView;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/android/deskclock/TimerTextController;->mTextView:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public setTimeString(J)V
    .locals 8

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    const/4 v1, 0x0

    if-gez v0, :cond_0

    neg-long p1, p1

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const-wide/32 v2, 0x36ee80

    .line 43
    div-long v4, p1, v2

    long-to-int v4, v4

    .line 44
    rem-long/2addr p1, v2

    long-to-int p1, p1

    int-to-long p1, p1

    const-wide/32 v2, 0xea60

    .line 46
    div-long v5, p1, v2

    long-to-int v5, v5

    .line 47
    rem-long/2addr p1, v2

    long-to-int p1, p1

    int-to-long p1, p1

    const-wide/16 v2, 0x3e8

    .line 49
    div-long v6, p1, v2

    long-to-int v6, v6

    .line 50
    rem-long/2addr p1, v2

    long-to-int p1, p1

    if-nez v0, :cond_3

    if-eqz p1, :cond_3

    add-int/lit8 p1, v6, 0x1

    const/16 p2, 0x3c

    if-ne p1, p2, :cond_2

    add-int/lit8 p1, v5, 0x1

    if-ne p1, p2, :cond_1

    add-int/lit8 v4, v4, 0x1

    move v5, v1

    goto :goto_1

    :cond_1
    move v5, p1

    goto :goto_1

    :cond_2
    move v1, p1

    goto :goto_1

    :cond_3
    move v1, v6

    .line 65
    :goto_1
    iget-object p1, p0, Lcom/android/deskclock/TimerTextController;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v4, v5, v1}, Lcom/android/deskclock/Utils;->getTimeString(Landroid/content/Context;III)Ljava/lang/String;

    move-result-object p1

    if-eqz v0, :cond_5

    if-nez v4, :cond_4

    if-nez v5, :cond_4

    if-eqz v1, :cond_5

    .line 67
    :cond_4
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u2212"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 70
    :cond_5
    iget-object p0, p0, Lcom/android/deskclock/TimerTextController;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
