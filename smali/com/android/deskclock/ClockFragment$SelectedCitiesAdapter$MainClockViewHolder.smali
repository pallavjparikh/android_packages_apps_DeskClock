.class final Lcom/android/deskclock/ClockFragment$SelectedCitiesAdapter$MainClockViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "ClockFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/deskclock/ClockFragment$SelectedCitiesAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "MainClockViewHolder"
.end annotation


# instance fields
.field private final mAnalogClock:Lcom/android/deskclock/AnalogClock;

.field private final mDigitalClock:Landroid/widget/TextClock;

.field private final mHairline:Landroid/view/View;


# direct methods
.method private constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 527
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const v0, 0x7f0a00a7

    .line 529
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/deskclock/ClockFragment$SelectedCitiesAdapter$MainClockViewHolder;->mHairline:Landroid/view/View;

    const v0, 0x7f0a0089

    .line 530
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextClock;

    iput-object v0, p0, Lcom/android/deskclock/ClockFragment$SelectedCitiesAdapter$MainClockViewHolder;->mDigitalClock:Landroid/widget/TextClock;

    const v0, 0x7f0a004a

    .line 531
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/deskclock/AnalogClock;

    iput-object v0, p0, Lcom/android/deskclock/ClockFragment$SelectedCitiesAdapter$MainClockViewHolder;->mAnalogClock:Lcom/android/deskclock/AnalogClock;

    .line 532
    invoke-static {p1}, Lcom/android/deskclock/Utils;->setClockIconTypeface(Landroid/view/View;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/view/View;Lcom/android/deskclock/ClockFragment$1;)V
    .locals 0

    .line 520
    invoke-direct {p0, p1}, Lcom/android/deskclock/ClockFragment$SelectedCitiesAdapter$MainClockViewHolder;-><init>(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/deskclock/ClockFragment$SelectedCitiesAdapter$MainClockViewHolder;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .line 520
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/deskclock/ClockFragment$SelectedCitiesAdapter$MainClockViewHolder;->bind(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method private bind(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    .line 537
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {p1, v0}, Lcom/android/deskclock/Utils;->refreshAlarm(Landroid/content/Context;Landroid/view/View;)V

    .line 539
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {p2, p3, p1}, Lcom/android/deskclock/Utils;->updateDate(Ljava/lang/String;Ljava/lang/String;Landroid/view/View;)V

    .line 540
    iget-object p1, p0, Lcom/android/deskclock/ClockFragment$SelectedCitiesAdapter$MainClockViewHolder;->mDigitalClock:Landroid/widget/TextClock;

    iget-object p2, p0, Lcom/android/deskclock/ClockFragment$SelectedCitiesAdapter$MainClockViewHolder;->mAnalogClock:Lcom/android/deskclock/AnalogClock;

    invoke-static {p1, p2}, Lcom/android/deskclock/Utils;->setClockStyle(Landroid/view/View;Landroid/view/View;)Landroid/view/View;

    .line 541
    iget-object p1, p0, Lcom/android/deskclock/ClockFragment$SelectedCitiesAdapter$MainClockViewHolder;->mHairline:Landroid/view/View;

    if-eqz p4, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    const/16 p2, 0x8

    :goto_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 543
    iget-object p1, p0, Lcom/android/deskclock/ClockFragment$SelectedCitiesAdapter$MainClockViewHolder;->mDigitalClock:Landroid/widget/TextClock;

    iget-object p0, p0, Lcom/android/deskclock/ClockFragment$SelectedCitiesAdapter$MainClockViewHolder;->mAnalogClock:Lcom/android/deskclock/AnalogClock;

    invoke-static {p1, p0}, Lcom/android/deskclock/Utils;->setClockSecondsEnabled(Landroid/widget/TextClock;Lcom/android/deskclock/AnalogClock;)V

    return-void
.end method
