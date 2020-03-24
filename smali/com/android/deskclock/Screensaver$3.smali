.class Lcom/android/deskclock/Screensaver$3;
.super Landroid/content/BroadcastReceiver;
.source "Screensaver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/deskclock/Screensaver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/deskclock/Screensaver;


# direct methods
.method constructor <init>(Lcom/android/deskclock/Screensaver;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/android/deskclock/Screensaver$3;->this$0:Lcom/android/deskclock/Screensaver;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/android/deskclock/Screensaver$3;->this$0:Lcom/android/deskclock/Screensaver;

    invoke-static {p0}, Lcom/android/deskclock/Screensaver;->access$100(Lcom/android/deskclock/Screensaver;)Landroid/view/View;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/deskclock/Utils;->refreshAlarm(Landroid/content/Context;Landroid/view/View;)V

    return-void
.end method
