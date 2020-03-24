.class public final Lcom/android/deskclock/data/CustomRingtone;
.super Ljava/lang/Object;
.source "CustomRingtone.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/android/deskclock/data/CustomRingtone;",
        ">;"
    }
.end annotation


# instance fields
.field private final mHasPermissions:Z

.field private final mId:J

.field private final mTitle:Ljava/lang/String;

.field private final mUri:Landroid/net/Uri;


# direct methods
.method constructor <init>(JLandroid/net/Uri;Ljava/lang/String;Z)V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-wide p1, p0, Lcom/android/deskclock/data/CustomRingtone;->mId:J

    .line 41
    iput-object p3, p0, Lcom/android/deskclock/data/CustomRingtone;->mUri:Landroid/net/Uri;

    .line 42
    iput-object p4, p0, Lcom/android/deskclock/data/CustomRingtone;->mTitle:Ljava/lang/String;

    .line 43
    iput-boolean p5, p0, Lcom/android/deskclock/data/CustomRingtone;->mHasPermissions:Z

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/android/deskclock/data/CustomRingtone;)I
    .locals 1

    .line 61
    sget-object v0, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-virtual {p0}, Lcom/android/deskclock/data/CustomRingtone;->getTitle()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Lcom/android/deskclock/data/CustomRingtone;->getTitle()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p0, p1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 25
    check-cast p1, Lcom/android/deskclock/data/CustomRingtone;

    invoke-virtual {p0, p1}, Lcom/android/deskclock/data/CustomRingtone;->compareTo(Lcom/android/deskclock/data/CustomRingtone;)I

    move-result p0

    return p0
.end method

.method public getId()J
    .locals 2

    .line 46
    iget-wide v0, p0, Lcom/android/deskclock/data/CustomRingtone;->mId:J

    return-wide v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/android/deskclock/data/CustomRingtone;->mTitle:Ljava/lang/String;

    return-object p0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/android/deskclock/data/CustomRingtone;->mUri:Landroid/net/Uri;

    return-object p0
.end method

.method public hasPermissions()Z
    .locals 0

    .line 49
    iget-boolean p0, p0, Lcom/android/deskclock/data/CustomRingtone;->mHasPermissions:Z

    return p0
.end method

.method setHasPermissions(Z)Lcom/android/deskclock/data/CustomRingtone;
    .locals 7

    .line 52
    iget-boolean v0, p0, Lcom/android/deskclock/data/CustomRingtone;->mHasPermissions:Z

    if-ne v0, p1, :cond_0

    return-object p0

    .line 56
    :cond_0
    new-instance v0, Lcom/android/deskclock/data/CustomRingtone;

    iget-wide v2, p0, Lcom/android/deskclock/data/CustomRingtone;->mId:J

    iget-object v4, p0, Lcom/android/deskclock/data/CustomRingtone;->mUri:Landroid/net/Uri;

    iget-object v5, p0, Lcom/android/deskclock/data/CustomRingtone;->mTitle:Ljava/lang/String;

    move-object v1, v0

    move v6, p1

    invoke-direct/range {v1 .. v6}, Lcom/android/deskclock/data/CustomRingtone;-><init>(JLandroid/net/Uri;Ljava/lang/String;Z)V

    return-object v0
.end method
