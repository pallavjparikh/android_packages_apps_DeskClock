.class public interface abstract Lcom/android/deskclock/provider/ClockContract$InstancesColumns;
.super Ljava/lang/Object;
.source "ClockContract.java"

# interfaces
.implements Lcom/android/deskclock/provider/ClockContract$AlarmSettingColumns;
.implements Landroid/provider/BaseColumns;


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "content://com.android.deskclock/instances"

    .line 145
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/deskclock/provider/ClockContract$InstancesColumns;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method
