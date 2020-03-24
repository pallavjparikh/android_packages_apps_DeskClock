.class abstract Lcom/android/deskclock/ringtone/RingtoneHolder;
.super Lcom/android/deskclock/ItemAdapter$ItemHolder;
.source "RingtoneHolder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/deskclock/ItemAdapter$ItemHolder<",
        "Landroid/net/Uri;",
        ">;"
    }
.end annotation


# instance fields
.field private final mHasPermissions:Z

.field private final mName:Ljava/lang/String;

.field private mPlaying:Z

.field private mSelected:Z


# direct methods
.method constructor <init>(Landroid/net/Uri;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    .line 35
    invoke-direct {p0, p1, p2, v0}, Lcom/android/deskclock/ringtone/RingtoneHolder;-><init>(Landroid/net/Uri;Ljava/lang/String;Z)V

    return-void
.end method

.method constructor <init>(Landroid/net/Uri;Ljava/lang/String;Z)V
    .locals 2

    const-wide/16 v0, -0x1

    .line 39
    invoke-direct {p0, p1, v0, v1}, Lcom/android/deskclock/ItemAdapter$ItemHolder;-><init>(Ljava/lang/Object;J)V

    .line 40
    iput-object p2, p0, Lcom/android/deskclock/ringtone/RingtoneHolder;->mName:Ljava/lang/String;

    .line 41
    iput-boolean p3, p0, Lcom/android/deskclock/ringtone/RingtoneHolder;->mHasPermissions:Z

    return-void
.end method


# virtual methods
.method getName()Ljava/lang/String;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/android/deskclock/ringtone/RingtoneHolder;->mName:Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/android/deskclock/data/DataModel;->getDataModel()Lcom/android/deskclock/data/DataModel;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/deskclock/ringtone/RingtoneHolder;->getUri()Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/deskclock/data/DataModel;->getRingtoneTitle(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method getUri()Landroid/net/Uri;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/android/deskclock/ItemAdapter$ItemHolder;->item:Ljava/lang/Object;

    check-cast p0, Landroid/net/Uri;

    return-object p0
.end method

.method hasPermissions()Z
    .locals 0

    .line 45
    iget-boolean p0, p0, Lcom/android/deskclock/ringtone/RingtoneHolder;->mHasPermissions:Z

    return p0
.end method

.method isPlaying()Z
    .locals 0

    .line 53
    iget-boolean p0, p0, Lcom/android/deskclock/ringtone/RingtoneHolder;->mPlaying:Z

    return p0
.end method

.method isSelected()Z
    .locals 0

    .line 50
    iget-boolean p0, p0, Lcom/android/deskclock/ringtone/RingtoneHolder;->mSelected:Z

    return p0
.end method

.method isSilent()Z
    .locals 1

    .line 48
    sget-object v0, Lcom/android/deskclock/Utils;->RINGTONE_SILENT:Landroid/net/Uri;

    invoke-virtual {p0}, Lcom/android/deskclock/ringtone/RingtoneHolder;->getUri()Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method setPlaying(Z)V
    .locals 0

    .line 54
    iput-boolean p1, p0, Lcom/android/deskclock/ringtone/RingtoneHolder;->mPlaying:Z

    return-void
.end method

.method setSelected(Z)V
    .locals 0

    .line 51
    iput-boolean p1, p0, Lcom/android/deskclock/ringtone/RingtoneHolder;->mSelected:Z

    return-void
.end method
