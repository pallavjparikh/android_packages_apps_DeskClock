.class Lcom/android/deskclock/widget/TextTime$1;
.super Landroid/database/ContentObserver;
.source "TextTime.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/deskclock/widget/TextTime;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/deskclock/widget/TextTime;


# direct methods
.method constructor <init>(Lcom/android/deskclock/widget/TextTime;Landroid/os/Handler;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/android/deskclock/widget/TextTime$1;->this$0:Lcom/android/deskclock/widget/TextTime;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 0

    .line 65
    iget-object p1, p0, Lcom/android/deskclock/widget/TextTime$1;->this$0:Lcom/android/deskclock/widget/TextTime;

    invoke-static {p1}, Lcom/android/deskclock/widget/TextTime;->access$000(Lcom/android/deskclock/widget/TextTime;)V

    .line 66
    iget-object p0, p0, Lcom/android/deskclock/widget/TextTime$1;->this$0:Lcom/android/deskclock/widget/TextTime;

    invoke-static {p0}, Lcom/android/deskclock/widget/TextTime;->access$100(Lcom/android/deskclock/widget/TextTime;)V

    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 0

    .line 71
    iget-object p1, p0, Lcom/android/deskclock/widget/TextTime$1;->this$0:Lcom/android/deskclock/widget/TextTime;

    invoke-static {p1}, Lcom/android/deskclock/widget/TextTime;->access$000(Lcom/android/deskclock/widget/TextTime;)V

    .line 72
    iget-object p0, p0, Lcom/android/deskclock/widget/TextTime$1;->this$0:Lcom/android/deskclock/widget/TextTime;

    invoke-static {p0}, Lcom/android/deskclock/widget/TextTime;->access$100(Lcom/android/deskclock/widget/TextTime;)V

    return-void
.end method
