.class public final enum Lcom/android/deskclock/data/DataModel$SilentSetting;
.super Ljava/lang/Enum;
.source "DataModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/deskclock/data/DataModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SilentSetting"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/deskclock/data/DataModel$SilentSetting$ChangeAppNotificationSettingsListener;,
        Lcom/android/deskclock/data/DataModel$SilentSetting$ChangeSoundActionPredicate;,
        Lcom/android/deskclock/data/DataModel$SilentSetting$ChangeSoundSettingsListener;,
        Lcom/android/deskclock/data/DataModel$SilentSetting$UnmuteAlarmVolumeListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/deskclock/data/DataModel$SilentSetting;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/deskclock/data/DataModel$SilentSetting;

.field public static final enum BLOCKED_NOTIFICATIONS:Lcom/android/deskclock/data/DataModel$SilentSetting;

.field public static final enum DO_NOT_DISTURB:Lcom/android/deskclock/data/DataModel$SilentSetting;

.field public static final enum MUTED_VOLUME:Lcom/android/deskclock/data/DataModel$SilentSetting;

.field public static final enum SILENT_RINGTONE:Lcom/android/deskclock/data/DataModel$SilentSetting;


# instance fields
.field private final mActionEnabled:Lcom/android/deskclock/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/deskclock/Predicate<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final mActionListener:Landroid/view/View$OnClickListener;

.field private final mActionResId:I

.field private final mLabelResId:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 65
    new-instance v7, Lcom/android/deskclock/data/DataModel$SilentSetting;

    sget-object v5, Lcom/android/deskclock/Predicate;->FALSE:Lcom/android/deskclock/Predicate;

    const-string v1, "DO_NOT_DISTURB"

    const/4 v2, 0x0

    const v3, 0x7f1101a1

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/android/deskclock/data/DataModel$SilentSetting;-><init>(Ljava/lang/String;IIILcom/android/deskclock/Predicate;Landroid/view/View$OnClickListener;)V

    sput-object v7, Lcom/android/deskclock/data/DataModel$SilentSetting;->DO_NOT_DISTURB:Lcom/android/deskclock/data/DataModel$SilentSetting;

    .line 67
    new-instance v0, Lcom/android/deskclock/data/DataModel$SilentSetting;

    sget-object v13, Lcom/android/deskclock/Predicate;->TRUE:Lcom/android/deskclock/Predicate;

    new-instance v14, Lcom/android/deskclock/data/DataModel$SilentSetting$UnmuteAlarmVolumeListener;

    const/4 v1, 0x0

    invoke-direct {v14, v1}, Lcom/android/deskclock/data/DataModel$SilentSetting$UnmuteAlarmVolumeListener;-><init>(Lcom/android/deskclock/data/DataModel$1;)V

    const-string v9, "MUTED_VOLUME"

    const/4 v10, 0x1

    const v11, 0x7f11019f

    const v12, 0x7f110269

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lcom/android/deskclock/data/DataModel$SilentSetting;-><init>(Ljava/lang/String;IIILcom/android/deskclock/Predicate;Landroid/view/View$OnClickListener;)V

    sput-object v0, Lcom/android/deskclock/data/DataModel$SilentSetting;->MUTED_VOLUME:Lcom/android/deskclock/data/DataModel$SilentSetting;

    .line 72
    new-instance v0, Lcom/android/deskclock/data/DataModel$SilentSetting;

    new-instance v7, Lcom/android/deskclock/data/DataModel$SilentSetting$ChangeSoundActionPredicate;

    invoke-direct {v7, v1}, Lcom/android/deskclock/data/DataModel$SilentSetting$ChangeSoundActionPredicate;-><init>(Lcom/android/deskclock/data/DataModel$1;)V

    new-instance v8, Lcom/android/deskclock/data/DataModel$SilentSetting$ChangeSoundSettingsListener;

    invoke-direct {v8, v1}, Lcom/android/deskclock/data/DataModel$SilentSetting$ChangeSoundSettingsListener;-><init>(Lcom/android/deskclock/data/DataModel$1;)V

    const-string v3, "SILENT_RINGTONE"

    const/4 v4, 0x2

    const v5, 0x7f11022f

    const v6, 0x7f1101b5

    move-object v2, v0

    invoke-direct/range {v2 .. v8}, Lcom/android/deskclock/data/DataModel$SilentSetting;-><init>(Ljava/lang/String;IIILcom/android/deskclock/Predicate;Landroid/view/View$OnClickListener;)V

    sput-object v0, Lcom/android/deskclock/data/DataModel$SilentSetting;->SILENT_RINGTONE:Lcom/android/deskclock/data/DataModel$SilentSetting;

    .line 76
    new-instance v0, Lcom/android/deskclock/data/DataModel$SilentSetting;

    sget-object v14, Lcom/android/deskclock/Predicate;->TRUE:Lcom/android/deskclock/Predicate;

    new-instance v15, Lcom/android/deskclock/data/DataModel$SilentSetting$ChangeAppNotificationSettingsListener;

    invoke-direct {v15, v1}, Lcom/android/deskclock/data/DataModel$SilentSetting$ChangeAppNotificationSettingsListener;-><init>(Lcom/android/deskclock/data/DataModel$1;)V

    const-string v10, "BLOCKED_NOTIFICATIONS"

    const/4 v11, 0x3

    const v12, 0x7f1101a5

    const v13, 0x7f1101b5

    move-object v9, v0

    invoke-direct/range {v9 .. v15}, Lcom/android/deskclock/data/DataModel$SilentSetting;-><init>(Ljava/lang/String;IIILcom/android/deskclock/Predicate;Landroid/view/View$OnClickListener;)V

    sput-object v0, Lcom/android/deskclock/data/DataModel$SilentSetting;->BLOCKED_NOTIFICATIONS:Lcom/android/deskclock/data/DataModel$SilentSetting;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/deskclock/data/DataModel$SilentSetting;

    .line 64
    sget-object v1, Lcom/android/deskclock/data/DataModel$SilentSetting;->DO_NOT_DISTURB:Lcom/android/deskclock/data/DataModel$SilentSetting;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/deskclock/data/DataModel$SilentSetting;->MUTED_VOLUME:Lcom/android/deskclock/data/DataModel$SilentSetting;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/deskclock/data/DataModel$SilentSetting;->SILENT_RINGTONE:Lcom/android/deskclock/data/DataModel$SilentSetting;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/deskclock/data/DataModel$SilentSetting;->BLOCKED_NOTIFICATIONS:Lcom/android/deskclock/data/DataModel$SilentSetting;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/deskclock/data/DataModel$SilentSetting;->$VALUES:[Lcom/android/deskclock/data/DataModel$SilentSetting;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIILcom/android/deskclock/Predicate;Landroid/view/View$OnClickListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lcom/android/deskclock/Predicate<",
            "Landroid/content/Context;",
            ">;",
            "Landroid/view/View$OnClickListener;",
            ")V"
        }
    .end annotation

    .line 88
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 89
    iput p3, p0, Lcom/android/deskclock/data/DataModel$SilentSetting;->mLabelResId:I

    .line 90
    iput p4, p0, Lcom/android/deskclock/data/DataModel$SilentSetting;->mActionResId:I

    .line 91
    iput-object p5, p0, Lcom/android/deskclock/data/DataModel$SilentSetting;->mActionEnabled:Lcom/android/deskclock/Predicate;

    .line 92
    iput-object p6, p0, Lcom/android/deskclock/data/DataModel$SilentSetting;->mActionListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/deskclock/data/DataModel$SilentSetting;
    .locals 1

    .line 64
    const-class v0, Lcom/android/deskclock/data/DataModel$SilentSetting;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/deskclock/data/DataModel$SilentSetting;

    return-object p0
