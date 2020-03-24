.class public final Lcom/android/deskclock/data/City$UtcOffsetComparator;
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
    name = "UtcOffsetComparator"
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
.field private final mDelegate1:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/deskclock/data/City;",
            ">;"
        }
    .end annotation
.end field

.field private final mDelegate2:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/deskclock/data/City;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 134
    new-instance v0, Lcom/android/deskclock/data/City$UtcOffsetIndexComparator;

    invoke-direct {v0}, Lcom/android/deskclock/data/City$UtcOffsetIndexComparator;-><init>()V

    iput-object v0, p0, Lcom/android/deskclock/data/City$UtcOffsetComparator;->mDelegate1:Ljava/util/Comparator;

    .line 136
    new-instance v0, Lcom/android/deskclock/data/City$NameComparator;

    invoke-direct {v0}, Lcom/android/deskclock/data/City$NameComparator;-><init>()V

    iput-object v0, p0, Lcom/android/deskclock/data/City$UtcOffsetComparator;->mDelegate2:Ljava/util/Comparator;

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/deskclock/data/City;Lcom/android/deskclock/data/City;)I
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/android/deskclock/data/City$UtcOffsetComparator;->mDelegate1:Ljava/util/Comparator;

    invoke-interface {v0, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-nez v0, :cond_0

    .line 142
    iget-object p0, p0, Lcom/android/deskclock/data/City$UtcOffsetComparator;->mDelegate2:Ljava/util/Comparator;

    invoke-interface {p0, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    :cond_0
    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 132
    check-cast p1, Lcom/android/deskclock/data/City;

    check-cast p2, Lcom/android/deskclock/data/City;

    invoke-virtual {p0, p1, p2}, Lcom/android/deskclock/data/City$UtcOffsetComparator;->compare(Lcom/android/deskclock/data/City;Lcom/android/deskclock/data/City;)I

    move-result p0

    return p0
.end method
