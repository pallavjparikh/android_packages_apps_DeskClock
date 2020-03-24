.class public final Lcom/android/deskclock/data/City$UtcOffsetIndexComparator;
.super Ljava/lang/Object;
.source "City.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/deskclock/data/City;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UtcOffsetIndexComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/android/deskclock/data/City;",
        ">;"
    }
.end annotation


# instance fields
.field private final now:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 159
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/deskclock/data/City$UtcOffsetIndexComparator;->now:J

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/deskclock/data/City;Lcom/android/deskclock/data/City;)I
    .locals 2

    .line 162
    invoke-virtual {p1}, Lcom/android/deskclock/data/City;->getTimeZone()Ljava/util/TimeZone;

    move-result-object p1

    iget-wide v0, p0, Lcom/android/deskclock/data/City$UtcOffsetIndexComparator;->now:J

    invoke-virtual {p1, v0, v1}, Ljava/util/TimeZone;->getOffset(J)I

    move-result p1

    .line 163
    invoke-virtual {p2}, Lcom/android/deskclock/data/City;->getTimeZone()Ljava/util/TimeZone;

    move-result-object p2

    iget-wide v0, p0, Lcom/android/deskclock/data/City$UtcOffsetIndexComparator;->now:J

    invoke-virtual {p2, v0, v1}, Ljava/util/TimeZone;->getOffset(J)I

    move-result p0

    .line 164
    invoke-static {p1, p0}, Ljava/lang/Integer;->compare(II)I

    move-result p0

    return p0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 156
    check-cast p1, Lcom/android/deskclock/data/City;

    check-cast p2, Lcom/android/deskclock/data/City;

    invoke-virtual {p0, p1, p2}, Lcom/android/deskclock/data/City$UtcOffsetIndexComparator;->compare(Lcom/android/deskclock/data/City;Lcom/android/deskclock/data/City;)I

    move-result p0

    return p0
.end method
