.class Lcom/android/deskclock/ScreensaverActivity$2;
.super Landroid/database/ContentObserver;
.source "ScreensaverActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/deskclock/ScreensaverActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/deskclock/ScreensaverActivity;


# direct methods
.method constructor <init>(Lcom/android/deskclock/ScreensaverActivity;Landroid/os/Handler;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/android/deskclock/ScreensaverActivity$2;->this$0:Lcom/android/deskclock/ScreensaverActivity;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 0

    .line 80
    iget-object p0, p0, Lcom/android/deskclock/ScreensaverActivity$2;->this$0:Lcom/android/deskclock/ScreensaverActivity;

    invoke-static {p0}, Lcom/android/deskclock/ScreensaverActivity;->access$300(Lcom/android/deskclock/ScreensaverActivity;)Landroid/view/View;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/deskclock/Utils;->refreshAlarm(Landroid/content/Context;Landroid/view/View;)V

    return-void
.end method
