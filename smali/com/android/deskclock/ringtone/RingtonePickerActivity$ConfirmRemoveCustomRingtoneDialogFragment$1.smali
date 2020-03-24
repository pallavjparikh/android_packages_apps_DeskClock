.class Lcom/android/deskclock/ringtone/RingtonePickerActivity$ConfirmRemoveCustomRingtoneDialogFragment$1;
.super Ljava/lang/Object;
.source "RingtonePickerActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/deskclock/ringtone/RingtonePickerActivity$ConfirmRemoveCustomRingtoneDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/deskclock/ringtone/RingtonePickerActivity$ConfirmRemoveCustomRingtoneDialogFragment;

.field final synthetic val$toRemove:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/android/deskclock/ringtone/RingtonePickerActivity$ConfirmRemoveCustomRingtoneDialogFragment;Landroid/net/Uri;)V
    .locals 0

    .line 461
    iput-object p1, p0, Lcom/android/deskclock/ringtone/RingtonePickerActivity$ConfirmRemoveCustomRingtoneDialogFragment$1;->this$0:Lcom/android/deskclock/ringtone/RingtonePickerActivity$ConfirmRemoveCustomRingtoneDialogFragment;

    iput-object p2, p0, Lcom/android/deskclock/ringtone/RingtonePickerActivity$ConfirmRemoveCustomRingtoneDialogFragment$1;->val$toRemove:Landroid/net/Uri;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 464
    iget-object p1, p0, Lcom/android/deskclock/ringtone/RingtonePickerActivity$ConfirmRemoveCustomRingtoneDialogFragment$1;->this$0:Lcom/android/deskclock/ringtone/RingtonePickerActivity$ConfirmRemoveCustomRingtoneDialogFragment;

    invoke-virtual {p1}, Landroid/app/DialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    check-cast p1, Lcom/android/deskclock/ringtone/RingtonePickerActivity;

    iget-object p0, p0, Lcom/android/deskclock/ringtone/RingtonePickerActivity$ConfirmRemoveCustomRingtoneDialogFragment$1;->val$toRemove:Landroid/net/Uri;

    invoke-static {p1, p0}, Lcom/android/deskclock/ringtone/RingtonePickerActivity;->access$600(Lcom/android/deskclock/ringtone/RingtonePickerActivity;Landroid/net/Uri;)V

    return-void
.end method
