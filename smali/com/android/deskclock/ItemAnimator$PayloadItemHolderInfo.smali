.class final Lcom/android/deskclock/ItemAnimator$PayloadItemHolderInfo;
.super Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
.source "ItemAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/deskclock/ItemAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PayloadItemHolderInfo"
.end annotation


# instance fields
.field private final mPayloads:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 353
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;-><init>()V

    .line 354
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/deskclock/ItemAnimator$PayloadItemHolderInfo;->mPayloads:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/deskclock/ItemAnimator$1;)V
    .locals 0

    .line 353
    invoke-direct {p0}, Lcom/android/deskclock/ItemAnimator$PayloadItemHolderInfo;-><init>()V

    return-void
.end method


# virtual methods
.method getPayloads()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 362
    iget-object p0, p0, Lcom/android/deskclock/ItemAnimator$PayloadItemHolderInfo;->mPayloads:Ljava/util/List;

    return-object p0
.end method

.method setPayloads(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 357
    iget-object v0, p0, Lcom/android/deskclock/ItemAnimator$PayloadItemHolderInfo;->mPayloads:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 358
    iget-object p0, p0, Lcom/android/deskclock/ItemAnimator$PayloadItemHolderInfo;->mPayloads:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method
