.class public Lcom/android/deskclock/ItemAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "ItemAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/deskclock/ItemAdapter$OnItemClickedListener;,
        Lcom/android/deskclock/ItemAdapter$OnItemChangedListener;,
        Lcom/android/deskclock/ItemAdapter$ItemViewHolder;,
        Lcom/android/deskclock/ItemAdapter$ItemHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/android/deskclock/ItemAdapter$ItemHolder;",
        ">",
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/android/deskclock/ItemAdapter$ItemViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private final mFactoriesByViewType:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/deskclock/ItemAdapter$ItemViewHolder$Factory;",
            ">;"
        }
    .end annotation
.end field

.field private final mItemChangedNotifier:Lcom/android/deskclock/ItemAdapter$OnItemChangedListener;

.field private mItemHolders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final mListenersByViewType:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/deskclock/ItemAdapter$OnItemClickedListener;",
            ">;"
        }
    .end annotation
.end field

.field private mOnItemChangedListener:Lcom/android/deskclock/ItemAdapter$OnItemChangedListener;

.field private final mOnItemClickedListener:Lcom/android/deskclock/ItemAdapter$OnItemClickedListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 43
    new-instance v0, Lcom/android/deskclock/ItemAdapter$1;

    invoke-direct {v0, p0}, Lcom/android/deskclock/ItemAdapter$1;-><init>(Lcom/android/deskclock/ItemAdapter;)V

    iput-object v0, p0, Lcom/android/deskclock/ItemAdapter;->mItemChangedNotifier:Lcom/android/deskclock/ItemAdapter$OnItemChangedListener;

    .line 71
    new-instance v0, Lcom/android/deskclock/ItemAdapter$2;

    invoke-direct {v0, p0}, Lcom/android/deskclock/ItemAdapter$2;-><init>(Lcom/android/deskclock/ItemAdapter;)V

    iput-object v0, p0, Lcom/android/deskclock/ItemAdapter;->mOnItemClickedListener:Lcom/android/deskclock/ItemAdapter$OnItemClickedListener;

    .line 90
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/deskclock/ItemAdapter;->mFactoriesByViewType:Landroid/util/SparseArray;

    .line 95
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/deskclock/ItemAdapter;->mListenersByViewType:Landroid/util/SparseArray;

    return-void
.end method

.method static synthetic access$000(Lcom/android/deskclock/ItemAdapter;)Lcom/android/deskclock/ItemAdapter$OnItemChangedListener;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/android/deskclock/ItemAdapter;->mOnItemChangedListener:Lcom/android/deskclock/ItemAdapter$OnItemChangedListener;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/deskclock/ItemAdapter;)Ljava/util/List;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/android/deskclock/ItemAdapter;->mItemHolders:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/deskclock/ItemAdapter;)Landroid/util/SparseArray;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/android/deskclock/ItemAdapter;->mListenersByViewType:Landroid/util/SparseArray;

    return-object p0
.end method


# virtual methods
.method public findItemById(J)Lcom/android/deskclock/ItemAdapter$ItemHolder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TT;"
        }
    .end annotation

    .line 247
    iget-object p0, p0, Lcom/android/deskclock/ItemAdapter;->mItemHolders:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/deskclock/ItemAdapter$ItemHolder;

    .line 248
    iget-wide v1, v0, Lcom/android/deskclock/ItemAdapter$ItemHolder;->itemId:J

    cmp-long v1, v1, p1

    if-nez v1, :cond_0

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getItemCount()I
    .locals 0

    .line 238
    iget-object p0, p0, Lcom/android/deskclock/ItemAdapter;->mItemHolders:Ljava/util/List;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    :goto_0
    return p0
.end method

.method public getItemId(I)J
    .locals 1

    .line 243
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/deskclock/ItemAdapter;->mItemHolders:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/deskclock/ItemAdapter$ItemHolder;

    iget-wide p0, p0, Lcom/android/deskclock/ItemAdapter$ItemHolder;->itemId:J

    goto :goto_0

    :cond_0
    const-wide/16 p0, -0x1

    :goto_0
    return-wide p0
.end method

