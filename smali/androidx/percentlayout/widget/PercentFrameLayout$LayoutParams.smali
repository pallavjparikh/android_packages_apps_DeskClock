.class public Landroidx/percentlayout/widget/PercentFrameLayout$LayoutParams;
.super Landroid/widget/FrameLayout$LayoutParams;
.source "PercentFrameLayout.java"

# interfaces
.implements Landroidx/percentlayout/widget/PercentLayoutHelper$PercentLayoutParams;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/percentlayout/widget/PercentFrameLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private mPercentLayoutInfo:Landroidx/percentlayout/widget/PercentLayoutHelper$PercentLayoutInfo;


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 187
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 182
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 183
    invoke-static {p1, p2}, Landroidx/percentlayout/widget/PercentLayoutHelper;->getPercentLayoutInfo(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/percentlayout/widget/PercentLayoutHelper$PercentLayoutInfo;

    move-result-object p1

    iput-object p1, p0, Landroidx/percentlayout/widget/PercentFrameLayout$LayoutParams;->mPercentLayoutInfo:Landroidx/percentlayout/widget/PercentLayoutHelper$PercentLayoutInfo;

    return-void
.end method


# virtual methods
.method public getPercentLayoutInfo()Landroidx/percentlayout/widget/PercentLayoutHelper$PercentLayoutInfo;
    .locals 1

    .line 216
    iget-object v0, p0, Landroidx/percentlayout/widget/PercentFrameLayout$LayoutParams;->mPercentLayoutInfo:Landroidx/percentlayout/widget/PercentLayoutHelper$PercentLayoutInfo;

    if-nez v0, :cond_0

    .line 217
    new-instance v0, Landroidx/percentlayout/widget/PercentLayoutHelper$PercentLayoutInfo;

    invoke-direct {v0}, Landroidx/percentlayout/widget/PercentLayoutHelper$PercentLayoutInfo;-><init>()V

    iput-object v0, p0, Landroidx/percentlayout/widget/PercentFrameLayout$LayoutParams;->mPercentLayoutInfo:Landroidx/percentlayout/widget/PercentLayoutHelper$PercentLayoutInfo;

    .line 220
    :cond_0
    iget-object p0, p0, Landroidx/percentlayout/widget/PercentFrameLayout$LayoutParams;->mPercentLayoutInfo:Landroidx/percentlayout/widget/PercentLayoutHelper$PercentLayoutInfo;

    return-object p0
.end method

.method protected setBaseAttributes(Landroid/content/res/TypedArray;II)V
    .locals 0

    .line 225
    invoke-static {p0, p1, p2, p3}, Landroidx/percentlayout/widget/PercentLayoutHelper;->fetchWidthAndHeight(Landroid/view/ViewGroup$LayoutParams;Landroid/content/res/TypedArray;II)V

    return-void
.end method
