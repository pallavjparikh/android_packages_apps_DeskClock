.class Lcom/android/deskclock/DeskClock$7;
.super Ljava/lang/Object;
.source "DeskClock.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/deskclock/DeskClock;->onPostResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/deskclock/DeskClock;


# direct methods
.method constructor <init>(Lcom/android/deskclock/DeskClock;)V
    .locals 0

    .line 348
    iput-object p1, p0, Lcom/android/deskclock/DeskClock$7;->this$0:Lcom/android/deskclock/DeskClock;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .line 351
    iget-object p0, p0, Lcom/android/deskclock/DeskClock$7;->this$0:Lcom/android/deskclock/DeskClock;

    invoke-virtual {p0}, Landroid/app/Activity;->recreate()V

    return-void
.end method
