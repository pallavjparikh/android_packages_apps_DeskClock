.class Lcom/android/deskclock/controller/VoiceController;
.super Ljava/lang/Object;
.source "VoiceController.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x17
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method notifyVoiceFailure(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 1

    .line 58
    invoke-static {}, Lcom/android/deskclock/Utils;->isMOrLater()Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    .line 62
    :cond_0
    invoke-virtual {p1}, Landroid/app/Activity;->getVoiceInteractor()Landroid/app/VoiceInteractor;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 64
    new-instance p1, Landroid/app/VoiceInteractor$Prompt;

    invoke-direct {p1, p2}, Landroid/app/VoiceInteractor$Prompt;-><init>(Ljava/lang/CharSequence;)V

    .line 65
    new-instance p2, Landroid/app/VoiceInteractor$AbortVoiceRequest;

    const/4 v0, 0x0

    invoke-direct {p2, p1, v0}, Landroid/app/VoiceInteractor$AbortVoiceRequest;-><init>(Landroid/app/VoiceInteractor$Prompt;Landroid/os/Bundle;)V

    invoke-virtual {p0, p2}, Landroid/app/VoiceInteractor;->submitRequest(Landroid/app/VoiceInteractor$Request;)Z

    :cond_1
    return-void
.end method

.method notifyVoiceSuccess(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 1

    .line 39
    invoke-static {}, Lcom/android/deskclock/Utils;->isMOrLater()Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    .line 43
    :cond_0
    invoke-virtual {p1}, Landroid/app/Activity;->getVoiceInteractor()Landroid/app/VoiceInteractor;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 45
    new-instance p1, Landroid/app/VoiceInteractor$Prompt;

    invoke-direct {p1, p2}, Landroid/app/VoiceInteractor$Prompt;-><init>(Ljava/lang/CharSequence;)V

    .line 46
    new-instance p2, Landroid/app/VoiceInteractor$CompleteVoiceRequest;

    const/4 v0, 0x0

    invoke-direct {p2, p1, v0}, Landroid/app/VoiceInteractor$CompleteVoiceRequest;-><init>(Landroid/app/VoiceInteractor$Prompt;Landroid/os/Bundle;)V

    invoke-virtual {p0, p2}, Landroid/app/VoiceInteractor;->submitRequest(Landroid/app/VoiceInteractor$Request;)Z

    :cond_1
    return-void
.end method
