.class final Lcom/android/deskclock/AlarmClockFragment$MidnightRunnable;
.super Ljava/lang/Object;
.source "AlarmClockFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/deskclock/AlarmClockFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MidnightRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/deskclock/AlarmClockFragment;


# direct methods
.method private constructor <init>(Lcom/android/deskclock/AlarmClockFragment;)V
    .locals 0

    .line 441
    iput-object p1, p0, Lcom/android/deskclock/AlarmClockFragment$MidnightRunnable;->this$0:Lcom/android/deskclock/AlarmClockFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/deskclock/AlarmClockFragment;Lcom/android/deskclock/AlarmClockFragment$1;)V
    .locals 0

    .line 441
    invoke-direct {p0, p1}, Lcom/android/deskclock/AlarmClockFragment$MidnightRunnable;-><init>(Lcom/android/deskclock/AlarmClockFragment;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .line 444
    iget-object p0, p0, Lcom/android/deskclock/AlarmClockFragment$MidnightRunnable;->this$0:Lcom/android/deskclock/AlarmClockFragment;

    invoke-static {p0}, Lcom/android/deskclock/AlarmClockFragment;->access$200(Lcom/android/deskclock/AlarmClockFragment;)Lcom/android/deskclock/ItemAdapter;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method
