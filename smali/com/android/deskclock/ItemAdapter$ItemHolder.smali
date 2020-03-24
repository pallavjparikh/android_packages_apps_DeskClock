.class public abstract Lcom/android/deskclock/ItemAdapter$ItemHolder;
.super Ljava/lang/Object;
.source "ItemAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/deskclock/ItemAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ItemHolder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final item:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public final itemId:J

.field private final mOnItemChangedListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/deskclock/ItemAdapter$OnItemChangedListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;J)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;J)V"
        }
    .end annotation

    .line 322
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 314
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/deskclock/ItemAdapter$ItemHolder;->mOnItemChangedListeners:Ljava/util/List;

    .line 323
    iput-object p1, p0, Lcom/android/deskclock/ItemAdapter$ItemHolder;->item:Ljava/lang/Object;

    .line 324
    iput-wide p2, p0, Lcom/android/deskclock/ItemAdapter$ItemHolder;->itemId:J

    return-void
.end method


# virtual methods
.method public final addOnItemChangedListener(Lcom/android/deskclock/ItemAdapter$OnItemChangedListener;)V
    .locals 1

    .line 340
    iget-object v0, p0, Lcom/android/deskclock/ItemAdapter$ItemHolder;->mOnItemChangedListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 341
    iget-object p0, p0, Lcom/android/deskclock/ItemAdapter$ItemHolder;->mOnItemChangedListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public abstract getItemViewType()I
.end method

.method public final notifyItemChanged()V
    .locals 2

    .line 359
    iget-object v0, p0, Lcom/android/deskclock/ItemAdapter$ItemHolder;->mOnItemChangedListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/deskclock/ItemAdapter$OnItemChangedListener;

    .line 360
    invoke-interface {v1, p0}, Lcom/android/deskclock/ItemAdapter$OnItemChangedListener;->onItemChanged(Lcom/android/deskclock/ItemAdapter$ItemHolder;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final notifyItemChanged(Ljava/lang/Object;)V
    .locals 2

    .line 369
    iget-object v0, p0, Lcom/android/deskclock/ItemAdapter$ItemHolder;->mOnItemChangedListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/deskclock/ItemAdapter$OnItemChangedListener;

    .line 370
    invoke-interface {v1, p0, p1}, Lcom/android/deskclock/ItemAdapter$OnItemChangedListener;->onItemChanged(Lcom/android/deskclock/ItemAdapter$ItemHolder;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public final removeOnItemChangedListener(Lcom/android/deskclock/ItemAdapter$OnItemChangedListener;)V
    .locals 0

    .line 351
    iget-object p0, p0, Lcom/android/deskclock/ItemAdapter$ItemHolder;->mOnItemChangedListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method
