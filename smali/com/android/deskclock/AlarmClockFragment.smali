.class public final Lcom/android/deskclock/AlarmClockFragment;
.super Lcom/android/deskclock/DeskClockFragment;
.source "AlarmClockFragment.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;
.implements Lcom/android/deskclock/alarms/ScrollHandler;
.implements Lcom/android/deskclock/alarms/TimePickerDialogFragment$OnTimeSetListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/deskclock/AlarmClockFragment$MidnightRunnable;,
        Lcom/android/deskclock/AlarmClockFragment$ScrollPositionWatcher;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/deskclock/DeskClockFragment;",
        "Landroid/app/LoaderManager$LoaderCallbacks<",
        "Landroid/database/Cursor;",
        ">;",
        "Lcom/android/deskclock/alarms/ScrollHandler;",
        "Lcom/android/deskclock/alarms/TimePickerDialogFragment$OnTimeSetListener;"
    }
.end annotation


# instance fields
.field private mAlarmTimeClickHandler:Lcom/android/deskclock/alarms/AlarmTimeClickHandler;

.field private mAlarmUpdateHandler:Lcom/android/deskclock/alarms/AlarmUpdateHandler;

.field private mCurrentUpdateToken:J

.field private mCursorLoader:Landroid/content/Loader;

.field private mEmptyViewController:Lcom/android/deskclock/widget/EmptyViewController;

.field private mExpandedAlarmId:J

.field private mItemAdapter:Lcom/android/deskclock/ItemAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/deskclock/ItemAdapter<",
            "Lcom/android/deskclock/alarms/dataadapter/AlarmItemHolder;",
            ">;"
        }
    .end annotation
.end field

.field private mLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

.field private mMainLayout:Landroid/view/ViewGroup;

.field private final mMidnightUpdater:Ljava/lang/Runnable;

.field private mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private mScrollToAlarmId:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 99
    sget-object v0, Lcom/android/deskclock/uidata/UiDataModel$Tab;->ALARMS:Lcom/android/deskclock/uidata/UiDataModel$Tab;

    invoke-direct {p0, v0}, Lcom/android/deskclock/DeskClockFragment;-><init>(Lcom/android/deskclock/uidata/UiDataModel$Tab;)V

    .line 76
    new-instance v0, Lcom/android/deskclock/AlarmClockFragment$MidnightRunnable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/deskclock/AlarmClockFragment$MidnightRunnable;-><init>(Lcom/android/deskclock/AlarmClockFragment;Lcom/android/deskclock/AlarmClockFragment$1;)V

    iput-object v0, p0, Lcom/android/deskclock/AlarmClockFragment;->mMidnightUpdater:Ljava/lang/Runnable;

    const-wide/16 v0, -0x1

    .line 84
    iput-wide v0, p0, Lcom/android/deskclock/AlarmClockFragment;->mScrollToAlarmId:J

    .line 85
    iput-wide v0, p0, Lcom/android/deskclock/AlarmClockFragment;->mExpandedAlarmId:J

    return-void
.end method

.method static synthetic access$100(Lcom/android/deskclock/AlarmClockFragment;)J
    .locals 2

    .line 60
    iget-wide v0, p0, Lcom/android/deskclock/AlarmClockFragment;->mExpandedAlarmId:J

    return-wide v0
.end method

.method static synthetic access$102(Lcom/android/deskclock/AlarmClockFragment;J)J
    .locals 0

    .line 60
    iput-wide p1, p0, Lcom/android/deskclock/AlarmClockFragment;->mExpandedAlarmId:J

    return-wide p1
.end method

