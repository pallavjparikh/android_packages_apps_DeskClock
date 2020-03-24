.class Lcom/android/deskclock/Screensaver$2;
.super Ljava/lang/Object;
.source "Screensaver.java"

# interfaces
.implements Ljava/lang/Runnable;


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

    .line 62
    iput-object p1, p0, Lcom/android/deskclock/Screensaver$2;->this$0:Lcom/android/deskclock/Screensaver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 65
    iget-object v0, p0, Lcom/android/deskclock/Screensaver$2;->this$0:Lcom/android/deskclock/Screensaver;

    invoke-static {v0}, Lcom/android/deskclock/Screensaver;->access$200(Lcom/android/deskclock/Screensaver;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/deskclock/Screensaver$2;->this$0:Lcom/android/deskclock/Screensaver;

    invoke-static {v1}, Lcom/android/deskclock/Screensaver;->access$300(Lcom/android/deskclock/Screensaver;)Ljava/lang/String;

    move-result-object v1

    iget-object p0, p0, Lcom/android/deskclock/Screensaver$2;->this$0:Lcom/android/deskclock/Screensaver;

    invoke-static {p0}, Lcom/android/deskclock/Screensaver;->access$100(Lcom/android/deskclock/Screensaver;)Landroid/view/View;

    move-result-object p0

    invoke-static {v0, v1, p0}, Lcom/android/deskclock/Utils;->updateDate(Ljava/lang/String;Ljava/lang/String;Landroid/view/View;)V

    return-void
.end method
