.class final Lcom/android/deskclock/ClockFragment$QuarterHourRunnable;
.super Ljava/lang/Object;
.source "ClockFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/deskclock/ClockFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "QuarterHourRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/deskclock/ClockFragment;


# direct methods
.method private constructor <init>(Lcom/android/deskclock/ClockFragment;)V
    .locals 0

    .line 279
    iput-object p1, p0, Lcom/android/deskclock/ClockFragment$QuarterHourRunnable;->this$0:Lcom/android/deskclock/ClockFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/deskclock/ClockFragment;Lcom/android/deskclock/ClockFragment$1;)V
    .locals 0

    .line 279
    invoke-direct {p0, p1}, Lcom/android/deskclock/ClockFragment$QuarterHourRunnable;-><init>(Lcom/android/deskclock/ClockFragment;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .line 282
    iget-object p0, p0, Lcom/android/deskclock/ClockFragment$QuarterHourRunnable;->this$0:Lcom/android/deskclock/ClockFragment;

    invoke-static {p0}, Lcom/android/deskclock/ClockFragment;->access$800(Lcom/android/deskclock/ClockFragment;)Lcom/android/deskclock/ClockFragment$SelectedCitiesAdapter;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method