.method static synthetic access$200(Lcom/android/deskclock/AlarmClockFragment;)Lcom/android/deskclock/ItemAdapter;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/android/deskclock/AlarmClockFragment;->mItemAdapter:Lcom/android/deskclock/ItemAdapter;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/deskclock/AlarmClockFragment;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/android/deskclock/AlarmClockFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/deskclock/AlarmClockFragment;Ljava/util/List;J)V
    .locals 0

    .line 60
    invoke-direct {p0, p1, p2, p3}, Lcom/android/deskclock/AlarmClockFragment;->setAdapterItems(Ljava/util/List;J)V

    return-void
.end method

.method private scrollToAlarm(J)V
    .locals 5

    .line 355
    iget-object v0, p0, Lcom/android/deskclock/AlarmClockFragment;->mItemAdapter:Lcom/android/deskclock/ItemAdapter;

    invoke-virtual {v0}, Lcom/android/deskclock/ItemAdapter;->getItemCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 358
    iget-object v3, p0, Lcom/android/deskclock/AlarmClockFragment;->mItemAdapter:Lcom/android/deskclock/ItemAdapter;

    invoke-virtual {v3, v2}, Lcom/android/deskclock/ItemAdapter;->getItemId(I)J

    move-result-wide v3

    cmp-long v3, v3, p1

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, -0x1

    :goto_1
    if-ltz v2, :cond_2

    .line 366
    iget-object v0, p0, Lcom/android/deskclock/AlarmClockFragment;->mItemAdapter:Lcom/android/deskclock/ItemAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/android/deskclock/ItemAdapter;->findItemById(J)Lcom/android/deskclock/ItemAdapter$ItemHolder;

    move-result-object p1

    check-cast p1, Lcom/android/deskclock/alarms/dataadapter/AlarmItemHolder;

    invoke-virtual {p1}, Lcom/android/deskclock/alarms/dataadapter/AlarmItemHolder;->expand()V

    .line 367
    invoke-virtual {p0, v2}, Lcom/android/deskclock/AlarmClockFragment;->smoothScrollTo(I)V

    goto :goto_2

    .line 371
    :cond_2
    iget-object p0, p0, Lcom/android/deskclock/AlarmClockFragment;->mMainLayout:Landroid/view/ViewGroup;

    const p1, 0x7f1101fc

    invoke-static {p0, p1, v1}, Lcom/google/android/material/snackbar/Snackbar;->make(Landroid/view/View;II)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object p0

    invoke-static {p0}, Lcom/android/deskclock/widget/toast/SnackbarManager;->show(Lcom/google/android/material/snackbar/Snackbar;)V

    :goto_2
    return-void
.end method

