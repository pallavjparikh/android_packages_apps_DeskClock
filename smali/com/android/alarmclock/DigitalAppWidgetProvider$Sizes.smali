.class final Lcom/android/alarmclock/DigitalAppWidgetProvider$Sizes;
.super Ljava/lang/Object;
.source "DigitalAppWidgetProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/alarmclock/DigitalAppWidgetProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Sizes"
.end annotation


# instance fields
.field private mClockFontSizePx:I

.field private mFontSizePx:I

.field private mIconBitmap:Landroid/graphics/Bitmap;

.field private mIconFontSizePx:I

.field private mIconPaddingPx:I

.field private final mLargestClockFontSizePx:I

.field private mMeasuredHeightPx:I

.field private mMeasuredTextClockHeightPx:I

.field private mMeasuredTextClockWidthPx:I

.field private mMeasuredWidthPx:I

.field private final mSmallestClockFontSizePx:I

.field private final mTargetHeightPx:I

.field private final mTargetWidthPx:I


# direct methods
.method private constructor <init>(III)V
    .locals 0

    .line 486
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 487
    iput p1, p0, Lcom/android/alarmclock/DigitalAppWidgetProvider$Sizes;->mTargetWidthPx:I

    .line 488
    iput p2, p0, Lcom/android/alarmclock/DigitalAppWidgetProvider$Sizes;->mTargetHeightPx:I

    .line 489
    iput p3, p0, Lcom/android/alarmclock/DigitalAppWidgetProvider$Sizes;->mLargestClockFontSizePx:I

    const/4 p1, 0x1

    .line 490
    iput p1, p0, Lcom/android/alarmclock/DigitalAppWidgetProvider$Sizes;->mSmallestClockFontSizePx:I

    return-void
.end method

.method synthetic constructor <init>(IIILcom/android/alarmclock/DigitalAppWidgetProvider$1;)V
    .locals 0

    .line 464
    invoke-direct {p0, p1, p2, p3}, Lcom/android/alarmclock/DigitalAppWidgetProvider$Sizes;-><init>(III)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/alarmclock/DigitalAppWidgetProvider$Sizes;)Landroid/graphics/Bitmap;
    .locals 0

    .line 464
    iget-object p0, p0, Lcom/android/alarmclock/DigitalAppWidgetProvider$Sizes;->mIconBitmap:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/android/alarmclock/DigitalAppWidgetProvider$Sizes;I)V
    .locals 0

    .line 464
    invoke-direct {p0, p1}, Lcom/android/alarmclock/DigitalAppWidgetProvider$Sizes;->setClockFontSizePx(I)V

    return-void
.end method

.method static synthetic access$102(Lcom/android/alarmclock/DigitalAppWidgetProvider$Sizes;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    .line 464
    iput-object p1, p0, Lcom/android/alarmclock/DigitalAppWidgetProvider$Sizes;->mIconBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/alarmclock/DigitalAppWidgetProvider$Sizes;)I
    .locals 0

    .line 464
    iget p0, p0, Lcom/android/alarmclock/DigitalAppWidgetProvider$Sizes;->mIconFontSizePx:I

    return p0
.end method

.method static synthetic access$1200(Lcom/android/alarmclock/DigitalAppWidgetProvider$Sizes;)I
    .locals 0

    .line 464
    iget p0, p0, Lcom/android/alarmclock/DigitalAppWidgetProvider$Sizes;->mIconPaddingPx:I

    return p0
.end method

.method static synthetic access$1300(Lcom/android/alarmclock/DigitalAppWidgetProvider$Sizes;)I
    .locals 0

    .line 464
    iget p0, p0, Lcom/android/alarmclock/DigitalAppWidgetProvider$Sizes;->mTargetWidthPx:I

    return p0
.end method

.method static synthetic access$1400(Lcom/android/alarmclock/DigitalAppWidgetProvider$Sizes;)I
    .locals 0

    .line 464
    iget p0, p0, Lcom/android/alarmclock/DigitalAppWidgetProvider$Sizes;->mTargetHeightPx:I

    return p0
