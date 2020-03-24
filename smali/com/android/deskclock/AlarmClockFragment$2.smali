.class Lcom/android/deskclock/AlarmClockFragment$2;
.super Ljava/lang/Object;
.source "AlarmClockFragment.java"

# interfaces
.implements Lcom/android/deskclock/ItemAdapter$OnItemChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/deskclock/AlarmClockFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/deskclock/AlarmClockFragment;


# direct methods
.method constructor <init>(Lcom/android/deskclock/AlarmClockFragment;)V
    .locals 0

    .line 144
    iput-object p1, p0, Lcom/android/deskclock/AlarmClockFragment$2;->this$0:Lcom/android/deskclock/AlarmClockFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemChanged(Lcom/android/deskclock/ItemAdapter$ItemHolder;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/deskclock/ItemAdapter$ItemHolder<",
            "*>;)V"
        }
    .end annotation

    .line 147
    move-object v0, p1

    check-cast v0, Lcom/android/deskclock/alarms/dataadapter/AlarmItemHolder;

    invoke-virtual {v0}, Lcom/android/deskclock/alarms/dataadapter/AlarmItemHolder;->isExpanded()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 148
    iget-object v0, p0, Lcom/android/deskclock/AlarmClockFragment$2;->this$0:Lcom/android/deskclock/AlarmClockFragment;

    invoke-static {v0}, Lcom/android/deskclock/AlarmClockFragment;->access$100(Lcom/android/deskclock/AlarmClockFragment;)J

    move-result-wide v0

    iget-wide v2, p1, Lcom/android/deskclock/ItemAdapter$ItemHolder;->itemId:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    .line 150
    iget-object v0, p0, Lcom/android/deskclock/AlarmClockFragment$2;->this$0:Lcom/android/deskclock/AlarmClockFragment;

    invoke-static {v0}, Lcom/android/deskclock/AlarmClockFragment;->access$200(Lcom/android/deskclock/AlarmClockFragment;)Lcom/android/deskclock/ItemAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/android/deskclock/AlarmClockFragment$2;->this$0:Lcom/android/deskclock/AlarmClockFragment;

    invoke-static {v1}, Lcom/android/deskclock/AlarmClockFragment;->access$100(Lcom/android/deskclock/AlarmClockFragment;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/android/deskclock/ItemAdapter;->findItemById(J)Lcom/android/deskclock/ItemAdapter$ItemHolder;

    move-result-object v0

    check-cast v0, Lcom/android/deskclock/alarms/dataadapter/AlarmItemHolder;

    if-eqz v0, :cond_0

    .line 152
    invoke-virtual {v0}, Lcom/android/deskclock/alarms/dataadapter/AlarmItemHolder;->collapse()V

    .line 155
    :cond_0
    iget-object v0, p0, Lcom/android/deskclock/AlarmClockFragment$2;->this$0:Lcom/android/deskclock/AlarmClockFragment;

    iget-wide v1, p1, Lcom/android/deskclock/ItemAdapter$ItemHolder;->itemId:J

    invoke-static {v0, v1, v2}, Lcom/android/deskclock/AlarmClockFragment;->access$102(Lcom/android/deskclock/AlarmClockFragment;J)J

    .line 156
    iget-object p1, p0, Lcom/android/deskclock/AlarmClockFragment$2;->this$0:Lcom/android/deskclock/AlarmClockFragment;

    .line 157
    invoke-static {p1}, Lcom/android/deskclock/AlarmClockFragment;->access$300(Lcom/android/deskclock/AlarmClockFragment;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    iget-object v0, p0, Lcom/android/deskclock/AlarmClockFragment$2;->this$0:Lcom/android/deskclock/AlarmClockFragment;

    invoke-static {v0}, Lcom/android/deskclock/AlarmClockFragment;->access$100(Lcom/android/deskclock/AlarmClockFragment;)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForItemId(J)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 159
    iget-object p0, p0, Lcom/android/deskclock/AlarmClockFragment$2;->this$0:Lcom/android/deskclock/AlarmClockFragment;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/deskclock/AlarmClockFragment;->smoothScrollTo(I)V

    goto :goto_0

    .line 162
    :cond_1
    iget-object v0, p0, Lcom/android/deskclock/AlarmClockFragment$2;->this$0:Lcom/android/deskclock/AlarmClockFragment;

    invoke-static {v0}, Lcom/android/deskclock/AlarmClockFragment;->access$100(Lcom/android/deskclock/AlarmClockFragment;)J

    move-result-wide v0

    iget-wide v2, p1, Lcom/android/deskclock/ItemAdapter$ItemHolder;->itemId:J

    cmp-long p1, v0, v2

    if-nez p1, :cond_2

    .line 164
    iget-object p0, p0, Lcom/android/deskclock/AlarmClockFragment$2;->this$0:Lcom/android/deskclock/AlarmClockFragment;

    const-wide/16 v0, -0x1

    invoke-static {p0, v0, v1}, Lcom/android/deskclock/AlarmClockFragment;->access$102(Lcom/android/deskclock/AlarmClockFragment;J)J

    :cond_2
    :goto_0
    return-void
.end method

.method public onItemChanged(Lcom/android/deskclock/ItemAdapter$ItemHolder;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/deskclock/ItemAdapter$ItemHolder<",
            "*>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    return-void
.end method
