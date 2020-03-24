.class final Lcom/android/deskclock/ringtone/RingtoneViewHolder;
.super Lcom/android/deskclock/ItemAdapter$ItemViewHolder;
.source "RingtoneViewHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnCreateContextMenuListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/deskclock/ringtone/RingtoneViewHolder$Factory;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/deskclock/ItemAdapter$ItemViewHolder<",
        "Lcom/android/deskclock/ringtone/RingtoneHolder;",
        ">;",
        "Landroid/view/View$OnClickListener;",
        "Landroid/view/View$OnCreateContextMenuListener;"
    }
.end annotation


# instance fields
.field private final mImageView:Landroid/widget/ImageView;

.field private final mNameView:Landroid/widget/TextView;

.field private final mSelectedView:Landroid/view/View;


# direct methods
.method private constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 54
    invoke-direct {p0, p1}, Lcom/android/deskclock/ItemAdapter$ItemViewHolder;-><init>(Landroid/view/View;)V

    .line 55
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0126

    .line 57
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/deskclock/ringtone/RingtoneViewHolder;->mSelectedView:Landroid/view/View;

    const v0, 0x7f0a0100

    .line 58
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/deskclock/ringtone/RingtoneViewHolder;->mNameView:Landroid/widget/TextView;

    const v0, 0x7f0a00fe

    .line 59
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/android/deskclock/ringtone/RingtoneViewHolder;->mImageView:Landroid/widget/ImageView;

    return-void
.end method

.method synthetic constructor <init>(Landroid/view/View;Lcom/android/deskclock/ringtone/RingtoneViewHolder$1;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1}, Lcom/android/deskclock/ringtone/RingtoneViewHolder;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic onBindItemView(Lcom/android/deskclock/ItemAdapter$ItemHolder;)V
    .locals 0

    .line 40
    check-cast p1, Lcom/android/deskclock/ringtone/RingtoneHolder;

    invoke-virtual {p0, p1}, Lcom/android/deskclock/ringtone/RingtoneViewHolder;->onBindItemView(Lcom/android/deskclock/ringtone/RingtoneHolder;)V

    return-void
.end method