.method public getItemViewType(I)I
    .locals 0

    .line 257
    iget-object p0, p0, Lcom/android/deskclock/ItemAdapter;->mItemHolders:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/deskclock/ItemAdapter$ItemHolder;

    invoke-virtual {p0}, Lcom/android/deskclock/ItemAdapter$ItemHolder;->getItemViewType()I

    move-result p0

    return p0
.end method

.method public final getItems()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 135
    iget-object p0, p0, Lcom/android/deskclock/ItemAdapter;->mItemHolders:Ljava/util/List;

    return-object p0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 35
    check-cast p1, Lcom/android/deskclock/ItemAdapter$ItemViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/android/deskclock/ItemAdapter;->onBindViewHolder(Lcom/android/deskclock/ItemAdapter$ItemViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/android/deskclock/ItemAdapter$ItemViewHolder;I)V
    .locals 1

    .line 274
    iget-object v0, p0, Lcom/android/deskclock/ItemAdapter;->mItemHolders:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/deskclock/ItemAdapter$ItemHolder;

    invoke-virtual {p1, p2}, Lcom/android/deskclock/ItemAdapter$ItemViewHolder;->bindItemView(Lcom/android/deskclock/ItemAdapter$ItemHolder;)V

    .line 275
    iget-object p0, p0, Lcom/android/deskclock/ItemAdapter;->mOnItemClickedListener:Lcom/android/deskclock/ItemAdapter$OnItemClickedListener;

    invoke-virtual {p1, p0}, Lcom/android/deskclock/ItemAdapter$ItemViewHolder;->setOnItemClickedListener(Lcom/android/deskclock/ItemAdapter$OnItemClickedListener;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 35
    invoke-virtual {p0, p1, p2}, Lcom/android/deskclock/ItemAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/deskclock/ItemAdapter$ItemViewHolder;

    move-result-object p0

    return-object p0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/deskclock/ItemAdapter$ItemViewHolder;
    .locals 1

    .line 262
    iget-object p0, p0, Lcom/android/deskclock/ItemAdapter;->mFactoriesByViewType:Landroid/util/SparseArray;

    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/deskclock/ItemAdapter$ItemViewHolder$Factory;

    if-eqz p0, :cond_0

    .line 264
    invoke-interface {p0, p1, p2}, Lcom/android/deskclock/ItemAdapter$ItemViewHolder$Factory;->createViewHolder(Landroid/view/ViewGroup;I)Lcom/android/deskclock/ItemAdapter$ItemViewHolder;

    move-result-object p0

    return-object p0

    .line 266
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unsupported view type: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public bridge synthetic onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .line 35
    check-cast p1, Lcom/android/deskclock/ItemAdapter$ItemViewHolder;

    invoke-virtual {p0, p1}, Lcom/android/deskclock/ItemAdapter;->onViewRecycled(Lcom/android/deskclock/ItemAdapter$ItemViewHolder;)V

    return-void
.end method

.method public onViewRecycled(Lcom/android/deskclock/ItemAdapter$ItemViewHolder;)V
    .locals 0

    const/4 p0, 0x0

    .line 280
    invoke-virtual {p1, p0}, Lcom/android/deskclock/ItemAdapter$ItemViewHolder;->setOnItemClickedListener(Lcom/android/deskclock/ItemAdapter$OnItemClickedListener;)V

    .line 281
    invoke-virtual {p1}, Lcom/android/deskclock/ItemAdapter$ItemViewHolder;->recycleItemView()V

    return-void
.end method

.method public removeItem(Lcom/android/deskclock/ItemAdapter$ItemHolder;)Lcom/android/deskclock/ItemAdapter;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lcom/android/deskclock/ItemAdapter;"
        }
    .end annotation

    .line 220
    iget-object v0, p0, Lcom/android/deskclock/ItemAdapter;->mItemHolders:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_0

    .line 222
    iget-object v0, p0, Lcom/android/deskclock/ItemAdapter;->mItemHolders:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/deskclock/ItemAdapter$ItemHolder;

    .line 223
    iget-object v1, p0, Lcom/android/deskclock/ItemAdapter;->mItemChangedNotifier:Lcom/android/deskclock/ItemAdapter$OnItemChangedListener;

    invoke-virtual {v0, v1}, Lcom/android/deskclock/ItemAdapter$ItemHolder;->removeOnItemChangedListener(Lcom/android/deskclock/ItemAdapter$OnItemChangedListener;)V

    .line 224
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRemoved(I)V

    :cond_0
    return-object p0
