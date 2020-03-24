.class Lcom/android/deskclock/controller/EventController;
.super Ljava/lang/Object;
.source "EventController.java"


# instance fields
.field private final mEventTrackers:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lcom/android/deskclock/events/EventTracker;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/deskclock/controller/EventController;->mEventTrackers:Ljava/util/Collection;

    return-void
.end method


# virtual methods
.method addEventTracker(Lcom/android/deskclock/events/EventTracker;)V
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/android/deskclock/controller/EventController;->mEventTrackers:Ljava/util/Collection;

    invoke-interface {p0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method sendEvent(III)V
    .locals 1

    .line 39
    iget-object p0, p0, Lcom/android/deskclock/controller/EventController;->mEventTrackers:Ljava/util/Collection;

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/deskclock/events/EventTracker;

    .line 40
    invoke-interface {v0, p1, p2, p3}, Lcom/android/deskclock/events/EventTracker;->sendEvent(III)V

    goto :goto_0

    :cond_0
    return-void
.end method
