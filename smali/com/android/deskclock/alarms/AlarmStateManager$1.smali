.class Lcom/android/deskclock/alarms/AlarmStateManager$1;
.super Ljava/lang/Object;
.source "AlarmStateManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/deskclock/alarms/AlarmStateManager;->setSnoozeState(Landroid/content/Context;Lcom/android/deskclock/provider/AlarmInstance;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$snoozeMinutes:I


# direct methods
.method constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 517
    iput-object p1, p0, Lcom/android/deskclock/alarms/AlarmStateManager$1;->val$context:Landroid/content/Context;

    iput p2, p0, Lcom/android/deskclock/alarms/AlarmStateManager$1;->val$snoozeMinutes:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 520
    iget-object v0, p0, Lcom/android/deskclock/alarms/AlarmStateManager$1;->val$context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/android/deskclock/alarms/AlarmStateManager$1;->val$snoozeMinutes:I

    const v2, 0x7f0f0001

    .line 521
    invoke-virtual {v0, v2, v1}, Landroid/content/res/Resources;->getQuantityText(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    iget v3, p0, Lcom/android/deskclock/alarms/AlarmStateManager$1;->val$snoozeMinutes:I

    .line 522
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 520
    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 523
    iget-object p0, p0, Lcom/android/deskclock/alarms/AlarmStateManager$1;->val$context:Landroid/content/Context;

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method
