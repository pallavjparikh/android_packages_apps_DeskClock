.class Lcom/android/deskclock/widget/CircleView$2;
.super Landroid/util/Property;
.source "CircleView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/deskclock/widget/CircleView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/Property<",
        "Lcom/android/deskclock/widget/CircleView;",
        "Ljava/lang/Float;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 0

    .line 59
    invoke-direct {p0, p1, p2}, Landroid/util/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public get(Lcom/android/deskclock/widget/CircleView;)Ljava/lang/Float;
    .locals 0

    .line 62
    invoke-virtual {p1}, Lcom/android/deskclock/widget/CircleView;->getRadius()F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 59
    check-cast p1, Lcom/android/deskclock/widget/CircleView;

    invoke-virtual {p0, p1}, Lcom/android/deskclock/widget/CircleView$2;->get(Lcom/android/deskclock/widget/CircleView;)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method

.method public set(Lcom/android/deskclock/widget/CircleView;Ljava/lang/Float;)V
    .locals 0

    .line 67
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p0

    invoke-virtual {p1, p0}, Lcom/android/deskclock/widget/CircleView;->setRadius(F)Lcom/android/deskclock/widget/CircleView;

    return-void
.end method

.method public bridge synthetic set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 59
    check-cast p1, Lcom/android/deskclock/widget/CircleView;

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p0, p1, p2}, Lcom/android/deskclock/widget/CircleView$2;->set(Lcom/android/deskclock/widget/CircleView;Ljava/lang/Float;)V

    return-void
.end method
