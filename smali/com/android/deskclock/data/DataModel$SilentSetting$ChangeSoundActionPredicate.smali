.class Lcom/android/deskclock/data/DataModel$SilentSetting$ChangeSoundActionPredicate;
.super Ljava/lang/Object;
.source "DataModel.java"

# interfaces
.implements Lcom/android/deskclock/Predicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/deskclock/data/DataModel$SilentSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ChangeSoundActionPredicate"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/deskclock/Predicate<",
        "Landroid/content/Context;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/deskclock/data/DataModel$1;)V
    .locals 0

    .line 123
    invoke-direct {p0}, Lcom/android/deskclock/data/DataModel$SilentSetting$ChangeSoundActionPredicate;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Landroid/content/Context;)Z
    .locals 1

    .line 126
    new-instance p0, Landroid/content/Intent;

    const-string v0, "android.settings.SOUND_SETTINGS"

    invoke-direct {p0, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 127
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Z
    .locals 0

    .line 123
    check-cast p1, Landroid/content/Context;

    invoke-virtual {p0, p1}, Lcom/android/deskclock/data/DataModel$SilentSetting$ChangeSoundActionPredicate;->apply(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method