.end method

.method public static values()[Lcom/android/deskclock/data/DataModel$SilentSetting;
    .locals 1

    .line 64
    sget-object v0, Lcom/android/deskclock/data/DataModel$SilentSetting;->$VALUES:[Lcom/android/deskclock/data/DataModel$SilentSetting;

    invoke-virtual {v0}, [Lcom/android/deskclock/data/DataModel$SilentSetting;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/deskclock/data/DataModel$SilentSetting;

    return-object v0
.end method


# virtual methods
.method public getActionListener()Landroid/view/View$OnClickListener;
    .locals 0

    .line 97
    iget-object p0, p0, Lcom/android/deskclock/data/DataModel$SilentSetting;->mActionListener:Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method public getActionResId()I
    .locals 0

    .line 96
    iget p0, p0, Lcom/android/deskclock/data/DataModel$SilentSetting;->mActionResId:I

    return p0
.end method

.method public getLabelResId()I
    .locals 0

    .line 95
    iget p0, p0, Lcom/android/deskclock/data/DataModel$SilentSetting;->mLabelResId:I

    return p0
.end method

.method public isActionEnabled(Landroid/content/Context;)Z
    .locals 1

    .line 99
    iget v0, p0, Lcom/android/deskclock/data/DataModel$SilentSetting;->mLabelResId:I

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/deskclock/data/DataModel$SilentSetting;->mActionEnabled:Lcom/android/deskclock/Predicate;

    invoke-interface {p0, p1}, Lcom/android/deskclock/Predicate;->apply(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
