.class final Lcom/android/deskclock/ClockFragment$StartScreenSaverListener;
.super Ljava/lang/Object;
.source "ClockFragment.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/deskclock/ClockFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "StartScreenSaverListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/deskclock/ClockFragment;


# direct methods
.method private constructor <init>(Lcom/android/deskclock/ClockFragment;)V
    .locals 0

    .line 232
    iput-object p1, p0, Lcom/android/deskclock/ClockFragment$StartScreenSaverListener;->this$0:Lcom/android/deskclock/ClockFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/deskclock/ClockFragment;Lcom/android/deskclock/ClockFragment$1;)V
    .locals 0

    .line 232
    invoke-direct {p0, p1}, Lcom/android/deskclock/ClockFragment$StartScreenSaverListener;-><init>(Lcom/android/deskclock/ClockFragment;)V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 2

    .line 236
    iget-object p0, p0, Lcom/android/deskclock/ClockFragment$StartScreenSaverListener;->this$0:Lcom/android/deskclock/ClockFragment;

    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-class v1, Lcom/android/deskclock/ScreensaverActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v0, 0x10000000

    .line 237
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object p1

    const-string v0, "com.android.deskclock.extra.EVENT_LABEL"

    const v1, 0x7f1101e6

    .line 238
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p1

    .line 236
    invoke-virtual {p0, p1}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V

    const/4 p0, 0x1

    return p0
.end method
