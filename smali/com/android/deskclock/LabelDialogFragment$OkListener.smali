.class Lcom/android/deskclock/LabelDialogFragment$OkListener;
.super Ljava/lang/Object;
.source "LabelDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/deskclock/LabelDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OkListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/deskclock/LabelDialogFragment;


# direct methods
.method private constructor <init>(Lcom/android/deskclock/LabelDialogFragment;)V
    .locals 0

    .line 236
    iput-object p1, p0, Lcom/android/deskclock/LabelDialogFragment$OkListener;->this$0:Lcom/android/deskclock/LabelDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/deskclock/LabelDialogFragment;Lcom/android/deskclock/LabelDialogFragment$1;)V
    .locals 0

    .line 236
    invoke-direct {p0, p1}, Lcom/android/deskclock/LabelDialogFragment$OkListener;-><init>(Lcom/android/deskclock/LabelDialogFragment;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 239
    iget-object p1, p0, Lcom/android/deskclock/LabelDialogFragment$OkListener;->this$0:Lcom/android/deskclock/LabelDialogFragment;

    invoke-static {p1}, Lcom/android/deskclock/LabelDialogFragment;->access$400(Lcom/android/deskclock/LabelDialogFragment;)V

    .line 240
    iget-object p0, p0, Lcom/android/deskclock/LabelDialogFragment$OkListener;->this$0:Lcom/android/deskclock/LabelDialogFragment;

    invoke-virtual {p0}, Landroid/app/DialogFragment;->dismiss()V

    return-void
.end method
