.class public final Lcom/android/deskclock/widget/toast/SnackbarManager;
.super Ljava/lang/Object;
.source "SnackbarManager.java"


# static fields
.field private static sSnackbar:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/google/android/material/snackbar/Snackbar;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static dismiss()V
    .locals 2

    .line 38
    sget-object v0, Lcom/android/deskclock/widget/toast/SnackbarManager;->sSnackbar:Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/snackbar/Snackbar;

    :goto_0
    if-eqz v0, :cond_1

    .line 40
    invoke-virtual {v0}, Lcom/google/android/material/snackbar/Snackbar;->dismiss()V

    .line 41
    sput-object v1, Lcom/android/deskclock/widget/toast/SnackbarManager;->sSnackbar:Ljava/lang/ref/WeakReference;

    :cond_1
    return-void
.end method

.method public static show(Lcom/google/android/material/snackbar/Snackbar;)V
    .locals 1

    .line 33
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/android/deskclock/widget/toast/SnackbarManager;->sSnackbar:Ljava/lang/ref/WeakReference;

    .line 34
    invoke-virtual {p0}, Lcom/google/android/material/snackbar/Snackbar;->show()V

    return-void
.end method
