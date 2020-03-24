.class public final Lcom/android/deskclock/data/City$NameComparator;
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
    name = "NameComparator"
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
.field private final mDelegate:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/deskclock/data/City;",
            ">;"
        }
    .end annotation
.end field

.field private final mNameCollator:Ljava/text/Collator;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 177
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 179
    new-instance v0, Lcom/android/deskclock/data/City$NameIndexComparator;

    invoke-direct {v0}, Lcom/android/deskclock/data/City$NameIndexComparator;-><init>()V

    iput-object v0, p0, Lcom/android/deskclock/data/City$NameComparator;->mDelegate:Ljava/util/Comparator;

    .line 182
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/deskclock/data/City$NameComparator;->mNameCollator:Ljava/text/Collator;

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/deskclock/data/City;Lcom/android/deskclock/data/City;)I
    .locals 1

    .line 186
    iget-object v0, p0, Lcom/android/deskclock/data/City$NameComparator;->mDelegate:Ljava/util/Comparator;

    invoke-interface {v0, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-nez v0, :cond_0

    .line 189
    iget-object p0, p0, Lcom/android/deskclock/data/City$NameComparator;->mNameCollator:Ljava/text/Collator;

    invoke-virtual {p1}, Lcom/android/deskclock/data/City;->getPhoneticName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lcom/android/deskclock/data/City;->getPhoneticName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    :cond_0
    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 177
    check-cast p1, Lcom/android/deskclock/data/City;

    check-cast p2, Lcom/android/deskclock/data/City;

    invoke-virtual {p0, p1, p2}, Lcom/android/deskclock/data/City$NameComparator;->compare(Lcom/android/deskclock/data/City;Lcom/android/deskclock/data/City;)I

    move-result p0

    return p0
.end method
