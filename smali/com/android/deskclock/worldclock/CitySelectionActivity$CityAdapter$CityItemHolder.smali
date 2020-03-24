.class final Lcom/android/deskclock/worldclock/CitySelectionActivity$CityAdapter$CityItemHolder;
.super Ljava/lang/Object;
.source "CitySelectionActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/deskclock/worldclock/CitySelectionActivity$CityAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CityItemHolder"
.end annotation


# instance fields
.field private final index:Landroid/widget/TextView;

.field private final name:Landroid/widget/TextView;

.field private final selected:Landroid/widget/CheckBox;

.field private final time:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/CheckBox;)V
    .locals 0

    .line 607
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 608
    iput-object p1, p0, Lcom/android/deskclock/worldclock/CitySelectionActivity$CityAdapter$CityItemHolder;->index:Landroid/widget/TextView;

    .line 609
    iput-object p2, p0, Lcom/android/deskclock/worldclock/CitySelectionActivity$CityAdapter$CityItemHolder;->name:Landroid/widget/TextView;

    .line 610
    iput-object p3, p0, Lcom/android/deskclock/worldclock/CitySelectionActivity$CityAdapter$CityItemHolder;->time:Landroid/widget/TextView;

    .line 611
    iput-object p4, p0, Lcom/android/deskclock/worldclock/CitySelectionActivity$CityAdapter$CityItemHolder;->selected:Landroid/widget/CheckBox;

    return-void
.end method

.method static synthetic access$1000(Lcom/android/deskclock/worldclock/CitySelectionActivity$CityAdapter$CityItemHolder;)Landroid/widget/TextView;
    .locals 0

    .line 600
    iget-object p0, p0, Lcom/android/deskclock/worldclock/CitySelectionActivity$CityAdapter$CityItemHolder;->index:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$700(Lcom/android/deskclock/worldclock/CitySelectionActivity$CityAdapter$CityItemHolder;)Landroid/widget/CheckBox;
    .locals 0

    .line 600
    iget-object p0, p0, Lcom/android/deskclock/worldclock/CitySelectionActivity$CityAdapter$CityItemHolder;->selected:Landroid/widget/CheckBox;

    return-object p0
.end method

.method static synthetic access$800(Lcom/android/deskclock/worldclock/CitySelectionActivity$CityAdapter$CityItemHolder;)Landroid/widget/TextView;
    .locals 0

    .line 600
    iget-object p0, p0, Lcom/android/deskclock/worldclock/CitySelectionActivity$CityAdapter$CityItemHolder;->name:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$900(Lcom/android/deskclock/worldclock/CitySelectionActivity$CityAdapter$CityItemHolder;)Landroid/widget/TextView;
    .locals 0

    .line 600
    iget-object p0, p0, Lcom/android/deskclock/worldclock/CitySelectionActivity$CityAdapter$CityItemHolder;->time:Landroid/widget/TextView;

    return-object p0
.end method
