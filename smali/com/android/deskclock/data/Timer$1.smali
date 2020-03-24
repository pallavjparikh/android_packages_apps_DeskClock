.class Lcom/android/deskclock/data/Timer$1;
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


# direct methods
.method constructor <init>()V
    .locals 0

    .line 392
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/deskclock/data/Timer;Lcom/android/deskclock/data/Timer;)I
    .locals 0

    .line 395
    invoke-virtual {p2}, Lcom/android/deskclock/data/Timer;->getId()I

    move-result p0

    invoke-virtual {p1}, Lcom/android/deskclock/data/Timer;->getId()I

    move-result p1

    invoke-static {p0, p1}, Ljava/lang/Integer;->compare(II)I

    move-result p0

    return p0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 392
    check-cast p1, Lcom/android/deskclock/data/Timer;

    check-cast p2, Lcom/android/deskclock/data/Timer;

    invoke-virtual {p0, p1, p2}, Lcom/android/deskclock/data/Timer$1;->compare(Lcom/android/deskclock/data/Timer;Lcom/android/deskclock/data/Timer;)I

    move-result p0

    return p0
.end method
