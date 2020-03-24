.class Lcom/android/deskclock/data/Timer$2;
.super Ljava/lang/Object;
.source "Timer.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/deskclock/data/Timer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/android/deskclock/data/Timer;",
        ">;"
    }
.end annotation


# instance fields
.field private final stateExpiryOrder:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/deskclock/data/Timer$State;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 3

    .line 410
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/android/deskclock/data/Timer$State;

    .line 412
    sget-object v1, Lcom/android/deskclock/data/Timer$State;->MISSED:Lcom/android/deskclock/data/Timer$State;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/deskclock/data/Timer$State;->EXPIRED:Lcom/android/deskclock/data/Timer$State;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/deskclock/data/Timer$State;->RUNNING:Lcom/android/deskclock/data/Timer$State;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/deskclock/data/Timer$State;->PAUSED:Lcom/android/deskclock/data/Timer$State;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/deskclock/data/Timer$State;->RESET:Lcom/android/deskclock/data/Timer$State;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/deskclock/data/Timer$2;->stateExpiryOrder:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/deskclock/data/Timer;Lcom/android/deskclock/data/Timer;)I
    .locals 2

    .line 417
    iget-object v0, p0, Lcom/android/deskclock/data/Timer$2;->stateExpiryOrder:Ljava/util/List;

    invoke-virtual {p1}, Lcom/android/deskclock/data/Timer;->getState()Lcom/android/deskclock/data/Timer$State;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 418
    iget-object p0, p0, Lcom/android/deskclock/data/Timer$2;->stateExpiryOrder:Ljava/util/List;

    invoke-virtual {p2}, Lcom/android/deskclock/data/Timer;->getState()Lcom/android/deskclock/data/Timer$State;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p0

    .line 420
    invoke-static {v0, p0}, Ljava/lang/Integer;->compare(II)I

    move-result p0

    if-nez p0, :cond_1

    .line 422
    invoke-virtual {p1}, Lcom/android/deskclock/data/Timer;->getState()Lcom/android/deskclock/data/Timer$State;

    move-result-object p0

    .line 423
    sget-object v0, Lcom/android/deskclock/data/Timer$State;->RESET:Lcom/android/deskclock/data/Timer$State;

    if-ne p0, v0, :cond_0

    .line 424
    invoke-virtual {p1}, Lcom/android/deskclock/data/Timer;->getLength()J

    move-result-wide p0

    invoke-virtual {p2}, Lcom/android/deskclock/data/Timer;->getLength()J

    move-result-wide v0

    invoke-static {p0, p1, v0, v1}, Ljava/lang/Long;->compare(JJ)I

    move-result p0

    goto :goto_0

    .line 426
    :cond_0
    invoke-virtual {p1}, Lcom/android/deskclock/data/Timer;->getRemainingTime()J

    move-result-wide p0

    invoke-virtual {p2}, Lcom/android/deskclock/data/Timer;->getRemainingTime()J

    move-result-wide v0

    invoke-static {p0, p1, v0, v1}, Ljava/lang/Long;->compare(JJ)I

    move-result p0

    :cond_1
    :goto_0
    return p0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 410
    check-cast p1, Lcom/android/deskclock/data/Timer;

    check-cast p2, Lcom/android/deskclock/data/Timer;

    invoke-virtual {p0, p1, p2}, Lcom/android/deskclock/data/Timer$2;->compare(Lcom/android/deskclock/data/Timer;Lcom/android/deskclock/data/Timer;)I

    move-result p0

    return p0
.end method
