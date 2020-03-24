.class Lcom/android/deskclock/settings/AlarmVolumePreference$2;
.super Ljava/lang/Object;
.source "AlarmVolumePreference.java"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/deskclock/settings/AlarmVolumePreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/deskclock/settings/AlarmVolumePreference;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$volumeObserver:Landroid/database/ContentObserver;


# direct methods
.method constructor <init>(Lcom/android/deskclock/settings/AlarmVolumePreference;Landroid/content/Context;Landroid/database/ContentObserver;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/android/deskclock/settings/AlarmVolumePreference$2;->this$0:Lcom/android/deskclock/settings/AlarmVolumePreference;

    iput-object p2, p0, Lcom/android/deskclock/settings/AlarmVolumePreference$2;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/deskclock/settings/AlarmVolumePreference$2;->val$volumeObserver:Landroid/database/ContentObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 2

    .line 81
    iget-object p1, p0, Lcom/android/deskclock/settings/AlarmVolumePreference$2;->val$context:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    sget-object v0, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    iget-object p0, p0, Lcom/android/deskclock/settings/AlarmVolumePreference$2;->val$volumeObserver:Landroid/database/ContentObserver;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 0

    .line 87
    iget-object p1, p0, Lcom/android/deskclock/settings/AlarmVolumePreference$2;->val$context:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object p0, p0, Lcom/android/deskclock/settings/AlarmVolumePreference$2;->val$volumeObserver:Landroid/database/ContentObserver;

    invoke-virtual {p1, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method
