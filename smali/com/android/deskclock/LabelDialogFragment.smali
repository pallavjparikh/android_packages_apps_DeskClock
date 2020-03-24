.class public Lcom/android/deskclock/LabelDialogFragment;
.super Landroid/app/DialogFragment;
.source "LabelDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/deskclock/LabelDialogFragment$OkListener;,
        Lcom/android/deskclock/LabelDialogFragment$ImeDoneListener;,
        Lcom/android/deskclock/LabelDialogFragment$TextChangeListener;,
        Lcom/android/deskclock/LabelDialogFragment$AlarmLabelDialogHandler;
    }
.end annotation


# instance fields
.field private mAlarm:Lcom/android/deskclock/provider/Alarm;

.field private mLabelBox:Landroidx/appcompat/widget/AppCompatEditText;

.field private mTag:Ljava/lang/String;

.field private mTimerId:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 50
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/deskclock/LabelDialogFragment;)Landroidx/appcompat/widget/AppCompatEditText;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/android/deskclock/LabelDialogFragment;->mLabelBox:Landroidx/appcompat/widget/AppCompatEditText;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/deskclock/LabelDialogFragment;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Lcom/android/deskclock/LabelDialogFragment;->setLabel()V

    return-void
.end method

.method public static newInstance(Lcom/android/deskclock/data/Timer;)Lcom/android/deskclock/LabelDialogFragment;
    .locals 3

    .line 79
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 80
    invoke-virtual {p0}, Lcom/android/deskclock/data/Timer;->getLabel()Ljava/lang/String;

    move-result-object v1

    const-string v2, "arg_label"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    invoke-virtual {p0}, Lcom/android/deskclock/data/Timer;->getId()I

    move-result p0

    const-string v1, "arg_timer_id"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 83
    new-instance p0, Lcom/android/deskclock/LabelDialogFragment;

    invoke-direct {p0}, Lcom/android/deskclock/LabelDialogFragment;-><init>()V

    .line 84
    invoke-virtual {p0, v0}, Landroid/app/DialogFragment;->setArguments(Landroid/os/Bundle;)V

    return-object p0
.end method

