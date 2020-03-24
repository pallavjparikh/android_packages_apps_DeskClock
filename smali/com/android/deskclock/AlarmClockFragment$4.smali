.class Lcom/android/deskclock/AlarmClockFragment$4;
.super Ljava/lang/Object;
.source "AlarmClockFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/deskclock/AlarmClockFragment;->setAdapterItems(Ljava/util/List;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/deskclock/AlarmClockFragment;

.field final synthetic val$items:Ljava/util/List;

.field final synthetic val$updateToken:J


# direct methods
.method constructor <init>(Lcom/android/deskclock/AlarmClockFragment;Ljava/util/List;J)V
    .locals 0

    .line 313
    iput-object p1, p0, Lcom/android/deskclock/AlarmClockFragment$4;->this$0:Lcom/android/deskclock/AlarmClockFragment;

    iput-object p2, p0, Lcom/android/deskclock/AlarmClockFragment$4;->val$items:Ljava/util/List;

    iput-wide p3, p0, Lcom/android/deskclock/AlarmClockFragment$4;->val$updateToken:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 316
    iget-object v0, p0, Lcom/android/deskclock/AlarmClockFragment$4;->this$0:Lcom/android/deskclock/AlarmClockFragment;

    iget-object v1, p0, Lcom/android/deskclock/AlarmClockFragment$4;->val$items:Ljava/util/List;

    iget-wide v2, p0, Lcom/android/deskclock/AlarmClockFragment$4;->val$updateToken:J

    invoke-static {v0, v1, v2, v3}, Lcom/android/deskclock/AlarmClockFragment;->access$500(Lcom/android/deskclock/AlarmClockFragment;Ljava/util/List;J)V

    return-void
.end method
