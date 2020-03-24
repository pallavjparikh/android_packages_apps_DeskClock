.class public final Lcom/android/deskclock/alarms/AlarmUpdateHandler;
.super Ljava/lang/Object;
.source "AlarmUpdateHandler.java"


# instance fields
.field private final mAppContext:Landroid/content/Context;

.field private mDeletedAlarm:Lcom/android/deskclock/provider/Alarm;

.field private final mScrollHandler:Lcom/android/deskclock/alarms/ScrollHandler;

.field private final mSnackbarAnchor:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/deskclock/alarms/ScrollHandler;Landroid/view/ViewGroup;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/deskclock/alarms/AlarmUpdateHandler;->mAppContext:Landroid/content/Context;

    .line 52
    iput-object p2, p0, Lcom/android/deskclock/alarms/AlarmUpdateHandler;->mScrollHandler:Lcom/android/deskclock/alarms/ScrollHandler;

    .line 53
    iput-object p3, p0, Lcom/android/deskclock/alarms/AlarmUpdateHandler;->mSnackbarAnchor:Landroid/view/View;

    return-void
.end method

.method static synthetic access$000(Lcom/android/deskclock/alarms/AlarmUpdateHandler;)Landroid/content/Context;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/android/deskclock/alarms/AlarmUpdateHandler;->mAppContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/deskclock/alarms/AlarmUpdateHandler;)Lcom/android/deskclock/alarms/ScrollHandler;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/android/deskclock/alarms/AlarmUpdateHandler;->mScrollHandler:Lcom/android/deskclock/alarms/ScrollHandler;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/deskclock/alarms/AlarmUpdateHandler;Lcom/android/deskclock/provider/Alarm;)Lcom/android/deskclock/provider/AlarmInstance;
    .locals 0

    .line 40
    invoke-direct {p0, p1}, Lcom/android/deskclock/alarms/AlarmUpdateHandler;->setupAlarmInstance(Lcom/android/deskclock/provider/Alarm;)Lcom/android/deskclock/provider/AlarmInstance;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/deskclock/alarms/AlarmUpdateHandler;)Landroid/view/View;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/android/deskclock/alarms/AlarmUpdateHandler;->mSnackbarAnchor:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$402(Lcom/android/deskclock/alarms/AlarmUpdateHandler;Lcom/android/deskclock/provider/Alarm;)Lcom/android/deskclock/provider/Alarm;
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/android/deskclock/alarms/AlarmUpdateHandler;->mDeletedAlarm:Lcom/android/deskclock/provider/Alarm;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/deskclock/alarms/AlarmUpdateHandler;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/android/deskclock/alarms/AlarmUpdateHandler;->showUndoBar()V

    return-void
.end method

.method private setupAlarmInstance(Lcom/android/deskclock/provider/Alarm;)Lcom/android/deskclock/provider/AlarmInstance;
    .locals 2

    .line 215
    iget-object v0, p0, Lcom/android/deskclock/alarms/AlarmUpdateHandler;->mAppContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 216
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/deskclock/provider/Alarm;->createInstanceAfter(Ljava/util/Calendar;)Lcom/android/deskclock/provider/AlarmInstance;

    move-result-object p1

    .line 217
    invoke-static {v0, p1}, Lcom/android/deskclock/provider/AlarmInstance;->addInstance(Landroid/content/ContentResolver;Lcom/android/deskclock/provider/AlarmInstance;)Lcom/android/deskclock/provider/AlarmInstance;

    .line 219
    iget-object p0, p0, Lcom/android/deskclock/alarms/AlarmUpdateHandler;->mAppContext:Landroid/content/Context;

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/android/deskclock/alarms/AlarmStateManager;->registerInstance(Landroid/content/Context;Lcom/android/deskclock/provider/AlarmInstance;Z)V

    return-object p1
.end method

