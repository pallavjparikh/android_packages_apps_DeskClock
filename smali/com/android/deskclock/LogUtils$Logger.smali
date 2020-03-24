.class public final Lcom/android/deskclock/LogUtils$Logger;
.super Ljava/lang/Object;
.source "LogUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/deskclock/LogUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Logger"
.end annotation


# static fields
.field public static final DEBUG:Z


# instance fields
.field public final logTag:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 66
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "eng"

    .line 67
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "userdebug"

    .line 68
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    sput-boolean v0, Lcom/android/deskclock/LogUtils$Logger;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-object p1, p0, Lcom/android/deskclock/LogUtils$Logger;->logTag:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public varargs d(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .line 91
    invoke-virtual {p0}, Lcom/android/deskclock/LogUtils$Logger;->isDebugLoggable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 92
    iget-object p0, p0, Lcom/android/deskclock/LogUtils$Logger;->logTag:Ljava/lang/String;

    if-eqz p2, :cond_1

    array-length v0, p2

    if-nez v0, :cond_0

    goto :goto_0

    .line 93
    :cond_0
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 92
    :cond_1
    :goto_0
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method

.method public e(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 119
    invoke-virtual {p0}, Lcom/android/deskclock/LogUtils$Logger;->isErrorLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 120
    iget-object p0, p0, Lcom/android/deskclock/LogUtils$Logger;->logTag:Ljava/lang/String;

    invoke-static {p0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method

.method public varargs e(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .line 112
    invoke-virtual {p0}, Lcom/android/deskclock/LogUtils$Logger;->isErrorLoggable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 113
    iget-object p0, p0, Lcom/android/deskclock/LogUtils$Logger;->logTag:Ljava/lang/String;

    if-eqz p2, :cond_1

    array-length v0, p2

    if-nez v0, :cond_0

    goto :goto_0

    .line 114
    :cond_0
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 113
    :cond_1
    :goto_0
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method

.method public varargs i(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .line 98
    invoke-virtual {p0}, Lcom/android/deskclock/LogUtils$Logger;->isInfoLoggable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 99
    iget-object p0, p0, Lcom/android/deskclock/LogUtils$Logger;->logTag:Ljava/lang/String;

    if-eqz p2, :cond_1

    array-length v0, p2

    if-nez v0, :cond_0

    goto :goto_0

    .line 100
    :cond_0
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 99
    :cond_1
    :goto_0
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method

.method public isDebugLoggable()Z
    .locals 1

    .line 77
    sget-boolean v0, Lcom/android/deskclock/LogUtils$Logger;->DEBUG:Z

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/android/deskclock/LogUtils$Logger;->logTag:Ljava/lang/String;

    const/4 v0, 0x3

    invoke-static {p0, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public isErrorLoggable()Z
    .locals 1

    .line 80
    sget-boolean v0, Lcom/android/deskclock/LogUtils$Logger;->DEBUG:Z

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/android/deskclock/LogUtils$Logger;->logTag:Ljava/lang/String;

    const/4 v0, 0x6

    invoke-static {p0, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public isInfoLoggable()Z
    .locals 1

    .line 78
    sget-boolean v0, Lcom/android/deskclock/LogUtils$Logger;->DEBUG:Z

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/android/deskclock/LogUtils$Logger;->logTag:Ljava/lang/String;

    const/4 v0, 0x4

    invoke-static {p0, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public isVerboseLoggable()Z
    .locals 1

    .line 76
    sget-boolean v0, Lcom/android/deskclock/LogUtils$Logger;->DEBUG:Z

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/android/deskclock/LogUtils$Logger;->logTag:Ljava/lang/String;

    const/4 v0, 0x2

    invoke-static {p0, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public isWarnLoggable()Z
    .locals 1

    .line 79
    sget-boolean v0, Lcom/android/deskclock/LogUtils$Logger;->DEBUG:Z

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/android/deskclock/LogUtils$Logger;->logTag:Ljava/lang/String;

    const/4 v0, 0x5

    invoke-static {p0, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public isWtfLoggable()Z
    .locals 1

    .line 81
    sget-boolean v0, Lcom/android/deskclock/LogUtils$Logger;->DEBUG:Z

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/android/deskclock/LogUtils$Logger;->logTag:Ljava/lang/String;

    const/4 v0, 0x7

    invoke-static {p0, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public varargs v(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .line 84
    invoke-virtual {p0}, Lcom/android/deskclock/LogUtils$Logger;->isVerboseLoggable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 85
    iget-object p0, p0, Lcom/android/deskclock/LogUtils$Logger;->logTag:Ljava/lang/String;

    if-eqz p2, :cond_1

    array-length v0, p2

    if-nez v0, :cond_0

    goto :goto_0

    .line 86
    :cond_0
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 85
    :cond_1
    :goto_0
    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method

.method public varargs w(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .line 105
    invoke-virtual {p0}, Lcom/android/deskclock/LogUtils$Logger;->isWarnLoggable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 106
    iget-object p0, p0, Lcom/android/deskclock/LogUtils$Logger;->logTag:Ljava/lang/String;

    if-eqz p2, :cond_1

    array-length v0, p2

    if-nez v0, :cond_0

    goto :goto_0

    .line 107
    :cond_0
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 106
    :cond_1
    :goto_0
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method

.method public varargs wtf(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .line 125
    invoke-virtual {p0}, Lcom/android/deskclock/LogUtils$Logger;->isWtfLoggable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 126
    iget-object p0, p0, Lcom/android/deskclock/LogUtils$Logger;->logTag:Ljava/lang/String;

    if-eqz p2, :cond_1

    array-length v0, p2

    if-nez v0, :cond_0

    goto :goto_0

    .line 127
    :cond_0
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 126
    :cond_1
    :goto_0
    invoke-static {p0, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method

.method public wtf(Ljava/lang/Throwable;)V
    .locals 1

    .line 132
    invoke-virtual {p0}, Lcom/android/deskclock/LogUtils$Logger;->isWtfLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 133
    iget-object p0, p0, Lcom/android/deskclock/LogUtils$Logger;->logTag:Ljava/lang/String;

    invoke-static {p0, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method
