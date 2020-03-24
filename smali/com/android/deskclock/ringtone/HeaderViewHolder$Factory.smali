.class public Lcom/android/deskclock/ringtone/HeaderViewHolder$Factory;
.super Ljava/lang/Object;
.source "HeaderViewHolder.java"

# interfaces
.implements Lcom/android/deskclock/ItemAdapter$ItemViewHolder$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/deskclock/ringtone/HeaderViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Factory"
.end annotation


# instance fields
.field private final mInflater:Landroid/view/LayoutInflater;


# direct methods
.method constructor <init>(Landroid/view/LayoutInflater;)V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/android/deskclock/ringtone/HeaderViewHolder$Factory;->mInflater:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method public createViewHolder(Landroid/view/ViewGroup;I)Lcom/android/deskclock/ItemAdapter$ItemViewHolder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "I)",
            "Lcom/android/deskclock/ItemAdapter$ItemViewHolder<",
            "*>;"
        }
    .end annotation

    .line 53
    new-instance v0, Lcom/android/deskclock/ringtone/HeaderViewHolder;

    iget-object p0, p0, Lcom/android/deskclock/ringtone/HeaderViewHolder$Factory;->mInflater:Landroid/view/LayoutInflater;

    const/4 v1, 0x0

    invoke-virtual {p0, p2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    const/4 p1, 0x0

    invoke-direct {v0, p0, p1}, Lcom/android/deskclock/ringtone/HeaderViewHolder;-><init>(Landroid/view/View;Lcom/android/deskclock/ringtone/HeaderViewHolder$1;)V

    return-object v0
.end method
