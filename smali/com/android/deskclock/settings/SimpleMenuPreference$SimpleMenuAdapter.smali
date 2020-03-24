.class final Lcom/android/deskclock/settings/SimpleMenuPreference$SimpleMenuAdapter;
.super Landroid/widget/ArrayAdapter;
.source "SimpleMenuPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/deskclock/settings/SimpleMenuPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SimpleMenuAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Ljava/lang/CharSequence;",
        ">;"
    }
.end annotation


# instance fields
.field private mLastSelectedOriginalPosition:I


# direct methods
.method constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 103
    invoke-direct {p0, p1, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    const/4 p1, 0x0

    .line 100
    iput p1, p0, Lcom/android/deskclock/settings/SimpleMenuPreference$SimpleMenuAdapter;->mLastSelectedOriginalPosition:I

    return-void
.end method

.method private restoreOriginalOrder()V
    .locals 2

    const/4 v0, 0x0

    .line 107
    invoke-virtual {p0, v0}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    .line 108
    invoke-virtual {p0, v0}, Landroid/widget/ArrayAdapter;->remove(Ljava/lang/Object;)V

    .line 109
    iget v1, p0, Lcom/android/deskclock/settings/SimpleMenuPreference$SimpleMenuAdapter;->mLastSelectedOriginalPosition:I

    invoke-virtual {p0, v0, v1}, Landroid/widget/ArrayAdapter;->insert(Ljava/lang/Object;I)V

    return-void
.end method

.method private swapSelectedToFront(I)V
    .locals 2

    .line 113
    invoke-virtual {p0, p1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    .line 114
    invoke-virtual {p0, v0}, Landroid/widget/ArrayAdapter;->remove(Ljava/lang/Object;)V

    const/4 v1, 0x0

    .line 115
    invoke-virtual {p0, v0, v1}, Landroid/widget/ArrayAdapter;->insert(Ljava/lang/Object;I)V

    .line 116
    iput p1, p0, Lcom/android/deskclock/settings/SimpleMenuPreference$SimpleMenuAdapter;->mLastSelectedOriginalPosition:I

    return-void
.end method


# virtual methods
.method public getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    .line 134
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    if-nez p1, :cond_0

    .line 136
    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object p0

    const p1, 0x7f0600c2

    invoke-static {p0, p1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p0

    invoke-virtual {p2, p0}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    .line 138
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object p0

    const p1, 0x7f0600c0

    invoke-static {p0, p1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p0

    invoke-virtual {p2, p0}, Landroid/view/View;->setBackgroundColor(I)V

    :goto_0
    return-object p2
.end method

.method getLastSelectedOriginalPosition()I
    .locals 0

    .line 120
    iget p0, p0, Lcom/android/deskclock/settings/SimpleMenuPreference$SimpleMenuAdapter;->mLastSelectedOriginalPosition:I

    return p0
.end method

.method setSelectedPosition(I)V
    .locals 1

    const/4 v0, 0x0

    .line 124
    invoke-virtual {p0, v0}, Landroid/widget/ArrayAdapter;->setNotifyOnChange(Z)V

    .line 125
    invoke-virtual {p0, p1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    .line 126
    invoke-direct {p0}, Lcom/android/deskclock/settings/SimpleMenuPreference$SimpleMenuAdapter;->restoreOriginalOrder()V

    .line 127
    invoke-virtual {p0, p1}, Landroid/widget/ArrayAdapter;->getPosition(Ljava/lang/Object;)I

    move-result p1

    .line 128
    invoke-direct {p0, p1}, Lcom/android/deskclock/settings/SimpleMenuPreference$SimpleMenuAdapter;->swapSelectedToFront(I)V

    .line 129
    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    return-void
.end method
