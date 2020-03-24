.class public interface abstract Lcom/android/deskclock/ItemAnimator$OnAnimateChangeListener;
.super Ljava/lang/Object;
.source "ItemAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/deskclock/ItemAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnAnimateChangeListener"
.end annotation


# virtual methods
.method public abstract onAnimateChange(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;J)Landroid/animation/Animator;
.end method

.method public abstract onAnimateChange(Ljava/util/List;IIIIJ)Landroid/animation/Animator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;IIIIJ)",
            "Landroid/animation/Animator;"
        }
    .end annotation
.end method
