.class public Landroidx/gridlayout/widget/GridLayout;
.super Landroid/view/ViewGroup;
.source "GridLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/gridlayout/widget/GridLayout$Alignment;,
        Landroidx/gridlayout/widget/GridLayout$Spec;,
        Landroidx/gridlayout/widget/GridLayout$Interval;,
        Landroidx/gridlayout/widget/GridLayout$Bounds;,
        Landroidx/gridlayout/widget/GridLayout$PackedMap;,
        Landroidx/gridlayout/widget/GridLayout$Assoc;,
        Landroidx/gridlayout/widget/GridLayout$MutableInt;,
        Landroidx/gridlayout/widget/GridLayout$Arc;,
        Landroidx/gridlayout/widget/GridLayout$LayoutParams;,
        Landroidx/gridlayout/widget/GridLayout$Axis;
    }
.end annotation


# static fields
.field private static final ALIGNMENT_MODE:I

.field public static final BASELINE:Landroidx/gridlayout/widget/GridLayout$Alignment;

.field public static final BOTTOM:Landroidx/gridlayout/widget/GridLayout$Alignment;

.field public static final CENTER:Landroidx/gridlayout/widget/GridLayout$Alignment;

.field private static final COLUMN_COUNT:I

.field private static final COLUMN_ORDER_PRESERVED:I

.field public static final END:Landroidx/gridlayout/widget/GridLayout$Alignment;

.field public static final FILL:Landroidx/gridlayout/widget/GridLayout$Alignment;

.field private static final LEADING:Landroidx/gridlayout/widget/GridLayout$Alignment;

.field public static final LEFT:Landroidx/gridlayout/widget/GridLayout$Alignment;

.field static final LOG_PRINTER:Landroid/util/Printer;

.field static final NO_PRINTER:Landroid/util/Printer;

.field private static final ORIENTATION:I

.field public static final RIGHT:Landroidx/gridlayout/widget/GridLayout$Alignment;

.field private static final ROW_COUNT:I

.field private static final ROW_ORDER_PRESERVED:I

.field public static final START:Landroidx/gridlayout/widget/GridLayout$Alignment;

.field public static final TOP:Landroidx/gridlayout/widget/GridLayout$Alignment;

.field private static final TRAILING:Landroidx/gridlayout/widget/GridLayout$Alignment;

.field static final UNDEFINED_ALIGNMENT:Landroidx/gridlayout/widget/GridLayout$Alignment;

.field private static final USE_DEFAULT_MARGINS:I


# instance fields
.field mAlignmentMode:I

.field mDefaultGap:I

.field final mHorizontalAxis:Landroidx/gridlayout/widget/GridLayout$Axis;

.field mLastLayoutParamsHashCode:I

.field mOrientation:I

.field mPrinter:Landroid/util/Printer;

.field mUseDefaultMargins:Z

