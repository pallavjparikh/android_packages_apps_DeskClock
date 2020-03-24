.class public final Lcom/android/deskclock/events/LogEventTracker;
.super Ljava/lang/Object;
.source "LogEventTracker.java"

# interfaces
.implements Lcom/android/deskclock/events/EventTracker;


# static fields
.field private static final LOGGER:Lcom/android/deskclock/LogUtils$Logger;


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 25
    new-instance v0, Lcom/android/deskclock/LogUtils$Logger;

    const-string v1, "Events"

    invoke-direct {v0, v1}, Lcom/android/deskclock/LogUtils$Logger;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/deskclock/events/LogEventTracker;->LOGGER:Lcom/android/deskclock/LogUtils$Logger;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/android/deskclock/events/LogEventTracker;->mContext:Landroid/content/Context;

    return-void
.end method

.method private safeGetString(I)Ljava/lang/String;
    .locals 0

    if-nez p1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 47
    :cond_0
    iget-object p0, p0, Lcom/android/deskclock/events/LogEventTracker;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method


# virtual methods
.method public sendEvent(III)V
    .locals 5

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p3, :cond_0

    .line 36
    sget-object p3, Lcom/android/deskclock/events/LogEventTracker;->LOGGER:Lcom/android/deskclock/LogUtils$Logger;

    new-array v0, v0, [Ljava/lang/Object;

    invoke-direct {p0, p1}, Lcom/android/deskclock/events/LogEventTracker;->safeGetString(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v2

    invoke-direct {p0, p2}, Lcom/android/deskclock/events/LogEventTracker;->safeGetString(I)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v0, v1

    const-string p0, "[%s] [%s]"

    invoke-virtual {p3, p0, v0}, Lcom/android/deskclock/LogUtils$Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 38
    :cond_0
    sget-object v3, Lcom/android/deskclock/events/LogEventTracker;->LOGGER:Lcom/android/deskclock/LogUtils$Logger;

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    invoke-direct {p0, p1}, Lcom/android/deskclock/events/LogEventTracker;->safeGetString(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v4, v2

    invoke-direct {p0, p2}, Lcom/android/deskclock/events/LogEventTracker;->safeGetString(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v4, v1

    .line 39
    invoke-direct {p0, p3}, Lcom/android/deskclock/events/LogEventTracker;->safeGetString(I)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v4, v0

    const-string p0, "[%s] [%s] [%s]"

    .line 38
    invoke-virtual {v3, p0, v4}, Lcom/android/deskclock/LogUtils$Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
