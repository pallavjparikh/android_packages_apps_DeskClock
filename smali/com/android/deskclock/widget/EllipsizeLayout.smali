.class public Lcom/android/deskclock/widget/EllipsizeLayout;
.super Landroid/widget/LinearLayout;
.source "EllipsizeLayout.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 38
    invoke-direct {p0, p1, v0}, Lcom/android/deskclock/widget/EllipsizeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 17

    .line 63
    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getOrientation()I

    move-result v0

    if-nez v0, :cond_9

    .line 64
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    if-ne v0, v1, :cond_9

    const/4 v0, 0x0

    .line 70
    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    .line 71
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 73
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    move-object v6, v0

    move v0, v4

    move v5, v0

    move v11, v5

    :goto_0
    const/4 v12, 0x1

    if-ge v0, v1, :cond_5

    if-nez v5, :cond_5

    move-object/from16 v13, p0

    .line 76
    invoke-virtual {v13, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    if-eqz v14, :cond_4

    .line 77
    invoke-virtual {v14}, Landroid/view/View;->getVisibility()I

    move-result v7

    const/16 v8, 0x8

    if-eq v7, v8, :cond_4

    .line 79
    instance-of v7, v14, Landroid/widget/TextView;

    if-eqz v7, :cond_1

    .line 80
    move-object v7, v14

    check-cast v7, Landroid/widget/TextView;

    .line 81
    invoke-virtual {v7}, Landroid/widget/TextView;->getEllipsize()Landroid/text/TextUtils$TruncateAt;

    move-result-object v8

    if-eqz v8, :cond_1

    if-nez v6, :cond_0

    const v6, 0x7fffffff

    .line 85
    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setMaxWidth(I)V

    move v15, v5

    move-object/from16 v16, v7

    goto :goto_1

    :cond_0
    move-object/from16 v16, v6

    move v15, v12

    goto :goto_1

    :cond_1
    move v15, v5

    move-object/from16 v16, v6

    :goto_1
    const/4 v8, 0x0

    const/4 v10, 0x0

    move-object/from16 v5, p0

    move-object v6, v14

    move v7, v3

    move/from16 v9, p2

    .line 93
    invoke-virtual/range {v5 .. v10}, Landroid/widget/LinearLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 98
    invoke-virtual {v14}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v5, :cond_3

    .line 100
    iget v6, v5, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    if-lez v6, :cond_2

    goto :goto_2

    :cond_2
    move v12, v4

    :goto_2
    or-int v6, v15, v12

    .line 101
    invoke-virtual {v14}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    iget v8, v5, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    add-int/2addr v7, v8

    iget v5, v5, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int/2addr v7, v5

    add-int/2addr v11, v7

    move v5, v6

    goto :goto_3

    :cond_3
    move v5, v12

    :goto_3
    move-object/from16 v6, v16

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    move-object/from16 v13, p0

    if-eqz v6, :cond_7

    if-nez v11, :cond_6

    goto :goto_4

    :cond_6
    move v12, v4

    :cond_7
    :goto_4
    or-int v0, v5, v12

    if-nez v0, :cond_a

    if-le v11, v2, :cond_a

    .line 112
    invoke-virtual {v6}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v0

    sub-int/2addr v11, v2

    sub-int/2addr v0, v11

    if-gez v0, :cond_8

    move v0, v4

    .line 118
    :cond_8
    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setMaxWidth(I)V

    goto :goto_5

    :cond_9
    move-object/from16 v13, p0

    .line 122
    :cond_a
    :goto_5
    invoke-super/range {p0 .. p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    return-void
.end method
