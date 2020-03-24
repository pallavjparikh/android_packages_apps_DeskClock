.class public interface abstract Lcom/android/deskclock/Predicate;
.super Ljava/lang/Object;
.source "Predicate.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final FALSE:Lcom/android/deskclock/Predicate;

.field public static final TRUE:Lcom/android/deskclock/Predicate;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 36
    new-instance v0, Lcom/android/deskclock/Predicate$1;

    invoke-direct {v0}, Lcom/android/deskclock/Predicate$1;-><init>()V

    sput-object v0, Lcom/android/deskclock/Predicate;->TRUE:Lcom/android/deskclock/Predicate;

    .line 46
    new-instance v0, Lcom/android/deskclock/Predicate$2;

    invoke-direct {v0}, Lcom/android/deskclock/Predicate$2;-><init>()V

    sput-object v0, Lcom/android/deskclock/Predicate;->FALSE:Lcom/android/deskclock/Predicate;

    return-void
.end method


# virtual methods
.method public abstract apply(Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation
.end method
