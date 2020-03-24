.class final Lcom/android/deskclock/ringtone/HeaderHolder;
.super Lcom/android/deskclock/ItemAdapter$ItemHolder;
.source "HeaderHolder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/deskclock/ItemAdapter$ItemHolder<",
        "Landroid/net/Uri;",
        ">;"
    }
.end annotation


# instance fields
.field private final mTextResId:I


# direct methods
.method constructor <init>(I)V
    .locals 3

    const/4 v0, 0x0

    const-wide/16 v1, -0x1

    .line 31
    invoke-direct {p0, v0, v1, v2}, Lcom/android/deskclock/ItemAdapter$ItemHolder;-><init>(Ljava/lang/Object;J)V

    .line 32
    iput p1, p0, Lcom/android/deskclock/ringtone/HeaderHolder;->mTextResId:I

    return-void
.end method


# virtual methods
.method public getItemViewType()I
    .locals 0

    const p0, 0x7f0d0073

    return p0
.end method

.method getTextResId()I
    .locals 0

    .line 36
    iget p0, p0, Lcom/android/deskclock/ringtone/HeaderHolder;->mTextResId:I

    return p0
.end method
