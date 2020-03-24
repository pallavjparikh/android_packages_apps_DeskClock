.class public Lcom/android/deskclock/settings/SimpleMenuPreference;
.super Landroidx/preference/DropDownPreference;
.source "SimpleMenuPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/deskclock/settings/SimpleMenuPreference$SimpleMenuAdapter;
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/android/deskclock/settings/SimpleMenuPreference$SimpleMenuAdapter;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 40
    invoke-direct {p0, p1, v0}, Lcom/android/deskclock/settings/SimpleMenuPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x7f0400f7

    .line 44
    invoke-direct {p0, p1, p2, v0}, Lcom/android/deskclock/settings/SimpleMenuPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 48
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/deskclock/settings/SimpleMenuPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 53
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/preference/DropDownPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method private static restoreOriginalOrder([Ljava/lang/CharSequence;I)V
    .locals 3

    const/4 v0, 0x0

    .line 64
    aget-object v1, p0, v0

    const/4 v2, 0x1

    .line 65
    invoke-static {p0, v2, p0, v0, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 66
    aput-object v1, p0, p1

    return-void
.end method

.method private static setSelectedPosition([Ljava/lang/CharSequence;II)V
    .locals 0

    .line 77
    aget-object p2, p0, p2

    .line 78
    invoke-static {p0, p1}, Lcom/android/deskclock/settings/SimpleMenuPreference;->restoreOriginalOrder([Ljava/lang/CharSequence;I)V

    .line 79
    invoke-static {p0, p2}, Lcom/android/deskclock/Utils;->indexOf([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    .line 80
    invoke-static {p0, p1}, Lcom/android/deskclock/settings/SimpleMenuPreference;->swapSelectedToFront([Ljava/lang/CharSequence;I)V

    return-void
.end method

.method private static swapSelectedToFront([Ljava/lang/CharSequence;I)V
    .locals 3

    .line 70
    aget-object v0, p0, p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 71
    invoke-static {p0, v1, p0, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 72
    aput-object v0, p0, v1

    return-void
.end method


# virtual methods
.method protected createAdapter()Landroid/widget/ArrayAdapter;
    .locals 3

    .line 58
    new-instance v0, Lcom/android/deskclock/settings/SimpleMenuPreference$SimpleMenuAdapter;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0d007c

    invoke-direct {v0, v1, v2}, Lcom/android/deskclock/settings/SimpleMenuPreference$SimpleMenuAdapter;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/deskclock/settings/SimpleMenuPreference;->mAdapter:Lcom/android/deskclock/settings/SimpleMenuPreference$SimpleMenuAdapter;

    .line 59
    iget-object p0, p0, Lcom/android/deskclock/settings/SimpleMenuPreference;->mAdapter:Lcom/android/deskclock/settings/SimpleMenuPreference$SimpleMenuAdapter;

    return-object p0
.end method

.method public setSummary(Ljava/lang/CharSequence;)V
    .locals 4

    .line 85
    invoke-virtual {p0}, Landroidx/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    .line 86
    invoke-static {v0, p1}, Lcom/android/deskclock/Utils;->indexOf([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 90
    iget-object v2, p0, Lcom/android/deskclock/settings/SimpleMenuPreference;->mAdapter:Lcom/android/deskclock/settings/SimpleMenuPreference$SimpleMenuAdapter;

    invoke-virtual {v2}, Lcom/android/deskclock/settings/SimpleMenuPreference$SimpleMenuAdapter;->getLastSelectedOriginalPosition()I

    move-result v2

    .line 91
    iget-object v3, p0, Lcom/android/deskclock/settings/SimpleMenuPreference;->mAdapter:Lcom/android/deskclock/settings/SimpleMenuPreference$SimpleMenuAdapter;

    invoke-virtual {v3, v1}, Lcom/android/deskclock/settings/SimpleMenuPreference$SimpleMenuAdapter;->setSelectedPosition(I)V

    .line 92
    invoke-static {v0, v2, v1}, Lcom/android/deskclock/settings/SimpleMenuPreference;->setSelectedPosition([Ljava/lang/CharSequence;II)V

    .line 93
    invoke-virtual {p0}, Landroidx/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0, v2, v1}, Lcom/android/deskclock/settings/SimpleMenuPreference;->setSelectedPosition([Ljava/lang/CharSequence;II)V

    .line 94
    invoke-super {p0, p1}, Landroidx/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    return-void

    .line 88
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Illegal Summary"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
