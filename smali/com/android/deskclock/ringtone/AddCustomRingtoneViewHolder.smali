.class final Lcom/android/deskclock/ringtone/AddCustomRingtoneViewHolder;
.super Lcom/android/deskclock/ItemAdapter$ItemViewHolder;
.source "AddCustomRingtoneViewHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/deskclock/ringtone/AddCustomRingtoneViewHolder$Factory;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/deskclock/ItemAdapter$ItemViewHolder<",
        "Lcom/android/deskclock/ringtone/AddCustomRingtoneHolder;",
        ">;",
        "Landroid/view/View$OnClickListener;"
    }
.end annotation


# direct methods
.method private constructor <init>(Landroid/view/View;)V
    .locals 2

    .line 37
    invoke-direct {p0, p1}, Lcom/android/deskclock/ItemAdapter$ItemViewHolder;-><init>(Landroid/view/View;)V

    .line 38
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p0, 0x7f0a0126

    .line 40
    invoke-virtual {p1, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    const/16 v0, 0x8

    .line 41
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    const p0, 0x7f0a0100

    .line 43
    invoke-virtual {p1, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    .line 44
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f11018a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x3f2147ae    # 0.63f

    .line 45
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setAlpha(F)V

    const p0, 0x7f0a00fe

    .line 47
    invoke-virtual {p1, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ImageView;

    const p1, 0x7f08007f

    .line 48
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 49
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/view/View;Lcom/android/deskclock/ringtone/AddCustomRingtoneViewHolder$1;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Lcom/android/deskclock/ringtone/AddCustomRingtoneViewHolder;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    const/high16 p1, -0x80000000

    .line 54
    invoke-virtual {p0, p1}, Lcom/android/deskclock/ItemAdapter$ItemViewHolder;->notifyItemClicked(I)V

    return-void
.end method
