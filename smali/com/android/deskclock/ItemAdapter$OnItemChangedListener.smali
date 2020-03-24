.class public interface abstract Lcom/android/deskclock/ItemAdapter$OnItemChangedListener;
.super Ljava/lang/Object;
.source "ItemAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/deskclock/ItemAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnItemChangedListener"
.end annotation


# virtual methods
.method public abstract onItemChanged(Lcom/android/deskclock/ItemAdapter$ItemHolder;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/deskclock/ItemAdapter$ItemHolder<",
            "*>;)V"
        }
    .end annotation
.end method

.method public abstract onItemChanged(Lcom/android/deskclock/ItemAdapter$ItemHolder;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/deskclock/ItemAdapter$ItemHolder<",
            "*>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation
.end method