.method private showUndoBar()V
    .locals 4

    .line 201
    iget-object v0, p0, Lcom/android/deskclock/alarms/AlarmUpdateHandler;->mDeletedAlarm:Lcom/android/deskclock/provider/Alarm;

    .line 202
    iget-object v1, p0, Lcom/android/deskclock/alarms/AlarmUpdateHandler;->mSnackbarAnchor:Landroid/view/View;

    iget-object v2, p0, Lcom/android/deskclock/alarms/AlarmUpdateHandler;->mAppContext:Landroid/content/Context;

    const v3, 0x7f110192

    .line 203
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 202
    invoke-static {v1, v2, v3}, Lcom/google/android/material/snackbar/Snackbar;->make(Landroid/view/View;Ljava/lang/CharSequence;I)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object v1

    new-instance v2, Lcom/android/deskclock/alarms/AlarmUpdateHandler$4;

    invoke-direct {v2, p0, v0}, Lcom/android/deskclock/alarms/AlarmUpdateHandler$4;-><init>(Lcom/android/deskclock/alarms/AlarmUpdateHandler;Lcom/android/deskclock/provider/Alarm;)V

    const p0, 0x7f11019d

    .line 204
    invoke-virtual {v1, p0, v2}, Lcom/google/android/material/snackbar/Snackbar;->setAction(ILandroid/view/View$OnClickListener;)Lcom/google/android/material/snackbar/Snackbar;

    .line 211
    invoke-static {v1}, Lcom/android/deskclock/widget/toast/SnackbarManager;->show(Lcom/google/android/material/snackbar/Snackbar;)V

    return-void
.end method


# virtual methods
.method public asyncAddAlarm(Lcom/android/deskclock/provider/Alarm;)V
    .locals 1

    .line 62
    new-instance v0, Lcom/android/deskclock/alarms/AlarmUpdateHandler$1;

    invoke-direct {v0, p0, p1}, Lcom/android/deskclock/alarms/AlarmUpdateHandler$1;-><init>(Lcom/android/deskclock/alarms/AlarmUpdateHandler;Lcom/android/deskclock/provider/Alarm;)V

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Void;

    .line 92
    invoke-virtual {v0, p0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public asyncDeleteAlarm(Lcom/android/deskclock/provider/Alarm;)V
    .locals 1

    .line 157
    new-instance v0, Lcom/android/deskclock/alarms/AlarmUpdateHandler$3;

    invoke-direct {v0, p0, p1}, Lcom/android/deskclock/alarms/AlarmUpdateHandler$3;-><init>(Lcom/android/deskclock/alarms/AlarmUpdateHandler;Lcom/android/deskclock/provider/Alarm;)V

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Void;

    .line 177
    invoke-virtual {v0, p0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public asyncUpdateAlarm(Lcom/android/deskclock/provider/Alarm;ZZ)V
    .locals 1

    .line 104
    new-instance v0, Lcom/android/deskclock/alarms/AlarmUpdateHandler$2;

    invoke-direct {v0, p0, p1, p3, p2}, Lcom/android/deskclock/alarms/AlarmUpdateHandler$2;-><init>(Lcom/android/deskclock/alarms/AlarmUpdateHandler;Lcom/android/deskclock/provider/Alarm;ZZ)V

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Void;

    .line 148
    invoke-virtual {v0, p0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public hideUndoBar()V
    .locals 1

    const/4 v0, 0x0

    .line 196
    iput-object v0, p0, Lcom/android/deskclock/alarms/AlarmUpdateHandler;->mDeletedAlarm:Lcom/android/deskclock/provider/Alarm;

    .line 197
    invoke-static {}, Lcom/android/deskclock/widget/toast/SnackbarManager;->dismiss()V

    return-void
.end method

.method public showPredismissToast(Lcom/android/deskclock/provider/AlarmInstance;)V
    .locals 3

    .line 186
    iget-object v0, p0, Lcom/android/deskclock/alarms/AlarmUpdateHandler;->mAppContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v0

    .line 187
    invoke-virtual {p1}, Lcom/android/deskclock/provider/AlarmInstance;->getAlarmTime()Ljava/util/Calendar;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p1

    .line 186
    invoke-virtual {v0, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    .line 188
    iget-object v0, p0, Lcom/android/deskclock/alarms/AlarmUpdateHandler;->mAppContext:Landroid/content/Context;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const p1, 0x7f110193

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 189
    iget-object p0, p0, Lcom/android/deskclock/alarms/AlarmUpdateHandler;->mSnackbarAnchor:Landroid/view/View;

    const/4 v0, -0x1

    invoke-static {p0, p1, v0}, Lcom/google/android/material/snackbar/Snackbar;->make(Landroid/view/View;Ljava/lang/CharSequence;I)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object p0

    invoke-static {p0}, Lcom/android/deskclock/widget/toast/SnackbarManager;->show(Lcom/google/android/material/snackbar/Snackbar;)V

    return-void
.end method
