.class Lcom/android/deskclock/ringtone/RingtonePickerActivity$ItemClickWatcher;
.super Ljava/lang/Object;
.source "RingtonePickerActivity.java"

# interfaces
.implements Lcom/android/deskclock/ItemAdapter$OnItemClickedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/deskclock/ringtone/RingtonePickerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ItemClickWatcher"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/deskclock/ringtone/RingtonePickerActivity;


# direct methods
.method private constructor <init>(Lcom/android/deskclock/ringtone/RingtonePickerActivity;)V
    .locals 0

    .line 487
    iput-object p1, p0, Lcom/android/deskclock/ringtone/RingtonePickerActivity$ItemClickWatcher;->this$0:Lcom/android/deskclock/ringtone/RingtonePickerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/deskclock/ringtone/RingtonePickerActivity;Lcom/android/deskclock/ringtone/RingtonePickerActivity$1;)V
    .locals 0

    .line 487
    invoke-direct {p0, p1}, Lcom/android/deskclock/ringtone/RingtonePickerActivity$ItemClickWatcher;-><init>(Lcom/android/deskclock/ringtone/RingtonePickerActivity;)V

    return-void
.end method


# virtual methods
.method public onItemClicked(Lcom/android/deskclock/ItemAdapter$ItemViewHolder;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/deskclock/ItemAdapter$ItemViewHolder<",
            "*>;I)V"
        }
    .end annotation

    const/high16 v0, -0x80000000

    const/4 v1, 0x0

    if-eq p2, v0, :cond_5

    const/4 v0, -0x2

    if-eq p2, v0, :cond_4

    const/4 v0, -0x1

    if-eq p2, v0, :cond_3

    if-eqz p2, :cond_0

    goto/16 :goto_0

    .line 500
    :cond_0
    iget-object p2, p0, Lcom/android/deskclock/ringtone/RingtonePickerActivity$ItemClickWatcher;->this$0:Lcom/android/deskclock/ringtone/RingtonePickerActivity;

    invoke-virtual {p2}, Lcom/android/deskclock/ringtone/RingtonePickerActivity;->getSelectedRingtoneHolder()Lcom/android/deskclock/ringtone/RingtoneHolder;

    move-result-object p2

    .line 501
    invoke-virtual {p1}, Lcom/android/deskclock/ItemAdapter$ItemViewHolder;->getItemHolder()Lcom/android/deskclock/ItemAdapter$ItemHolder;

    move-result-object p1

    check-cast p1, Lcom/android/deskclock/ringtone/RingtoneHolder;

    if-ne p2, p1, :cond_2

    .line 505
    invoke-virtual {p1}, Lcom/android/deskclock/ringtone/RingtoneHolder;->isPlaying()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 506
    iget-object p0, p0, Lcom/android/deskclock/ringtone/RingtonePickerActivity$ItemClickWatcher;->this$0:Lcom/android/deskclock/ringtone/RingtonePickerActivity;

    invoke-static {p0, p1, v1}, Lcom/android/deskclock/ringtone/RingtonePickerActivity;->access$700(Lcom/android/deskclock/ringtone/RingtonePickerActivity;Lcom/android/deskclock/ringtone/RingtoneHolder;Z)V

    goto :goto_0

    .line 508
    :cond_1
    iget-object p0, p0, Lcom/android/deskclock/ringtone/RingtonePickerActivity$ItemClickWatcher;->this$0:Lcom/android/deskclock/ringtone/RingtonePickerActivity;

    invoke-static {p0, p1}, Lcom/android/deskclock/ringtone/RingtonePickerActivity;->access$800(Lcom/android/deskclock/ringtone/RingtonePickerActivity;Lcom/android/deskclock/ringtone/RingtoneHolder;)V

    goto :goto_0

    .line 512
    :cond_2
    iget-object v0, p0, Lcom/android/deskclock/ringtone/RingtonePickerActivity$ItemClickWatcher;->this$0:Lcom/android/deskclock/ringtone/RingtonePickerActivity;

    const/4 v1, 0x1

    invoke-static {v0, p2, v1}, Lcom/android/deskclock/ringtone/RingtonePickerActivity;->access$700(Lcom/android/deskclock/ringtone/RingtonePickerActivity;Lcom/android/deskclock/ringtone/RingtoneHolder;Z)V

    .line 513
    iget-object p0, p0, Lcom/android/deskclock/ringtone/RingtonePickerActivity$ItemClickWatcher;->this$0:Lcom/android/deskclock/ringtone/RingtonePickerActivity;

    invoke-static {p0, p1}, Lcom/android/deskclock/ringtone/RingtonePickerActivity;->access$800(Lcom/android/deskclock/ringtone/RingtonePickerActivity;Lcom/android/deskclock/ringtone/RingtoneHolder;)V

    goto :goto_0

    .line 518
    :cond_3
    iget-object p0, p0, Lcom/android/deskclock/ringtone/RingtonePickerActivity$ItemClickWatcher;->this$0:Lcom/android/deskclock/ringtone/RingtonePickerActivity;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p1

    invoke-static {p0, p1}, Lcom/android/deskclock/ringtone/RingtonePickerActivity;->access$102(Lcom/android/deskclock/ringtone/RingtonePickerActivity;I)I

    goto :goto_0

    .line 522
    :cond_4
    iget-object p0, p0, Lcom/android/deskclock/ringtone/RingtonePickerActivity$ItemClickWatcher;->this$0:Lcom/android/deskclock/ringtone/RingtonePickerActivity;

    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p0

    .line 523
    invoke-virtual {p1}, Lcom/android/deskclock/ItemAdapter$ItemViewHolder;->getItemHolder()Lcom/android/deskclock/ItemAdapter$ItemHolder;

    move-result-object p1

    check-cast p1, Lcom/android/deskclock/ringtone/RingtoneHolder;

    invoke-virtual {p1}, Lcom/android/deskclock/ringtone/RingtoneHolder;->getUri()Landroid/net/Uri;

    move-result-object p1

    .line 522
    invoke-static {p0, p1, v1}, Lcom/android/deskclock/ringtone/RingtonePickerActivity$ConfirmRemoveCustomRingtoneDialogFragment;->show(Landroid/app/FragmentManager;Landroid/net/Uri;Z)V

    goto :goto_0

    .line 492
    :cond_5
    iget-object p1, p0, Lcom/android/deskclock/ringtone/RingtonePickerActivity$ItemClickWatcher;->this$0:Lcom/android/deskclock/ringtone/RingtonePickerActivity;

    invoke-virtual {p1}, Lcom/android/deskclock/ringtone/RingtonePickerActivity;->getSelectedRingtoneHolder()Lcom/android/deskclock/ringtone/RingtoneHolder;

    move-result-object p2

    invoke-static {p1, p2, v1}, Lcom/android/deskclock/ringtone/RingtonePickerActivity;->access$700(Lcom/android/deskclock/ringtone/RingtonePickerActivity;Lcom/android/deskclock/ringtone/RingtoneHolder;Z)V

    .line 493
    iget-object p0, p0, Lcom/android/deskclock/ringtone/RingtonePickerActivity$ItemClickWatcher;->this$0:Lcom/android/deskclock/ringtone/RingtonePickerActivity;

    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.intent.action.OPEN_DOCUMENT"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 p2, 0x40

    .line 494
    invoke-virtual {p1, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p1

    const-string p2, "android.intent.category.OPENABLE"

    .line 495
    invoke-virtual {p1, p2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    const-string p2, "audio/*"

    .line 496
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    .line 493
    invoke-virtual {p0, p1, v1}, Landroidx/fragment/app/FragmentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    :goto_0
    return-void
.end method
