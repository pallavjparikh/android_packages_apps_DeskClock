.class Lcom/android/deskclock/ItemAdapter$2;
.super Ljava/lang/Object;
.source "ItemAdapter.java"

# interfaces
.implements Lcom/android/deskclock/ItemAdapter$OnItemClickedListener;


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

    .line 71
    iput-object p1, p0, Lcom/android/deskclock/ItemAdapter$2;->this$0:Lcom/android/deskclock/ItemAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClicked(Lcom/android/deskclock/ItemAdapter$ItemViewHolder;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/deskclock/ItemAdapter$ItemViewHolder<",
            "*>;I)V"
        }
    .end annotation

    .line 74
    iget-object p0, p0, Lcom/android/deskclock/ItemAdapter$2;->this$0:Lcom/android/deskclock/ItemAdapter;

    .line 75
    invoke-static {p0}, Lcom/android/deskclock/ItemAdapter;->access$200(Lcom/android/deskclock/ItemAdapter;)Landroid/util/SparseArray;

    move-result-object p0

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/deskclock/ItemAdapter$OnItemClickedListener;

    if-eqz p0, :cond_0

    .line 77
    invoke-interface {p0, p1, p2}, Lcom/android/deskclock/ItemAdapter$OnItemClickedListener;->onItemClicked(Lcom/android/deskclock/ItemAdapter$ItemViewHolder;I)V

    :cond_0
    return-void
.end method
