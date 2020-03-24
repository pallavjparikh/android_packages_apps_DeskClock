.class public final Lcom/android/deskclock/Utils$ClickAccessibilityDelegate;
.super Landroidx/core/view/AccessibilityDelegateCompat;
.source "Utils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/deskclock/Utils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ClickAccessibilityDelegate"
.end annotation


# instance fields
.field private final mIsAlwaysAccessibilityVisible:Z

.field private final mLabel:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 610
    invoke-direct {p0, p1, v0}, Lcom/android/deskclock/Utils$ClickAccessibilityDelegate;-><init>(Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0

    .line 613
    invoke-direct {p0}, Landroidx/core/view/AccessibilityDelegateCompat;-><init>()V

    .line 614
    iput-object p1, p0, Lcom/android/deskclock/Utils$ClickAccessibilityDelegate;->mLabel:Ljava/lang/String;

    .line 615
    iput-boolean p2, p0, Lcom/android/deskclock/Utils$ClickAccessibilityDelegate;->mIsAlwaysAccessibilityVisible:Z

    return-void
.end method


# virtual methods
.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 1

    .line 620
    invoke-super {p0, p1, p2}, Landroidx/core/view/AccessibilityDelegateCompat;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 621
    iget-boolean p1, p0, Lcom/android/deskclock/Utils$ClickAccessibilityDelegate;->mIsAlwaysAccessibilityVisible:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 622
    invoke-virtual {p2, p1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setVisibleToUser(Z)V

    .line 624
    :cond_0
    new-instance p1, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    sget-object v0, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->ACTION_CLICK:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    .line 625
    invoke-virtual {v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->getId()I

    move-result v0

    iget-object p0, p0, Lcom/android/deskclock/Utils$ClickAccessibilityDelegate;->mLabel:Ljava/lang/String;

    invoke-direct {p1, v0, p0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;-><init>(ILjava/lang/CharSequence;)V

    .line 624
    invoke-virtual {p2, p1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    return-void
.end method
