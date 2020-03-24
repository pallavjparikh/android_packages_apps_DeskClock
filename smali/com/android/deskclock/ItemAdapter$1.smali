.class Lcom/android/deskclock/ItemAdapter$1;
.super Ljava/lang/Object;
.source "ItemAdapter.java"

# interfaces
.implements Lcom/android/deskclock/ItemAdapter$OnItemChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/deskclock/ItemAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/deskclock/ItemAdapter;


# direct methods
.method constructor <init>(Lcom/android/deskclock/ItemAdapter;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/android/deskclock/ItemAdapter$1;->this$0:Lcom/android/deskclock/ItemAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemChanged(Lcom/android/deskclock/ItemAdapter$ItemHolder;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/deskclock/ItemAdapter$ItemHolder<",
            "*>;)V"
        }
    .end annotation

    .line 46
    iget-object v0, p0, Lcom/android/deskclock/ItemAdapter$1;->this$0:Lcom/android/deskclock/ItemAdapter;

    invoke-static {v0}, Lcom/android/deskclock/ItemAdapter;->access$000(Lcom/android/deskclock/ItemAdapter;)Lcom/android/deskclock/ItemAdapter$OnItemChangedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 47
    iget-object v0, p0, Lcom/android/deskclock/ItemAdapter$1;->this$0:Lcom/android/deskclock/ItemAdapter;

    invoke-static {v0}, Lcom/android/deskclock/ItemAdapter;->access$000(Lcom/android/deskclock/ItemAdapter;)Lcom/android/deskclock/ItemAdapter$OnItemChangedListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/deskclock/ItemAdapter$OnItemChangedListener;->onItemChanged(Lcom/android/deskclock/ItemAdapter$ItemHolder;)V

    .line 49
    :cond_0
    iget-object v0, p0, Lcom/android/deskclock/ItemAdapter$1;->this$0:Lcom/android/deskclock/ItemAdapter;

    invoke-static {v0}, Lcom/android/deskclock/ItemAdapter;->access$100(Lcom/android/deskclock/ItemAdapter;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    .line 51
    iget-object p0, p0, Lcom/android/deskclock/ItemAdapter$1;->this$0:Lcom/android/deskclock/ItemAdapter;

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    :cond_1
    return-void
.end method

.method public onItemChanged(Lcom/android/deskclock/ItemAdapter$ItemHolder;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/deskclock/ItemAdapter$ItemHolder<",
            "*>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 57
    iget-object v0, p0, Lcom/android/deskclock/ItemAdapter$1;->this$0:Lcom/android/deskclock/ItemAdapter;

    invoke-static {v0}, Lcom/android/deskclock/ItemAdapter;->access$000(Lcom/android/deskclock/ItemAdapter;)Lcom/android/deskclock/ItemAdapter$OnItemChangedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/android/deskclock/ItemAdapter$1;->this$0:Lcom/android/deskclock/ItemAdapter;

    invoke-static {v0}, Lcom/android/deskclock/ItemAdapter;->access$000(Lcom/android/deskclock/ItemAdapter;)Lcom/android/deskclock/ItemAdapter$OnItemChangedListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/deskclock/ItemAdapter$OnItemChangedListener;->onItemChanged(Lcom/android/deskclock/ItemAdapter$ItemHolder;Ljava/lang/Object;)V

    .line 60
    :cond_0
    iget-object v0, p0, Lcom/android/deskclock/ItemAdapter$1;->this$0:Lcom/android/deskclock/ItemAdapter;

    invoke-static {v0}, Lcom/android/deskclock/ItemAdapter;->access$100(Lcom/android/deskclock/ItemAdapter;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    .line 62
    iget-object p0, p0, Lcom/android/deskclock/ItemAdapter$1;->this$0:Lcom/android/deskclock/ItemAdapter;

    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(ILjava/lang/Object;)V

    :cond_1
    return-void
.end method
