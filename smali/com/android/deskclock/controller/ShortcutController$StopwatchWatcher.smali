.class Lcom/android/deskclock/controller/ShortcutController$StopwatchWatcher;
.super Ljava/lang/Object;
.source "ShortcutController.java"

# interfaces
.implements Lcom/android/deskclock/data/StopwatchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/deskclock/controller/ShortcutController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StopwatchWatcher"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/deskclock/controller/ShortcutController;


# direct methods
.method private constructor <init>(Lcom/android/deskclock/controller/ShortcutController;)V
    .locals 0

    .line 162
    iput-object p1, p0, Lcom/android/deskclock/controller/ShortcutController$StopwatchWatcher;->this$0:Lcom/android/deskclock/controller/ShortcutController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/deskclock/controller/ShortcutController;Lcom/android/deskclock/controller/ShortcutController$1;)V
    .locals 0

    .line 162
    invoke-direct {p0, p1}, Lcom/android/deskclock/controller/ShortcutController$StopwatchWatcher;-><init>(Lcom/android/deskclock/controller/ShortcutController;)V

    return-void
.end method


# virtual methods
.method public lapAdded(Lcom/android/deskclock/data/Lap;)V
    .locals 0

    return-void
.end method

.method public stopwatchUpdated(Lcom/android/deskclock/data/Stopwatch;Lcom/android/deskclock/data/Stopwatch;)V
    .locals 0

    .line 166
    iget-object p1, p0, Lcom/android/deskclock/controller/ShortcutController$StopwatchWatcher;->this$0:Lcom/android/deskclock/controller/ShortcutController;

    invoke-static {p1}, Lcom/android/deskclock/controller/ShortcutController;->access$100(Lcom/android/deskclock/controller/ShortcutController;)Landroid/os/UserManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/UserManager;->isUserUnlocked()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Object;

    const-string p1, "Skipping stopwatch shortcut update because user is locked."

    .line 167
    invoke-static {p1, p0}, Lcom/android/deskclock/LogUtils;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 171
    :cond_0
    :try_start_0
    iget-object p1, p0, Lcom/android/deskclock/controller/ShortcutController$StopwatchWatcher;->this$0:Lcom/android/deskclock/controller/ShortcutController;

    invoke-static {p1}, Lcom/android/deskclock/controller/ShortcutController;->access$300(Lcom/android/deskclock/controller/ShortcutController;)Landroid/content/pm/ShortcutManager;

    move-result-object p1

    iget-object p0, p0, Lcom/android/deskclock/controller/ShortcutController$StopwatchWatcher;->this$0:Lcom/android/deskclock/controller/ShortcutController;

    .line 172
    invoke-static {p0}, Lcom/android/deskclock/controller/ShortcutController;->access$200(Lcom/android/deskclock/controller/ShortcutController;)Landroid/content/pm/ShortcutInfo;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    .line 171
    invoke-virtual {p1, p0}, Landroid/content/pm/ShortcutManager;->updateShortcuts(Ljava/util/List;)Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 174
    invoke-static {p0}, Lcom/android/deskclock/LogUtils;->wtf(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