.end method

.method public setHasStableIds()Lcom/android/deskclock/ItemAdapter;
    .locals 1

    const/4 v0, 0x1

    .line 108
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->setHasStableIds(Z)V

    return-object p0
.end method

.method public setItems(Ljava/util/List;)Lcom/android/deskclock/ItemAdapter;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;)",
            "Lcom/android/deskclock/ItemAdapter;"
        }
    .end annotation

    .line 149
    iget-object v0, p0, Lcom/android/deskclock/ItemAdapter;->mItemHolders:Ljava/util/List;

    if-eq v0, p1, :cond_5

    if-eqz v0, :cond_0

    .line 153
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/deskclock/ItemAdapter$ItemHolder;

    .line 154
    iget-object v3, p0, Lcom/android/deskclock/ItemAdapter;->mItemChangedNotifier:Lcom/android/deskclock/ItemAdapter$OnItemChangedListener;

    invoke-virtual {v2, v3}, Lcom/android/deskclock/ItemAdapter$ItemHolder;->removeOnItemChangedListener(Lcom/android/deskclock/ItemAdapter$OnItemChangedListener;)V

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_3

    if-eqz p1, :cond_3

    .line 158
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->hasStableIds()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 162
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 163
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/deskclock/ItemAdapter$ItemHolder;

    .line 164
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/deskclock/ItemAdapter$ItemHolder;

    .line 165
    iget-wide v6, v3, Lcom/android/deskclock/ItemAdapter$ItemHolder;->itemId:J

    iget-wide v8, v5, Lcom/android/deskclock/ItemAdapter$ItemHolder;->itemId:J

    cmp-long v6, v6, v8

    if-nez v6, :cond_2

    if-eq v3, v5, :cond_2

    .line 168
    invoke-virtual {v1}, Landroid/os/Bundle;->clear()V

    .line 171
    invoke-virtual {v5, v1}, Lcom/android/deskclock/ItemAdapter$ItemHolder;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 172
    invoke-virtual {v3, v1}, Lcom/android/deskclock/ItemAdapter$ItemHolder;->onRestoreInstanceState(Landroid/os/Bundle;)V

    goto :goto_1

    :cond_3
    if-eqz p1, :cond_4

    .line 182
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/deskclock/ItemAdapter$ItemHolder;

    .line 183
    iget-object v2, p0, Lcom/android/deskclock/ItemAdapter;->mItemChangedNotifier:Lcom/android/deskclock/ItemAdapter$OnItemChangedListener;

    invoke-virtual {v1, v2}, Lcom/android/deskclock/ItemAdapter$ItemHolder;->addOnItemChangedListener(Lcom/android/deskclock/ItemAdapter$OnItemChangedListener;)V

    goto :goto_2

    .line 188
    :cond_4
    iput-object p1, p0, Lcom/android/deskclock/ItemAdapter;->mItemHolders:Ljava/util/List;

    .line 189
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_5
    return-object p0
.end method

.method public setOnItemChangedListener(Lcom/android/deskclock/ItemAdapter$OnItemChangedListener;)V
    .locals 0

    .line 233
    iput-object p1, p0, Lcom/android/deskclock/ItemAdapter;->mOnItemChangedListener:Lcom/android/deskclock/ItemAdapter$OnItemChangedListener;

    return-void
.end method

.method public varargs withViewTypes(Lcom/android/deskclock/ItemAdapter$ItemViewHolder$Factory;Lcom/android/deskclock/ItemAdapter$OnItemClickedListener;[I)Lcom/android/deskclock/ItemAdapter;
    .locals 4

    .line 124
    array-length v0, p3

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget v2, p3, v1

    .line 125
    iget-object v3, p0, Lcom/android/deskclock/ItemAdapter;->mFactoriesByViewType:Landroid/util/SparseArray;

    invoke-virtual {v3, v2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 126
    iget-object v3, p0, Lcom/android/deskclock/ItemAdapter;->mListenersByViewType:Landroid/util/SparseArray;

    invoke-virtual {v3, v2, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method
