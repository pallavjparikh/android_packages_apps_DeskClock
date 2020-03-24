.class public Lcom/android/deskclock/alarms/TimePickerDialogFragment;
.super Landroid/app/DialogFragment;
.source "TimePickerDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/deskclock/alarms/TimePickerDialogFragment$OnTimeSetListener;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static removeTimeEditDialog(Landroid/app/FragmentManager;)V
    .locals 1

    if-eqz p0, :cond_0

    const-string v0, "TimePickerDialogFragment"

    .line 120
    invoke-virtual {p0, v0}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 122
    invoke-virtual {p0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/FragmentTransaction;->commit()I

    :cond_0
    return-void
.end method

.method public static show(Landroid/app/Fragment;)V
    .locals 1

    const/4 v0, -0x1

    .line 88
    invoke-static {p0, v0, v0}, Lcom/android/deskclock/alarms/TimePickerDialogFragment;->show(Landroid/app/Fragment;II)V

    return-void
.end method

.method public static show(Landroid/app/Fragment;II)V
    .locals 3

    .line 92
    instance-of v0, p0, Lcom/android/deskclock/alarms/TimePickerDialogFragment$OnTimeSetListener;

    if-eqz v0, :cond_4

    .line 96
    invoke-virtual {p0}, Landroid/app/Fragment;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 97
    invoke-virtual {p0}, Landroid/app/FragmentManager;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 102
    :cond_0
    invoke-static {p0}, Lcom/android/deskclock/alarms/TimePickerDialogFragment;->removeTimeEditDialog(Landroid/app/FragmentManager;)V

    .line 104
    new-instance v0, Lcom/android/deskclock/alarms/TimePickerDialogFragment;

    invoke-direct {v0}, Lcom/android/deskclock/alarms/TimePickerDialogFragment;-><init>()V

    .line 106
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    if-ltz p1, :cond_1

    const/16 v2, 0x18

    if-ge p1, v2, :cond_1

    const-string v2, "TimePickerDialogFragment_hour"

    .line 108
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_1
    if-ltz p2, :cond_2

    const/16 p1, 0x3c

    if-ge p2, p1, :cond_2

    const-string p1, "TimePickerDialogFragment_minute"

    .line 111
    invoke-virtual {v1, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 114
    :cond_2
    invoke-virtual {v0, v1}, Landroid/app/DialogFragment;->setArguments(Landroid/os/Bundle;)V

    const-string p1, "TimePickerDialogFragment"

    .line 115
    invoke-virtual {v0, p0, p1}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void

    .line 93
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Fragment must implement OnTimeSetListener"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 10

    .line 51
    invoke-virtual {p0}, Landroid/app/DialogFragment;->getParentFragment()Landroid/app/Fragment;

    move-result-object p1

    check-cast p1, Lcom/android/deskclock/alarms/TimePickerDialogFragment$OnTimeSetListener;

    .line 53
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 54
    invoke-virtual {p0}, Landroid/app/DialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    if-nez v1, :cond_0

    sget-object v1, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/app/DialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    :goto_0
    const/16 v2, 0xb

    .line 55
    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const-string v3, "TimePickerDialogFragment_hour"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v7

    const/16 v2, 0xc

    .line 56
    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    const-string v2, "TimePickerDialogFragment_minute"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v8

    .line 58
    invoke-static {}, Lcom/android/deskclock/Utils;->isLOrLater()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 59
    invoke-virtual {p0}, Landroid/app/DialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    .line 60
    new-instance v0, Landroid/app/TimePickerDialog;

    new-instance v6, Lcom/android/deskclock/alarms/TimePickerDialogFragment$1;

    invoke-direct {v6, p0, p1}, Lcom/android/deskclock/alarms/TimePickerDialogFragment$1;-><init>(Lcom/android/deskclock/alarms/TimePickerDialogFragment;Lcom/android/deskclock/alarms/TimePickerDialogFragment$OnTimeSetListener;)V

    .line 65
    invoke-static {v5}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v9

    move-object v4, v0

    invoke-direct/range {v4 .. v9}, Landroid/app/TimePickerDialog;-><init>(Landroid/content/Context;Landroid/app/TimePickerDialog$OnTimeSetListener;IIZ)V

    return-object v0

    .line 67
    :cond_1
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/DialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 68
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 70
    new-instance v2, Landroid/widget/TimePicker;

    invoke-direct {v2, v1}, Landroid/widget/TimePicker;-><init>(Landroid/content/Context;)V

    .line 71
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TimePicker;->setCurrentHour(Ljava/lang/Integer;)V

    .line 72
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TimePicker;->setCurrentMinute(Ljava/lang/Integer;)V

    .line 73
    invoke-static {v1}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TimePicker;->setIs24HourView(Ljava/lang/Boolean;)V

    .line 75
    invoke-virtual {v0, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    const v1, 0x104000a

    new-instance v3, Lcom/android/deskclock/alarms/TimePickerDialogFragment$2;

    invoke-direct {v3, p0, p1, v2}, Lcom/android/deskclock/alarms/TimePickerDialogFragment$2;-><init>(Lcom/android/deskclock/alarms/TimePickerDialogFragment;Lcom/android/deskclock/alarms/TimePickerDialogFragment$OnTimeSetListener;Landroid/widget/TimePicker;)V

    .line 76
    invoke-virtual {v0, v1, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    const/high16 p0, 0x1040000

    const/4 p1, 0x0

    .line 82
    invoke-virtual {v0, p0, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 83
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    return-object p0
.end method
