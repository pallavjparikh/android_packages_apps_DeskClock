.class public final Lcom/android/deskclock/data/City$NameIndexComparator;
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
    name = "NameIndexComparator"
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
.field private final mNameCollator:Ljava/text/Collator;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 204
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 207
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/deskclock/data/City$NameIndexComparator;->mNameCollator:Ljava/text/Collator;

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/deskclock/data/City;Lcom/android/deskclock/data/City;)I
    .locals 2

    .line 211
    invoke-virtual {p1}, Lcom/android/deskclock/data/City;->getIndex()I

    move-result v0

    invoke-virtual {p2}, Lcom/android/deskclock/data/City;->getIndex()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    if-nez v0, :cond_0

    .line 214
    iget-object p0, p0, Lcom/android/deskclock/data/City$NameIndexComparator;->mNameCollator:Ljava/text/Collator;

    invoke-virtual {p1}, Lcom/android/deskclock/data/City;->getIndexString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lcom/android/deskclock/data/City;->getIndexString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    :cond_0
    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 204
    check-cast p1, Lcom/android/deskclock/data/City;

    check-cast p2, Lcom/android/deskclock/data/City;

    invoke-virtual {p0, p1, p2}, Lcom/android/deskclock/data/City$NameIndexComparator;->compare(Lcom/android/deskclock/data/City;Lcom/android/deskclock/data/City;)I

    move-result p0

    return p0
.end method
