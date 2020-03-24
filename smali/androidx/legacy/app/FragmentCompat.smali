.class public Landroidx/legacy/app/FragmentCompat;
.super Ljava/lang/Object;
.source "FragmentCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/legacy/app/FragmentCompat$FragmentCompatApi24Impl;,
        Landroidx/legacy/app/FragmentCompat$FragmentCompatApi23Impl;,
        Landroidx/legacy/app/FragmentCompat$FragmentCompatApi15Impl;,
        Landroidx/legacy/app/FragmentCompat$FragmentCompatBaseImpl;,
        Landroidx/legacy/app/FragmentCompat$FragmentCompatImpl;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field static final IMPL:Landroidx/legacy/app/FragmentCompat$FragmentCompatImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 162
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    .line 163
    new-instance v0, Landroidx/legacy/app/FragmentCompat$FragmentCompatApi24Impl;

    invoke-direct {v0}, Landroidx/legacy/app/FragmentCompat$FragmentCompatApi24Impl;-><init>()V

    sput-object v0, Landroidx/legacy/app/FragmentCompat;->IMPL:Landroidx/legacy/app/FragmentCompat$FragmentCompatImpl;

    goto :goto_0

    :cond_0
    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    .line 165
    new-instance v0, Landroidx/legacy/app/FragmentCompat$FragmentCompatApi23Impl;

    invoke-direct {v0}, Landroidx/legacy/app/FragmentCompat$FragmentCompatApi23Impl;-><init>()V

    sput-object v0, Landroidx/legacy/app/FragmentCompat;->IMPL:Landroidx/legacy/app/FragmentCompat$FragmentCompatImpl;

    goto :goto_0

    :cond_1
    const/16 v1, 0xf

    if-lt v0, v1, :cond_2

    .line 167
    new-instance v0, Landroidx/legacy/app/FragmentCompat$FragmentCompatApi15Impl;

    invoke-direct {v0}, Landroidx/legacy/app/FragmentCompat$FragmentCompatApi15Impl;-><init>()V

    sput-object v0, Landroidx/legacy/app/FragmentCompat;->IMPL:Landroidx/legacy/app/FragmentCompat$FragmentCompatImpl;

    goto :goto_0

    .line 169
    :cond_2
    new-instance v0, Landroidx/legacy/app/FragmentCompat$FragmentCompatBaseImpl;

    invoke-direct {v0}, Landroidx/legacy/app/FragmentCompat$FragmentCompatBaseImpl;-><init>()V

    sput-object v0, Landroidx/legacy/app/FragmentCompat;->IMPL:Landroidx/legacy/app/FragmentCompat$FragmentCompatImpl;

    :goto_0
    return-void
.end method

.method public static setMenuVisibility(Landroid/app/Fragment;Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 241
    invoke-virtual {p0, p1}, Landroid/app/Fragment;->setMenuVisibility(Z)V

    return-void
.end method

.method public static setUserVisibleHint(Landroid/app/Fragment;Z)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 253
    sget-object v0, Landroidx/legacy/app/FragmentCompat;->IMPL:Landroidx/legacy/app/FragmentCompat$FragmentCompatImpl;

    invoke-interface {v0, p0, p1}, Landroidx/legacy/app/FragmentCompat$FragmentCompatImpl;->setUserVisibleHint(Landroid/app/Fragment;Z)V

    return-void
.end method
