.class final Lcom/android/deskclock/data/WidgetModel;
.super Ljava/lang/Object;
.source "WidgetModel.java"


# instance fields
.field private final mPrefs:Landroid/content/SharedPreferences;


# direct methods
.method constructor <init>(Landroid/content/SharedPreferences;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/android/deskclock/data/WidgetModel;->mPrefs:Landroid/content/SharedPreferences;

    return-void
.end method


# virtual methods
.method updateWidgetCount(Ljava/lang/Class;II)V
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/android/deskclock/data/WidgetModel;->mPrefs:Landroid/content/SharedPreferences;

    invoke-static {p0, p1, p2}, Lcom/android/deskclock/data/WidgetDAO;->updateWidgetCount(Landroid/content/SharedPreferences;Ljava/lang/Class;I)I

    move-result p0

    :goto_0
    const/4 p1, 0x0

    if-lez p0, :cond_0

    const p2, 0x7f110174

    .line 44
    invoke-static {p3, p2, p1}, Lcom/android/deskclock/events/Events;->sendEvent(III)V

    add-int/lit8 p0, p0, -0x1

    goto :goto_0

    :cond_0
    :goto_1
    if-gez p0, :cond_1

    const p2, 0x7f110175

    .line 47
    invoke-static {p3, p2, p1}, Lcom/android/deskclock/events/Events;->sendEvent(III)V

    add-int/lit8 p0, p0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method
