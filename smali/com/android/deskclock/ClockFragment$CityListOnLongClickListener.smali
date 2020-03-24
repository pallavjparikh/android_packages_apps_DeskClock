.class final Lcom/android/deskclock/ClockFragment$CityListOnLongClickListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "ClockFragment.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/deskclock/ClockFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CityListOnLongClickListener"
.end annotation


# instance fields
.field private final mGestureDetector:Landroid/view/GestureDetector;

.field final synthetic this$0:Lcom/android/deskclock/ClockFragment;


# direct methods
.method private constructor <init>(Lcom/android/deskclock/ClockFragment;Landroid/content/Context;)V
    .locals 0

    .line 251
    iput-object p1, p0, Lcom/android/deskclock/ClockFragment$CityListOnLongClickListener;->this$0:Lcom/android/deskclock/ClockFragment;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    .line 252
    new-instance p1, Landroid/view/GestureDetector;

    invoke-direct {p1, p2, p0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p1, p0, Lcom/android/deskclock/ClockFragment$CityListOnLongClickListener;->mGestureDetector:Landroid/view/GestureDetector;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/deskclock/ClockFragment;Landroid/content/Context;Lcom/android/deskclock/ClockFragment$1;)V
    .locals 0

    .line 246
    invoke-direct {p0, p1, p2}, Lcom/android/deskclock/ClockFragment$CityListOnLongClickListener;-><init>(Lcom/android/deskclock/ClockFragment;Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 0

    .line 257
    iget-object p0, p0, Lcom/android/deskclock/ClockFragment$CityListOnLongClickListener;->this$0:Lcom/android/deskclock/ClockFragment;

    invoke-virtual {p0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 259
    invoke-virtual {p0}, Landroid/view/View;->performLongClick()Z

    :cond_0
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 270
    iget-object p0, p0, Lcom/android/deskclock/ClockFragment$CityListOnLongClickListener;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {p0, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method
