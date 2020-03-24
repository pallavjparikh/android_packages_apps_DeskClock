.class Lcom/android/deskclock/alarms/TimePickerDialogFragment$1;
.super Ljava/lang/Object;
.source "TimePickerDialogFragment.java"

# interfaces
.implements Landroid/app/TimePickerDialog$OnTimeSetListener;


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


# direct methods
.method constructor <init>(Lcom/android/deskclock/alarms/TimePickerDialogFragment;Lcom/android/deskclock/alarms/TimePickerDialogFragment$OnTimeSetListener;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/android/deskclock/alarms/TimePickerDialogFragment$1;->this$0:Lcom/android/deskclock/alarms/TimePickerDialogFragment;

    iput-object p2, p0, Lcom/android/deskclock/alarms/TimePickerDialogFragment$1;->val$listener:Lcom/android/deskclock/alarms/TimePickerDialogFragment$OnTimeSetListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTimeSet(Landroid/widget/TimePicker;II)V
    .locals 0

    .line 63
    iget-object p1, p0, Lcom/android/deskclock/alarms/TimePickerDialogFragment$1;->val$listener:Lcom/android/deskclock/alarms/TimePickerDialogFragment$OnTimeSetListener;

    iget-object p0, p0, Lcom/android/deskclock/alarms/TimePickerDialogFragment$1;->this$0:Lcom/android/deskclock/alarms/TimePickerDialogFragment;

    invoke-interface {p1, p0, p2, p3}, Lcom/android/deskclock/alarms/TimePickerDialogFragment$OnTimeSetListener;->onTimeSet(Lcom/android/deskclock/alarms/TimePickerDialogFragment;II)V

    return-void
.end method