.method private setAdapterItems(Ljava/util/List;J)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/deskclock/alarms/dataadapter/AlarmItemHolder;",
            ">;J)V"
        }
    .end annotation

    .line 297
    iget-wide v0, p0, Lcom/android/deskclock/AlarmClockFragment;->mCurrentUpdateToken:J

    cmp-long v0, p2, v0

    const/4 v1, 0x1

    if-gez v0, :cond_0

    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v0, 0x0

    .line 298
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    aput-object p2, p1, v0

    iget-wide p2, p0, Lcom/android/deskclock/AlarmClockFragment;->mCurrentUpdateToken:J

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    aput-object p0, p1, v1

    const-string p0, "Ignoring adapter update: %d < %d"

    invoke-static {p0, p1}, Lcom/android/deskclock/LogUtils;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 302
    :cond_0
    iget-object v0, p0, Lcom/android/deskclock/AlarmClockFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 304
    iget-object v0, p0, Lcom/android/deskclock/AlarmClockFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/deskclock/AlarmClockFragment$3;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/deskclock/AlarmClockFragment$3;-><init>(Lcom/android/deskclock/AlarmClockFragment;Ljava/util/List;J)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->isRunning(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemAnimatorFinishedListener;)Z

    goto :goto_1

    .line 311
    :cond_1
    iget-object v0, p0, Lcom/android/deskclock/AlarmClockFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->isComputingLayout()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 313
    iget-object v0, p0, Lcom/android/deskclock/AlarmClockFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lcom/android/deskclock/AlarmClockFragment$4;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/deskclock/AlarmClockFragment$4;-><init>(Lcom/android/deskclock/AlarmClockFragment;Ljava/util/List;J)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 320
    :cond_2
    iput-wide p2, p0, Lcom/android/deskclock/AlarmClockFragment;->mCurrentUpdateToken:J

    .line 321
    iget-object p2, p0, Lcom/android/deskclock/AlarmClockFragment;->mItemAdapter:Lcom/android/deskclock/ItemAdapter;

    invoke-virtual {p2, p1}, Lcom/android/deskclock/ItemAdapter;->setItems(Ljava/util/List;)Lcom/android/deskclock/ItemAdapter;

    .line 324
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    .line 325
    iget-object p2, p0, Lcom/android/deskclock/AlarmClockFragment;->mEmptyViewController:Lcom/android/deskclock/widget/EmptyViewController;

    invoke-virtual {p2, p1}, Lcom/android/deskclock/widget/EmptyViewController;->setEmpty(Z)V

    if-eqz p1, :cond_3

    .line 328
    invoke-virtual {p0, v1}, Lcom/android/deskclock/DeskClockFragment;->setTabScrolledToTop(Z)V

    .line 332
    :cond_3
    iget-wide p1, p0, Lcom/android/deskclock/AlarmClockFragment;->mExpandedAlarmId:J

    const-wide/16 v0, -0x1

    cmp-long p3, p1, v0

    if-eqz p3, :cond_5

    .line 333
    iget-object p3, p0, Lcom/android/deskclock/AlarmClockFragment;->mItemAdapter:Lcom/android/deskclock/ItemAdapter;

    invoke-virtual {p3, p1, p2}, Lcom/android/deskclock/ItemAdapter;->findItemById(J)Lcom/android/deskclock/ItemAdapter$ItemHolder;

    move-result-object p1

    check-cast p1, Lcom/android/deskclock/alarms/dataadapter/AlarmItemHolder;

    if-eqz p1, :cond_4

    .line 335
    iget-object p2, p0, Lcom/android/deskclock/AlarmClockFragment;->mAlarmTimeClickHandler:Lcom/android/deskclock/alarms/AlarmTimeClickHandler;

    iget-object p3, p1, Lcom/android/deskclock/ItemAdapter$ItemHolder;->item:Ljava/lang/Object;

    check-cast p3, Lcom/android/deskclock/provider/Alarm;

    invoke-virtual {p2, p3}, Lcom/android/deskclock/alarms/AlarmTimeClickHandler;->setSelectedAlarm(Lcom/android/deskclock/provider/Alarm;)V

    .line 336
    invoke-virtual {p1}, Lcom/android/deskclock/alarms/dataadapter/AlarmItemHolder;->expand()V

    goto :goto_0

    .line 338
    :cond_4
    iget-object p1, p0, Lcom/android/deskclock/AlarmClockFragment;->mAlarmTimeClickHandler:Lcom/android/deskclock/alarms/AlarmTimeClickHandler;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/android/deskclock/alarms/AlarmTimeClickHandler;->setSelectedAlarm(Lcom/android/deskclock/provider/Alarm;)V

    .line 339
    iput-wide v0, p0, Lcom/android/deskclock/AlarmClockFragment;->mExpandedAlarmId:J

    .line 344
    :cond_5
    :goto_0
    iget-wide p1, p0, Lcom/android/deskclock/AlarmClockFragment;->mScrollToAlarmId:J

    cmp-long p3, p1, v0

    if-eqz p3, :cond_6

    .line 345
    invoke-direct {p0, p1, p2}, Lcom/android/deskclock/AlarmClockFragment;->scrollToAlarm(J)V

    .line 346
    invoke-virtual {p0, v0, v1}, Lcom/android/deskclock/AlarmClockFragment;->setSmoothScrollStableId(J)V

    :cond_6
    :goto_1
    return-void
