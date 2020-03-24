.class public Lcom/android/deskclock/widget/selector/AlarmSelection;
.super Ljava/lang/Object;
.source "AlarmSelection.java"


# instance fields
.field private final mAlarm:Lcom/android/deskclock/provider/Alarm;

.field private final mLabel:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/android/deskclock/provider/Alarm;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/android/deskclock/widget/selector/AlarmSelection;->mLabel:Ljava/lang/String;

    .line 30
    iput-object p2, p0, Lcom/android/deskclock/widget/selector/AlarmSelection;->mAlarm:Lcom/android/deskclock/provider/Alarm;

    return-void
.end method


# virtual methods
.method public getAlarm()Lcom/android/deskclock/provider/Alarm;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/android/deskclock/widget/selector/AlarmSelection;->mAlarm:Lcom/android/deskclock/provider/Alarm;

    return-object p0
.end method
