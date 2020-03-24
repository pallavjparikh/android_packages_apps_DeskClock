.class public final Lcom/android/deskclock/uidata/UiDataModel;
.super Ljava/lang/Object;
.source "UiDataModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/deskclock/uidata/UiDataModel$Tab;
    }
.end annotation


# static fields
.field private static final sUiDataModel:Lcom/android/deskclock/uidata/UiDataModel;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mFormattedStringModel:Lcom/android/deskclock/uidata/FormattedStringModel;

.field private mPeriodicCallbackModel:Lcom/android/deskclock/uidata/PeriodicCallbackModel;

.field private mTabModel:Lcom/android/deskclock/uidata/TabModel;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 63
    new-instance v0, Lcom/android/deskclock/uidata/UiDataModel;

    invoke-direct {v0}, Lcom/android/deskclock/uidata/UiDataModel;-><init>()V

    sput-object v0, Lcom/android/deskclock/uidata/UiDataModel;->sUiDataModel:Lcom/android/deskclock/uidata/UiDataModel;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getUiDataModel()Lcom/android/deskclock/uidata/UiDataModel;
    .locals 1

    .line 66
    sget-object v0, Lcom/android/deskclock/uidata/UiDataModel;->sUiDataModel:Lcom/android/deskclock/uidata/UiDataModel;

    return-object v0
.end method