.end method

.method private startCreatingAlarm()V
    .locals 2

    .line 406
    iget-object v0, p0, Lcom/android/deskclock/AlarmClockFragment;->mAlarmTimeClickHandler:Lcom/android/deskclock/alarms/AlarmTimeClickHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/deskclock/alarms/AlarmTimeClickHandler;->setSelectedAlarm(Lcom/android/deskclock/provider/Alarm;)V

    .line 407
    invoke-static {p0}, Lcom/android/deskclock/alarms/TimePickerDialogFragment;->show(Landroid/app/Fragment;)V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 104
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 105
    invoke-virtual {p0}, Landroid/app/Fragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    move-result-object v0

    iput-object v0, p0, Lcom/android/deskclock/AlarmClockFragment;->mCursorLoader:Landroid/content/Loader;

    if-eqz p1, :cond_0

    const-wide/16 v0, -0x1

    const-string v2, "expandedId"

    .line 107
    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/deskclock/AlarmClockFragment;->mExpandedAlarmId:J

    :cond_0
    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .line 271
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p0

    invoke-static {p0}, Lcom/android/deskclock/provider/Alarm;->getAlarmsCursorLoader(Landroid/content/Context;)Landroid/content/CursorLoader;

    move-result-object p0

    return-object p0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7

    const/4 v0, 0x0

    const v1, 0x7f0d001d

    .line 114
    invoke-virtual {p1, v1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 115
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0a0040

    .line 117
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v2, p0, Lcom/android/deskclock/AlarmClockFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 118
    new-instance v2, Lcom/android/deskclock/AlarmClockFragment$1;

    invoke-direct {v2, p0, v1}, Lcom/android/deskclock/AlarmClockFragment$1;-><init>(Lcom/android/deskclock/AlarmClockFragment;Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/deskclock/AlarmClockFragment;->mLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 128
    iget-object v2, p0, Lcom/android/deskclock/AlarmClockFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v3, p0, Lcom/android/deskclock/AlarmClockFragment;->mLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    const v2, 0x7f0a00c5

    .line 129
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/android/deskclock/AlarmClockFragment;->mMainLayout:Landroid/view/ViewGroup;

    .line 130
    new-instance v2, Lcom/android/deskclock/alarms/AlarmUpdateHandler;

    iget-object v3, p0, Lcom/android/deskclock/AlarmClockFragment;->mMainLayout:Landroid/view/ViewGroup;

    invoke-direct {v2, v1, p0, v3}, Lcom/android/deskclock/alarms/AlarmUpdateHandler;-><init>(Landroid/content/Context;Lcom/android/deskclock/alarms/ScrollHandler;Landroid/view/ViewGroup;)V

    iput-object v2, p0, Lcom/android/deskclock/AlarmClockFragment;->mAlarmUpdateHandler:Lcom/android/deskclock/alarms/AlarmUpdateHandler;

    const v2, 0x7f0a003f

    .line 131
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f080097

    .line 132
    invoke-static {v1, v3}, Lcom/android/deskclock/Utils;->getVectorDrawable(Landroid/content/Context;I)Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;

    move-result-object v3

    const/4 v4, 0x0

    .line 133
    invoke-virtual {v2, v4, v3, v4, v4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 134
    new-instance v3, Lcom/android/deskclock/widget/EmptyViewController;

    iget-object v5, p0, Lcom/android/deskclock/AlarmClockFragment;->mMainLayout:Landroid/view/ViewGroup;

    iget-object v6, p0, Lcom/android/deskclock/AlarmClockFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-direct {v3, v5, v6, v2}, Lcom/android/deskclock/widget/EmptyViewController;-><init>(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/View;)V

    iput-object v3, p0, Lcom/android/deskclock/AlarmClockFragment;->mEmptyViewController:Lcom/android/deskclock/widget/EmptyViewController;

    .line 135
    new-instance v2, Lcom/android/deskclock/alarms/AlarmTimeClickHandler;

    iget-object v3, p0, Lcom/android/deskclock/AlarmClockFragment;->mAlarmUpdateHandler:Lcom/android/deskclock/alarms/AlarmUpdateHandler;

    invoke-direct {v2, p0, p3, v3, p0}, Lcom/android/deskclock/alarms/AlarmTimeClickHandler;-><init>(Landroid/app/Fragment;Landroid/os/Bundle;Lcom/android/deskclock/alarms/AlarmUpdateHandler;Lcom/android/deskclock/alarms/ScrollHandler;)V

    iput-object v2, p0, Lcom/android/deskclock/AlarmClockFragment;->mAlarmTimeClickHandler:Lcom/android/deskclock/alarms/AlarmTimeClickHandler;

    .line 138
    new-instance p3, Lcom/android/deskclock/ItemAdapter;

    invoke-direct {p3}, Lcom/android/deskclock/ItemAdapter;-><init>()V

    iput-object p3, p0, Lcom/android/deskclock/AlarmClockFragment;->mItemAdapter:Lcom/android/deskclock/ItemAdapter;

    .line 139
    iget-object p3, p0, Lcom/android/deskclock/AlarmClockFragment;->mItemAdapter:Lcom/android/deskclock/ItemAdapter;

    invoke-virtual {p3}, Lcom/android/deskclock/ItemAdapter;->setHasStableIds()Lcom/android/deskclock/ItemAdapter;

    .line 140
    iget-object p3, p0, Lcom/android/deskclock/AlarmClockFragment;->mItemAdapter:Lcom/android/deskclock/ItemAdapter;

    new-instance v2, Lcom/android/deskclock/alarms/dataadapter/CollapsedAlarmViewHolder$Factory;

    invoke-direct {v2, p1}, Lcom/android/deskclock/alarms/dataadapter/CollapsedAlarmViewHolder$Factory;-><init>(Landroid/view/LayoutInflater;)V

    const/4 p1, 0x1

    new-array v3, p1, [I

    const v5, 0x7f0d001f

    aput v5, v3, v0

    invoke-virtual {p3, v2, v4, v3}, Lcom/android/deskclock/ItemAdapter;->withViewTypes(Lcom/android/deskclock/ItemAdapter$ItemViewHolder$Factory;Lcom/android/deskclock/ItemAdapter$OnItemClickedListener;[I)Lcom/android/deskclock/ItemAdapter;

    .line 142
    iget-object p3, p0, Lcom/android/deskclock/AlarmClockFragment;->mItemAdapter:Lcom/android/deskclock/ItemAdapter;

    new-instance v2, Lcom/android/deskclock/alarms/dataadapter/ExpandedAlarmViewHolder$Factory;

    invoke-direct {v2, v1}, Lcom/android/deskclock/alarms/dataadapter/ExpandedAlarmViewHolder$Factory;-><init>(Landroid/content/Context;)V

    new-array p1, p1, [I

    const v1, 0x7f0d0020

    aput v1, p1, v0

    invoke-virtual {p3, v2, v4, p1}, Lcom/android/deskclock/ItemAdapter;->withViewTypes(Lcom/android/deskclock/ItemAdapter$ItemViewHolder$Factory;Lcom/android/deskclock/ItemAdapter$OnItemClickedListener;[I)Lcom/android/deskclock/ItemAdapter;

    .line 144
    iget-object p1, p0, Lcom/android/deskclock/AlarmClockFragment;->mItemAdapter:Lcom/android/deskclock/ItemAdapter;

    new-instance p3, Lcom/android/deskclock/AlarmClockFragment$2;

    invoke-direct {p3, p0}, Lcom/android/deskclock/AlarmClockFragment$2;-><init>(Lcom/android/deskclock/AlarmClockFragment;)V

    invoke-virtual {p1, p3}, Lcom/android/deskclock/ItemAdapter;->setOnItemChangedListener(Lcom/android/deskclock/ItemAdapter$OnItemChangedListener;)V

    .line 173
    new-instance p1, Lcom/android/deskclock/AlarmClockFragment$ScrollPositionWatcher;

    invoke-direct {p1, p0, v4}, Lcom/android/deskclock/AlarmClockFragment$ScrollPositionWatcher;-><init>(Lcom/android/deskclock/AlarmClockFragment;Lcom/android/deskclock/AlarmClockFragment$1;)V

    .line 174
    iget-object p3, p0, Lcom/android/deskclock/AlarmClockFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p3, p1}, Landroid/view/ViewGroup;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 175
    iget-object p3, p0, Lcom/android/deskclock/AlarmClockFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p3, p1}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 176
    iget-object p1, p0, Lcom/android/deskclock/AlarmClockFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p3, p0, Lcom/android/deskclock/AlarmClockFragment;->mItemAdapter:Lcom/android/deskclock/ItemAdapter;

    invoke-virtual {p1, p3}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 177
    new-instance p1, Lcom/android/deskclock/ItemAnimator;

    invoke-direct {p1}, Lcom/android/deskclock/ItemAnimator;-><init>()V

    const-wide/16 v0, 0x12c

    .line 178
    invoke-virtual {p1, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setChangeDuration(J)V

    .line 179
    invoke-virtual {p1, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setMoveDuration(J)V

    .line 180
    iget-object p0, p0, Lcom/android/deskclock/AlarmClockFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    return-object p2
.end method

.method public onDestroy()V
    .locals 0

    .line 260
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 261
    invoke-static {}, Lcom/android/deskclock/widget/toast/ToastManager;->cancelToast()V

    return-void
.end method

.method public onFabClick(Landroid/widget/ImageView;)V
    .locals 0

    .line 387
    iget-object p1, p0, Lcom/android/deskclock/AlarmClockFragment;->mAlarmUpdateHandler:Lcom/android/deskclock/alarms/AlarmUpdateHandler;

    invoke-virtual {p1}, Lcom/android/deskclock/alarms/AlarmUpdateHandler;->hideUndoBar()V

    .line 388
    invoke-direct {p0}, Lcom/android/deskclock/AlarmClockFragment;->startCreatingAlarm()V

    return-void
.end method

.method public onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader<",
            "Landroid/database/Cursor;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    .line 276
    new-instance p1, Ljava/util/ArrayList;

    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 277
    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_0
    invoke-interface {p2}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_1

    .line 278
    new-instance v0, Lcom/android/deskclock/provider/Alarm;

    invoke-direct {v0, p2}, Lcom/android/deskclock/provider/Alarm;-><init>(Landroid/database/Cursor;)V

    .line 279
    invoke-virtual {v0}, Lcom/android/deskclock/provider/Alarm;->canPreemptivelyDismiss()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 280
    new-instance v1, Lcom/android/deskclock/provider/AlarmInstance;

    const/4 v2, 0x1

    invoke-direct {v1, p2, v2}, Lcom/android/deskclock/provider/AlarmInstance;-><init>(Landroid/database/Cursor;Z)V

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    .line 281
    :goto_1
    new-instance v2, Lcom/android/deskclock/alarms/dataadapter/AlarmItemHolder;

    iget-object v3, p0, Lcom/android/deskclock/AlarmClockFragment;->mAlarmTimeClickHandler:Lcom/android/deskclock/alarms/AlarmTimeClickHandler;

    invoke-direct {v2, v0, v1, v3}, Lcom/android/deskclock/alarms/dataadapter/AlarmItemHolder;-><init>(Lcom/android/deskclock/provider/Alarm;Lcom/android/deskclock/provider/AlarmInstance;Lcom/android/deskclock/alarms/AlarmTimeClickHandler;)V

    .line 283
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 277
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    .line 285
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/deskclock/AlarmClockFragment;->setAdapterItems(Ljava/util/List;J)V

    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .line 60
    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lcom/android/deskclock/AlarmClockFragment;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader<",
            "Landroid/database/Cursor;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onPause()V
    .locals 2

    .line 236
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 237
    invoke-static {}, Lcom/android/deskclock/uidata/UiDataModel;->getUiDataModel()Lcom/android/deskclock/uidata/UiDataModel;

    move-result-object v0

    iget-object v1, p0, Lcom/android/deskclock/AlarmClockFragment;->mMidnightUpdater:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/deskclock/uidata/UiDataModel;->removePeriodicCallback(Ljava/lang/Runnable;)V

    .line 243
    iget-object p0, p0, Lcom/android/deskclock/AlarmClockFragment;->mAlarmUpdateHandler:Lcom/android/deskclock/alarms/AlarmUpdateHandler;

    invoke-virtual {p0}, Lcom/android/deskclock/alarms/AlarmUpdateHandler;->hideUndoBar()V

    return-void
.end method

.method public onResume()V
    .locals 6

    .line 195
    invoke-super {p0}, Lcom/android/deskclock/DeskClockFragment;->onResume()V

    .line 199
    invoke-static {}, Lcom/android/deskclock/uidata/UiDataModel;->getUiDataModel()Lcom/android/deskclock/uidata/UiDataModel;

    move-result-object v0

    iget-object v1, p0, Lcom/android/deskclock/AlarmClockFragment;->mMidnightUpdater:Ljava/lang/Runnable;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/deskclock/uidata/UiDataModel;->addMidnightCallback(Ljava/lang/Runnable;J)V

    .line 202
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v1, "deskclock.create.new"

    .line 207
    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 208
    invoke-static {}, Lcom/android/deskclock/uidata/UiDataModel;->getUiDataModel()Lcom/android/deskclock/uidata/UiDataModel;

    move-result-object v2

    sget-object v3, Lcom/android/deskclock/uidata/UiDataModel$Tab;->ALARMS:Lcom/android/deskclock/uidata/UiDataModel$Tab;

    invoke-virtual {v2, v3}, Lcom/android/deskclock/uidata/UiDataModel;->setSelectedTab(Lcom/android/deskclock/uidata/UiDataModel$Tab;)V

    const/4 v2, 0x0

    .line 209
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 211
    invoke-direct {p0}, Lcom/android/deskclock/AlarmClockFragment;->startCreatingAlarm()V

    .line 215
    :cond_1
    invoke-virtual {v0, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v1, "deskclock.scroll.to.alarm"

    .line 216
    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 217
    invoke-static {}, Lcom/android/deskclock/uidata/UiDataModel;->getUiDataModel()Lcom/android/deskclock/uidata/UiDataModel;

    move-result-object v2

    sget-object v3, Lcom/android/deskclock/uidata/UiDataModel$Tab;->ALARMS:Lcom/android/deskclock/uidata/UiDataModel$Tab;

    invoke-virtual {v2, v3}, Lcom/android/deskclock/uidata/UiDataModel;->setSelectedTab(Lcom/android/deskclock/uidata/UiDataModel$Tab;)V

    const-wide/16 v2, -0x1

    .line 219
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    cmp-long v2, v4, v2

    if-eqz v2, :cond_3

    .line 221
    invoke-virtual {p0, v4, v5}, Lcom/android/deskclock/AlarmClockFragment;->setSmoothScrollStableId(J)V

    .line 222
    iget-object v2, p0, Lcom/android/deskclock/AlarmClockFragment;->mCursorLoader:Landroid/content/Loader;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroid/content/Loader;->isStarted()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 225
    iget-object p0, p0, Lcom/android/deskclock/AlarmClockFragment;->mCursorLoader:Landroid/content/Loader;

    invoke-virtual {p0}, Landroid/content/Loader;->forceLoad()V

    .line 230
    :cond_3
    invoke-virtual {v0, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 253
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 254
    iget-object v0, p0, Lcom/android/deskclock/AlarmClockFragment;->mAlarmTimeClickHandler:Lcom/android/deskclock/alarms/AlarmTimeClickHandler;

    invoke-virtual {v0, p1}, Lcom/android/deskclock/alarms/AlarmTimeClickHandler;->saveInstance(Landroid/os/Bundle;)V

    .line 255
    iget-wide v0, p0, Lcom/android/deskclock/AlarmClockFragment;->mExpandedAlarmId:J

    const-string p0, "expandedId"

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    return-void
.end method

.method public onStart()V
    .locals 1

    .line 186
    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    .line 188
    invoke-virtual {p0}, Lcom/android/deskclock/DeskClockFragment;->isTabSelected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 189
    invoke-virtual {p0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p0

    invoke-static {p0}, Lcom/android/deskclock/alarms/TimePickerDialogFragment;->removeTimeEditDialog(Landroid/app/FragmentManager;)V

    :cond_0
    return-void
.end method

.method public onTimeSet(Lcom/android/deskclock/alarms/TimePickerDialogFragment;II)V
    .locals 0

    .line 412
    iget-object p0, p0, Lcom/android/deskclock/AlarmClockFragment;->mAlarmTimeClickHandler:Lcom/android/deskclock/alarms/AlarmTimeClickHandler;

    invoke-virtual {p0, p2, p3}, Lcom/android/deskclock/alarms/AlarmTimeClickHandler;->onTimeSet(II)V

    return-void
.end method

.method public onUpdateFab(Landroid/widget/ImageView;)V
    .locals 1

    const/4 p0, 0x0

    .line 393
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setVisibility(I)V

    const p0, 0x7f08007f

    .line 394
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 395
    invoke-virtual {p1}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f1101ac

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onUpdateFabButtons(Landroid/widget/Button;Landroid/widget/Button;)V
    .locals 0

    const/4 p0, 0x4

    .line 400
    invoke-virtual {p1, p0}, Landroid/widget/Button;->setVisibility(I)V

    .line 401
    invoke-virtual {p2, p0}, Landroid/widget/Button;->setVisibility(I)V

    return-void
.end method

.method public removeItem(Lcom/android/deskclock/alarms/dataadapter/AlarmItemHolder;)V
    .locals 0

    .line 416
    iget-object p0, p0, Lcom/android/deskclock/AlarmClockFragment;->mItemAdapter:Lcom/android/deskclock/ItemAdapter;

    invoke-virtual {p0, p1}, Lcom/android/deskclock/ItemAdapter;->removeItem(Lcom/android/deskclock/ItemAdapter$ItemHolder;)Lcom/android/deskclock/ItemAdapter;

    return-void
.end method

.method public setLabel(Lcom/android/deskclock/provider/Alarm;Ljava/lang/String;)V
    .locals 1

    .line 265
    iput-object p2, p1, Lcom/android/deskclock/provider/Alarm;->label:Ljava/lang/String;

    .line 266
    iget-object p0, p0, Lcom/android/deskclock/AlarmClockFragment;->mAlarmUpdateHandler:Lcom/android/deskclock/alarms/AlarmUpdateHandler;

    const/4 p2, 0x0

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/deskclock/alarms/AlarmUpdateHandler;->asyncUpdateAlarm(Lcom/android/deskclock/provider/Alarm;ZZ)V

    return-void
.end method

.method public setSmoothScrollStableId(J)V
    .locals 0

    .line 382
    iput-wide p1, p0, Lcom/android/deskclock/AlarmClockFragment;->mScrollToAlarmId:J

    return-void
.end method

.method public smoothScrollTo(I)V
    .locals 1

    .line 248
    iget-object p0, p0, Lcom/android/deskclock/AlarmClockFragment;->mLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    return-void
.end method
