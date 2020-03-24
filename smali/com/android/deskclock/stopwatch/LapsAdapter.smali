.class Lcom/android/deskclock/stopwatch/LapsAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "LapsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/deskclock/stopwatch/LapsAdapter$LapItemHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/android/deskclock/stopwatch/LapsAdapter$LapItemHolder;",
        ">;"
    }
.end annotation


# static fields
.field private static final sTimeBuilder:Ljava/lang/StringBuilder;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mInflater:Landroid/view/LayoutInflater;

.field private mLastFormattedAccumulatedTimeLength:I

.field private mLastFormattedLapTimeLength:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0xc

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    sput-object v0, Lcom/android/deskclock/stopwatch/LapsAdapter;->sTimeBuilder:Ljava/lang/StringBuilder;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 63
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 64
    iput-object p1, p0, Lcom/android/deskclock/stopwatch/LapsAdapter;->mContext:Landroid/content/Context;

    .line 65
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/android/deskclock/stopwatch/LapsAdapter;->mInflater:Landroid/view/LayoutInflater;

    const/4 p1, 0x1

    .line 66
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->setHasStableIds(Z)V

    return-void
.end method

.method private formatAccumulatedTime(JZ)Ljava/lang/String;
    .locals 3

    .line 319
    invoke-direct {p0}, Lcom/android/deskclock/stopwatch/LapsAdapter;->getStopwatch()Lcom/android/deskclock/data/Stopwatch;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/deskclock/data/Stopwatch;->getTotalTime()J

    move-result-wide v0

    .line 320
    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    const-string v2, "\u200e "

    .line 321
    invoke-static {v0, v1, p1, p2, v2}, Lcom/android/deskclock/stopwatch/LapsAdapter;->formatTime(JJLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 324
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    if-nez p3, :cond_0

    .line 325
    iget p3, p0, Lcom/android/deskclock/stopwatch/LapsAdapter;->mLastFormattedAccumulatedTimeLength:I

    if-eq p3, p2, :cond_0

    .line 326
    iput p2, p0, Lcom/android/deskclock/stopwatch/LapsAdapter;->mLastFormattedAccumulatedTimeLength:I

    .line 327
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_0
    return-object p1
.end method

.method private formatLapTime(JZ)Ljava/lang/String;
    .locals 3

    .line 299
    invoke-static {}, Lcom/android/deskclock/data/DataModel;->getDataModel()Lcom/android/deskclock/data/DataModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/deskclock/data/DataModel;->getLongestLapTime()J

    move-result-wide v0

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    const-string v2, "\u200e "

    .line 300
    invoke-static {v0, v1, p1, p2, v2}, Lcom/android/deskclock/stopwatch/LapsAdapter;->formatTime(JJLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 303
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    if-nez p3, :cond_0

    .line 304
    iget p3, p0, Lcom/android/deskclock/stopwatch/LapsAdapter;->mLastFormattedLapTimeLength:I

    if-eq p3, p2, :cond_0

    .line 305
    iput p2, p0, Lcom/android/deskclock/stopwatch/LapsAdapter;->mLastFormattedLapTimeLength:I

    .line 306
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_0
    return-object p1
.end method

.method static formatTime(JJLjava/lang/String;)Ljava/lang/String;
    .locals 9

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    const/4 v1, 0x0

    const-wide/32 v2, 0x36ee80

    if-gtz v0, :cond_0

    move p2, v1

    move v0, p2

    move v6, v0

    move v7, v6

    goto :goto_0

    .line 247
    :cond_0
    div-long v4, p2, v2

    long-to-int v0, v4

    .line 248
    rem-long/2addr p2, v2

    long-to-int p2, p2

    int-to-long p2, p2

    const-wide/32 v4, 0xea60

    .line 250
    div-long v6, p2, v4

    long-to-int v6, v6

    .line 251
    rem-long/2addr p2, v4

    long-to-int p2, p2

    int-to-long p2, p2

    const-wide/16 v4, 0x3e8

    .line 253
    div-long v7, p2, v4

    long-to-int v7, v7

    .line 254
    rem-long/2addr p2, v4

    long-to-int p2, p2

    .line 256
    div-int/lit8 p2, p2, 0xa

    .line 259
    :goto_0
    invoke-static {}, Ljava/text/DecimalFormatSymbols;->getInstance()Ljava/text/DecimalFormatSymbols;

    move-result-object p3

    invoke-virtual {p3}, Ljava/text/DecimalFormatSymbols;->getDecimalSeparator()C

    move-result p3

    .line 261
    sget-object v4, Lcom/android/deskclock/stopwatch/LapsAdapter;->sTimeBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    const-wide/32 v4, 0x927c0

    cmp-long v1, p0, v4

    const/4 v4, 0x1

    const/4 v5, 0x2

    if-gez v1, :cond_1

    .line 265
    sget-object p0, Lcom/android/deskclock/stopwatch/LapsAdapter;->sTimeBuilder:Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/deskclock/uidata/UiDataModel;->getUiDataModel()Lcom/android/deskclock/uidata/UiDataModel;

    move-result-object p1

    invoke-virtual {p1, v6, v4}, Lcom/android/deskclock/uidata/UiDataModel;->getFormattedNumber(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    :cond_1
    cmp-long v1, p0, v2

    if-gez v1, :cond_2

    .line 267
    sget-object p0, Lcom/android/deskclock/stopwatch/LapsAdapter;->sTimeBuilder:Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/deskclock/uidata/UiDataModel;->getUiDataModel()Lcom/android/deskclock/uidata/UiDataModel;

    move-result-object p1

    invoke-virtual {p1, v6, v5}, Lcom/android/deskclock/uidata/UiDataModel;->getFormattedNumber(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    const-wide/32 v1, 0x2255100

    cmp-long v1, p0, v1

    if-gez v1, :cond_3

    .line 269
    sget-object p0, Lcom/android/deskclock/stopwatch/LapsAdapter;->sTimeBuilder:Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/deskclock/uidata/UiDataModel;->getUiDataModel()Lcom/android/deskclock/uidata/UiDataModel;

    move-result-object p1

    invoke-virtual {p1, v0, v4}, Lcom/android/deskclock/uidata/UiDataModel;->getFormattedNumber(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 270
    sget-object p0, Lcom/android/deskclock/stopwatch/LapsAdapter;->sTimeBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 271
    sget-object p0, Lcom/android/deskclock/stopwatch/LapsAdapter;->sTimeBuilder:Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/deskclock/uidata/UiDataModel;->getUiDataModel()Lcom/android/deskclock/uidata/UiDataModel;

    move-result-object p1

    invoke-virtual {p1, v6, v5}, Lcom/android/deskclock/uidata/UiDataModel;->getFormattedNumber(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_3
    const-wide/32 v1, 0x15752a00

    cmp-long p0, p0, v1

    if-gez p0, :cond_4

    .line 273
    sget-object p0, Lcom/android/deskclock/stopwatch/LapsAdapter;->sTimeBuilder:Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/deskclock/uidata/UiDataModel;->getUiDataModel()Lcom/android/deskclock/uidata/UiDataModel;

    move-result-object p1

    invoke-virtual {p1, v0, v5}, Lcom/android/deskclock/uidata/UiDataModel;->getFormattedNumber(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 274
    sget-object p0, Lcom/android/deskclock/stopwatch/LapsAdapter;->sTimeBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 275
    sget-object p0, Lcom/android/deskclock/stopwatch/LapsAdapter;->sTimeBuilder:Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/deskclock/uidata/UiDataModel;->getUiDataModel()Lcom/android/deskclock/uidata/UiDataModel;

    move-result-object p1

    invoke-virtual {p1, v6, v5}, Lcom/android/deskclock/uidata/UiDataModel;->getFormattedNumber(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 277
    :cond_4
    sget-object p0, Lcom/android/deskclock/stopwatch/LapsAdapter;->sTimeBuilder:Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/deskclock/uidata/UiDataModel;->getUiDataModel()Lcom/android/deskclock/uidata/UiDataModel;

    move-result-object p1

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Lcom/android/deskclock/uidata/UiDataModel;->getFormattedNumber(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 278
    sget-object p0, Lcom/android/deskclock/stopwatch/LapsAdapter;->sTimeBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 279
    sget-object p0, Lcom/android/deskclock/stopwatch/LapsAdapter;->sTimeBuilder:Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/deskclock/uidata/UiDataModel;->getUiDataModel()Lcom/android/deskclock/uidata/UiDataModel;

    move-result-object p1

    invoke-virtual {p1, v6, v5}, Lcom/android/deskclock/uidata/UiDataModel;->getFormattedNumber(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 283
    :goto_1
    sget-object p0, Lcom/android/deskclock/stopwatch/LapsAdapter;->sTimeBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 284
    sget-object p0, Lcom/android/deskclock/stopwatch/LapsAdapter;->sTimeBuilder:Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/deskclock/uidata/UiDataModel;->getUiDataModel()Lcom/android/deskclock/uidata/UiDataModel;

    move-result-object p1

    invoke-virtual {p1, v7, v5}, Lcom/android/deskclock/uidata/UiDataModel;->getFormattedNumber(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 285
    sget-object p0, Lcom/android/deskclock/stopwatch/LapsAdapter;->sTimeBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 286
    sget-object p0, Lcom/android/deskclock/stopwatch/LapsAdapter;->sTimeBuilder:Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/deskclock/uidata/UiDataModel;->getUiDataModel()Lcom/android/deskclock/uidata/UiDataModel;

    move-result-object p1

    invoke-virtual {p1, p2, v5}, Lcom/android/deskclock/uidata/UiDataModel;->getFormattedNumber(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 288
    sget-object p0, Lcom/android/deskclock/stopwatch/LapsAdapter;->sTimeBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getLaps()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/deskclock/data/Lap;",
            ">;"
        }
    .end annotation

    .line 338
    invoke-static {}, Lcom/android/deskclock/data/DataModel;->getDataModel()Lcom/android/deskclock/data/DataModel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/deskclock/data/DataModel;->getLaps()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private getStopwatch()Lcom/android/deskclock/data/Stopwatch;
    .locals 0

    .line 334
    invoke-static {}, Lcom/android/deskclock/data/DataModel;->getDataModel()Lcom/android/deskclock/data/DataModel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/deskclock/data/DataModel;->getStopwatch()Lcom/android/deskclock/data/Stopwatch;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method addLap()Lcom/android/deskclock/data/Lap;
    .locals 3

    .line 150
    invoke-static {}, Lcom/android/deskclock/data/DataModel;->getDataModel()Lcom/android/deskclock/data/DataModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/deskclock/data/DataModel;->addLap()Lcom/android/deskclock/data/Lap;

    move-result-object v0

    .line 152
    invoke-virtual {p0}, Lcom/android/deskclock/stopwatch/LapsAdapter;->getItemCount()I

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_0

    .line 154
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 157
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemInserted(I)V

    const/4 v1, 0x1

    .line 160
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    :goto_0
    return-object v0
.end method

.method clearLaps()V
    .locals 1

    const/4 v0, 0x0

    .line 171
    iput v0, p0, Lcom/android/deskclock/stopwatch/LapsAdapter;->mLastFormattedLapTimeLength:I

    .line 172
    iput v0, p0, Lcom/android/deskclock/stopwatch/LapsAdapter;->mLastFormattedAccumulatedTimeLength:I

    .line 174
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method formatLapNumber(II)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/16 v2, 0xa

    if-ge p1, v2, :cond_0

    .line 228
    iget-object p0, p0, Lcom/android/deskclock/stopwatch/LapsAdapter;->mContext:Landroid/content/Context;

    const p1, 0x7f1101ec

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v1, v0

    invoke-virtual {p0, p1, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 230
    :cond_0
    iget-object p0, p0, Lcom/android/deskclock/stopwatch/LapsAdapter;->mContext:Landroid/content/Context;

    const p1, 0x7f1101eb

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v1, v0

    invoke-virtual {p0, p1, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getItemCount()I
    .locals 1

    .line 76
    invoke-direct {p0}, Lcom/android/deskclock/stopwatch/LapsAdapter;->getLaps()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-nez p0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    add-int/2addr v0, p0

    return v0
.end method

.method public getItemId(I)J
    .locals 0

    .line 115
    invoke-direct {p0}, Lcom/android/deskclock/stopwatch/LapsAdapter;->getLaps()Ljava/util/List;

    move-result-object p0

    if-nez p1, :cond_0

    .line 117
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    :goto_0
    int-to-long p0, p0

    return-wide p0

    :cond_0
    add-int/lit8 p1, p1, -0x1

    .line 120
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/deskclock/data/Lap;

    invoke-virtual {p0}, Lcom/android/deskclock/data/Lap;->getLapNumber()I

    move-result p0

    goto :goto_0
.end method

.method getShareText()Ljava/lang/String;
    .locals 10

    .line 181
    invoke-direct {p0}, Lcom/android/deskclock/stopwatch/LapsAdapter;->getStopwatch()Lcom/android/deskclock/data/Stopwatch;

    move-result-object v0

    .line 182
    invoke-virtual {v0}, Lcom/android/deskclock/data/Stopwatch;->getTotalTime()J

    move-result-wide v0

    const-string v2, ":"

    .line 183
    invoke-static {v0, v1, v0, v1, v2}, Lcom/android/deskclock/stopwatch/LapsAdapter;->formatTime(JJLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 186
    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x3e8

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 189
    iget-object v4, p0, Lcom/android/deskclock/stopwatch/LapsAdapter;->mContext:Landroid/content/Context;

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v2, v6, v7

    const v2, 0x7f11023c

    invoke-virtual {v4, v2, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    .line 190
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    invoke-direct {p0}, Lcom/android/deskclock/stopwatch/LapsAdapter;->getLaps()Ljava/util/List;

    move-result-object v4

    .line 193
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1

    .line 195
    iget-object p0, p0, Lcom/android/deskclock/stopwatch/LapsAdapter;->mContext:Landroid/content/Context;

    const v6, 0x7f11023b

    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/text/DecimalFormatSymbols;->getInstance()Ljava/text/DecimalFormatSymbols;

    move-result-object v6

    invoke-virtual {v6}, Ljava/text/DecimalFormatSymbols;->getDecimalSeparator()C

    move-result v6

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 200
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    sub-int/2addr v7, v5

    :goto_0
    if-ltz v7, :cond_0

    .line 201
    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/deskclock/data/Lap;

    .line 202
    invoke-virtual {v8}, Lcom/android/deskclock/data/Lap;->getLapNumber()I

    move-result v9

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 203
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    invoke-virtual {v8}, Lcom/android/deskclock/data/Lap;->getLapTime()J

    move-result-wide v8

    .line 205
    invoke-static {v8, v9, v8, v9, v6}, Lcom/android/deskclock/stopwatch/LapsAdapter;->formatTime(JJLjava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v7, v7, -0x1

    goto :goto_0

    .line 210
    :cond_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/2addr v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 211
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    invoke-static {}, Lcom/android/deskclock/data/DataModel;->getDataModel()Lcom/android/deskclock/data/DataModel;

    move-result-object p0

    invoke-virtual {p0, v0, v1}, Lcom/android/deskclock/data/DataModel;->getCurrentLapTime(J)J

    move-result-wide v0

    .line 213
    invoke-static {v0, v1, v0, v1, v6}, Lcom/android/deskclock/stopwatch/LapsAdapter;->formatTime(JJLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    :cond_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 41
    check-cast p1, Lcom/android/deskclock/stopwatch/LapsAdapter$LapItemHolder;

    invoke-virtual {p0, p1, p2}, Lcom/android/deskclock/stopwatch/LapsAdapter;->onBindViewHolder(Lcom/android/deskclock/stopwatch/LapsAdapter$LapItemHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/android/deskclock/stopwatch/LapsAdapter$LapItemHolder;I)V
    .locals 6

    const/4 v0, 0x1

    if-nez p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    .line 94
    :cond_0
    invoke-direct {p0}, Lcom/android/deskclock/stopwatch/LapsAdapter;->getLaps()Ljava/util/List;

    move-result-object v1

    sub-int/2addr p2, v0

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/deskclock/data/Lap;

    :goto_0
    if-eqz p2, :cond_1

    .line 97
    invoke-virtual {p2}, Lcom/android/deskclock/data/Lap;->getLapTime()J

    move-result-wide v1

    .line 98
    invoke-virtual {p2}, Lcom/android/deskclock/data/Lap;->getLapNumber()I

    move-result v3

    .line 99
    invoke-virtual {p2}, Lcom/android/deskclock/data/Lap;->getAccumulatedTime()J

    move-result-wide v4

    goto :goto_1

    .line 102
    :cond_1
    invoke-direct {p0}, Lcom/android/deskclock/stopwatch/LapsAdapter;->getStopwatch()Lcom/android/deskclock/data/Stopwatch;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/deskclock/data/Stopwatch;->getTotalTime()J

    move-result-wide v4

    .line 103
    invoke-static {}, Lcom/android/deskclock/data/DataModel;->getDataModel()Lcom/android/deskclock/data/DataModel;

    move-result-object p2

    invoke-virtual {p2, v4, v5}, Lcom/android/deskclock/data/DataModel;->getCurrentLapTime(J)J

    move-result-wide v1

    .line 104
    invoke-direct {p0}, Lcom/android/deskclock/stopwatch/LapsAdapter;->getLaps()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    add-int/lit8 v3, p2, 0x1

    .line 108
    :goto_1
    invoke-static {p1}, Lcom/android/deskclock/stopwatch/LapsAdapter$LapItemHolder;->access$000(Lcom/android/deskclock/stopwatch/LapsAdapter$LapItemHolder;)Landroid/widget/TextView;

    move-result-object p2

    invoke-direct {p0, v1, v2, v0}, Lcom/android/deskclock/stopwatch/LapsAdapter;->formatLapTime(JZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 109
    invoke-static {p1}, Lcom/android/deskclock/stopwatch/LapsAdapter$LapItemHolder;->access$100(Lcom/android/deskclock/stopwatch/LapsAdapter$LapItemHolder;)Landroid/widget/TextView;

    move-result-object p2

    invoke-direct {p0, v4, v5, v0}, Lcom/android/deskclock/stopwatch/LapsAdapter;->formatAccumulatedTime(JZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    invoke-static {p1}, Lcom/android/deskclock/stopwatch/LapsAdapter$LapItemHolder;->access$200(Lcom/android/deskclock/stopwatch/LapsAdapter$LapItemHolder;)Landroid/widget/TextView;

    move-result-object p1

    invoke-direct {p0}, Lcom/android/deskclock/stopwatch/LapsAdapter;->getLaps()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    add-int/2addr p2, v0

    invoke-virtual {p0, p2, v3}, Lcom/android/deskclock/stopwatch/LapsAdapter;->formatLapNumber(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 41
    invoke-virtual {p0, p1, p2}, Lcom/android/deskclock/stopwatch/LapsAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/deskclock/stopwatch/LapsAdapter$LapItemHolder;

    move-result-object p0

    return-object p0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/deskclock/stopwatch/LapsAdapter$LapItemHolder;
    .locals 1

    .line 83
    iget-object p0, p0, Lcom/android/deskclock/stopwatch/LapsAdapter;->mInflater:Landroid/view/LayoutInflater;

    const p2, 0x7f0d0043

    const/4 v0, 0x0

    invoke-virtual {p0, p2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    .line 84
    new-instance p1, Lcom/android/deskclock/stopwatch/LapsAdapter$LapItemHolder;

    invoke-direct {p1, p0}, Lcom/android/deskclock/stopwatch/LapsAdapter$LapItemHolder;-><init>(Landroid/view/View;)V

    return-object p1
.end method

.method updateCurrentLap(Landroidx/recyclerview/widget/RecyclerView;J)V
    .locals 4

    .line 129
    invoke-virtual {p0}, Lcom/android/deskclock/stopwatch/LapsAdapter;->getItemCount()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 133
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 136
    invoke-static {}, Lcom/android/deskclock/data/DataModel;->getDataModel()Lcom/android/deskclock/data/DataModel;

    move-result-object v2

    invoke-virtual {v2, p2, p3}, Lcom/android/deskclock/data/DataModel;->getCurrentLapTime(J)J

    move-result-wide v2

    .line 138
    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p1

    check-cast p1, Lcom/android/deskclock/stopwatch/LapsAdapter$LapItemHolder;

    .line 139
    invoke-static {p1}, Lcom/android/deskclock/stopwatch/LapsAdapter$LapItemHolder;->access$000(Lcom/android/deskclock/stopwatch/LapsAdapter$LapItemHolder;)Landroid/widget/TextView;

    move-result-object v1

    invoke-direct {p0, v2, v3, v0}, Lcom/android/deskclock/stopwatch/LapsAdapter;->formatLapTime(JZ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 140
    invoke-static {p1}, Lcom/android/deskclock/stopwatch/LapsAdapter$LapItemHolder;->access$100(Lcom/android/deskclock/stopwatch/LapsAdapter$LapItemHolder;)Landroid/widget/TextView;

    move-result-object p1

    invoke-direct {p0, p2, p3, v0}, Lcom/android/deskclock/stopwatch/LapsAdapter;->formatAccumulatedTime(JZ)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method