# virtual methods
.method public addMidnightCallback(Ljava/lang/Runnable;J)V
    .locals 0

    .line 362
    invoke-static {}, Lcom/android/deskclock/Utils;->enforceMainLooper()V

    .line 363
    iget-object p0, p0, Lcom/android/deskclock/uidata/UiDataModel;->mPeriodicCallbackModel:Lcom/android/deskclock/uidata/PeriodicCallbackModel;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/deskclock/uidata/PeriodicCallbackModel;->addMidnightCallback(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public addMinuteCallback(Ljava/lang/Runnable;J)V
    .locals 0

    .line 335
    invoke-static {}, Lcom/android/deskclock/Utils;->enforceMainLooper()V

    .line 336
    iget-object p0, p0, Lcom/android/deskclock/uidata/UiDataModel;->mPeriodicCallbackModel:Lcom/android/deskclock/uidata/PeriodicCallbackModel;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/deskclock/uidata/PeriodicCallbackModel;->addMinuteCallback(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public addQuarterHourCallback(Ljava/lang/Runnable;J)V
    .locals 0

    .line 344
    invoke-static {}, Lcom/android/deskclock/Utils;->enforceMainLooper()V

    .line 345
    iget-object p0, p0, Lcom/android/deskclock/uidata/UiDataModel;->mPeriodicCallbackModel:Lcom/android/deskclock/uidata/PeriodicCallbackModel;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/deskclock/uidata/PeriodicCallbackModel;->addQuarterHourCallback(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public addTabListener(Lcom/android/deskclock/uidata/TabListener;)V
    .locals 0

    .line 221
    invoke-static {}, Lcom/android/deskclock/Utils;->enforceMainLooper()V

    .line 222
    iget-object p0, p0, Lcom/android/deskclock/uidata/UiDataModel;->mTabModel:Lcom/android/deskclock/uidata/TabModel;

    invoke-virtual {p0, p1}, Lcom/android/deskclock/uidata/TabModel;->addTabListener(Lcom/android/deskclock/uidata/TabListener;)V

    return-void
.end method

.method public addTabScrollListener(Lcom/android/deskclock/uidata/TabScrollListener;)V
    .locals 0

    .line 279
    invoke-static {}, Lcom/android/deskclock/Utils;->enforceMainLooper()V

    .line 280
    iget-object p0, p0, Lcom/android/deskclock/uidata/UiDataModel;->mTabModel:Lcom/android/deskclock/uidata/TabModel;

    invoke-virtual {p0, p1}, Lcom/android/deskclock/uidata/TabModel;->addTabScrollListener(Lcom/android/deskclock/uidata/TabScrollListener;)V

    return-void
.end method

.method public getAlarmIconTypeface()Landroid/graphics/Typeface;
    .locals 1

    .line 101
    iget-object p0, p0, Lcom/android/deskclock/uidata/UiDataModel;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    const-string v0, "fonts/clock.ttf"

    invoke-static {p0, v0}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object p0

    return-object p0
.end method

.method public getFormattedNumber(I)Ljava/lang/String;
    .locals 0

    .line 118
    invoke-static {}, Lcom/android/deskclock/Utils;->enforceMainLooper()V

    .line 119
    iget-object p0, p0, Lcom/android/deskclock/uidata/UiDataModel;->mFormattedStringModel:Lcom/android/deskclock/uidata/FormattedStringModel;

    invoke-virtual {p0, p1}, Lcom/android/deskclock/uidata/FormattedStringModel;->getFormattedNumber(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getFormattedNumber(II)Ljava/lang/String;
    .locals 0

    .line 134
    invoke-static {}, Lcom/android/deskclock/Utils;->enforceMainLooper()V

    .line 135
    iget-object p0, p0, Lcom/android/deskclock/uidata/UiDataModel;->mFormattedStringModel:Lcom/android/deskclock/uidata/FormattedStringModel;

    invoke-virtual {p0, p1, p2}, Lcom/android/deskclock/uidata/FormattedStringModel;->getFormattedNumber(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getLongAnimationDuration()J
    .locals 2

    .line 209
    invoke-static {}, Lcom/android/deskclock/Utils;->enforceMainLooper()V

    .line 210
    iget-object p0, p0, Lcom/android/deskclock/uidata/UiDataModel;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x10e0002

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    int-to-long v0, p0

    return-wide v0
.end method

.method public getLongWeekday(I)Ljava/lang/String;
    .locals 0

    .line 189
    invoke-static {}, Lcom/android/deskclock/Utils;->enforceMainLooper()V

    .line 190
    iget-object p0, p0, Lcom/android/deskclock/uidata/UiDataModel;->mFormattedStringModel:Lcom/android/deskclock/uidata/FormattedStringModel;

    invoke-virtual {p0, p1}, Lcom/android/deskclock/uidata/FormattedStringModel;->getLongWeekday(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSelectedTab()Lcom/android/deskclock/uidata/UiDataModel$Tab;
    .locals 0

    .line 263
    invoke-static {}, Lcom/android/deskclock/Utils;->enforceMainLooper()V

    .line 264
    iget-object p0, p0, Lcom/android/deskclock/uidata/UiDataModel;->mTabModel:Lcom/android/deskclock/uidata/TabModel;

    invoke-virtual {p0}, Lcom/android/deskclock/uidata/TabModel;->getSelectedTab()Lcom/android/deskclock/uidata/UiDataModel$Tab;

    move-result-object p0

    return-object p0
.end method

.method public getShortAnimationDuration()J
    .locals 2

    .line 201
    invoke-static {}, Lcom/android/deskclock/Utils;->enforceMainLooper()V

    .line 202
    iget-object p0, p0, Lcom/android/deskclock/uidata/UiDataModel;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const/high16 v0, 0x10e0000

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    int-to-long v0, p0

    return-wide v0
.end method

.method public getShortWeekday(I)Ljava/lang/String;
    .locals 0

    .line 171
    invoke-static {}, Lcom/android/deskclock/Utils;->enforceMainLooper()V

    .line 172
    iget-object p0, p0, Lcom/android/deskclock/uidata/UiDataModel;->mFormattedStringModel:Lcom/android/deskclock/uidata/FormattedStringModel;

    invoke-virtual {p0, p1}, Lcom/android/deskclock/uidata/FormattedStringModel;->getShortWeekday(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getShortcutId(II)Ljava/lang/String;
    .locals 2

    const v0, 0x7f1101b3

    if-ne p1, v0, :cond_0

    .line 321
    iget-object p0, p0, Lcom/android/deskclock/uidata/UiDataModel;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 323
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/deskclock/uidata/UiDataModel;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/deskclock/uidata/UiDataModel;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getTab(I)Lcom/android/deskclock/uidata/UiDataModel$Tab;
    .locals 0

    .line 246
    invoke-static {}, Lcom/android/deskclock/Utils;->enforceMainLooper()V

    .line 247
    iget-object p0, p0, Lcom/android/deskclock/uidata/UiDataModel;->mTabModel:Lcom/android/deskclock/uidata/TabModel;

    invoke-virtual {p0, p1}, Lcom/android/deskclock/uidata/TabModel;->getTab(I)Lcom/android/deskclock/uidata/UiDataModel$Tab;

    move-result-object p0

    return-object p0
.end method

.method public getTabAt(I)Lcom/android/deskclock/uidata/UiDataModel$Tab;
    .locals 0

    .line 255
    invoke-static {}, Lcom/android/deskclock/Utils;->enforceMainLooper()V

    .line 256
    iget-object p0, p0, Lcom/android/deskclock/uidata/UiDataModel;->mTabModel:Lcom/android/deskclock/uidata/TabModel;

    invoke-virtual {p0, p1}, Lcom/android/deskclock/uidata/TabModel;->getTabAt(I)Lcom/android/deskclock/uidata/UiDataModel$Tab;

    move-result-object p0

    return-object p0
.end method

.method public getTabCount()I
    .locals 0

    .line 237
    invoke-static {}, Lcom/android/deskclock/Utils;->enforceMainLooper()V

    .line 238
    iget-object p0, p0, Lcom/android/deskclock/uidata/UiDataModel;->mTabModel:Lcom/android/deskclock/uidata/TabModel;

    invoke-virtual {p0}, Lcom/android/deskclock/uidata/TabModel;->getTabCount()I

    move-result p0

    return p0
.end method

.method public init(Landroid/content/Context;Landroid/content/SharedPreferences;)V
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/android/deskclock/uidata/UiDataModel;->mContext:Landroid/content/Context;

    if-eq v0, p1, :cond_0

    .line 87
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/deskclock/uidata/UiDataModel;->mContext:Landroid/content/Context;

    .line 89
    new-instance p1, Lcom/android/deskclock/uidata/PeriodicCallbackModel;

    iget-object v0, p0, Lcom/android/deskclock/uidata/UiDataModel;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/android/deskclock/uidata/PeriodicCallbackModel;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/deskclock/uidata/UiDataModel;->mPeriodicCallbackModel:Lcom/android/deskclock/uidata/PeriodicCallbackModel;

    .line 90
    new-instance p1, Lcom/android/deskclock/uidata/FormattedStringModel;

    iget-object v0, p0, Lcom/android/deskclock/uidata/UiDataModel;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/android/deskclock/uidata/FormattedStringModel;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/deskclock/uidata/UiDataModel;->mFormattedStringModel:Lcom/android/deskclock/uidata/FormattedStringModel;

    .line 91
    new-instance p1, Lcom/android/deskclock/uidata/TabModel;

    invoke-direct {p1, p2}, Lcom/android/deskclock/uidata/TabModel;-><init>(Landroid/content/SharedPreferences;)V

    iput-object p1, p0, Lcom/android/deskclock/uidata/UiDataModel;->mTabModel:Lcom/android/deskclock/uidata/TabModel;

    :cond_0
    return-void
.end method

.method public isSelectedTabScrolledToTop()Z
    .locals 1

    .line 306
    invoke-static {}, Lcom/android/deskclock/Utils;->enforceMainLooper()V

    .line 307
    iget-object v0, p0, Lcom/android/deskclock/uidata/UiDataModel;->mTabModel:Lcom/android/deskclock/uidata/TabModel;

    invoke-virtual {p0}, Lcom/android/deskclock/uidata/UiDataModel;->getSelectedTab()Lcom/android/deskclock/uidata/UiDataModel$Tab;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/deskclock/uidata/TabModel;->isTabScrolledToTop(Lcom/android/deskclock/uidata/UiDataModel$Tab;)Z

    move-result p0

    return p0
.end method

.method public removePeriodicCallback(Ljava/lang/Runnable;)V
    .locals 0

    .line 370
    invoke-static {}, Lcom/android/deskclock/Utils;->enforceMainLooper()V

    .line 371
    iget-object p0, p0, Lcom/android/deskclock/uidata/UiDataModel;->mPeriodicCallbackModel:Lcom/android/deskclock/uidata/PeriodicCallbackModel;

    invoke-virtual {p0, p1}, Lcom/android/deskclock/uidata/PeriodicCallbackModel;->removePeriodicCallback(Ljava/lang/Runnable;)V

    return-void
.end method

.method public removeTabListener(Lcom/android/deskclock/uidata/TabListener;)V
    .locals 0

    .line 229
    invoke-static {}, Lcom/android/deskclock/Utils;->enforceMainLooper()V

    .line 230
    iget-object p0, p0, Lcom/android/deskclock/uidata/UiDataModel;->mTabModel:Lcom/android/deskclock/uidata/TabModel;

    invoke-virtual {p0, p1}, Lcom/android/deskclock/uidata/TabModel;->removeTabListener(Lcom/android/deskclock/uidata/TabListener;)V

    return-void
.end method

.method public removeTabScrollListener(Lcom/android/deskclock/uidata/TabScrollListener;)V
    .locals 0

    .line 287
    invoke-static {}, Lcom/android/deskclock/Utils;->enforceMainLooper()V

    .line 288
    iget-object p0, p0, Lcom/android/deskclock/uidata/UiDataModel;->mTabModel:Lcom/android/deskclock/uidata/TabModel;

    invoke-virtual {p0, p1}, Lcom/android/deskclock/uidata/TabModel;->removeTabScrollListener(Lcom/android/deskclock/uidata/TabScrollListener;)V

    return-void
.end method

.method public setSelectedTab(Lcom/android/deskclock/uidata/UiDataModel$Tab;)V
    .locals 0

    .line 271
    invoke-static {}, Lcom/android/deskclock/Utils;->enforceMainLooper()V

    .line 272
    iget-object p0, p0, Lcom/android/deskclock/uidata/UiDataModel;->mTabModel:Lcom/android/deskclock/uidata/TabModel;

    invoke-virtual {p0, p1}, Lcom/android/deskclock/uidata/TabModel;->setSelectedTab(Lcom/android/deskclock/uidata/UiDataModel$Tab;)V

    return-void
.end method

.method public setTabScrolledToTop(Lcom/android/deskclock/uidata/UiDataModel$Tab;Z)V
    .locals 0

    .line 298
    invoke-static {}, Lcom/android/deskclock/Utils;->enforceMainLooper()V

    .line 299
    iget-object p0, p0, Lcom/android/deskclock/uidata/UiDataModel;->mTabModel:Lcom/android/deskclock/uidata/TabModel;

    invoke-virtual {p0, p1, p2}, Lcom/android/deskclock/uidata/TabModel;->setTabScrolledToTop(Lcom/android/deskclock/uidata/UiDataModel$Tab;Z)V

    return-void
.end method
