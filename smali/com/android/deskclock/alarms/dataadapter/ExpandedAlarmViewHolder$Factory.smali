.class public Lcom/android/deskclock/alarms/dataadapter/ExpandedAlarmViewHolder$Factory;
.super Ljava/lang/Object;
.source "ExpandedAlarmViewHolder.java"

# interfaces
.implements Lcom/android/deskclock/ItemAdapter$ItemViewHolder$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/deskclock/alarms/dataadapter/ExpandedAlarmViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Factory"
.end annotation


# instance fields
.field private final mHasVibrator:Z

.field private final mLayoutInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 520
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 521
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/deskclock/alarms/dataadapter/ExpandedAlarmViewHolder$Factory;->mLayoutInflater:Landroid/view/LayoutInflater;

    const-string v0, "vibrator"

    .line 522
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Vibrator;

    invoke-virtual {p1}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/deskclock/alarms/dataadapter/ExpandedAlarmViewHolder$Factory;->mHasVibrator:Z

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

    .line 527
    iget-object v0, p0, Lcom/android/deskclock/alarms/dataadapter/ExpandedAlarmViewHolder$Factory;->mLayoutInflater:Landroid/view/LayoutInflater;

    const/4 v1, 0x0

    invoke-virtual {v0, p2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 528
    new-instance p2, Lcom/android/deskclock/alarms/dataadapter/ExpandedAlarmViewHolder;

    iget-boolean p0, p0, Lcom/android/deskclock/alarms/dataadapter/ExpandedAlarmViewHolder$Factory;->mHasVibrator:Z

    const/4 v0, 0x0

    invoke-direct {p2, p1, p0, v0}, Lcom/android/deskclock/alarms/dataadapter/ExpandedAlarmViewHolder;-><init>(Landroid/view/View;ZLcom/android/deskclock/alarms/dataadapter/ExpandedAlarmViewHolder$1;)V

    return-object p2
.end method
