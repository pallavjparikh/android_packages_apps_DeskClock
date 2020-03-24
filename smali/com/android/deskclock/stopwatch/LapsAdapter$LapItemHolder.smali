.class final Lcom/android/deskclock/stopwatch/LapsAdapter$LapItemHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "LapsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/deskclock/stopwatch/LapsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "LapItemHolder"
.end annotation


# instance fields
.field private final accumulatedTime:Landroid/widget/TextView;

.field private final lapNumber:Landroid/widget/TextView;

.field private final lapTime:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 351
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const v0, 0x7f0a00ba

    .line 353
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/deskclock/stopwatch/LapsAdapter$LapItemHolder;->lapTime:Landroid/widget/TextView;

    const v0, 0x7f0a00b9

    .line 354
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/deskclock/stopwatch/LapsAdapter$LapItemHolder;->lapNumber:Landroid/widget/TextView;

    const v0, 0x7f0a00bb

    .line 355
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/deskclock/stopwatch/LapsAdapter$LapItemHolder;->accumulatedTime:Landroid/widget/TextView;

    return-void
.end method

.method static synthetic access$000(Lcom/android/deskclock/stopwatch/LapsAdapter$LapItemHolder;)Landroid/widget/TextView;
    .locals 0

    .line 344
    iget-object p0, p0, Lcom/android/deskclock/stopwatch/LapsAdapter$LapItemHolder;->lapTime:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/deskclock/stopwatch/LapsAdapter$LapItemHolder;)Landroid/widget/TextView;
    .locals 0

    .line 344
    iget-object p0, p0, Lcom/android/deskclock/stopwatch/LapsAdapter$LapItemHolder;->accumulatedTime:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/deskclock/stopwatch/LapsAdapter$LapItemHolder;)Landroid/widget/TextView;
    .locals 0

    .line 344
    iget-object p0, p0, Lcom/android/deskclock/stopwatch/LapsAdapter$LapItemHolder;->lapNumber:Landroid/widget/TextView;

    return-object p0
.end method
