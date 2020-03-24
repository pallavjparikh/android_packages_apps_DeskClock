.class public Lcom/android/deskclock/ItemAdapter$ItemViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "ItemAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/deskclock/ItemAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ItemViewHolder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/deskclock/ItemAdapter$ItemViewHolder$Factory;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/android/deskclock/ItemAdapter$ItemHolder;",
        ">",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;"
    }
.end annotation


# instance fields
.field private mItemHolder:Lcom/android/deskclock/ItemAdapter$ItemHolder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private mOnItemClickedListener:Lcom/android/deskclock/ItemAdapter$OnItemClickedListener;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    .line 424
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public final bindItemView(Lcom/android/deskclock/ItemAdapter$ItemHolder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 440
    iput-object p1, p0, Lcom/android/deskclock/ItemAdapter$ItemViewHolder;->mItemHolder:Lcom/android/deskclock/ItemAdapter$ItemHolder;

    .line 441
    invoke-virtual {p0, p1}, Lcom/android/deskclock/ItemAdapter$ItemViewHolder;->onBindItemView(Lcom/android/deskclock/ItemAdapter$ItemHolder;)V

    return-void
.end method

.method public final getItemHolder()Lcom/android/deskclock/ItemAdapter$ItemHolder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 431
    iget-object p0, p0, Lcom/android/deskclock/ItemAdapter$ItemViewHolder;->mItemHolder:Lcom/android/deskclock/ItemAdapter$ItemHolder;

    return-object p0
.end method

.method public final notifyItemClicked(I)V
    .locals 1

    .line 489
    iget-object v0, p0, Lcom/android/deskclock/ItemAdapter$ItemViewHolder;->mOnItemClickedListener:Lcom/android/deskclock/ItemAdapter$OnItemClickedListener;

    if-eqz v0, :cond_0

    .line 490
    invoke-interface {v0, p0, p1}, Lcom/android/deskclock/ItemAdapter$OnItemClickedListener;->onItemClicked(Lcom/android/deskclock/ItemAdapter$ItemViewHolder;I)V

    :cond_0
    return-void
.end method

.method protected onBindItemView(Lcom/android/deskclock/ItemAdapter$ItemHolder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    return-void
.end method

.method protected onRecycleItemView()V
    .locals 0

    return-void
.end method

.method public final recycleItemView()V
    .locals 1

    const/4 v0, 0x0

    .line 458
    iput-object v0, p0, Lcom/android/deskclock/ItemAdapter$ItemViewHolder;->mItemHolder:Lcom/android/deskclock/ItemAdapter$ItemHolder;

    .line 459
    iput-object v0, p0, Lcom/android/deskclock/ItemAdapter$ItemViewHolder;->mOnItemClickedListener:Lcom/android/deskclock/ItemAdapter$OnItemClickedListener;

    .line 461
    invoke-virtual {p0}, Lcom/android/deskclock/ItemAdapter$ItemViewHolder;->onRecycleItemView()V

    return-void
.end method

.method public final setOnItemClickedListener(Lcom/android/deskclock/ItemAdapter$OnItemClickedListener;)V
    .locals 0

    .line 479
    iput-object p1, p0, Lcom/android/deskclock/ItemAdapter$ItemViewHolder;->mOnItemClickedListener:Lcom/android/deskclock/ItemAdapter$OnItemClickedListener;

    return-void
.end method