.end method

.method static synthetic access$1502(Lcom/android/alarmclock/DigitalAppWidgetProvider$Sizes;I)I
    .locals 0

    .line 464
    iput p1, p0, Lcom/android/alarmclock/DigitalAppWidgetProvider$Sizes;->mMeasuredWidthPx:I

    return p1
.end method

.method static synthetic access$1602(Lcom/android/alarmclock/DigitalAppWidgetProvider$Sizes;I)I
    .locals 0

    .line 464
    iput p1, p0, Lcom/android/alarmclock/DigitalAppWidgetProvider$Sizes;->mMeasuredHeightPx:I

    return p1
.end method

.method static synthetic access$1702(Lcom/android/alarmclock/DigitalAppWidgetProvider$Sizes;I)I
    .locals 0

    .line 464
    iput p1, p0, Lcom/android/alarmclock/DigitalAppWidgetProvider$Sizes;->mMeasuredTextClockWidthPx:I

    return p1
.end method

.method static synthetic access$1802(Lcom/android/alarmclock/DigitalAppWidgetProvider$Sizes;I)I
    .locals 0

    .line 464
    iput p1, p0, Lcom/android/alarmclock/DigitalAppWidgetProvider$Sizes;->mMeasuredTextClockHeightPx:I

    return p1
.end method

.method static synthetic access$200(Lcom/android/alarmclock/DigitalAppWidgetProvider$Sizes;)I
    .locals 0

    .line 464
    iget p0, p0, Lcom/android/alarmclock/DigitalAppWidgetProvider$Sizes;->mFontSizePx:I

    return p0
.end method

.method static synthetic access$300(Lcom/android/alarmclock/DigitalAppWidgetProvider$Sizes;)I
    .locals 0

    .line 464
    iget p0, p0, Lcom/android/alarmclock/DigitalAppWidgetProvider$Sizes;->mClockFontSizePx:I

    return p0
.end method

.method static synthetic access$400(Lcom/android/alarmclock/DigitalAppWidgetProvider$Sizes;)I
    .locals 0

    .line 464
    invoke-direct {p0}, Lcom/android/alarmclock/DigitalAppWidgetProvider$Sizes;->getListHeight()I

    move-result p0

    return p0
.end method

.method static synthetic access$500(Lcom/android/alarmclock/DigitalAppWidgetProvider$Sizes;)I
    .locals 0

    .line 464
    invoke-direct {p0}, Lcom/android/alarmclock/DigitalAppWidgetProvider$Sizes;->getLargestClockFontSizePx()I

    move-result p0

    return p0
.end method

.method static synthetic access$600(Lcom/android/alarmclock/DigitalAppWidgetProvider$Sizes;)Z
    .locals 0

    .line 464
    invoke-direct {p0}, Lcom/android/alarmclock/DigitalAppWidgetProvider$Sizes;->hasViolations()Z

    move-result p0

    return p0
.end method

.method static synthetic access$700(Lcom/android/alarmclock/DigitalAppWidgetProvider$Sizes;)I
    .locals 0

    .line 464
    invoke-direct {p0}, Lcom/android/alarmclock/DigitalAppWidgetProvider$Sizes;->getSmallestClockFontSizePx()I

    move-result p0

    return p0
.end method

.method static synthetic access$800(Lcom/android/alarmclock/DigitalAppWidgetProvider$Sizes;)I
    .locals 0

    .line 464
    invoke-direct {p0}, Lcom/android/alarmclock/DigitalAppWidgetProvider$Sizes;->getClockFontSizePx()I

    move-result p0

    return p0
.end method

.method static synthetic access$900(Lcom/android/alarmclock/DigitalAppWidgetProvider$Sizes;)Lcom/android/alarmclock/DigitalAppWidgetProvider$Sizes;
    .locals 0

    .line 464
    invoke-direct {p0}, Lcom/android/alarmclock/DigitalAppWidgetProvider$Sizes;->newSize()Lcom/android/alarmclock/DigitalAppWidgetProvider$Sizes;

    move-result-object p0

    return-object p0
