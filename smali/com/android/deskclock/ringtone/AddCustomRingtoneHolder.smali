.class final Lcom/android/deskclock/ringtone/AddCustomRingtoneHolder;
.super Lcom/android/deskclock/ItemAdapter$ItemHolder;
.source "AddCustomRingtoneHolder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/deskclock/ItemAdapter$ItemHolder<",
        "Landroid/net/Uri;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 3

    const/4 v0, 0x0

    const-wide/16 v1, -0x1

    .line 28
    invoke-direct {p0, v0, v1, v2}, Lcom/android/deskclock/ItemAdapter$ItemHolder;-><init>(Ljava/lang/Object;J)V

    return-void
.end method


# virtual methods
.method public getItemViewType()I
    .locals 0

    const/high16 p0, -0x80000000

    return p0
.end method
