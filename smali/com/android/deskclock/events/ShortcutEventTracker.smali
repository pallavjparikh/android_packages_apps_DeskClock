.class public final Lcom/android/deskclock/events/ShortcutEventTracker;
.super Ljava/lang/Object;
.source "ShortcutEventTracker.java"

# interfaces
.implements Lcom/android/deskclock/events/EventTracker;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x19
.end annotation


# instance fields
.field private final mShortcutManager:Landroid/content/pm/ShortcutManager;

.field private final shortcuts:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Landroid/util/ArraySet;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>(I)V

    iput-object v0, p0, Lcom/android/deskclock/events/ShortcutEventTracker;->shortcuts:Ljava/util/Set;

    .line 38
    const-class v0, Landroid/content/pm/ShortcutManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/ShortcutManager;

    iput-object p1, p0, Lcom/android/deskclock/events/ShortcutEventTracker;->mShortcutManager:Landroid/content/pm/ShortcutManager;

    .line 39
    invoke-static {}, Lcom/android/deskclock/uidata/UiDataModel;->getUiDataModel()Lcom/android/deskclock/uidata/UiDataModel;

    move-result-object p1

    .line 40
    iget-object v0, p0, Lcom/android/deskclock/events/ShortcutEventTracker;->shortcuts:Ljava/util/Set;

    const v1, 0x7f110174

    const v2, 0x7f1101ae

    invoke-virtual {p1, v2, v1}, Lcom/android/deskclock/uidata/UiDataModel;->getShortcutId(II)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 41
    iget-object v0, p0, Lcom/android/deskclock/events/ShortcutEventTracker;->shortcuts:Ljava/util/Set;

    const v2, 0x7f1101b4

    invoke-virtual {p1, v2, v1}, Lcom/android/deskclock/uidata/UiDataModel;->getShortcutId(II)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 42
    iget-object v0, p0, Lcom/android/deskclock/events/ShortcutEventTracker;->shortcuts:Ljava/util/Set;

    const v1, 0x7f1101b3

    const v2, 0x7f11017e

    invoke-virtual {p1, v1, v2}, Lcom/android/deskclock/uidata/UiDataModel;->getShortcutId(II)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 43
    iget-object v0, p0, Lcom/android/deskclock/events/ShortcutEventTracker;->shortcuts:Ljava/util/Set;

    const v2, 0x7f110185

    invoke-virtual {p1, v1, v2}, Lcom/android/deskclock/uidata/UiDataModel;->getShortcutId(II)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 44
    iget-object p0, p0, Lcom/android/deskclock/events/ShortcutEventTracker;->shortcuts:Ljava/util/Set;

    const v0, 0x7f1101b2

    const v1, 0x7f110183

    invoke-virtual {p1, v0, v1}, Lcom/android/deskclock/uidata/UiDataModel;->getShortcutId(II)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public sendEvent(III)V
    .locals 0

    .line 49
    invoke-static {}, Lcom/android/deskclock/uidata/UiDataModel;->getUiDataModel()Lcom/android/deskclock/uidata/UiDataModel;

    move-result-object p3

    invoke-virtual {p3, p1, p2}, Lcom/android/deskclock/uidata/UiDataModel;->getShortcutId(II)Ljava/lang/String;

    move-result-object p1

    .line 50
    iget-object p2, p0, Lcom/android/deskclock/events/ShortcutEventTracker;->shortcuts:Ljava/util/Set;

    invoke-interface {p2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 51
    iget-object p0, p0, Lcom/android/deskclock/events/ShortcutEventTracker;->mShortcutManager:Landroid/content/pm/ShortcutManager;

    invoke-virtual {p0, p1}, Landroid/content/pm/ShortcutManager;->reportShortcutUsed(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
