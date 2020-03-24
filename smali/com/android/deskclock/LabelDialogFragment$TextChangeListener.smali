.class Lcom/android/deskclock/LabelDialogFragment$TextChangeListener;
.super Ljava/lang/Object;
.source "LabelDialogFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/deskclock/LabelDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TextChangeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/deskclock/LabelDialogFragment;


# direct methods
.method private constructor <init>(Lcom/android/deskclock/LabelDialogFragment;)V
    .locals 0

    .line 203
    iput-object p1, p0, Lcom/android/deskclock/LabelDialogFragment$TextChangeListener;->this$0:Lcom/android/deskclock/LabelDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/deskclock/LabelDialogFragment;Lcom/android/deskclock/LabelDialogFragment$1;)V
    .locals 0

    .line 203
    invoke-direct {p0, p1}, Lcom/android/deskclock/LabelDialogFragment$TextChangeListener;-><init>(Lcom/android/deskclock/LabelDialogFragment;)V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 206
    iget-object p0, p0, Lcom/android/deskclock/LabelDialogFragment$TextChangeListener;->this$0:Lcom/android/deskclock/LabelDialogFragment;

    invoke-static {p0}, Lcom/android/deskclock/LabelDialogFragment;->access$300(Lcom/android/deskclock/LabelDialogFragment;)Landroidx/appcompat/widget/AppCompatEditText;

    move-result-object p0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Landroid/widget/EditText;->setActivated(Z)V

    return-void
.end method
