.class final Lcom/android/deskclock/ScreensaverActivity$InteractionListener;
.super Ljava/lang/Object;
.source "ScreensaverActivity.java"

# interfaces
.implements Landroid/view/View$OnSystemUiVisibilityChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/deskclock/ScreensaverActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "InteractionListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/deskclock/ScreensaverActivity;


# direct methods
.method private constructor <init>(Lcom/android/deskclock/ScreensaverActivity;)V
    .locals 0

    .line 248
    iput-object p1, p0, Lcom/android/deskclock/ScreensaverActivity$InteractionListener;->this$0:Lcom/android/deskclock/ScreensaverActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/deskclock/ScreensaverActivity;Lcom/android/deskclock/ScreensaverActivity$1;)V
    .locals 0

    .line 248
    invoke-direct {p0, p1}, Lcom/android/deskclock/ScreensaverActivity$InteractionListener;-><init>(Lcom/android/deskclock/ScreensaverActivity;)V

    return-void
.end method


# virtual methods
.method public onSystemUiVisibilityChange(I)V
    .locals 0

    and-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_0

    .line 254
    iget-object p0, p0, Lcom/android/deskclock/ScreensaverActivity$InteractionListener;->this$0:Lcom/android/deskclock/ScreensaverActivity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method
