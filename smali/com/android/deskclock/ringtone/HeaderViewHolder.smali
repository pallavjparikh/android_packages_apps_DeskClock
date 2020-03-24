.class final Lcom/android/deskclock/ringtone/HeaderViewHolder;
.super Lcom/android/deskclock/ItemAdapter$ItemViewHolder;
.source "HeaderViewHolder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/deskclock/ringtone/HeaderViewHolder$Factory;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/deskclock/ItemAdapter$ItemViewHolder<",
        "Lcom/android/deskclock/ringtone/HeaderHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private final mItemHeader:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 34
    invoke-direct {p0, p1}, Lcom/android/deskclock/ItemAdapter$ItemViewHolder;-><init>(Landroid/view/View;)V

    const v0, 0x7f0a00ff

    .line 35
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/deskclock/ringtone/HeaderViewHolder;->mItemHeader:Landroid/widget/TextView;

    return-void
.end method

.method synthetic constructor <init>(Landroid/view/View;Lcom/android/deskclock/ringtone/HeaderViewHolder$1;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1}, Lcom/android/deskclock/ringtone/HeaderViewHolder;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic onBindItemView(Lcom/android/deskclock/ItemAdapter$ItemHolder;)V
    .locals 0

    .line 27
    check-cast p1, Lcom/android/deskclock/ringtone/HeaderHolder;

    invoke-virtual {p0, p1}, Lcom/android/deskclock/ringtone/HeaderViewHolder;->onBindItemView(Lcom/android/deskclock/ringtone/HeaderHolder;)V

    return-void
.end method

.method protected onBindItemView(Lcom/android/deskclock/ringtone/HeaderHolder;)V
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/android/deskclock/ringtone/HeaderViewHolder;->mItemHeader:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/android/deskclock/ringtone/HeaderHolder;->getTextResId()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method