.end method

.method private static varargs append(Ljava/lang/StringBuilder;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .line 540
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-static {v0, p1, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method private getClockFontSizePx()I
    .locals 0

    .line 495
    iget p0, p0, Lcom/android/alarmclock/DigitalAppWidgetProvider$Sizes;->mClockFontSizePx:I

    return p0
.end method

.method private getLargestClockFontSizePx()I
    .locals 0

    .line 493
    iget p0, p0, Lcom/android/alarmclock/DigitalAppWidgetProvider$Sizes;->mLargestClockFontSizePx:I

    return p0
.end method

.method private getListHeight()I
    .locals 1

    .line 507
    iget v0, p0, Lcom/android/alarmclock/DigitalAppWidgetProvider$Sizes;->mTargetHeightPx:I

    iget p0, p0, Lcom/android/alarmclock/DigitalAppWidgetProvider$Sizes;->mMeasuredHeightPx:I

    sub-int/2addr v0, p0

    return v0
.end method

.method private getSmallestClockFontSizePx()I
    .locals 0

    .line 494
    iget p0, p0, Lcom/android/alarmclock/DigitalAppWidgetProvider$Sizes;->mSmallestClockFontSizePx:I

    return p0
.end method

.method private hasViolations()Z
    .locals 2

    .line 511
    iget v0, p0, Lcom/android/alarmclock/DigitalAppWidgetProvider$Sizes;->mMeasuredWidthPx:I

    iget v1, p0, Lcom/android/alarmclock/DigitalAppWidgetProvider$Sizes;->mTargetWidthPx:I

    if-gt v0, v1, :cond_1

    iget v0, p0, Lcom/android/alarmclock/DigitalAppWidgetProvider$Sizes;->mMeasuredHeightPx:I

    iget p0, p0, Lcom/android/alarmclock/DigitalAppWidgetProvider$Sizes;->mTargetHeightPx:I

    if-le v0, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private newSize()Lcom/android/alarmclock/DigitalAppWidgetProvider$Sizes;
    .locals 3

    .line 515
    new-instance v0, Lcom/android/alarmclock/DigitalAppWidgetProvider$Sizes;

    iget v1, p0, Lcom/android/alarmclock/DigitalAppWidgetProvider$Sizes;->mTargetWidthPx:I

    iget v2, p0, Lcom/android/alarmclock/DigitalAppWidgetProvider$Sizes;->mTargetHeightPx:I

    iget p0, p0, Lcom/android/alarmclock/DigitalAppWidgetProvider$Sizes;->mLargestClockFontSizePx:I

    invoke-direct {v0, v1, v2, p0}, Lcom/android/alarmclock/DigitalAppWidgetProvider$Sizes;-><init>(III)V

    return-object v0
.end method

.method private setClockFontSizePx(I)V
    .locals 2

    .line 497
    iput p1, p0, Lcom/android/alarmclock/DigitalAppWidgetProvider$Sizes;->mClockFontSizePx:I

    int-to-float p1, p1

    const/high16 v0, 0x40f00000    # 7.5f

    div-float/2addr p1, v0

    .line 498
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    const/4 v0, 0x1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/android/alarmclock/DigitalAppWidgetProvider$Sizes;->mFontSizePx:I

    .line 499
    iget p1, p0, Lcom/android/alarmclock/DigitalAppWidgetProvider$Sizes;->mFontSizePx:I

    int-to-float v0, p1

    const v1, 0x3fb33333    # 1.4f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/android/alarmclock/DigitalAppWidgetProvider$Sizes;->mIconFontSizePx:I

    .line 500
    div-int/lit8 p1, p1, 0x3

    iput p1, p0, Lcom/android/alarmclock/DigitalAppWidgetProvider$Sizes;->mIconPaddingPx:I

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 6

    .line 520
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x3e8

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "\n"

    .line 521
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Object;

    .line 522
    iget v3, p0, Lcom/android/alarmclock/DigitalAppWidgetProvider$Sizes;->mTargetWidthPx:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget v3, p0, Lcom/android/alarmclock/DigitalAppWidgetProvider$Sizes;->mTargetHeightPx:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v2, v5

    const-string v3, "Target dimensions: %dpx x %dpx\n"

    invoke-static {v0, v3, v2}, Lcom/android/alarmclock/DigitalAppWidgetProvider$Sizes;->append(Ljava/lang/StringBuilder;Ljava/lang/String;[Ljava/lang/Object;)V

    new-array v2, v1, [Ljava/lang/Object;

    .line 523
    iget v3, p0, Lcom/android/alarmclock/DigitalAppWidgetProvider$Sizes;->mMeasuredWidthPx:I

    .line 524
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    iget v3, p0, Lcom/android/alarmclock/DigitalAppWidgetProvider$Sizes;->mMeasuredHeightPx:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    const-string v3, "Last valid widget container measurement: %dpx x %dpx\n"

    .line 523
    invoke-static {v0, v3, v2}, Lcom/android/alarmclock/DigitalAppWidgetProvider$Sizes;->append(Ljava/lang/StringBuilder;Ljava/lang/String;[Ljava/lang/Object;)V

    new-array v2, v1, [Ljava/lang/Object;

    .line 525
    iget v3, p0, Lcom/android/alarmclock/DigitalAppWidgetProvider$Sizes;->mMeasuredTextClockWidthPx:I

    .line 526
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    iget v3, p0, Lcom/android/alarmclock/DigitalAppWidgetProvider$Sizes;->mMeasuredTextClockHeightPx:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    const-string v3, "Last text clock measurement: %dpx x %dpx\n"

    .line 525
    invoke-static {v0, v3, v2}, Lcom/android/alarmclock/DigitalAppWidgetProvider$Sizes;->append(Ljava/lang/StringBuilder;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 527
    iget v2, p0, Lcom/android/alarmclock/DigitalAppWidgetProvider$Sizes;->mMeasuredWidthPx:I

    iget v3, p0, Lcom/android/alarmclock/DigitalAppWidgetProvider$Sizes;->mTargetWidthPx:I

    if-le v2, v3, :cond_0

    new-array v3, v1, [Ljava/lang/Object;

    .line 529
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v4

    iget v2, p0, Lcom/android/alarmclock/DigitalAppWidgetProvider$Sizes;->mTargetWidthPx:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v5

    const-string v2, "Measured width %dpx exceeded widget width %dpx\n"

    .line 528
    invoke-static {v0, v2, v3}, Lcom/android/alarmclock/DigitalAppWidgetProvider$Sizes;->append(Ljava/lang/StringBuilder;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 531
    :cond_0
    iget v2, p0, Lcom/android/alarmclock/DigitalAppWidgetProvider$Sizes;->mMeasuredHeightPx:I

    iget v3, p0, Lcom/android/alarmclock/DigitalAppWidgetProvider$Sizes;->mTargetHeightPx:I

    if-le v2, v3, :cond_1

    new-array v1, v1, [Ljava/lang/Object;

    .line 533
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    iget v2, p0, Lcom/android/alarmclock/DigitalAppWidgetProvider$Sizes;->mTargetHeightPx:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    const-string v2, "Measured height %dpx exceeded widget height %dpx\n"

    .line 532
    invoke-static {v0, v2, v1}, Lcom/android/alarmclock/DigitalAppWidgetProvider$Sizes;->append(Ljava/lang/StringBuilder;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    new-array v1, v5, [Ljava/lang/Object;

    .line 535
    iget p0, p0, Lcom/android/alarmclock/DigitalAppWidgetProvider$Sizes;->mClockFontSizePx:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v1, v4

    const-string p0, "Clock font: %dpx\n"

    invoke-static {v0, p0, v1}, Lcom/android/alarmclock/DigitalAppWidgetProvider$Sizes;->append(Ljava/lang/StringBuilder;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 536
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