.field final mVerticalAxis:Landroidx/gridlayout/widget/GridLayout$Axis;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 230
    new-instance v0, Landroid/util/LogPrinter;

    const-class v1, Landroidx/gridlayout/widget/GridLayout;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    invoke-direct {v0, v2, v1}, Landroid/util/LogPrinter;-><init>(ILjava/lang/String;)V

    sput-object v0, Landroidx/gridlayout/widget/GridLayout;->LOG_PRINTER:Landroid/util/Printer;

    .line 231
    new-instance v0, Landroidx/gridlayout/widget/GridLayout$1;

    invoke-direct {v0}, Landroidx/gridlayout/widget/GridLayout$1;-><init>()V

    sput-object v0, Landroidx/gridlayout/widget/GridLayout;->NO_PRINTER:Landroid/util/Printer;

    .line 247
    sget v0, Landroidx/gridlayout/R$styleable;->GridLayout_orientation:I

    sput v0, Landroidx/gridlayout/widget/GridLayout;->ORIENTATION:I

    .line 248
    sget v0, Landroidx/gridlayout/R$styleable;->GridLayout_rowCount:I

    sput v0, Landroidx/gridlayout/widget/GridLayout;->ROW_COUNT:I

    .line 249
    sget v0, Landroidx/gridlayout/R$styleable;->GridLayout_columnCount:I

    sput v0, Landroidx/gridlayout/widget/GridLayout;->COLUMN_COUNT:I

    .line 250
    sget v0, Landroidx/gridlayout/R$styleable;->GridLayout_useDefaultMargins:I

    sput v0, Landroidx/gridlayout/widget/GridLayout;->USE_DEFAULT_MARGINS:I

    .line 251
    sget v0, Landroidx/gridlayout/R$styleable;->GridLayout_alignmentMode:I

    sput v0, Landroidx/gridlayout/widget/GridLayout;->ALIGNMENT_MODE:I

    .line 252
    sget v0, Landroidx/gridlayout/R$styleable;->GridLayout_rowOrderPreserved:I

    sput v0, Landroidx/gridlayout/widget/GridLayout;->ROW_ORDER_PRESERVED:I

    .line 253
    sget v0, Landroidx/gridlayout/R$styleable;->GridLayout_columnOrderPreserved:I

    sput v0, Landroidx/gridlayout/widget/GridLayout;->COLUMN_ORDER_PRESERVED:I

    .line 2696
    new-instance v0, Landroidx/gridlayout/widget/GridLayout$2;

    invoke-direct {v0}, Landroidx/gridlayout/widget/GridLayout$2;-><init>()V

    sput-object v0, Landroidx/gridlayout/widget/GridLayout;->UNDEFINED_ALIGNMENT:Landroidx/gridlayout/widget/GridLayout$Alignment;

    .line 2717
    new-instance v0, Landroidx/gridlayout/widget/GridLayout$3;

    invoke-direct {v0}, Landroidx/gridlayout/widget/GridLayout$3;-><init>()V

    sput-object v0, Landroidx/gridlayout/widget/GridLayout;->LEADING:Landroidx/gridlayout/widget/GridLayout$Alignment;

    .line 2738
    new-instance v0, Landroidx/gridlayout/widget/GridLayout$4;

    invoke-direct {v0}, Landroidx/gridlayout/widget/GridLayout$4;-><init>()V

    sput-object v0, Landroidx/gridlayout/widget/GridLayout;->TRAILING:Landroidx/gridlayout/widget/GridLayout$Alignment;

    .line 2759
    sget-object v0, Landroidx/gridlayout/widget/GridLayout;->LEADING:Landroidx/gridlayout/widget/GridLayout$Alignment;

    sput-object v0, Landroidx/gridlayout/widget/GridLayout;->TOP:Landroidx/gridlayout/widget/GridLayout$Alignment;

    .line 2765
    sget-object v1, Landroidx/gridlayout/widget/GridLayout;->TRAILING:Landroidx/gridlayout/widget/GridLayout$Alignment;

    sput-object v1, Landroidx/gridlayout/widget/GridLayout;->BOTTOM:Landroidx/gridlayout/widget/GridLayout$Alignment;

    .line 2771
    sput-object v0, Landroidx/gridlayout/widget/GridLayout;->START:Landroidx/gridlayout/widget/GridLayout$Alignment;

    .line 2777
    sput-object v1, Landroidx/gridlayout/widget/GridLayout;->END:Landroidx/gridlayout/widget/GridLayout$Alignment;

    .line 2806
    sget-object v0, Landroidx/gridlayout/widget/GridLayout;->START:Landroidx/gridlayout/widget/GridLayout$Alignment;

    sget-object v1, Landroidx/gridlayout/widget/GridLayout;->END:Landroidx/gridlayout/widget/GridLayout$Alignment;

    invoke-static {v0, v1}, Landroidx/gridlayout/widget/GridLayout;->createSwitchingAlignment(Landroidx/gridlayout/widget/GridLayout$Alignment;Landroidx/gridlayout/widget/GridLayout$Alignment;)Landroidx/gridlayout/widget/GridLayout$Alignment;

    move-result-object v0

    sput-object v0, Landroidx/gridlayout/widget/GridLayout;->LEFT:Landroidx/gridlayout/widget/GridLayout$Alignment;

    .line 2812
    sget-object v0, Landroidx/gridlayout/widget/GridLayout;->END:Landroidx/gridlayout/widget/GridLayout$Alignment;

    sget-object v1, Landroidx/gridlayout/widget/GridLayout;->START:Landroidx/gridlayout/widget/GridLayout$Alignment;

    invoke-static {v0, v1}, Landroidx/gridlayout/widget/GridLayout;->createSwitchingAlignment(Landroidx/gridlayout/widget/GridLayout$Alignment;Landroidx/gridlayout/widget/GridLayout$Alignment;)Landroidx/gridlayout/widget/GridLayout$Alignment;

    move-result-object v0

    sput-object v0, Landroidx/gridlayout/widget/GridLayout;->RIGHT:Landroidx/gridlayout/widget/GridLayout$Alignment;

    .line 2819
    new-instance v0, Landroidx/gridlayout/widget/GridLayout$6;

    invoke-direct {v0}, Landroidx/gridlayout/widget/GridLayout$6;-><init>()V

    sput-object v0, Landroidx/gridlayout/widget/GridLayout;->CENTER:Landroidx/gridlayout/widget/GridLayout$Alignment;

    .line 2843
    new-instance v0, Landroidx/gridlayout/widget/GridLayout$7;

    invoke-direct {v0}, Landroidx/gridlayout/widget/GridLayout$7;-><init>()V

    sput-object v0, Landroidx/gridlayout/widget/GridLayout;->BASELINE:Landroidx/gridlayout/widget/GridLayout$Alignment;

    .line 2904
    new-instance v0, Landroidx/gridlayout/widget/GridLayout$8;

    invoke-direct {v0}, Landroidx/gridlayout/widget/GridLayout$8;-><init>()V

    sput-object v0, Landroidx/gridlayout/widget/GridLayout;->FILL:Landroidx/gridlayout/widget/GridLayout$Alignment;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 303
    invoke-direct {p0, p1, v0}, Landroidx/gridlayout/widget/GridLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 295
    invoke-direct {p0, p1, p2, v0}, Landroidx/gridlayout/widget/GridLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 10

    .line 272
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 257
    new-instance v0, Landroidx/gridlayout/widget/GridLayout$Axis;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Landroidx/gridlayout/widget/GridLayout$Axis;-><init>(Landroidx/gridlayout/widget/GridLayout;Z)V

    iput-object v0, p0, Landroidx/gridlayout/widget/GridLayout;->mHorizontalAxis:Landroidx/gridlayout/widget/GridLayout$Axis;

    .line 258
    new-instance v0, Landroidx/gridlayout/widget/GridLayout$Axis;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Landroidx/gridlayout/widget/GridLayout$Axis;-><init>(Landroidx/gridlayout/widget/GridLayout;Z)V

    iput-object v0, p0, Landroidx/gridlayout/widget/GridLayout;->mVerticalAxis:Landroidx/gridlayout/widget/GridLayout$Axis;

    .line 259
    iput v2, p0, Landroidx/gridlayout/widget/GridLayout;->mOrientation:I

    .line 260
    iput-boolean v2, p0, Landroidx/gridlayout/widget/GridLayout;->mUseDefaultMargins:Z

    .line 261
    iput v1, p0, Landroidx/gridlayout/widget/GridLayout;->mAlignmentMode:I

    .line 263
    iput v2, p0, Landroidx/gridlayout/widget/GridLayout;->mLastLayoutParamsHashCode:I

    .line 264
    sget-object v0, Landroidx/gridlayout/widget/GridLayout;->LOG_PRINTER:Landroid/util/Printer;

    iput-object v0, p0, Landroidx/gridlayout/widget/GridLayout;->mPrinter:Landroid/util/Printer;

    .line 273
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Landroidx/gridlayout/R$dimen;->default_gap:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Landroidx/gridlayout/widget/GridLayout;->mDefaultGap:I

    .line 274
    sget-object v0, Landroidx/gridlayout/R$styleable;->GridLayout:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 275
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1d

    if-lt v3, v4, :cond_0

    .line 276
    sget-object v5, Landroidx/gridlayout/R$styleable;->GridLayout:[I

    const/4 v9, 0x0

    move-object v3, p0

    move-object v4, p1

    move-object v6, p2

    move-object v7, v0

    move v8, p3

    invoke-virtual/range {v3 .. v9}, Landroid/view/ViewGroup;->saveAttributeDataForStyleable(Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V

    .line 279
    :cond_0
    :try_start_0
    sget p1, Landroidx/gridlayout/widget/GridLayout;->ROW_COUNT:I

    const/high16 p2, -0x80000000

    invoke-virtual {v0, p1, p2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/gridlayout/widget/GridLayout;->setRowCount(I)V

    .line 280
    sget p1, Landroidx/gridlayout/widget/GridLayout;->COLUMN_COUNT:I

    invoke-virtual {v0, p1, p2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/gridlayout/widget/GridLayout;->setColumnCount(I)V

    .line 281
    sget p1, Landroidx/gridlayout/widget/GridLayout;->ORIENTATION:I

    invoke-virtual {v0, p1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/gridlayout/widget/GridLayout;->setOrientation(I)V

    .line 282
    sget p1, Landroidx/gridlayout/widget/GridLayout;->USE_DEFAULT_MARGINS:I

    invoke-virtual {v0, p1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/gridlayout/widget/GridLayout;->setUseDefaultMargins(Z)V

    .line 283
    sget p1, Landroidx/gridlayout/widget/GridLayout;->ALIGNMENT_MODE:I

    invoke-virtual {v0, p1, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/gridlayout/widget/GridLayout;->setAlignmentMode(I)V

    .line 284
    sget p1, Landroidx/gridlayout/widget/GridLayout;->ROW_ORDER_PRESERVED:I

    invoke-virtual {v0, p1, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/gridlayout/widget/GridLayout;->setRowOrderPreserved(Z)V

    .line 285
    sget p1, Landroidx/gridlayout/widget/GridLayout;->COLUMN_ORDER_PRESERVED:I

    invoke-virtual {v0, p1, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/gridlayout/widget/GridLayout;->setColumnOrderPreserved(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 287
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    throw p0
.end method

.method static adjust(II)I
    .locals 0

    add-int/2addr p1, p0

    .line 945
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p0

    .line 944
    invoke-static {p1, p0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p0

    return p0
.end method

.method static append([Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;[TT;)[TT;"
        }
    .end annotation

    .line 619
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    array-length v1, p0

    array-length v2, p1

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    .line 620
    array-length v1, p0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 621
    array-length p0, p0

    array-length v1, p1

    invoke-static {p1, v2, v0, p0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method static canStretch(I)Z
    .locals 0

    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private checkLayoutParams(Landroidx/gridlayout/widget/GridLayout$LayoutParams;Z)V
    .locals 4

    if-eqz p2, :cond_0

    const-string v0, "column"

    goto :goto_0

    :cond_0
    const-string v0, "row"

    :goto_0
    if-eqz p2, :cond_1

    .line 818
    iget-object p1, p1, Landroidx/gridlayout/widget/GridLayout$LayoutParams;->columnSpec:Landroidx/gridlayout/widget/GridLayout$Spec;

    goto :goto_1

    :cond_1
    iget-object p1, p1, Landroidx/gridlayout/widget/GridLayout$LayoutParams;->rowSpec:Landroidx/gridlayout/widget/GridLayout$Spec;

    .line 819
    :goto_1
    iget-object p1, p1, Landroidx/gridlayout/widget/GridLayout$Spec;->span:Landroidx/gridlayout/widget/GridLayout$Interval;

    .line 820
    iget v1, p1, Landroidx/gridlayout/widget/GridLayout$Interval;->min:I

    const/high16 v2, -0x80000000

    const/4 v3, 0x0

    if-eq v1, v2, :cond_3

    if-ltz v1, :cond_2

    goto :goto_2

    .line 821
    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " indices must be positive"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroidx/gridlayout/widget/GridLayout;->handleInvalidParams(Ljava/lang/String;)V

    throw v3

    :cond_3
    :goto_2
    if-eqz p2, :cond_4

    .line 823
    iget-object p0, p0, Landroidx/gridlayout/widget/GridLayout;->mHorizontalAxis:Landroidx/gridlayout/widget/GridLayout$Axis;

    goto :goto_3

    :cond_4
    iget-object p0, p0, Landroidx/gridlayout/widget/GridLayout;->mVerticalAxis:Landroidx/gridlayout/widget/GridLayout$Axis;

    .line 824
    :goto_3
    iget p0, p0, Landroidx/gridlayout/widget/GridLayout$Axis;->definedCount:I

    if-eq p0, v2, :cond_7

    .line 826
    iget p2, p1, Landroidx/gridlayout/widget/GridLayout$Interval;->max:I

    const-string v1, " count"

    if-gt p2, p0, :cond_6

    .line 830
    invoke-virtual {p1}, Landroidx/gridlayout/widget/GridLayout$Interval;->size()I

    move-result p1

    if-gt p1, p0, :cond_5

    goto :goto_4

    .line 831
    :cond_5
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " span mustn\'t exceed the "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroidx/gridlayout/widget/GridLayout;->handleInvalidParams(Ljava/lang/String;)V

    throw v3

    .line 827
    :cond_6
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " indices (start + span) mustn\'t exceed the "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroidx/gridlayout/widget/GridLayout;->handleInvalidParams(Ljava/lang/String;)V

    throw v3

    :cond_7
    :goto_4
    return-void
.end method

.method private static clip(Landroidx/gridlayout/widget/GridLayout$Interval;ZI)I
    .locals 1

    .line 725
    invoke-virtual {p0}, Landroidx/gridlayout/widget/GridLayout$Interval;->size()I

    move-result v0

    if-nez p2, :cond_0

    return v0

    :cond_0
    if-eqz p1, :cond_1

    .line 729
    iget p0, p0, Landroidx/gridlayout/widget/GridLayout$Interval;->min:I

    invoke-static {p0, p2}, Ljava/lang/Math;->min(II)I

    move-result p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    sub-int/2addr p2, p0

    .line 730
    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0
.end method

.method private computeLayoutParamsHashCode()I
    .locals 6

    .line 883
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 884
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 885
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-ne v4, v5, :cond_0

    goto :goto_1

    .line 886
    :cond_0
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroidx/gridlayout/widget/GridLayout$LayoutParams;

    mul-int/lit8 v1, v1, 0x1f

    .line 887
    invoke-virtual {v3}, Landroidx/gridlayout/widget/GridLayout$LayoutParams;->hashCode()I

    move-result v3

    add-int/2addr v1, v3

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private consistencyCheck()V
    .locals 2

    .line 893
    iget v0, p0, Landroidx/gridlayout/widget/GridLayout;->mLastLayoutParamsHashCode:I

    if-nez v0, :cond_0

    .line 894
    invoke-direct {p0}, Landroidx/gridlayout/widget/GridLayout;->validateLayoutParams()V

    .line 895
    invoke-direct {p0}, Landroidx/gridlayout/widget/GridLayout;->computeLayoutParamsHashCode()I

    move-result v0

    iput v0, p0, Landroidx/gridlayout/widget/GridLayout;->mLastLayoutParamsHashCode:I

    goto :goto_0

    .line 896
    :cond_0
    invoke-direct {p0}, Landroidx/gridlayout/widget/GridLayout;->computeLayoutParamsHashCode()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 897
    iget-object v0, p0, Landroidx/gridlayout/widget/GridLayout;->mPrinter:Landroid/util/Printer;

    const-string v1, "The fields of some layout parameters were modified in between layout operations. Check the javadoc for GridLayout.LayoutParams#rowSpec."

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 899
    invoke-direct {p0}, Landroidx/gridlayout/widget/GridLayout;->invalidateStructure()V

    .line 900
    invoke-direct {p0}, Landroidx/gridlayout/widget/GridLayout;->consistencyCheck()V

    :cond_1
    :goto_0
    return-void
.end method

.method private static createSwitchingAlignment(Landroidx/gridlayout/widget/GridLayout$Alignment;Landroidx/gridlayout/widget/GridLayout$Alignment;)Landroidx/gridlayout/widget/GridLayout$Alignment;
    .locals 1

    .line 2780
    new-instance v0, Landroidx/gridlayout/widget/GridLayout$5;

    invoke-direct {v0, p0, p1}, Landroidx/gridlayout/widget/GridLayout$5;-><init>(Landroidx/gridlayout/widget/GridLayout$Alignment;Landroidx/gridlayout/widget/GridLayout$Alignment;)V

    return-object v0
.end method

.method private static fits([IIII)Z
    .locals 2

    .line 702
    array-length v0, p0

    const/4 v1, 0x0

    if-le p3, v0, :cond_0

    return v1

    :cond_0
    :goto_0
    if-ge p2, p3, :cond_2

    .line 706
    aget v0, p0, p2

    if-le v0, p1, :cond_1

    return v1

    :cond_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method static getAlignment(IZ)Landroidx/gridlayout/widget/GridLayout$Alignment;
    .locals 3

    const/4 v0, 0x7

    if-eqz p1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    const/16 v1, 0x70

    :goto_0
    if-eqz p1, :cond_1

    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    const/4 v2, 0x4

    :goto_1
    and-int/2addr p0, v1

    shr-int/2addr p0, v2

    const/4 v1, 0x1

    if-eq p0, v1, :cond_9

    const/4 v1, 0x3

    if-eq p0, v1, :cond_7

    const/4 v1, 0x5

    if-eq p0, v1, :cond_5

    if-eq p0, v0, :cond_4

    const p1, 0x800003

    if-eq p0, p1, :cond_3

    const p1, 0x800005

    if-eq p0, p1, :cond_2

    .line 643
    sget-object p0, Landroidx/gridlayout/widget/GridLayout;->UNDEFINED_ALIGNMENT:Landroidx/gridlayout/widget/GridLayout$Alignment;

    return-object p0

    .line 641
    :cond_2
    sget-object p0, Landroidx/gridlayout/widget/GridLayout;->END:Landroidx/gridlayout/widget/GridLayout$Alignment;

    return-object p0

    .line 639
    :cond_3
    sget-object p0, Landroidx/gridlayout/widget/GridLayout;->START:Landroidx/gridlayout/widget/GridLayout$Alignment;

    return-object p0

    .line 635
    :cond_4
    sget-object p0, Landroidx/gridlayout/widget/GridLayout;->FILL:Landroidx/gridlayout/widget/GridLayout$Alignment;

    return-object p0

    :cond_5
    if-eqz p1, :cond_6

    .line 633
    sget-object p0, Landroidx/gridlayout/widget/GridLayout;->RIGHT:Landroidx/gridlayout/widget/GridLayout$Alignment;

    goto :goto_2

    :cond_6
    sget-object p0, Landroidx/gridlayout/widget/GridLayout;->BOTTOM:Landroidx/gridlayout/widget/GridLayout$Alignment;

    :goto_2
    return-object p0

    :cond_7
    if-eqz p1, :cond_8

    .line 631
    sget-object p0, Landroidx/gridlayout/widget/GridLayout;->LEFT:Landroidx/gridlayout/widget/GridLayout$Alignment;

    goto :goto_3

    :cond_8
    sget-object p0, Landroidx/gridlayout/widget/GridLayout;->TOP:Landroidx/gridlayout/widget/GridLayout$Alignment;

    :goto_3
    return-object p0

    .line 637
    :cond_9
    sget-object p0, Landroidx/gridlayout/widget/GridLayout;->CENTER:Landroidx/gridlayout/widget/GridLayout$Alignment;

    return-object p0
.end method

.method private getDefaultMargin(Landroid/view/View;Landroidx/gridlayout/widget/GridLayout$LayoutParams;ZZ)I
    .locals 4

    .line 660
    iget-boolean v0, p0, Landroidx/gridlayout/widget/GridLayout;->mUseDefaultMargins:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    if-eqz p3, :cond_1

    .line 663
    iget-object p2, p2, Landroidx/gridlayout/widget/GridLayout$LayoutParams;->columnSpec:Landroidx/gridlayout/widget/GridLayout$Spec;

    goto :goto_0

    :cond_1
    iget-object p2, p2, Landroidx/gridlayout/widget/GridLayout$LayoutParams;->rowSpec:Landroidx/gridlayout/widget/GridLayout$Spec;

    :goto_0
    if-eqz p3, :cond_2

    .line 664
    iget-object v0, p0, Landroidx/gridlayout/widget/GridLayout;->mHorizontalAxis:Landroidx/gridlayout/widget/GridLayout$Axis;

    goto :goto_1

    :cond_2
    iget-object v0, p0, Landroidx/gridlayout/widget/GridLayout;->mVerticalAxis:Landroidx/gridlayout/widget/GridLayout$Axis;

    .line 665
    :goto_1
    iget-object p2, p2, Landroidx/gridlayout/widget/GridLayout$Spec;->span:Landroidx/gridlayout/widget/GridLayout$Interval;

    const/4 v2, 0x1

    if-eqz p3, :cond_4

    .line 666
    invoke-direct {p0}, Landroidx/gridlayout/widget/GridLayout;->isLayoutRtlCompat()Z

    move-result v3

    if-eqz v3, :cond_4

    if-nez p4, :cond_3

    move v3, v2

    goto :goto_2

    :cond_3
    move v3, v1

    goto :goto_2

    :cond_4
    move v3, p4

    :goto_2
    if-eqz v3, :cond_5

    .line 667
    iget p2, p2, Landroidx/gridlayout/widget/GridLayout$Interval;->min:I

    if-nez p2, :cond_6

    goto :goto_3

    :cond_5
    iget p2, p2, Landroidx/gridlayout/widget/GridLayout$Interval;->max:I

    invoke-virtual {v0}, Landroidx/gridlayout/widget/GridLayout$Axis;->getCount()I

    move-result v0

    if-ne p2, v0, :cond_6

    :goto_3
    move v1, v2

    .line 669
    :cond_6
    invoke-direct {p0, p1, v1, p3, p4}, Landroidx/gridlayout/widget/GridLayout;->getDefaultMargin(Landroid/view/View;ZZZ)I

    move-result p0

    return p0
.end method

.method private getDefaultMargin(Landroid/view/View;ZZ)I
    .locals 0

    .line 649
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    const-class p2, Landroid/widget/Space;

    if-ne p1, p2, :cond_0

    const/4 p0, 0x0

    return p0

    .line 652
    :cond_0
    iget p0, p0, Landroidx/gridlayout/widget/GridLayout;->mDefaultGap:I

    div-int/lit8 p0, p0, 0x2

    return p0
.end method

.method private getDefaultMargin(Landroid/view/View;ZZZ)I
    .locals 0

    .line 656
    invoke-direct {p0, p1, p3, p4}, Landroidx/gridlayout/widget/GridLayout;->getDefaultMargin(Landroid/view/View;ZZ)I

    move-result p0

    return p0
.end method

.method private getMargin(Landroid/view/View;ZZ)I
    .locals 2

    .line 685
    iget v0, p0, Landroidx/gridlayout/widget/GridLayout;->mAlignmentMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 686
    invoke-virtual {p0, p1, p2, p3}, Landroidx/gridlayout/widget/GridLayout;->getMargin1(Landroid/view/View;ZZ)I

    move-result p0

    return p0

    :cond_0
    if-eqz p2, :cond_1

    .line 688
    iget-object v0, p0, Landroidx/gridlayout/widget/GridLayout;->mHorizontalAxis:Landroidx/gridlayout/widget/GridLayout$Axis;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroidx/gridlayout/widget/GridLayout;->mVerticalAxis:Landroidx/gridlayout/widget/GridLayout$Axis;

    :goto_0
    if-eqz p3, :cond_2

    .line 689
    invoke-virtual {v0}, Landroidx/gridlayout/widget/GridLayout$Axis;->getLeadingMargins()[I

    move-result-object v0

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Landroidx/gridlayout/widget/GridLayout$Axis;->getTrailingMargins()[I

    move-result-object v0

    .line 690
    :goto_1
    invoke-virtual {p0, p1}, Landroidx/gridlayout/widget/GridLayout;->getLayoutParams(Landroid/view/View;)Landroidx/gridlayout/widget/GridLayout$LayoutParams;

    move-result-object p0

    if-eqz p2, :cond_3

    .line 691
    iget-object p0, p0, Landroidx/gridlayout/widget/GridLayout$LayoutParams;->columnSpec:Landroidx/gridlayout/widget/GridLayout$Spec;

    goto :goto_2

    :cond_3
    iget-object p0, p0, Landroidx/gridlayout/widget/GridLayout$LayoutParams;->rowSpec:Landroidx/gridlayout/widget/GridLayout$Spec;

    .line 692
    :goto_2
    iget-object p0, p0, Landroidx/gridlayout/widget/GridLayout$Spec;->span:Landroidx/gridlayout/widget/GridLayout$Interval;

    if-eqz p3, :cond_4

    iget p0, p0, Landroidx/gridlayout/widget/GridLayout$Interval;->min:I

    goto :goto_3

    :cond_4
    iget p0, p0, Landroidx/gridlayout/widget/GridLayout$Interval;->max:I

    .line 693
    :goto_3
    aget p0, v0, p0

    return p0
.end method

.method private getMeasurement(Landroid/view/View;Z)I
    .locals 0

    if-eqz p2, :cond_0

    .line 987
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p0

    :goto_0
    return p0
.end method

.method private getTotalMargin(Landroid/view/View;Z)I
    .locals 2

    const/4 v0, 0x1

    .line 698
    invoke-direct {p0, p1, p2, v0}, Landroidx/gridlayout/widget/GridLayout;->getMargin(Landroid/view/View;ZZ)I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v1}, Landroidx/gridlayout/widget/GridLayout;->getMargin(Landroid/view/View;ZZ)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method static handleInvalidParams(Ljava/lang/String;)V
    .locals 2

    .line 813
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ". "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private invalidateStructure()V
    .locals 1

    const/4 v0, 0x0

    .line 792
    iput v0, p0, Landroidx/gridlayout/widget/GridLayout;->mLastLayoutParamsHashCode:I

    .line 793
    iget-object v0, p0, Landroidx/gridlayout/widget/GridLayout;->mHorizontalAxis:Landroidx/gridlayout/widget/GridLayout$Axis;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/gridlayout/widget/GridLayout$Axis;->invalidateStructure()V

    .line 794
    :cond_0
    iget-object v0, p0, Landroidx/gridlayout/widget/GridLayout;->mVerticalAxis:Landroidx/gridlayout/widget/GridLayout$Axis;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/gridlayout/widget/GridLayout$Axis;->invalidateStructure()V

    .line 796
    :cond_1
    invoke-direct {p0}, Landroidx/gridlayout/widget/GridLayout;->invalidateValues()V

    return-void
.end method

.method private invalidateValues()V
    .locals 2

    .line 802
    iget-object v0, p0, Landroidx/gridlayout/widget/GridLayout;->mHorizontalAxis:Landroidx/gridlayout/widget/GridLayout$Axis;

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroidx/gridlayout/widget/GridLayout;->mVerticalAxis:Landroidx/gridlayout/widget/GridLayout$Axis;

    if-eqz v1, :cond_0

    .line 803
    invoke-virtual {v0}, Landroidx/gridlayout/widget/GridLayout$Axis;->invalidateValues()V

    .line 804
    iget-object p0, p0, Landroidx/gridlayout/widget/GridLayout;->mVerticalAxis:Landroidx/gridlayout/widget/GridLayout$Axis;

    invoke-virtual {p0}, Landroidx/gridlayout/widget/GridLayout$Axis;->invalidateValues()V

    :cond_0
    return-void
.end method

.method private isLayoutRtlCompat()Z
    .locals 1

    .line 681
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static max2([II)I
    .locals 3

    .line 611
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 612
    aget v2, p0, v1

    invoke-static {p1, v2}, Ljava/lang/Math;->max(II)I

    move-result p1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return p1
.end method

.method private measureChildWithMargins2(Landroid/view/View;IIII)V
    .locals 1

    const/4 v0, 0x1

    .line 910
    invoke-direct {p0, p1, v0}, Landroidx/gridlayout/widget/GridLayout;->getTotalMargin(Landroid/view/View;Z)I

    move-result v0

    .line 909
    invoke-static {p2, v0, p4}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result p2

    const/4 p4, 0x0

    .line 912
    invoke-direct {p0, p1, p4}, Landroidx/gridlayout/widget/GridLayout;->getTotalMargin(Landroid/view/View;Z)I

    move-result p0

    .line 911
    invoke-static {p3, p0, p5}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result p0

    .line 913
    invoke-virtual {p1, p2, p0}, Landroid/view/View;->measure(II)V

    return-void
.end method

.method private measureChildrenWithMargins(IIZ)V
    .locals 10

    .line 918
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_7

    .line 919
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 920
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v5, 0x8

    if-ne v3, v5, :cond_0

    goto/16 :goto_4

    .line 921
    :cond_0
    invoke-virtual {p0, v4}, Landroidx/gridlayout/widget/GridLayout;->getLayoutParams(Landroid/view/View;)Landroidx/gridlayout/widget/GridLayout$LayoutParams;

    move-result-object v3

    if-eqz p3, :cond_1

    .line 923
    iget v7, v3, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    iget v8, v3, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    move-object v3, p0

    move v5, p1

    move v6, p2

    invoke-direct/range {v3 .. v8}, Landroidx/gridlayout/widget/GridLayout;->measureChildWithMargins2(Landroid/view/View;IIII)V

    goto :goto_4

    .line 925
    :cond_1
    iget v5, p0, Landroidx/gridlayout/widget/GridLayout;->mOrientation:I

    if-nez v5, :cond_2

    const/4 v5, 0x1

    goto :goto_1

    :cond_2
    move v5, v1

    :goto_1
    if-eqz v5, :cond_3

    .line 926
    iget-object v6, v3, Landroidx/gridlayout/widget/GridLayout$LayoutParams;->columnSpec:Landroidx/gridlayout/widget/GridLayout$Spec;

    goto :goto_2

    :cond_3
    iget-object v6, v3, Landroidx/gridlayout/widget/GridLayout$LayoutParams;->rowSpec:Landroidx/gridlayout/widget/GridLayout$Spec;

    .line 927
    :goto_2
    invoke-virtual {v6, v5}, Landroidx/gridlayout/widget/GridLayout$Spec;->getAbsoluteAlignment(Z)Landroidx/gridlayout/widget/GridLayout$Alignment;

    move-result-object v7

    sget-object v8, Landroidx/gridlayout/widget/GridLayout;->FILL:Landroidx/gridlayout/widget/GridLayout$Alignment;

    if-ne v7, v8, :cond_6

    .line 928
    iget-object v6, v6, Landroidx/gridlayout/widget/GridLayout$Spec;->span:Landroidx/gridlayout/widget/GridLayout$Interval;

    if-eqz v5, :cond_4

    .line 929
    iget-object v7, p0, Landroidx/gridlayout/widget/GridLayout;->mHorizontalAxis:Landroidx/gridlayout/widget/GridLayout$Axis;

    goto :goto_3

    :cond_4
    iget-object v7, p0, Landroidx/gridlayout/widget/GridLayout;->mVerticalAxis:Landroidx/gridlayout/widget/GridLayout$Axis;

    .line 930
    :goto_3
    invoke-virtual {v7}, Landroidx/gridlayout/widget/GridLayout$Axis;->getLocations()[I

    move-result-object v7

    .line 931
    iget v8, v6, Landroidx/gridlayout/widget/GridLayout$Interval;->max:I

    aget v8, v7, v8

    iget v6, v6, Landroidx/gridlayout/widget/GridLayout$Interval;->min:I

    aget v6, v7, v6

    sub-int/2addr v8, v6

    .line 932
    invoke-direct {p0, v4, v5}, Landroidx/gridlayout/widget/GridLayout;->getTotalMargin(Landroid/view/View;Z)I

    move-result v6

    sub-int/2addr v8, v6

    if-eqz v5, :cond_5

    .line 934
    iget v9, v3, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    move-object v3, p0

    move v5, p1

    move v6, p2

    move v7, v8

    move v8, v9

    invoke-direct/range {v3 .. v8}, Landroidx/gridlayout/widget/GridLayout;->measureChildWithMargins2(Landroid/view/View;IIII)V

    goto :goto_4

    .line 936
    :cond_5
    iget v7, v3, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    move-object v3, p0

    move v5, p1

    move v6, p2

    invoke-direct/range {v3 .. v8}, Landroidx/gridlayout/widget/GridLayout;->measureChildWithMargins2(Landroid/view/View;IIII)V

    :cond_6
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_7
    return-void
.end method

.method private static procrusteanFill([IIII)V
    .locals 1

    .line 714
    array-length v0, p0

    .line 715
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    invoke-static {p0, p1, p2, p3}, Ljava/util/Arrays;->fill([IIII)V

    return-void
.end method

.method private static setCellGroup(Landroidx/gridlayout/widget/GridLayout$LayoutParams;IIII)V
    .locals 1

    .line 719
    new-instance v0, Landroidx/gridlayout/widget/GridLayout$Interval;

    add-int/2addr p2, p1

    invoke-direct {v0, p1, p2}, Landroidx/gridlayout/widget/GridLayout$Interval;-><init>(II)V

    invoke-virtual {p0, v0}, Landroidx/gridlayout/widget/GridLayout$LayoutParams;->setRowSpecSpan(Landroidx/gridlayout/widget/GridLayout$Interval;)V

    .line 720
    new-instance p1, Landroidx/gridlayout/widget/GridLayout$Interval;

    add-int/2addr p4, p3

    invoke-direct {p1, p3, p4}, Landroidx/gridlayout/widget/GridLayout$Interval;-><init>(II)V

    invoke-virtual {p0, p1}, Landroidx/gridlayout/widget/GridLayout$LayoutParams;->setColumnSpecSpan(Landroidx/gridlayout/widget/GridLayout$Interval;)V

    return-void
.end method

.method public static spec(I)Landroidx/gridlayout/widget/GridLayout$Spec;
    .locals 1

    const/4 v0, 0x1

    .line 2625
    invoke-static {p0, v0}, Landroidx/gridlayout/widget/GridLayout;->spec(II)Landroidx/gridlayout/widget/GridLayout$Spec;

    move-result-object p0

    return-object p0
.end method

.method public static spec(II)Landroidx/gridlayout/widget/GridLayout$Spec;
    .locals 1

    .line 2609
    sget-object v0, Landroidx/gridlayout/widget/GridLayout;->UNDEFINED_ALIGNMENT:Landroidx/gridlayout/widget/GridLayout$Alignment;

    invoke-static {p0, p1, v0}, Landroidx/gridlayout/widget/GridLayout;->spec(IILandroidx/gridlayout/widget/GridLayout$Alignment;)Landroidx/gridlayout/widget/GridLayout$Spec;

    move-result-object p0

    return-object p0
.end method

.method public static spec(IILandroidx/gridlayout/widget/GridLayout$Alignment;)Landroidx/gridlayout/widget/GridLayout$Spec;
    .locals 1

    const/4 v0, 0x0

    .line 2574
    invoke-static {p0, p1, p2, v0}, Landroidx/gridlayout/widget/GridLayout;->spec(IILandroidx/gridlayout/widget/GridLayout$Alignment;F)Landroidx/gridlayout/widget/GridLayout$Spec;

    move-result-object p0

    return-object p0
.end method

.method public static spec(IILandroidx/gridlayout/widget/GridLayout$Alignment;F)Landroidx/gridlayout/widget/GridLayout$Spec;
    .locals 7

    .line 2529
    new-instance v6, Landroidx/gridlayout/widget/GridLayout$Spec;

    const/high16 v0, -0x80000000

    if-eq p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move v1, v0

    move-object v0, v6

    move v2, p0

    move v3, p1

    move-object v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Landroidx/gridlayout/widget/GridLayout$Spec;-><init>(ZIILandroidx/gridlayout/widget/GridLayout$Alignment;F)V

    return-object v6
.end method

.method private validateLayoutParams()V
    .locals 14

    .line 735
    iget v0, p0, Landroidx/gridlayout/widget/GridLayout;->mOrientation:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz v0, :cond_1

    .line 736
    iget-object v2, p0, Landroidx/gridlayout/widget/GridLayout;->mHorizontalAxis:Landroidx/gridlayout/widget/GridLayout$Axis;

    goto :goto_1

    :cond_1
    iget-object v2, p0, Landroidx/gridlayout/widget/GridLayout;->mVerticalAxis:Landroidx/gridlayout/widget/GridLayout$Axis;

    .line 737
    :goto_1
    iget v2, v2, Landroidx/gridlayout/widget/GridLayout$Axis;->definedCount:I

    const/high16 v3, -0x80000000

    if-eq v2, v3, :cond_2

    goto :goto_2

    :cond_2
    move v2, v1

    .line 741
    :goto_2
    new-array v3, v2, [I

    .line 743
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    move v5, v1

    move v6, v5

    move v7, v6

    :goto_3
    if-ge v5, v4, :cond_d

    .line 744
    invoke-virtual {p0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroidx/gridlayout/widget/GridLayout$LayoutParams;

    if-eqz v0, :cond_3

    .line 746
    iget-object v9, v8, Landroidx/gridlayout/widget/GridLayout$LayoutParams;->rowSpec:Landroidx/gridlayout/widget/GridLayout$Spec;

    goto :goto_4

    :cond_3
    iget-object v9, v8, Landroidx/gridlayout/widget/GridLayout$LayoutParams;->columnSpec:Landroidx/gridlayout/widget/GridLayout$Spec;

    .line 747
    :goto_4
    iget-object v10, v9, Landroidx/gridlayout/widget/GridLayout$Spec;->span:Landroidx/gridlayout/widget/GridLayout$Interval;

    .line 748
    iget-boolean v9, v9, Landroidx/gridlayout/widget/GridLayout$Spec;->startDefined:Z

    .line 749
    invoke-virtual {v10}, Landroidx/gridlayout/widget/GridLayout$Interval;->size()I

    move-result v11

    if-eqz v9, :cond_4

    .line 751
    iget v6, v10, Landroidx/gridlayout/widget/GridLayout$Interval;->min:I

    :cond_4
    if-eqz v0, :cond_5

    .line 754
    iget-object v10, v8, Landroidx/gridlayout/widget/GridLayout$LayoutParams;->columnSpec:Landroidx/gridlayout/widget/GridLayout$Spec;

    goto :goto_5

    :cond_5
    iget-object v10, v8, Landroidx/gridlayout/widget/GridLayout$LayoutParams;->rowSpec:Landroidx/gridlayout/widget/GridLayout$Spec;

    .line 755
    :goto_5
    iget-object v12, v10, Landroidx/gridlayout/widget/GridLayout$Spec;->span:Landroidx/gridlayout/widget/GridLayout$Interval;

    .line 756
    iget-boolean v10, v10, Landroidx/gridlayout/widget/GridLayout$Spec;->startDefined:Z

    .line 757
    invoke-static {v12, v10, v2}, Landroidx/gridlayout/widget/GridLayout;->clip(Landroidx/gridlayout/widget/GridLayout$Interval;ZI)I

    move-result v13

    if-eqz v10, :cond_6

    .line 759
    iget v7, v12, Landroidx/gridlayout/widget/GridLayout$Interval;->min:I

    :cond_6
    if-eqz v2, :cond_b

    if-eqz v9, :cond_7

    if-nez v10, :cond_a

    :cond_7
    :goto_6
    add-int v9, v7, v13

    .line 765
    invoke-static {v3, v6, v7, v9}, Landroidx/gridlayout/widget/GridLayout;->fits([IIII)Z

    move-result v12

    if-nez v12, :cond_a

    if-eqz v10, :cond_8

    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    :cond_8
    if-gt v9, v2, :cond_9

    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    :cond_9
    add-int/lit8 v6, v6, 0x1

    move v7, v1

    goto :goto_6

    :cond_a
    add-int v9, v7, v13

    add-int v10, v6, v11

    .line 778
    invoke-static {v3, v7, v9, v10}, Landroidx/gridlayout/widget/GridLayout;->procrusteanFill([IIII)V

    :cond_b
    if-eqz v0, :cond_c

    .line 782
    invoke-static {v8, v6, v11, v7, v13}, Landroidx/gridlayout/widget/GridLayout;->setCellGroup(Landroidx/gridlayout/widget/GridLayout$LayoutParams;IIII)V

    goto :goto_7

    .line 784
    :cond_c
    invoke-static {v8, v7, v13, v6, v11}, Landroidx/gridlayout/widget/GridLayout;->setCellGroup(Landroidx/gridlayout/widget/GridLayout$LayoutParams;IIII)V

    :goto_7
    add-int/2addr v7, v13

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_d
    return-void
.end method


# virtual methods
.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 2

    .line 838
    instance-of v0, p1, Landroidx/gridlayout/widget/GridLayout$LayoutParams;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 841
    :cond_0
    check-cast p1, Landroidx/gridlayout/widget/GridLayout$LayoutParams;

    const/4 v0, 0x1

    .line 843
    invoke-direct {p0, p1, v0}, Landroidx/gridlayout/widget/GridLayout;->checkLayoutParams(Landroidx/gridlayout/widget/GridLayout$LayoutParams;Z)V

    .line 844
    invoke-direct {p0, p1, v1}, Landroidx/gridlayout/widget/GridLayout;->checkLayoutParams(Landroidx/gridlayout/widget/GridLayout$LayoutParams;Z)V

    return v0
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 167
    invoke-virtual {p0}, Landroidx/gridlayout/widget/GridLayout;->generateDefaultLayoutParams()Landroidx/gridlayout/widget/GridLayout$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method protected generateDefaultLayoutParams()Landroidx/gridlayout/widget/GridLayout$LayoutParams;
    .locals 0

    .line 851
    new-instance p0, Landroidx/gridlayout/widget/GridLayout$LayoutParams;

    invoke-direct {p0}, Landroidx/gridlayout/widget/GridLayout$LayoutParams;-><init>()V

    return-object p0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 167
    invoke-virtual {p0, p1}, Landroidx/gridlayout/widget/GridLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Landroidx/gridlayout/widget/GridLayout$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 167
    invoke-virtual {p0, p1}, Landroidx/gridlayout/widget/GridLayout;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroidx/gridlayout/widget/GridLayout$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroidx/gridlayout/widget/GridLayout$LayoutParams;
    .locals 1

    .line 856
    new-instance v0, Landroidx/gridlayout/widget/GridLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Landroidx/gridlayout/widget/GridLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroidx/gridlayout/widget/GridLayout$LayoutParams;
    .locals 0

    .line 861
    instance-of p0, p1, Landroidx/gridlayout/widget/GridLayout$LayoutParams;

    if-eqz p0, :cond_0

    .line 862
    new-instance p0, Landroidx/gridlayout/widget/GridLayout$LayoutParams;

    check-cast p1, Landroidx/gridlayout/widget/GridLayout$LayoutParams;

    invoke-direct {p0, p1}, Landroidx/gridlayout/widget/GridLayout$LayoutParams;-><init>(Landroidx/gridlayout/widget/GridLayout$LayoutParams;)V

    return-object p0

    .line 863
    :cond_0
    instance-of p0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz p0, :cond_1

    .line 864
    new-instance p0, Landroidx/gridlayout/widget/GridLayout$LayoutParams;

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {p0, p1}, Landroidx/gridlayout/widget/GridLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    return-object p0

    .line 866
    :cond_1
    new-instance p0, Landroidx/gridlayout/widget/GridLayout$LayoutParams;

    invoke-direct {p0, p1}, Landroidx/gridlayout/widget/GridLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object p0
.end method

.method final getLayoutParams(Landroid/view/View;)Landroidx/gridlayout/widget/GridLayout$LayoutParams;
    .locals 0

    .line 809
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroidx/gridlayout/widget/GridLayout$LayoutParams;

    return-object p0
.end method

.method getMargin1(Landroid/view/View;ZZ)I
    .locals 3

    .line 673
    invoke-virtual {p0, p1}, Landroidx/gridlayout/widget/GridLayout;->getLayoutParams(Landroid/view/View;)Landroidx/gridlayout/widget/GridLayout$LayoutParams;

    move-result-object v0

    if-eqz p2, :cond_1

    if-eqz p3, :cond_0

    .line 674
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto :goto_0

    :cond_0
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    goto :goto_0

    :cond_1
    if-eqz p3, :cond_2

    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    goto :goto_0

    :cond_2
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    :goto_0
    const/high16 v2, -0x80000000

    if-ne v1, v2, :cond_3

    .line 677
    invoke-direct {p0, p1, v0, p2, p3}, Landroidx/gridlayout/widget/GridLayout;->getDefaultMargin(Landroid/view/View;Landroidx/gridlayout/widget/GridLayout$LayoutParams;ZZ)I

    move-result v1

    :cond_3
    return v1
.end method

.method final getMeasurementIncludingMargin(Landroid/view/View;Z)I
    .locals 2

    .line 991
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 994
    :cond_0
    invoke-direct {p0, p1, p2}, Landroidx/gridlayout/widget/GridLayout;->getMeasurement(Landroid/view/View;Z)I

    move-result v0

    invoke-direct {p0, p1, p2}, Landroidx/gridlayout/widget/GridLayout;->getTotalMargin(Landroid/view/View;Z)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 31

    move-object/from16 v6, p0

    .line 1019
    invoke-direct/range {p0 .. p0}, Landroidx/gridlayout/widget/GridLayout;->consistencyCheck()V

    sub-int v7, p4, p2

    sub-int v0, p5, p3

    .line 1024
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v8

    .line 1025
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v9

    .line 1026
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v10

    .line 1027
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v1

    .line 1029
    iget-object v2, v6, Landroidx/gridlayout/widget/GridLayout;->mHorizontalAxis:Landroidx/gridlayout/widget/GridLayout$Axis;

    sub-int v3, v7, v8

    sub-int/2addr v3, v10

    invoke-virtual {v2, v3}, Landroidx/gridlayout/widget/GridLayout$Axis;->layout(I)V

    .line 1030
    iget-object v2, v6, Landroidx/gridlayout/widget/GridLayout;->mVerticalAxis:Landroidx/gridlayout/widget/GridLayout$Axis;

    sub-int/2addr v0, v9

    sub-int/2addr v0, v1

    invoke-virtual {v2, v0}, Landroidx/gridlayout/widget/GridLayout$Axis;->layout(I)V

    .line 1032
    iget-object v0, v6, Landroidx/gridlayout/widget/GridLayout;->mHorizontalAxis:Landroidx/gridlayout/widget/GridLayout$Axis;

    invoke-virtual {v0}, Landroidx/gridlayout/widget/GridLayout$Axis;->getLocations()[I

    move-result-object v11

    .line 1033
    iget-object v0, v6, Landroidx/gridlayout/widget/GridLayout;->mVerticalAxis:Landroidx/gridlayout/widget/GridLayout$Axis;

    invoke-virtual {v0}, Landroidx/gridlayout/widget/GridLayout$Axis;->getLocations()[I

    move-result-object v12

    .line 1035
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v13

    const/4 v14, 0x0

    move v15, v14

    :goto_0
    if-ge v15, v13, :cond_4

    .line 1036
    invoke-virtual {v6, v15}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1037
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    move-object/from16 p2, v11

    move-object/from16 p4, v12

    move/from16 v28, v14

    goto/16 :goto_2

    .line 1038
    :cond_0
    invoke-virtual {v6, v5}, Landroidx/gridlayout/widget/GridLayout;->getLayoutParams(Landroid/view/View;)Landroidx/gridlayout/widget/GridLayout$LayoutParams;

    move-result-object v0

    .line 1039
    iget-object v1, v0, Landroidx/gridlayout/widget/GridLayout$LayoutParams;->columnSpec:Landroidx/gridlayout/widget/GridLayout$Spec;

    .line 1040
    iget-object v0, v0, Landroidx/gridlayout/widget/GridLayout$LayoutParams;->rowSpec:Landroidx/gridlayout/widget/GridLayout$Spec;

    .line 1042
    iget-object v2, v1, Landroidx/gridlayout/widget/GridLayout$Spec;->span:Landroidx/gridlayout/widget/GridLayout$Interval;

    .line 1043
    iget-object v3, v0, Landroidx/gridlayout/widget/GridLayout$Spec;->span:Landroidx/gridlayout/widget/GridLayout$Interval;

    .line 1045
    iget v4, v2, Landroidx/gridlayout/widget/GridLayout$Interval;->min:I

    aget v16, v11, v4

    .line 1046
    iget v4, v3, Landroidx/gridlayout/widget/GridLayout$Interval;->min:I

    aget v17, v12, v4

    .line 1048
    iget v2, v2, Landroidx/gridlayout/widget/GridLayout$Interval;->max:I

    aget v2, v11, v2

    .line 1049
    iget v3, v3, Landroidx/gridlayout/widget/GridLayout$Interval;->max:I

    aget v3, v12, v3

    sub-int v18, v2, v16

    sub-int v19, v3, v17

    const/4 v2, 0x1

    .line 1054
    invoke-direct {v6, v5, v2}, Landroidx/gridlayout/widget/GridLayout;->getMeasurement(Landroid/view/View;Z)I

    move-result v4

    .line 1055
    invoke-direct {v6, v5, v14}, Landroidx/gridlayout/widget/GridLayout;->getMeasurement(Landroid/view/View;Z)I

    move-result v3

    .line 1057
    invoke-virtual {v1, v2}, Landroidx/gridlayout/widget/GridLayout$Spec;->getAbsoluteAlignment(Z)Landroidx/gridlayout/widget/GridLayout$Alignment;

    move-result-object v1

    .line 1058
    invoke-virtual {v0, v14}, Landroidx/gridlayout/widget/GridLayout$Spec;->getAbsoluteAlignment(Z)Landroidx/gridlayout/widget/GridLayout$Alignment;

    move-result-object v0

    .line 1060
    iget-object v14, v6, Landroidx/gridlayout/widget/GridLayout;->mHorizontalAxis:Landroidx/gridlayout/widget/GridLayout$Axis;

    invoke-virtual {v14}, Landroidx/gridlayout/widget/GridLayout$Axis;->getGroupBounds()Landroidx/gridlayout/widget/GridLayout$PackedMap;

    move-result-object v14

    invoke-virtual {v14, v15}, Landroidx/gridlayout/widget/GridLayout$PackedMap;->getValue(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroidx/gridlayout/widget/GridLayout$Bounds;

    .line 1061
    iget-object v2, v6, Landroidx/gridlayout/widget/GridLayout;->mVerticalAxis:Landroidx/gridlayout/widget/GridLayout$Axis;

    invoke-virtual {v2}, Landroidx/gridlayout/widget/GridLayout$Axis;->getGroupBounds()Landroidx/gridlayout/widget/GridLayout$PackedMap;

    move-result-object v2

    invoke-virtual {v2, v15}, Landroidx/gridlayout/widget/GridLayout$PackedMap;->getValue(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/gridlayout/widget/GridLayout$Bounds;

    move/from16 p3, v3

    const/4 v3, 0x1

    .line 1064
    invoke-virtual {v14, v3}, Landroidx/gridlayout/widget/GridLayout$Bounds;->size(Z)I

    move-result v20

    move-object/from16 p2, v11

    sub-int v11, v18, v20

    invoke-virtual {v1, v5, v11}, Landroidx/gridlayout/widget/GridLayout$Alignment;->getGravityOffset(Landroid/view/View;I)I

    move-result v11

    .line 1065
    invoke-virtual {v2, v3}, Landroidx/gridlayout/widget/GridLayout$Bounds;->size(Z)I

    move-result v20

    move-object/from16 p4, v1

    sub-int v1, v19, v20

    invoke-virtual {v0, v5, v1}, Landroidx/gridlayout/widget/GridLayout$Alignment;->getGravityOffset(Landroid/view/View;I)I

    move-result v20

    .line 1067
    invoke-direct {v6, v5, v3, v3}, Landroidx/gridlayout/widget/GridLayout;->getMargin(Landroid/view/View;ZZ)I

    move-result v21

    const/4 v1, 0x0

    .line 1068
    invoke-direct {v6, v5, v1, v3}, Landroidx/gridlayout/widget/GridLayout;->getMargin(Landroid/view/View;ZZ)I

    move-result v22

    .line 1069
    invoke-direct {v6, v5, v3, v1}, Landroidx/gridlayout/widget/GridLayout;->getMargin(Landroid/view/View;ZZ)I

    move-result v23

    .line 1070
    invoke-direct {v6, v5, v1, v1}, Landroidx/gridlayout/widget/GridLayout;->getMargin(Landroid/view/View;ZZ)I

    move-result v3

    add-int v24, v21, v23

    add-int v25, v22, v3

    add-int v26, v4, v24

    const/16 v27, 0x1

    move-object v3, v0

    move-object v0, v14

    move-object/from16 v14, p4

    move/from16 v28, v1

    move-object/from16 v1, p0

    move-object/from16 v29, v2

    move-object v2, v5

    move/from16 v30, p3

    move-object/from16 p1, v3

    move-object v3, v14

    move v6, v4

    move/from16 v4, v26

    move-object/from16 p3, v5

    move/from16 v5, v27

    .line 1076
    invoke-virtual/range {v0 .. v5}, Landroidx/gridlayout/widget/GridLayout$Bounds;->getOffset(Landroidx/gridlayout/widget/GridLayout;Landroid/view/View;Landroidx/gridlayout/widget/GridLayout$Alignment;IZ)I

    move-result v26

    move/from16 v5, v30

    add-int v4, v5, v25

    const/16 v27, 0x0

    move-object/from16 v0, v29

    move-object/from16 v2, p3

    move-object/from16 v3, p1

    move-object/from16 p4, v12

    move v12, v5

    move/from16 v5, v27

    .line 1077
    invoke-virtual/range {v0 .. v5}, Landroidx/gridlayout/widget/GridLayout$Bounds;->getOffset(Landroidx/gridlayout/widget/GridLayout;Landroid/view/View;Landroidx/gridlayout/widget/GridLayout$Alignment;IZ)I

    move-result v0

    sub-int v1, v18, v24

    .line 1079
    invoke-virtual {v14, v2, v6, v1}, Landroidx/gridlayout/widget/GridLayout$Alignment;->getSizeInCell(Landroid/view/View;II)I

    move-result v1

    sub-int v3, v19, v25

    move-object/from16 v4, p1

    .line 1080
    invoke-virtual {v4, v2, v12, v3}, Landroidx/gridlayout/widget/GridLayout$Alignment;->getSizeInCell(Landroid/view/View;II)I

    move-result v3

    add-int v16, v16, v11

    add-int v16, v16, v26

    .line 1084
    invoke-direct/range {p0 .. p0}, Landroidx/gridlayout/widget/GridLayout;->isLayoutRtlCompat()Z

    move-result v4

    if-nez v4, :cond_1

    add-int v21, v8, v21

    add-int v21, v21, v16

    goto :goto_1

    :cond_1
    sub-int v4, v7, v1

    sub-int/2addr v4, v10

    sub-int v4, v4, v23

    sub-int v21, v4, v16

    :goto_1
    move/from16 v4, v21

    add-int v17, v9, v17

    add-int v17, v17, v20

    add-int v17, v17, v0

    add-int v0, v17, v22

    .line 1088
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    if-ne v1, v5, :cond_2

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    if-eq v3, v5, :cond_3

    :cond_2
    const/high16 v5, 0x40000000    # 2.0f

    .line 1089
    invoke-static {v1, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-static {v3, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-virtual {v2, v6, v5}, Landroid/view/View;->measure(II)V

    :cond_3
    add-int/2addr v1, v4

    add-int/2addr v3, v0

    .line 1091
    invoke-virtual {v2, v4, v0, v1, v3}, Landroid/view/View;->layout(IIII)V

    :goto_2
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v6, p0

    move-object/from16 v11, p2

    move-object/from16 v12, p4

    move/from16 v14, v28

    goto/16 :goto_0

    :cond_4
    return-void
.end method

.method protected onMeasure(II)V
    .locals 7

    .line 950
    invoke-direct {p0}, Landroidx/gridlayout/widget/GridLayout;->consistencyCheck()V

    .line 954
    invoke-direct {p0}, Landroidx/gridlayout/widget/GridLayout;->invalidateValues()V

    .line 956
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v1

    add-int/2addr v0, v1

    .line 957
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v2

    add-int/2addr v1, v2

    neg-int v2, v0

    .line 959
    invoke-static {p1, v2}, Landroidx/gridlayout/widget/GridLayout;->adjust(II)I

    move-result v2

    neg-int v3, v1

    .line 960
    invoke-static {p2, v3}, Landroidx/gridlayout/widget/GridLayout;->adjust(II)I

    move-result v3

    const/4 v4, 0x1

    .line 962
    invoke-direct {p0, v2, v3, v4}, Landroidx/gridlayout/widget/GridLayout;->measureChildrenWithMargins(IIZ)V

    .line 968
    iget v4, p0, Landroidx/gridlayout/widget/GridLayout;->mOrientation:I

    const/4 v5, 0x0

    if-nez v4, :cond_0

    .line 969
    iget-object v4, p0, Landroidx/gridlayout/widget/GridLayout;->mHorizontalAxis:Landroidx/gridlayout/widget/GridLayout$Axis;

    invoke-virtual {v4, v2}, Landroidx/gridlayout/widget/GridLayout$Axis;->getMeasure(I)I

    move-result v4

    .line 970
    invoke-direct {p0, v2, v3, v5}, Landroidx/gridlayout/widget/GridLayout;->measureChildrenWithMargins(IIZ)V

    .line 971
    iget-object v2, p0, Landroidx/gridlayout/widget/GridLayout;->mVerticalAxis:Landroidx/gridlayout/widget/GridLayout$Axis;

    invoke-virtual {v2, v3}, Landroidx/gridlayout/widget/GridLayout$Axis;->getMeasure(I)I

    move-result v2

    move v6, v4

    move v4, v2

    move v2, v6

    goto :goto_0

    .line 973
    :cond_0
    iget-object v4, p0, Landroidx/gridlayout/widget/GridLayout;->mVerticalAxis:Landroidx/gridlayout/widget/GridLayout$Axis;

    invoke-virtual {v4, v3}, Landroidx/gridlayout/widget/GridLayout$Axis;->getMeasure(I)I

    move-result v4

    .line 974
    invoke-direct {p0, v2, v3, v5}, Landroidx/gridlayout/widget/GridLayout;->measureChildrenWithMargins(IIZ)V

    .line 975
    iget-object v3, p0, Landroidx/gridlayout/widget/GridLayout;->mHorizontalAxis:Landroidx/gridlayout/widget/GridLayout$Axis;

    invoke-virtual {v3, v2}, Landroidx/gridlayout/widget/GridLayout$Axis;->getMeasure(I)I

    move-result v2

    :goto_0
    add-int/2addr v2, v0

    .line 978
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getSuggestedMinimumWidth()I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/2addr v4, v1

    .line 979
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getSuggestedMinimumHeight()I

    move-result v1

    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 982
    invoke-static {v0, p1, v5}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result p1

    .line 983
    invoke-static {v1, p2, v5}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result p2

    .line 981
    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    return-void
.end method

.method public requestLayout()V
    .locals 0

    .line 999
    invoke-super {p0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 1000
    invoke-direct {p0}, Landroidx/gridlayout/widget/GridLayout;->invalidateStructure()V

    return-void
.end method

.method public setAlignmentMode(I)V
    .locals 0

    .line 508
    iput p1, p0, Landroidx/gridlayout/widget/GridLayout;->mAlignmentMode:I

    .line 509
    invoke-virtual {p0}, Landroidx/gridlayout/widget/GridLayout;->requestLayout()V

    return-void
.end method

.method public setColumnCount(I)V
    .locals 1

    .line 426
    iget-object v0, p0, Landroidx/gridlayout/widget/GridLayout;->mHorizontalAxis:Landroidx/gridlayout/widget/GridLayout$Axis;

    invoke-virtual {v0, p1}, Landroidx/gridlayout/widget/GridLayout$Axis;->setCount(I)V

    .line 427
    invoke-direct {p0}, Landroidx/gridlayout/widget/GridLayout;->invalidateStructure()V

    .line 428
    invoke-virtual {p0}, Landroidx/gridlayout/widget/GridLayout;->requestLayout()V

    return-void
.end method

.method public setColumnOrderPreserved(Z)V
    .locals 1

    .line 579
    iget-object v0, p0, Landroidx/gridlayout/widget/GridLayout;->mHorizontalAxis:Landroidx/gridlayout/widget/GridLayout$Axis;

    invoke-virtual {v0, p1}, Landroidx/gridlayout/widget/GridLayout$Axis;->setOrderPreserved(Z)V

    .line 580
    invoke-direct {p0}, Landroidx/gridlayout/widget/GridLayout;->invalidateStructure()V

    .line 581
    invoke-virtual {p0}, Landroidx/gridlayout/widget/GridLayout;->requestLayout()V

    return-void
.end method

.method public setOrientation(I)V
    .locals 1

    .line 358
    iget v0, p0, Landroidx/gridlayout/widget/GridLayout;->mOrientation:I

    if-eq v0, p1, :cond_0

    .line 359
    iput p1, p0, Landroidx/gridlayout/widget/GridLayout;->mOrientation:I

    .line 360
    invoke-direct {p0}, Landroidx/gridlayout/widget/GridLayout;->invalidateStructure()V

    .line 361
    invoke-virtual {p0}, Landroidx/gridlayout/widget/GridLayout;->requestLayout()V

    :cond_0
    return-void
.end method

.method public setRowCount(I)V
    .locals 1

    .line 393
    iget-object v0, p0, Landroidx/gridlayout/widget/GridLayout;->mVerticalAxis:Landroidx/gridlayout/widget/GridLayout$Axis;

    invoke-virtual {v0, p1}, Landroidx/gridlayout/widget/GridLayout$Axis;->setCount(I)V

    .line 394
    invoke-direct {p0}, Landroidx/gridlayout/widget/GridLayout;->invalidateStructure()V

    .line 395
    invoke-virtual {p0}, Landroidx/gridlayout/widget/GridLayout;->requestLayout()V

    return-void
.end method

.method public setRowOrderPreserved(Z)V
    .locals 1

    .line 543
    iget-object v0, p0, Landroidx/gridlayout/widget/GridLayout;->mVerticalAxis:Landroidx/gridlayout/widget/GridLayout$Axis;

    invoke-virtual {v0, p1}, Landroidx/gridlayout/widget/GridLayout$Axis;->setOrderPreserved(Z)V

    .line 544
    invoke-direct {p0}, Landroidx/gridlayout/widget/GridLayout;->invalidateStructure()V

    .line 545
    invoke-virtual {p0}, Landroidx/gridlayout/widget/GridLayout;->requestLayout()V

    return-void
.end method

.method public setUseDefaultMargins(Z)V
    .locals 0

    .line 472
    iput-boolean p1, p0, Landroidx/gridlayout/widget/GridLayout;->mUseDefaultMargins:Z

    .line 473
    invoke-virtual {p0}, Landroidx/gridlayout/widget/GridLayout;->requestLayout()V

    return-void
.end method
