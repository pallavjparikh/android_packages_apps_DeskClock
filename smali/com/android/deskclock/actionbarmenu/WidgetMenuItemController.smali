.class public final Lcom/android/deskclock/actionbarmenu/WidgetMenuItemController;
.super Ljava/lang/Object;
.source "WidgetMenuItemController.java"

# interfaces
.implements Lcom/android/deskclock/actionbarmenu/MenuItemController;


# static fields
.field private static final sWidgetSettingComponentName:Landroid/content/ComponentName;

.field private static final sWidgetSettingComponentNameFallback:Landroid/content/ComponentName;


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 42
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "org.lineageos.lockclock.preference.Preferences"

    const-string v2, "org.lineageos.lockclock"

    invoke-direct {v0, v2, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/deskclock/actionbarmenu/WidgetMenuItemController;->sWidgetSettingComponentName:Landroid/content/ComponentName;

    .line 44
    new-instance v0, Landroid/content/ComponentName;

    const-string v2, "com.cyanogenmod.lockclock"

    invoke-direct {v0, v2, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/deskclock/actionbarmenu/WidgetMenuItemController;->sWidgetSettingComponentNameFallback:Landroid/content/ComponentName;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/android/deskclock/actionbarmenu/WidgetMenuItemController;->mContext:Landroid/content/Context;

    return-void
.end method

.method private isPackageInstalled(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 88
    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/android/deskclock/actionbarmenu/WidgetMenuItemController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 89
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-boolean p0, p0, Landroid/content/pm/ApplicationInfo;->enabled:Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p0, :cond_1

    return v0

    :cond_1
    const/4 p0, 0x1

    return p0

    :catch_0
    return v0
.end method


# virtual methods
.method public getId()I
    .locals 0

    const p0, 0x7f0a00ce

    return p0
.end method

.method public onCreateOptionsItem(Landroid/view/Menu;)V
    .locals 2

    const/4 p0, 0x0

    const v0, 0x7f0a00ce

    const v1, 0x7f1101f7

    .line 61
    invoke-interface {p1, p0, v0, p0, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object p1

    .line 62
    invoke-interface {p1, p0}, Landroid/view/MenuItem;->setShowAsAction(I)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    .line 72
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 73
    sget-object v0, Lcom/android/deskclock/actionbarmenu/WidgetMenuItemController;->sWidgetSettingComponentName:Landroid/content/ComponentName;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 75
    :try_start_0
    iget-object v0, p0, Lcom/android/deskclock/actionbarmenu/WidgetMenuItemController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 77
    :catch_0
    sget-object v0, Lcom/android/deskclock/actionbarmenu/WidgetMenuItemController;->sWidgetSettingComponentNameFallback:Landroid/content/ComponentName;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 78
    iget-object p0, p0, Lcom/android/deskclock/actionbarmenu/WidgetMenuItemController;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public onPrepareOptionsItem(Landroid/view/MenuItem;)V
    .locals 1

    const-string v0, "org.lineageos.lockclock"

    .line 67
    invoke-direct {p0, v0}, Lcom/android/deskclock/actionbarmenu/WidgetMenuItemController;->isPackageInstalled(Ljava/lang/String;)Z

    move-result p0

    invoke-interface {p1, p0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    return-void
.end method
