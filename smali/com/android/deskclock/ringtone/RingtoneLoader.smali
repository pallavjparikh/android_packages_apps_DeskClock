.class Lcom/android/deskclock/ringtone/RingtoneLoader;
.super Landroid/content/AsyncTaskLoader;
.source "RingtoneLoader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/content/AsyncTaskLoader<",
        "Ljava/util/List<",
        "Lcom/android/deskclock/ItemAdapter$ItemHolder<",
        "Landroid/net/Uri;",
        ">;>;>;"
    }
.end annotation


# instance fields
.field private mCustomRingtones:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/deskclock/data/CustomRingtone;",
            ">;"
        }
    .end annotation
.end field

.field private final mDefaultRingtoneTitle:Ljava/lang/String;

.field private final mDefaultRingtoneUri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 0

    .line 48
    invoke-direct {p0, p1}, Landroid/content/AsyncTaskLoader;-><init>(Landroid/content/Context;)V

    .line 49
    iput-object p2, p0, Lcom/android/deskclock/ringtone/RingtoneLoader;->mDefaultRingtoneUri:Landroid/net/Uri;

    .line 50
    iput-object p3, p0, Lcom/android/deskclock/ringtone/RingtoneLoader;->mDefaultRingtoneTitle:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 0

    .line 41
    invoke-virtual {p0}, Lcom/android/deskclock/ringtone/RingtoneLoader;->loadInBackground()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public loadInBackground()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/deskclock/ItemAdapter$ItemHolder<",
            "Landroid/net/Uri;",
            ">;>;"
        }
    .end annotation

    .line 64
    invoke-static {}, Lcom/android/deskclock/data/DataModel;->getDataModel()Lcom/android/deskclock/data/DataModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/deskclock/data/DataModel;->loadRingtoneTitles()V

    .line 65
    invoke-static {}, Lcom/android/deskclock/data/DataModel;->getDataModel()Lcom/android/deskclock/data/DataModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/deskclock/data/DataModel;->loadRingtonePermissions()V

    .line 68
    new-instance v0, Landroid/media/RingtoneManager;

    invoke-virtual {p0}, Landroid/content/AsyncTaskLoader;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/media/RingtoneManager;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x4

    .line 69
    invoke-virtual {v0, v1}, Landroid/media/RingtoneManager;->setType(I)V

    const/4 v1, 0x0

    .line 73
    :try_start_0
    invoke-virtual {v0}, Landroid/media/RingtoneManager;->getCursor()Landroid/database/Cursor;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "Could not get system ringtone cursor"

    .line 75
    invoke-static {v3, v2}, Lcom/android/deskclock/LogUtils;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 76
    new-instance v2, Landroid/database/MatrixCursor;

    new-array v3, v1, [Ljava/lang/String;

    invoke-direct {v2, v3}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 78
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v2

    .line 80
    iget-object v3, p0, Lcom/android/deskclock/ringtone/RingtoneLoader;->mCustomRingtones:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/2addr v3, v2

    add-int/lit8 v3, v3, 0x3

    .line 82
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 85
    new-instance v3, Lcom/android/deskclock/ringtone/HeaderHolder;

    const v5, 0x7f110277

    invoke-direct {v3, v5}, Lcom/android/deskclock/ringtone/HeaderHolder;-><init>(I)V

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    iget-object v3, p0, Lcom/android/deskclock/ringtone/RingtoneLoader;->mCustomRingtones:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/deskclock/data/CustomRingtone;

    .line 89
    new-instance v6, Lcom/android/deskclock/ringtone/CustomRingtoneHolder;

    invoke-direct {v6, v5}, Lcom/android/deskclock/ringtone/CustomRingtoneHolder;-><init>(Lcom/android/deskclock/data/CustomRingtone;)V

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 93
    :cond_0
    new-instance v3, Lcom/android/deskclock/ringtone/AddCustomRingtoneHolder;

    invoke-direct {v3}, Lcom/android/deskclock/ringtone/AddCustomRingtoneHolder;-><init>()V

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 96
    new-instance v3, Lcom/android/deskclock/ringtone/HeaderHolder;

    const v5, 0x7f1101cf

    invoke-direct {v3, v5}, Lcom/android/deskclock/ringtone/HeaderHolder;-><init>(I)V

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 99
    new-instance v3, Lcom/android/deskclock/ringtone/SystemRingtoneHolder;

    sget-object v5, Lcom/android/deskclock/Utils;->RINGTONE_SILENT:Landroid/net/Uri;

    const/4 v6, 0x0

    invoke-direct {v3, v5, v6}, Lcom/android/deskclock/ringtone/SystemRingtoneHolder;-><init>(Landroid/net/Uri;Ljava/lang/String;)V

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 102
    new-instance v3, Lcom/android/deskclock/ringtone/SystemRingtoneHolder;

    iget-object v5, p0, Lcom/android/deskclock/ringtone/RingtoneLoader;->mDefaultRingtoneUri:Landroid/net/Uri;

    iget-object p0, p0, Lcom/android/deskclock/ringtone/RingtoneLoader;->mDefaultRingtoneTitle:Ljava/lang/String;

    invoke-direct {v3, v5, p0}, Lcom/android/deskclock/ringtone/SystemRingtoneHolder;-><init>(Landroid/net/Uri;Ljava/lang/String;)V

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_2
    if-ge v1, v2, :cond_1

    .line 106
    invoke-virtual {v0, v1}, Landroid/media/RingtoneManager;->getRingtoneUri(I)Landroid/net/Uri;

    move-result-object p0

    .line 107
    new-instance v3, Lcom/android/deskclock/ringtone/SystemRingtoneHolder;

    invoke-direct {v3, p0, v6}, Lcom/android/deskclock/ringtone/SystemRingtoneHolder;-><init>(Landroid/net/Uri;Ljava/lang/String;)V

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_1
    return-object v4
.end method

.method protected onReset()V
    .locals 1

    .line 115
    invoke-super {p0}, Landroid/content/AsyncTaskLoader;->onReset()V

    const/4 v0, 0x0

    .line 116
    iput-object v0, p0, Lcom/android/deskclock/ringtone/RingtoneLoader;->mCustomRingtones:Ljava/util/List;

    return-void
.end method

.method protected onStartLoading()V
    .locals 1

    .line 55
    invoke-super {p0}, Landroid/content/AsyncTaskLoader;->onStartLoading()V

    .line 57
    invoke-static {}, Lcom/android/deskclock/data/DataModel;->getDataModel()Lcom/android/deskclock/data/DataModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/deskclock/data/DataModel;->getCustomRingtones()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/deskclock/ringtone/RingtoneLoader;->mCustomRingtones:Ljava/util/List;

    .line 58
    invoke-virtual {p0}, Landroid/content/AsyncTaskLoader;->forceLoad()V

    return-void
.end method
