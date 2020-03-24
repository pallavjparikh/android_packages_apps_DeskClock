.class public Lcom/android/deskclock/alarms/dataadapter/AlarmItemHolder;
.super Lcom/android/deskclock/ItemAdapter$ItemHolder;
.source "AlarmItemHolder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/deskclock/ItemAdapter$ItemHolder<",
        "Lcom/android/deskclock/provider/Alarm;",
        ">;"
    }
.end annotation


# instance fields
.field private final mAlarmInstance:Lcom/android/deskclock/provider/AlarmInstance;

.field private final mAlarmTimeClickHandler:Lcom/android/deskclock/alarms/AlarmTimeClickHandler;

.field private mExpanded:Z


# direct methods
.method public constructor <init>(Lcom/android/deskclock/provider/Alarm;Lcom/android/deskclock/provider/AlarmInstance;Lcom/android/deskclock/alarms/AlarmTimeClickHandler;)V
    .locals 2

    .line 35
    iget-wide v0, p1, Lcom/android/deskclock/provider/Alarm;->id:J

    invoke-direct {p0, p1, v0, v1}, Lcom/android/deskclock/ItemAdapter$ItemHolder;-><init>(Ljava/lang/Object;J)V

    .line 36
    iput-object p2, p0, Lcom/android/deskclock/alarms/dataadapter/AlarmItemHolder;->mAlarmInstance:Lcom/android/deskclock/provider/AlarmInstance;

    .line 37
    iput-object p3, p0, Lcom/android/deskclock/alarms/dataadapter/AlarmItemHolder;->mAlarmTimeClickHandler:Lcom/android/deskclock/alarms/AlarmTimeClickHandler;

    return-void
.end method


# virtual methods
.method public collapse()V
    .locals 1

    .line 62
    invoke-virtual {p0}, Lcom/android/deskclock/alarms/dataadapter/AlarmItemHolder;->isExpanded()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 63
    iput-boolean v0, p0, Lcom/android/deskclock/alarms/dataadapter/AlarmItemHolder;->mExpanded:Z

    .line 64
    invoke-virtual {p0}, Lcom/android/deskclock/ItemAdapter$ItemHolder;->notifyItemChanged()V

    :cond_0
    return-void
.end method

.method public expand()V
    .locals 1

    .line 55
    invoke-virtual {p0}, Lcom/android/deskclock/alarms/dataadapter/AlarmItemHolder;->isExpanded()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 56
    iput-boolean v0, p0, Lcom/android/deskclock/alarms/dataadapter/AlarmItemHolder;->mExpanded:Z

    .line 57
    invoke-virtual {p0}, Lcom/android/deskclock/ItemAdapter$ItemHolder;->notifyItemChanged()V

    :cond_0
    return-void
.end method

.method public getAlarmInstance()Lcom/android/deskclock/provider/AlarmInstance;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/android/deskclock/alarms/dataadapter/AlarmItemHolder;->mAlarmInstance:Lcom/android/deskclock/provider/AlarmInstance;

    return-object p0
.end method

.method public getAlarmTimeClickHandler()Lcom/android/deskclock/alarms/AlarmTimeClickHandler;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/android/deskclock/alarms/dataadapter/AlarmItemHolder;->mAlarmTimeClickHandler:Lcom/android/deskclock/alarms/AlarmTimeClickHandler;

    return-object p0
.end method

.method public getItemViewType()I
    .locals 0

    .line 42
    invoke-virtual {p0}, Lcom/android/deskclock/alarms/dataadapter/AlarmItemHolder;->isExpanded()Z

    move-result p0

    if-eqz p0, :cond_0

    const p0, 0x7f0d0020

    goto :goto_0

    :cond_0
    const p0, 0x7f0d001f

    :goto_0
    return p0
.end method

.method public isExpanded()Z
    .locals 0

    .line 69
    iget-boolean p0, p0, Lcom/android/deskclock/alarms/dataadapter/AlarmItemHolder;->mExpanded:Z

    return p0
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 80
    invoke-super {p0, p1}, Lcom/android/deskclock/ItemAdapter$ItemHolder;->onRestoreInstanceState(Landroid/os/Bundle;)V

    const-string v0, "expanded"

    .line 81
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/deskclock/alarms/dataadapter/AlarmItemHolder;->mExpanded:Z

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 74
    invoke-super {p0, p1}, Lcom/android/deskclock/ItemAdapter$ItemHolder;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 75
    iget-boolean p0, p0, Lcom/android/deskclock/alarms/dataadapter/AlarmItemHolder;->mExpanded:Z

    const-string v0, "expanded"

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method
