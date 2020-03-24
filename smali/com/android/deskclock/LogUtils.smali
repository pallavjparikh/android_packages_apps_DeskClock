.class public Lcom/android/deskclock/LogUtils;
.super Ljava/lang/Object;
.source "LogUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/deskclock/LogUtils$Logger;
    }
.end annotation


# static fields
.field private static final DEFAULT_LOGGER:Lcom/android/deskclock/LogUtils$Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 27
    new-instance v0, Lcom/android/deskclock/LogUtils$Logger;

    const-string v1, "AlarmClock"

    invoke-direct {v0, v1}, Lcom/android/deskclock/LogUtils$Logger;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/deskclock/LogUtils;->DEFAULT_LOGGER:Lcom/android/deskclock/LogUtils$Logger;

    return-void
.end method

.method public static varargs d(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .line 34
    sget-object v0, Lcom/android/deskclock/LogUtils;->DEFAULT_LOGGER:Lcom/android/deskclock/LogUtils$Logger;

    invoke-virtual {v0, p0, p1}, Lcom/android/deskclock/LogUtils$Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 50
    sget-object v0, Lcom/android/deskclock/LogUtils;->DEFAULT_LOGGER:Lcom/android/deskclock/LogUtils$Logger;

    invoke-virtual {v0, p0, p1}, Lcom/android/deskclock/LogUtils$Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static varargs e(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .line 46
    sget-object v0, Lcom/android/deskclock/LogUtils;->DEFAULT_LOGGER:Lcom/android/deskclock/LogUtils$Logger;

    invoke-virtual {v0, p0, p1}, Lcom/android/deskclock/LogUtils$Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static varargs i(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .line 38
    sget-object v0, Lcom/android/deskclock/LogUtils;->DEFAULT_LOGGER:Lcom/android/deskclock/LogUtils$Logger;

    invoke-virtual {v0, p0, p1}, Lcom/android/deskclock/LogUtils$Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static varargs v(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .line 30
    sget-object v0, Lcom/android/deskclock/LogUtils;->DEFAULT_LOGGER:Lcom/android/deskclock/LogUtils$Logger;

    invoke-virtual {v0, p0, p1}, Lcom/android/deskclock/LogUtils$Logger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static varargs w(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .line 42
    sget-object v0, Lcom/android/deskclock/LogUtils;->DEFAULT_LOGGER:Lcom/android/deskclock/LogUtils$Logger;

    invoke-virtual {v0, p0, p1}, Lcom/android/deskclock/LogUtils$Logger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static varargs wtf(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .line 54
    sget-object v0, Lcom/android/deskclock/LogUtils;->DEFAULT_LOGGER:Lcom/android/deskclock/LogUtils$Logger;

    invoke-virtual {v0, p0, p1}, Lcom/android/deskclock/LogUtils$Logger;->wtf(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static wtf(Ljava/lang/Throwable;)V
    .locals 1

    .line 58
    sget-object v0, Lcom/android/deskclock/LogUtils;->DEFAULT_LOGGER:Lcom/android/deskclock/LogUtils$Logger;

    invoke-virtual {v0, p0}, Lcom/android/deskclock/LogUtils$Logger;->wtf(Ljava/lang/Throwable;)V

    return-void
.end method
