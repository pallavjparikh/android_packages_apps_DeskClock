.class Lcom/android/deskclock/ringtone/RingtonePickerActivity$1;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "RingtonePickerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/deskclock/ringtone/RingtonePickerActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/deskclock/ringtone/RingtonePickerActivity;


# direct methods
.method constructor <init>(Lcom/android/deskclock/ringtone/RingtonePickerActivity;)V
    .locals 0

    .line 198
    iput-object p1, p0, Lcom/android/deskclock/ringtone/RingtonePickerActivity$1;->this$0:Lcom/android/deskclock/ringtone/RingtonePickerActivity;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 0

    .line 201
    iget-object p1, p0, Lcom/android/deskclock/ringtone/RingtonePickerActivity$1;->this$0:Lcom/android/deskclock/ringtone/RingtonePickerActivity;

    invoke-static {p1}, Lcom/android/deskclock/ringtone/RingtonePickerActivity;->access$100(Lcom/android/deskclock/ringtone/RingtonePickerActivity;)I

    move-result p1

    const/4 p2, -0x1

    if-eq p1, p2, :cond_0

    .line 202
    iget-object p0, p0, Lcom/android/deskclock/ringtone/RingtonePickerActivity$1;->this$0:Lcom/android/deskclock/ringtone/RingtonePickerActivity;

    invoke-virtual {p0}, Landroid/app/Activity;->closeContextMenu()V

    :cond_0
    return-void
.end method
