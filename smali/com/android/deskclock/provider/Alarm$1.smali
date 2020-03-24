.class Lcom/android/deskclock/provider/Alarm$1;
.super Landroid/content/CursorLoader;
.source "Alarm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/deskclock/provider/Alarm;->getAlarmsCursorLoader(Landroid/content/Context;)Landroid/content/CursorLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 156
    invoke-direct/range {p0 .. p6}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public loadInBackground()Landroid/database/Cursor;
    .locals 1

    .line 176
    invoke-static {}, Lcom/android/deskclock/data/DataModel;->getDataModel()Lcom/android/deskclock/data/DataModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/deskclock/data/DataModel;->loadRingtoneTitles()V

    .line 178
    invoke-super {p0}, Landroid/content/CursorLoader;->loadInBackground()Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 0

    .line 156
    invoke-virtual {p0}, Lcom/android/deskclock/provider/Alarm$1;->loadInBackground()Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method public onContentChanged()V
    .locals 1

    .line 163
    invoke-virtual {p0}, Landroid/content/CursorLoader;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/content/CursorLoader;->isAbandoned()Z

    move-result v0

    if-nez v0, :cond_0

    .line 164
    invoke-virtual {p0}, Landroid/content/CursorLoader;->stopLoading()V

    .line 165
    invoke-super {p0}, Landroid/content/CursorLoader;->onContentChanged()V

    .line 166
    invoke-virtual {p0}, Landroid/content/CursorLoader;->startLoading()V

    goto :goto_0

    .line 168
    :cond_0
    invoke-super {p0}, Landroid/content/CursorLoader;->onContentChanged()V

    :goto_0
    return-void
.end method
