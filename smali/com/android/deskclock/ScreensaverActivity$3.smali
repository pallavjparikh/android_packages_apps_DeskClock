.class Lcom/android/deskclock/ScreensaverActivity$3;
.super Ljava/lang/Object;
.source "ScreensaverActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


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
.method constructor <init>(Lcom/android/deskclock/ScreensaverActivity;)V
    .locals 0

    .line 86
    iput-object p1, p0, Lcom/android/deskclock/ScreensaverActivity$3;->this$0:Lcom/android/deskclock/ScreensaverActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 89
    iget-object v0, p0, Lcom/android/deskclock/ScreensaverActivity$3;->this$0:Lcom/android/deskclock/ScreensaverActivity;

    invoke-static {v0}, Lcom/android/deskclock/ScreensaverActivity;->access$400(Lcom/android/deskclock/ScreensaverActivity;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/deskclock/ScreensaverActivity$3;->this$0:Lcom/android/deskclock/ScreensaverActivity;

    invoke-static {v1}, Lcom/android/deskclock/ScreensaverActivity;->access$500(Lcom/android/deskclock/ScreensaverActivity;)Ljava/lang/String;

    move-result-object v1

    iget-object p0, p0, Lcom/android/deskclock/ScreensaverActivity$3;->this$0:Lcom/android/deskclock/ScreensaverActivity;

    invoke-static {p0}, Lcom/android/deskclock/ScreensaverActivity;->access$300(Lcom/android/deskclock/ScreensaverActivity;)Landroid/view/View;

    move-result-object p0

    invoke-static {v0, v1, p0}, Lcom/android/deskclock/Utils;->updateDate(Ljava/lang/String;Ljava/lang/String;Landroid/view/View;)V

    return-void
.end method
