.class public Lcom/android/deskclock/ringtone/AddCustomRingtoneViewHolder$Factory;
.super Ljava/lang/Object;
.source "AddCustomRingtoneViewHolder.java"

# interfaces
.implements Lcom/android/deskclock/ItemAdapter$ItemViewHolder$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/deskclock/ringtone/AddCustomRingtoneViewHolder;
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

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Lcom/android/deskclock/ringtone/AddCustomRingtoneViewHolder$Factory;->mInflater:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method public createViewHolder(Landroid/view/ViewGroup;I)Lcom/android/deskclock/ItemAdapter$ItemViewHolder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "I)",
            "Lcom/android/deskclock/ItemAdapter$ItemViewHolder<",
            "*>;"
        }
    .end annotation

    .line 67
    iget-object p0, p0, Lcom/android/deskclock/ringtone/AddCustomRingtoneViewHolder$Factory;->mInflater:Landroid/view/LayoutInflater;

    const p2, 0x7f0d0074

    const/4 v0, 0x0

    invoke-virtual {p0, p2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    .line 68
    new-instance p1, Lcom/android/deskclock/ringtone/AddCustomRingtoneViewHolder;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/android/deskclock/ringtone/AddCustomRingtoneViewHolder;-><init>(Landroid/view/View;Lcom/android/deskclock/ringtone/AddCustomRingtoneViewHolder$1;)V

    return-object p1
.end method