.method protected onBindItemView(Lcom/android/deskclock/ringtone/RingtoneHolder;)V
    .locals 6

    .line 64
    iget-object v0, p0, Lcom/android/deskclock/ringtone/RingtoneViewHolder;->mNameView:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/android/deskclock/ringtone/RingtoneHolder;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 65
    invoke-virtual {p1}, Lcom/android/deskclock/ringtone/RingtoneHolder;->isSelected()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/android/deskclock/ringtone/RingtoneHolder;->hasPermissions()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 66
    :goto_1
    iget-object v2, p0, Lcom/android/deskclock/ringtone/RingtoneViewHolder;->mNameView:Landroid/widget/TextView;

    const/high16 v3, 0x3f800000    # 1.0f

    const v4, 0x3f2147ae    # 0.63f

    if-eqz v0, :cond_2

    move v5, v3

    goto :goto_2

    :cond_2
    move v5, v4

    :goto_2
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setAlpha(F)V

    .line 67
    iget-object v2, p0, Lcom/android/deskclock/ringtone/RingtoneViewHolder;->mImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    goto :goto_3

    :cond_3
    move v3, v4

    :goto_3
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 68
    iget-object v0, p0, Lcom/android/deskclock/ringtone/RingtoneViewHolder;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearColorFilter()V

    .line 70
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    const v2, -0x7f0d0074

    if-ne v0, v2, :cond_5

    .line 72
    invoke-virtual {p1}, Lcom/android/deskclock/ringtone/RingtoneHolder;->hasPermissions()Z

    move-result v3

    if-nez v3, :cond_4

    .line 73
    iget-object v3, p0, Lcom/android/deskclock/ringtone/RingtoneViewHolder;->mImageView:Landroid/widget/ImageView;

    const v4, 0x7f0800a5

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 74
    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f04009c

    invoke-static {v3, v4}, Lcom/android/deskclock/ThemeUtils;->resolveColor(Landroid/content/Context;I)I

    move-result v3

    .line 76
    iget-object v4, p0, Lcom/android/deskclock/ringtone/RingtoneViewHolder;->mImageView:Landroid/widget/ImageView;

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v4, v3, v5}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_4

    .line 78
    :cond_4
    iget-object v3, p0, Lcom/android/deskclock/ringtone/RingtoneViewHolder;->mImageView:Landroid/widget/ImageView;

    const v4, 0x7f0800d4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_4

    .line 80
    :cond_5
    iget-object v3, p1, Lcom/android/deskclock/ItemAdapter$ItemHolder;->item:Ljava/lang/Object;

    sget-object v4, Lcom/android/deskclock/Utils;->RINGTONE_SILENT:Landroid/net/Uri;

    if-ne v3, v4, :cond_6

    .line 81
    iget-object v3, p0, Lcom/android/deskclock/ringtone/RingtoneViewHolder;->mImageView:Landroid/widget/ImageView;

    const v4, 0x7f0800a6

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_4

    .line 82
    :cond_6
    invoke-virtual {p1}, Lcom/android/deskclock/ringtone/RingtoneHolder;->isPlaying()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 83
    iget-object v3, p0, Lcom/android/deskclock/ringtone/RingtoneViewHolder;->mImageView:Landroid/widget/ImageView;

    const v4, 0x7f0800a2

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_4

    .line 85
    :cond_7
    iget-object v3, p0, Lcom/android/deskclock/ringtone/RingtoneViewHolder;->mImageView:Landroid/widget/ImageView;

    const v4, 0x7f0800a1

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 87
    :goto_4
    iget-object v3, p0, Lcom/android/deskclock/ringtone/RingtoneViewHolder;->mImageView:Landroid/widget/ImageView;

    invoke-static {v3}, Lcom/android/deskclock/AnimatorUtils;->startDrawableAnimation(Landroid/widget/ImageView;)V

    .line 89
    iget-object v3, p0, Lcom/android/deskclock/ringtone/RingtoneViewHolder;->mSelectedView:Landroid/view/View;

    invoke-virtual {p1}, Lcom/android/deskclock/ringtone/RingtoneHolder;->isSelected()Z

    move-result v4

    if-eqz v4, :cond_8

    goto :goto_5

    :cond_8
    const/16 v1, 0x8

    :goto_5
    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 91
    invoke-virtual {p1}, Lcom/android/deskclock/ringtone/RingtoneHolder;->isSelected()Z

    move-result p1

    if-eqz p1, :cond_9

    const p1, 0x7f0600c2

    goto :goto_6

    :cond_9
    const p1, 0x7f0600c0

    .line 92
    :goto_6
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, p1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {v1, p1}, Landroid/view/View;->setBackgroundColor(I)V

    if-ne v0, v2, :cond_a

    .line 95
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    :cond_a
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 101
    invoke-virtual {p0}, Lcom/android/deskclock/ItemAdapter$ItemViewHolder;->getItemHolder()Lcom/android/deskclock/ItemAdapter$ItemHolder;

    move-result-object p1

    check-cast p1, Lcom/android/deskclock/ringtone/RingtoneHolder;

    invoke-virtual {p1}, Lcom/android/deskclock/ringtone/RingtoneHolder;->hasPermissions()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 102
    invoke-virtual {p0, p1}, Lcom/android/deskclock/ItemAdapter$ItemViewHolder;->notifyItemClicked(I)V

    goto :goto_0

    :cond_0
    const/4 p1, -0x2

    .line 104
    invoke-virtual {p0, p1}, Lcom/android/deskclock/ItemAdapter$ItemViewHolder;->notifyItemClicked(I)V

    :goto_0
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 0

    const/4 p2, -0x1

    .line 111
    invoke-virtual {p0, p2}, Lcom/android/deskclock/ItemAdapter$ItemViewHolder;->notifyItemClicked(I)V

    const/4 p0, 0x0

    const p2, 0x7f11021c

    .line 112
    invoke-interface {p1, p0, p0, p0, p2}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    return-void
.end method
