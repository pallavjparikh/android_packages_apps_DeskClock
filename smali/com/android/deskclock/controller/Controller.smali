.class public final Lcom/android/deskclock/controller/Controller;
.super Ljava/lang/Object;
.source "Controller.java"


# static fields
.field private static final sController:Lcom/android/deskclock/controller/Controller;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mEventController:Lcom/android/deskclock/controller/EventController;

.field private mShortcutController:Lcom/android/deskclock/controller/ShortcutController;

.field private mVoiceController:Lcom/android/deskclock/controller/VoiceController;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 34
    new-instance v0, Lcom/android/deskclock/controller/Controller;

    invoke-direct {v0}, Lcom/android/deskclock/controller/Controller;-><init>()V

    sput-object v0, Lcom/android/deskclock/controller/Controller;->sController:Lcom/android/deskclock/controller/Controller;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getController()Lcom/android/deskclock/controller/Controller;
    .locals 1

    .line 50
    sget-object v0, Lcom/android/deskclock/controller/Controller;->sController:Lcom/android/deskclock/controller/Controller;

    return-object v0
.end method


# virtual methods
.method public addEventTracker(Lcom/android/deskclock/events/EventTracker;)V
    .locals 0

    .line 72
    invoke-static {}, Lcom/android/deskclock/Utils;->enforceMainLooper()V

    .line 73
    iget-object p0, p0, Lcom/android/deskclock/controller/Controller;->mEventController:Lcom/android/deskclock/controller/EventController;

    invoke-virtual {p0, p1}, Lcom/android/deskclock/controller/EventController;->addEventTracker(Lcom/android/deskclock/events/EventTracker;)V

    return-void
.end method

.method public notifyVoiceFailure(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 0

    .line 105
    iget-object p0, p0, Lcom/android/deskclock/controller/Controller;->mVoiceController:Lcom/android/deskclock/controller/VoiceController;

    invoke-virtual {p0, p1, p2}, Lcom/android/deskclock/controller/VoiceController;->notifyVoiceFailure(Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method

.method public notifyVoiceSuccess(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 0

    .line 101
    iget-object p0, p0, Lcom/android/deskclock/controller/Controller;->mVoiceController:Lcom/android/deskclock/controller/VoiceController;

    invoke-virtual {p0, p1, p2}, Lcom/android/deskclock/controller/VoiceController;->notifyVoiceSuccess(Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method

.method public sendEvent(III)V
    .locals 0

    .line 93
    iget-object p0, p0, Lcom/android/deskclock/controller/Controller;->mEventController:Lcom/android/deskclock/controller/EventController;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/deskclock/controller/EventController;->sendEvent(III)V

    return-void
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/android/deskclock/controller/Controller;->mContext:Landroid/content/Context;

    if-eq v0, p1, :cond_0

    .line 55
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/deskclock/controller/Controller;->mContext:Landroid/content/Context;

    .line 56
    new-instance p1, Lcom/android/deskclock/controller/EventController;

    invoke-direct {p1}, Lcom/android/deskclock/controller/EventController;-><init>()V

    iput-object p1, p0, Lcom/android/deskclock/controller/Controller;->mEventController:Lcom/android/deskclock/controller/EventController;

    .line 57
    new-instance p1, Lcom/android/deskclock/controller/VoiceController;

    invoke-direct {p1}, Lcom/android/deskclock/controller/VoiceController;-><init>()V

    iput-object p1, p0, Lcom/android/deskclock/controller/Controller;->mVoiceController:Lcom/android/deskclock/controller/VoiceController;

    .line 58
    invoke-static {}, Lcom/android/deskclock/Utils;->isNMR1OrLater()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 59
    new-instance p1, Lcom/android/deskclock/controller/ShortcutController;

    iget-object v0, p0, Lcom/android/deskclock/controller/Controller;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/android/deskclock/controller/ShortcutController;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/deskclock/controller/Controller;->mShortcutController:Lcom/android/deskclock/controller/ShortcutController;

    :cond_0
    return-void
.end method

.method public updateShortcuts()V
    .locals 0

    .line 113
    invoke-static {}, Lcom/android/deskclock/Utils;->enforceMainLooper()V

    .line 114
    iget-object p0, p0, Lcom/android/deskclock/controller/Controller;->mShortcutController:Lcom/android/deskclock/controller/ShortcutController;

    if-eqz p0, :cond_0

    .line 115
    invoke-virtual {p0}, Lcom/android/deskclock/controller/ShortcutController;->updateShortcuts()V

    :cond_0
    return-void
.end method
