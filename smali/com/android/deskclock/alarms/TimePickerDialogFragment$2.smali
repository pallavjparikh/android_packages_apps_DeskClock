.class Lcom/android/deskclock/alarms/TimePickerDialogFragment$2;
.super Ljava/lang/Object;
.source "TimePickerDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/deskclock/alarms/TimePickerDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/deskclock/alarms/TimePickerDialogFragment;

.field final synthetic val$listener:Lcom/android/deskclock/alarms/TimePickerDialogFragment$OnTimeSetListener;

.field final synthetic val$timePicker:Landroid/widget/TimePicker;


# direct methods
.method constructor <init>(Lcom/android/deskclock/alarms/TimePickerDialogFragment;Lcom/android/deskclock/alarms/TimePickerDialogFragment$OnTimeSetListener;Landroid/widget/TimePicker;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/android/deskclock/alarms/TimePickerDialogFragment$2;->this$0:Lcom/android/deskclock/alarms/TimePickerDialogFragment;

    iput-object p2, p0, Lcom/android/deskclock/alarms/TimePickerDialogFragment$2;->val$listener:Lcom/android/deskclock/alarms/TimePickerDialogFragment$OnTimeSetListener;

    iput-object p3, p0, Lcom/android/deskclock/alarms/TimePickerDialogFragment$2;->val$timePicker:Landroid/widget/TimePicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 79
    iget-object p1, p0, Lcom/android/deskclock/alarms/TimePickerDialogFragment$2;->val$listener:Lcom/android/deskclock/alarms/TimePickerDialogFragment$OnTimeSetListener;

    iget-object p2, p0, Lcom/android/deskclock/alarms/TimePickerDialogFragment$2;->this$0:Lcom/android/deskclock/alarms/TimePickerDialogFragment;

    iget-object v0, p0, Lcom/android/deskclock/alarms/TimePickerDialogFragment$2;->val$timePicker:Landroid/widget/TimePicker;

    .line 80
    invoke-virtual {v0}, Landroid/widget/TimePicker;->getCurrentHour()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object p0, p0, Lcom/android/deskclock/alarms/TimePickerDialogFragment$2;->val$timePicker:Landroid/widget/TimePicker;

    invoke-virtual {p0}, Landroid/widget/TimePicker;->getCurrentMinute()Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    .line 79
    invoke-interface {p1, p2, v0, p0}, Lcom/android/deskclock/alarms/TimePickerDialogFragment$OnTimeSetListener;->onTimeSet(Lcom/android/deskclock/alarms/TimePickerDialogFragment;II)V

    return-void
.end method
