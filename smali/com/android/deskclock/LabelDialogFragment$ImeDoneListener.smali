.class Lcom/android/deskclock/LabelDialogFragment$ImeDoneListener;
.super Ljava/lang/Object;
.source "LabelDialogFragment.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/deskclock/LabelDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImeDoneListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/deskclock/LabelDialogFragment;


# direct methods
.method private constructor <init>(Lcom/android/deskclock/LabelDialogFragment;)V
    .locals 0

    .line 221
    iput-object p1, p0, Lcom/android/deskclock/LabelDialogFragment$ImeDoneListener;->this$0:Lcom/android/deskclock/LabelDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/deskclock/LabelDialogFragment;Lcom/android/deskclock/LabelDialogFragment$1;)V
    .locals 0

    .line 221
    invoke-direct {p0, p1}, Lcom/android/deskclock/LabelDialogFragment$ImeDoneListener;-><init>(Lcom/android/deskclock/LabelDialogFragment;)V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x6

    if-ne p2, p1, :cond_0

    .line 225
    iget-object p1, p0, Lcom/android/deskclock/LabelDialogFragment$ImeDoneListener;->this$0:Lcom/android/deskclock/LabelDialogFragment;

    invoke-static {p1}, Lcom/android/deskclock/LabelDialogFragment;->access$400(Lcom/android/deskclock/LabelDialogFragment;)V

    .line 226
    iget-object p0, p0, Lcom/android/deskclock/LabelDialogFragment$ImeDoneListener;->this$0:Lcom/android/deskclock/LabelDialogFragment;

    invoke-virtual {p0}, Landroid/app/DialogFragment;->dismissAllowingStateLoss()V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