.method public static newInstance(Lcom/android/deskclock/provider/Alarm;Ljava/lang/String;Ljava/lang/String;)Lcom/android/deskclock/LabelDialogFragment;
    .locals 2

    .line 68
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "arg_label"

    .line 69
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "arg_alarm"

    .line 70
    invoke-virtual {v0, p1, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string p0, "arg_tag"

    .line 71
    invoke-virtual {v0, p0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    new-instance p0, Lcom/android/deskclock/LabelDialogFragment;

    invoke-direct {p0}, Lcom/android/deskclock/LabelDialogFragment;-><init>()V

    .line 74
    invoke-virtual {p0, v0}, Landroid/app/DialogFragment;->setArguments(Landroid/os/Bundle;)V

    return-object p0
.end method

.method private setLabel()V
    .locals 3

    .line 180
    iget-object v0, p0, Lcom/android/deskclock/LabelDialogFragment;->mLabelBox:Landroidx/appcompat/widget/AppCompatEditText;

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 181
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, ""

    .line 186
    :cond_0
    iget-object v1, p0, Lcom/android/deskclock/LabelDialogFragment;->mAlarm:Lcom/android/deskclock/provider/Alarm;

    if-eqz v1, :cond_1

    .line 187
    invoke-virtual {p0}, Landroid/app/DialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/android/deskclock/LabelDialogFragment$AlarmLabelDialogHandler;

    iget-object v2, p0, Lcom/android/deskclock/LabelDialogFragment;->mAlarm:Lcom/android/deskclock/provider/Alarm;

    iget-object p0, p0, Lcom/android/deskclock/LabelDialogFragment;->mTag:Ljava/lang/String;

    invoke-interface {v1, v2, v0, p0}, Lcom/android/deskclock/LabelDialogFragment$AlarmLabelDialogHandler;->onDialogLabelSet(Lcom/android/deskclock/provider/Alarm;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 188
    :cond_1
    iget v1, p0, Lcom/android/deskclock/LabelDialogFragment;->mTimerId:I

    if-ltz v1, :cond_2

    .line 189
    invoke-static {}, Lcom/android/deskclock/data/DataModel;->getDataModel()Lcom/android/deskclock/data/DataModel;

    move-result-object v1

    iget p0, p0, Lcom/android/deskclock/LabelDialogFragment;->mTimerId:I

    invoke-virtual {v1, p0}, Lcom/android/deskclock/data/DataModel;->getTimer(I)Lcom/android/deskclock/data/Timer;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 191
    invoke-static {}, Lcom/android/deskclock/data/DataModel;->getDataModel()Lcom/android/deskclock/data/DataModel;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lcom/android/deskclock/data/DataModel;->setTimerLabel(Lcom/android/deskclock/data/Timer;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public static show(Landroid/app/FragmentManager;Lcom/android/deskclock/LabelDialogFragment;)V
    .locals 2

    if-eqz p0, :cond_2

    .line 92
    invoke-virtual {p0}, Landroid/app/FragmentManager;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 97
    :cond_0
    invoke-virtual {p0}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    .line 99
    invoke-virtual {p0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    const-string v1, "label_dialog"

    .line 102
    invoke-virtual {p0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 104
    invoke-virtual {v0, p0}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    :cond_1
    const/4 p0, 0x0

    .line 106
    invoke-virtual {v0, p0}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 108
    invoke-virtual {p1, v0, v1}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentTransaction;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 13

    .line 122
    invoke-virtual {p0}, Landroid/app/DialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/app/DialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    :goto_0
    const-string v1, "arg_alarm"

    .line 123
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/android/deskclock/provider/Alarm;

    iput-object v1, p0, Lcom/android/deskclock/LabelDialogFragment;->mAlarm:Lcom/android/deskclock/provider/Alarm;

    const/4 v1, -0x1

    const-string v2, "arg_timer_id"

    .line 124
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/deskclock/LabelDialogFragment;->mTimerId:I

    const-string v1, "arg_tag"

    .line 125
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/deskclock/LabelDialogFragment;->mTag:Ljava/lang/String;

    const-string v1, "arg_label"

    .line 127
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz p1, :cond_1

    .line 129
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 132
    :cond_1
    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/DialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {p1, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x104000a

    new-instance v2, Lcom/android/deskclock/LabelDialogFragment$OkListener;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/deskclock/LabelDialogFragment$OkListener;-><init>(Lcom/android/deskclock/LabelDialogFragment;Lcom/android/deskclock/LabelDialogFragment$1;)V

    .line 133
    invoke-virtual {p1, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    const/high16 v1, 0x1040000

    .line 134
    invoke-virtual {p1, v1, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    const v1, 0x7f1101e4

    .line 135
    invoke-virtual {p1, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 136
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    .line 137
    invoke-virtual {p1}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f04009f

    .line 140
    invoke-static {v1, v2}, Lcom/android/deskclock/ThemeUtils;->resolveColor(Landroid/content/Context;I)I

    move-result v2

    const v4, 0x7f0400a1

    .line 142
    invoke-static {v1, v4}, Lcom/android/deskclock/ThemeUtils;->resolveColor(Landroid/content/Context;I)I

    move-result v4

    .line 144
    new-instance v5, Landroidx/appcompat/widget/AppCompatEditText;

    invoke-direct {v5, v1}, Landroidx/appcompat/widget/AppCompatEditText;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/deskclock/LabelDialogFragment;->mLabelBox:Landroidx/appcompat/widget/AppCompatEditText;

    .line 145
    iget-object v5, p0, Lcom/android/deskclock/LabelDialogFragment;->mLabelBox:Landroidx/appcompat/widget/AppCompatEditText;

    new-instance v6, Landroid/content/res/ColorStateList;

    const/4 v7, 0x2

    new-array v8, v7, [[I

    const/4 v9, 0x1

    new-array v10, v9, [I

    const v11, 0x10102fe

    const/4 v12, 0x0

    aput v11, v10, v12

    aput-object v10, v8, v12

    new-array v10, v12, [I

    aput-object v10, v8, v9

    new-array v7, v7, [I

    aput v2, v7, v12

    aput v4, v7, v9

    invoke-direct {v6, v8, v7}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    invoke-virtual {v5, v6}, Landroidx/appcompat/widget/AppCompatEditText;->setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 148
    iget-object v2, p0, Lcom/android/deskclock/LabelDialogFragment;->mLabelBox:Landroidx/appcompat/widget/AppCompatEditText;

    new-instance v4, Lcom/android/deskclock/LabelDialogFragment$ImeDoneListener;

    invoke-direct {v4, p0, v3}, Lcom/android/deskclock/LabelDialogFragment$ImeDoneListener;-><init>(Lcom/android/deskclock/LabelDialogFragment;Lcom/android/deskclock/LabelDialogFragment$1;)V

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 149
    iget-object v2, p0, Lcom/android/deskclock/LabelDialogFragment;->mLabelBox:Landroidx/appcompat/widget/AppCompatEditText;

    new-instance v4, Lcom/android/deskclock/LabelDialogFragment$TextChangeListener;

    invoke-direct {v4, p0, v3}, Lcom/android/deskclock/LabelDialogFragment$TextChangeListener;-><init>(Lcom/android/deskclock/LabelDialogFragment;Lcom/android/deskclock/LabelDialogFragment$1;)V

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 150
    iget-object v2, p0, Lcom/android/deskclock/LabelDialogFragment;->mLabelBox:Landroidx/appcompat/widget/AppCompatEditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->setSingleLine()V

    .line 151
    iget-object v2, p0, Lcom/android/deskclock/LabelDialogFragment;->mLabelBox:Landroidx/appcompat/widget/AppCompatEditText;

    const/16 v3, 0x4001

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setInputType(I)V

    .line 152
    iget-object v2, p0, Lcom/android/deskclock/LabelDialogFragment;->mLabelBox:Landroidx/appcompat/widget/AppCompatEditText;

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 153
    iget-object v0, p0, Lcom/android/deskclock/LabelDialogFragment;->mLabelBox:Landroidx/appcompat/widget/AppCompatEditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->selectAll()V

    .line 157
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0700c0

    .line 158
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    .line 159
    iget-object v5, p0, Lcom/android/deskclock/LabelDialogFragment;->mLabelBox:Landroidx/appcompat/widget/AppCompatEditText;

    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object v4, p1

    move v6, v8

    invoke-virtual/range {v4 .. v9}, Landroidx/appcompat/app/AlertDialog;->setView(Landroid/view/View;IIII)V

    .line 161
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    if-eqz p0, :cond_2

    const/4 v0, 0x4

    .line 163
    invoke-virtual {p0, v0}, Landroid/view/Window;->setSoftInputMode(I)V

    :cond_2
    return-object p1
.end method

.method public onDestroyView()V
    .locals 1

    .line 170
    invoke-super {p0}, Landroid/app/DialogFragment;->onDestroyView()V

    .line 173
    iget-object p0, p0, Lcom/android/deskclock/LabelDialogFragment;->mLabelBox:Landroidx/appcompat/widget/AppCompatEditText;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 113
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 115
    iget-object p0, p0, Lcom/android/deskclock/LabelDialogFragment;->mLabelBox:Landroidx/appcompat/widget/AppCompatEditText;

    if-eqz p0, :cond_0

    .line 116
    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "arg_label"

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
