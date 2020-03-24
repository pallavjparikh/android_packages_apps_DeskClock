.class public final Lcom/android/deskclock/widget/toast/ToastManager;
.super Ljava/lang/Object;
.source "ToastManager.java"


# static fields
.field private static sToast:Landroid/widget/Toast;


# direct methods
.method public static cancelToast()V
    .locals 1

    .line 36
    sget-object v0, Lcom/android/deskclock/widget/toast/ToastManager;->sToast:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    .line 37
    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    :cond_0
    const/4 v0, 0x0

    .line 38
    sput-object v0, Lcom/android/deskclock/widget/toast/ToastManager;->sToast:Landroid/widget/Toast;

    return-void
.end method

.method public static setToast(Landroid/widget/Toast;)V
    .locals 1

    .line 30
    sget-object v0, Lcom/android/deskclock/widget/toast/ToastManager;->sToast:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    .line 31
    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 32
    :cond_0
    sput-object p0, Lcom/android/deskclock/widget/toast/ToastManager;->sToast:Landroid/widget/Toast;

    return-void
.end method
