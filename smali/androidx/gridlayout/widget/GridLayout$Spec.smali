.class public Landroidx/gridlayout/widget/GridLayout$Spec;
.super Ljava/lang/Object;
.source "GridLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/gridlayout/widget/GridLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Spec"
.end annotation


# static fields
.field static final UNDEFINED:Landroidx/gridlayout/widget/GridLayout$Spec;


# instance fields
.field final alignment:Landroidx/gridlayout/widget/GridLayout$Alignment;

.field final span:Landroidx/gridlayout/widget/GridLayout$Interval;

.field final startDefined:Z

.field final weight:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/high16 v0, -0x80000000

    .line 2432
    invoke-static {v0}, Landroidx/gridlayout/widget/GridLayout;->spec(I)Landroidx/gridlayout/widget/GridLayout$Spec;

    move-result-object v0

    sput-object v0, Landroidx/gridlayout/widget/GridLayout$Spec;->UNDEFINED:Landroidx/gridlayout/widget/GridLayout$Spec;

    return-void
.end method

.method constructor <init>(ZIILandroidx/gridlayout/widget/GridLayout$Alignment;F)V
    .locals 1

    .line 2448
    new-instance v0, Landroidx/gridlayout/widget/GridLayout$Interval;

    add-int/2addr p3, p2

    invoke-direct {v0, p2, p3}, Landroidx/gridlayout/widget/GridLayout$Interval;-><init>(II)V

    invoke-direct {p0, p1, v0, p4, p5}, Landroidx/gridlayout/widget/GridLayout$Spec;-><init>(ZLandroidx/gridlayout/widget/GridLayout$Interval;Landroidx/gridlayout/widget/GridLayout$Alignment;F)V

    return-void
.end method

.method private constructor <init>(ZLandroidx/gridlayout/widget/GridLayout$Interval;Landroidx/gridlayout/widget/GridLayout$Alignment;F)V
    .locals 0

    .line 2440
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2441
    iput-boolean p1, p0, Landroidx/gridlayout/widget/GridLayout$Spec;->startDefined:Z

    .line 2442
    iput-object p2, p0, Landroidx/gridlayout/widget/GridLayout$Spec;->span:Landroidx/gridlayout/widget/GridLayout$Interval;

    .line 2443
    iput-object p3, p0, Landroidx/gridlayout/widget/GridLayout$Spec;->alignment:Landroidx/gridlayout/widget/GridLayout$Alignment;

    .line 2444
    iput p4, p0, Landroidx/gridlayout/widget/GridLayout$Spec;->weight:F

    return-void
.end method


# virtual methods
.method final copyWriteSpan(Landroidx/gridlayout/widget/GridLayout$Interval;)Landroidx/gridlayout/widget/GridLayout$Spec;
    .locals 3

    .line 2462
    new-instance v0, Landroidx/gridlayout/widget/GridLayout$Spec;

    iget-boolean v1, p0, Landroidx/gridlayout/widget/GridLayout$Spec;->startDefined:Z

    iget-object v2, p0, Landroidx/gridlayout/widget/GridLayout$Spec;->alignment:Landroidx/gridlayout/widget/GridLayout$Alignment;

    iget p0, p0, Landroidx/gridlayout/widget/GridLayout$Spec;->weight:F

    invoke-direct {v0, v1, p1, v2, p0}, Landroidx/gridlayout/widget/GridLayout$Spec;-><init>(ZLandroidx/gridlayout/widget/GridLayout$Interval;Landroidx/gridlayout/widget/GridLayout$Alignment;F)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_4

    .line 2488
    const-class v2, Landroidx/gridlayout/widget/GridLayout$Spec;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 2492
    :cond_1
    check-cast p1, Landroidx/gridlayout/widget/GridLayout$Spec;

    .line 2494
    iget-object v2, p0, Landroidx/gridlayout/widget/GridLayout$Spec;->alignment:Landroidx/gridlayout/widget/GridLayout$Alignment;

    iget-object v3, p1, Landroidx/gridlayout/widget/GridLayout$Spec;->alignment:Landroidx/gridlayout/widget/GridLayout$Alignment;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    .line 2498
    :cond_2
    iget-object p0, p0, Landroidx/gridlayout/widget/GridLayout$Spec;->span:Landroidx/gridlayout/widget/GridLayout$Interval;

    iget-object p1, p1, Landroidx/gridlayout/widget/GridLayout$Spec;->span:Landroidx/gridlayout/widget/GridLayout$Interval;

    invoke-virtual {p0, p1}, Landroidx/gridlayout/widget/GridLayout$Interval;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    return v1

    :cond_3
    return v0

    :cond_4
    :goto_0
    return v1
.end method

.method public getAbsoluteAlignment(Z)Landroidx/gridlayout/widget/GridLayout$Alignment;
    .locals 2

    .line 2452
    iget-object v0, p0, Landroidx/gridlayout/widget/GridLayout$Spec;->alignment:Landroidx/gridlayout/widget/GridLayout$Alignment;

    sget-object v1, Landroidx/gridlayout/widget/GridLayout;->UNDEFINED_ALIGNMENT:Landroidx/gridlayout/widget/GridLayout$Alignment;

    if-eq v0, v1, :cond_0

    return-object v0

    .line 2455
    :cond_0
    iget p0, p0, Landroidx/gridlayout/widget/GridLayout$Spec;->weight:F

    const/4 v0, 0x0

    cmpl-float p0, p0, v0

    if-nez p0, :cond_2

    if-eqz p1, :cond_1

    .line 2456
    sget-object p0, Landroidx/gridlayout/widget/GridLayout;->START:Landroidx/gridlayout/widget/GridLayout$Alignment;

    goto :goto_0

    :cond_1
    sget-object p0, Landroidx/gridlayout/widget/GridLayout;->BASELINE:Landroidx/gridlayout/widget/GridLayout$Alignment;

    :goto_0
    return-object p0

    .line 2458
    :cond_2
    sget-object p0, Landroidx/gridlayout/widget/GridLayout;->FILL:Landroidx/gridlayout/widget/GridLayout$Alignment;

    return-object p0
.end method

.method final getFlexibility()I
    .locals 2

    .line 2470
    iget-object v0, p0, Landroidx/gridlayout/widget/GridLayout$Spec;->alignment:Landroidx/gridlayout/widget/GridLayout$Alignment;

    sget-object v1, Landroidx/gridlayout/widget/GridLayout;->UNDEFINED_ALIGNMENT:Landroidx/gridlayout/widget/GridLayout$Alignment;

    if-ne v0, v1, :cond_0

    iget p0, p0, Landroidx/gridlayout/widget/GridLayout$Spec;->weight:F

    const/4 v0, 0x0

    cmpl-float p0, p0, v0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 p0, 0x2

    :goto_0
    return p0
.end method

.method public hashCode()I
    .locals 1

    .line 2507
    iget-object v0, p0, Landroidx/gridlayout/widget/GridLayout$Spec;->span:Landroidx/gridlayout/widget/GridLayout$Interval;

    invoke-virtual {v0}, Landroidx/gridlayout/widget/GridLayout$Interval;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 2508
    iget-object p0, p0, Landroidx/gridlayout/widget/GridLayout$Spec;->alignment:Landroidx/gridlayout/widget/GridLayout$Alignment;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method
