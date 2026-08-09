.class public abstract Landroidx/leanback/widget/BaseGridView;
.super Landroidx/recyclerview/widget/RecyclerView;
.source "BaseGridView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/leanback/widget/BaseGridView$OnLayoutCompletedListener;
    }
.end annotation


# instance fields
.field private mAnimateChildLayout:Z

.field private mHasOverlappingRendering:Z

.field mInitialPrefetchItemCount:I

.field mLayoutManager:Landroidx/leanback/widget/GridLayoutManager;

.field private mPrivateFlag:I


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 271
    invoke-direct {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x1

    .line 252
    iput-boolean p1, p0, Landroidx/leanback/widget/BaseGridView;->mAnimateChildLayout:Z

    .line 254
    iput-boolean p1, p0, Landroidx/leanback/widget/BaseGridView;->mHasOverlappingRendering:Z

    const/4 p2, 0x4

    .line 266
    iput p2, p0, Landroidx/leanback/widget/BaseGridView;->mInitialPrefetchItemCount:I

    .line 272
    new-instance p2, Landroidx/leanback/widget/GridLayoutManager;

    invoke-direct {p2, p0}, Landroidx/leanback/widget/GridLayoutManager;-><init>(Landroidx/leanback/widget/BaseGridView;)V

    iput-object p2, p0, Landroidx/leanback/widget/BaseGridView;->mLayoutManager:Landroidx/leanback/widget/GridLayoutManager;

    .line 273
    invoke-virtual {p0, p2}, Landroidx/leanback/widget/BaseGridView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    const/4 p2, 0x0

    .line 275
    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/RecyclerView;->setPreserveFocusAfterLayout(Z)V

    const/high16 p3, 0x40000

    .line 276
    invoke-virtual {p0, p3}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    .line 277
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 278
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setChildrenDrawingOrderEnabled(Z)V

    .line 279
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setWillNotDraw(Z)V

    const/4 p1, 0x2

    .line 280
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setOverScrollMode(I)V

    .line 284
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/SimpleItemAnimator;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/SimpleItemAnimator;->setSupportsChangeAnimations(Z)V

    .line 285
    new-instance p1, Landroidx/leanback/widget/BaseGridView$1;

    invoke-direct {p1, p0}, Landroidx/leanback/widget/BaseGridView$1;-><init>(Landroidx/leanback/widget/BaseGridView;)V

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->addRecyclerListener(Landroidx/recyclerview/widget/RecyclerView$RecyclerListener;)V

    return-void
.end method


# virtual methods
.method protected dispatchGenericFocusedEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1175
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchGenericFocusedEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 0

    .line 1152
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1165
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public focusSearch(I)Landroid/view/View;
    .locals 2

    .line 986
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 989
    iget-object v0, p0, Landroidx/leanback/widget/BaseGridView;->mLayoutManager:Landroidx/leanback/widget/GridLayoutManager;

    invoke-virtual {v0}, Landroidx/leanback/widget/GridLayoutManager;->getSelection()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 991
    invoke-virtual {p0, v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->focusSearch(Landroid/view/View;I)Landroid/view/View;

    move-result-object p0

    return-object p0

    .line 995
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->focusSearch(I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public getChildDrawingOrder(II)I
    .locals 1

    .line 976
    iget-object v0, p0, Landroidx/leanback/widget/BaseGridView;->mLayoutManager:Landroidx/leanback/widget/GridLayoutManager;

    invoke-virtual {v0, p0, p1, p2}, Landroidx/leanback/widget/GridLayoutManager;->getChildDrawingOrder(Landroidx/recyclerview/widget/RecyclerView;II)I

    move-result p0

    return p0
.end method

.method public getSelectedPosition()I
    .locals 0

    .line 881
    iget-object p0, p0, Landroidx/leanback/widget/BaseGridView;->mLayoutManager:Landroidx/leanback/widget/GridLayoutManager;

    invoke-virtual {p0}, Landroidx/leanback/widget/GridLayoutManager;->getSelection()I

    move-result p0

    return p0
.end method

.method public getVerticalSpacing()I
    .locals 0

    .line 658
    iget-object p0, p0, Landroidx/leanback/widget/BaseGridView;->mLayoutManager:Landroidx/leanback/widget/GridLayoutManager;

    invoke-virtual {p0}, Landroidx/leanback/widget/GridLayoutManager;->getVerticalSpacing()I

    move-result p0

    return p0
.end method

.method public hasOverlappingRendering()Z
    .locals 0

    .line 1215
    iget-boolean p0, p0, Landroidx/leanback/widget/BaseGridView;->mHasOverlappingRendering:Z

    return p0
.end method

.method initBaseGridViewAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CustomViewStyleable"
        }
    .end annotation

    .line 295
    sget-object v0, Landroidx/leanback/widget/R$styleable;->lbBaseGridView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 296
    sget p2, Landroidx/leanback/widget/R$styleable;->lbBaseGridView_focusOutFront:I

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    .line 297
    sget v1, Landroidx/leanback/widget/R$styleable;->lbBaseGridView_focusOutEnd:I

    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    .line 298
    iget-object v2, p0, Landroidx/leanback/widget/BaseGridView;->mLayoutManager:Landroidx/leanback/widget/GridLayoutManager;

    invoke-virtual {v2, p2, v1}, Landroidx/leanback/widget/GridLayoutManager;->setFocusOutAllowed(ZZ)V

    .line 299
    sget p2, Landroidx/leanback/widget/R$styleable;->lbBaseGridView_focusOutSideStart:I

    const/4 v1, 0x1

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    .line 300
    sget v2, Landroidx/leanback/widget/R$styleable;->lbBaseGridView_focusOutSideEnd:I

    invoke-virtual {p1, v2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    .line 301
    iget-object v2, p0, Landroidx/leanback/widget/BaseGridView;->mLayoutManager:Landroidx/leanback/widget/GridLayoutManager;

    invoke-virtual {v2, p2, v1}, Landroidx/leanback/widget/GridLayoutManager;->setFocusOutSideAllowed(ZZ)V

    .line 302
    iget-object p2, p0, Landroidx/leanback/widget/BaseGridView;->mLayoutManager:Landroidx/leanback/widget/GridLayoutManager;

    sget v1, Landroidx/leanback/widget/R$styleable;->lbBaseGridView_android_verticalSpacing:I

    sget v2, Landroidx/leanback/widget/R$styleable;->lbBaseGridView_verticalMargin:I

    .line 304
    invoke-virtual {p1, v2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    .line 303
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    .line 302
    invoke-virtual {p2, v1}, Landroidx/leanback/widget/GridLayoutManager;->setVerticalSpacing(I)V

    .line 305
    iget-object p2, p0, Landroidx/leanback/widget/BaseGridView;->mLayoutManager:Landroidx/leanback/widget/GridLayoutManager;

    sget v1, Landroidx/leanback/widget/R$styleable;->lbBaseGridView_android_horizontalSpacing:I

    sget v2, Landroidx/leanback/widget/R$styleable;->lbBaseGridView_horizontalMargin:I

    .line 307
    invoke-virtual {p1, v2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    .line 306
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    .line 305
    invoke-virtual {p2, v1}, Landroidx/leanback/widget/GridLayoutManager;->setHorizontalSpacing(I)V

    .line 308
    sget p2, Landroidx/leanback/widget/R$styleable;->lbBaseGridView_android_gravity:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 309
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    invoke-virtual {p0, p2}, Landroidx/leanback/widget/BaseGridView;->setGravity(I)V

    .line 311
    :cond_0
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method final isChildrenDrawingOrderEnabledInternal()Z
    .locals 0

    .line 980
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isChildrenDrawingOrderEnabled()Z

    move-result p0

    return p0
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 0

    .line 1001
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 1002
    iget-object p0, p0, Landroidx/leanback/widget/BaseGridView;->mLayoutManager:Landroidx/leanback/widget/GridLayoutManager;

    invoke-virtual {p0, p1, p2, p3}, Landroidx/leanback/widget/GridLayoutManager;->onFocusChanged(ZILandroid/graphics/Rect;)V

    return-void
.end method

.method public onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 2

    .line 955
    iget v0, p0, Landroidx/leanback/widget/BaseGridView;->mPrivateFlag:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 959
    :cond_0
    iget-object v0, p0, Landroidx/leanback/widget/BaseGridView;->mLayoutManager:Landroidx/leanback/widget/GridLayoutManager;

    invoke-virtual {v0, p0, p1, p2}, Landroidx/leanback/widget/GridLayoutManager;->gridOnRequestFocusInDescendants(Landroidx/recyclerview/widget/RecyclerView;ILandroid/graphics/Rect;)Z

    move-result p0

    return p0
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 0

    .line 1227
    iget-object p0, p0, Landroidx/leanback/widget/BaseGridView;->mLayoutManager:Landroidx/leanback/widget/GridLayoutManager;

    if-eqz p0, :cond_0

    .line 1228
    invoke-virtual {p0, p1}, Landroidx/leanback/widget/GridLayoutManager;->onRtlPropertiesChanged(I)V

    :cond_0
    return-void
.end method

.method public removeView(Landroid/view/View;)V
    .locals 3

    .line 1428
    invoke-virtual {p1}, Landroid/view/View;->hasFocus()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->isFocusable()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 1432
    iget v2, p0, Landroidx/leanback/widget/BaseGridView;->mPrivateFlag:I

    or-int/2addr v1, v2

    iput v1, p0, Landroidx/leanback/widget/BaseGridView;->mPrivateFlag:I

    .line 1433
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestFocus()Z

    .line 1435
    :cond_1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    if-eqz v0, :cond_2

    .line 1437
    iget p1, p0, Landroidx/leanback/widget/BaseGridView;->mPrivateFlag:I

    xor-int/lit8 p1, p1, -0x2

    iput p1, p0, Landroidx/leanback/widget/BaseGridView;->mPrivateFlag:I

    :cond_2
    return-void
.end method

.method public removeViewAt(I)V
    .locals 2

    .line 1443
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1447
    iget v1, p0, Landroidx/leanback/widget/BaseGridView;->mPrivateFlag:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroidx/leanback/widget/BaseGridView;->mPrivateFlag:I

    .line 1448
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestFocus()Z

    .line 1450
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->removeViewAt(I)V

    if-eqz v0, :cond_1

    .line 1452
    iget p1, p0, Landroidx/leanback/widget/BaseGridView;->mPrivateFlag:I

    xor-int/lit8 p1, p1, -0x2

    iput p1, p0, Landroidx/leanback/widget/BaseGridView;->mPrivateFlag:I

    :cond_1
    return-void
.end method

.method public setGravity(I)V
    .locals 1

    .line 932
    iget-object v0, p0, Landroidx/leanback/widget/BaseGridView;->mLayoutManager:Landroidx/leanback/widget/GridLayoutManager;

    invoke-virtual {v0, p1}, Landroidx/leanback/widget/GridLayoutManager;->setGravity(I)V

    .line 933
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    return-void
.end method

.method public setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V
    .locals 1

    if-nez p1, :cond_1

    const/4 p1, 0x0

    .line 939
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 940
    iget-object v0, p0, Landroidx/leanback/widget/BaseGridView;->mLayoutManager:Landroidx/leanback/widget/GridLayoutManager;

    if-eqz v0, :cond_0

    .line 941
    invoke-virtual {v0, p1}, Landroidx/leanback/widget/GridLayoutManager;->setGridView(Landroidx/leanback/widget/BaseGridView;)V

    .line 943
    :cond_0
    iput-object p1, p0, Landroidx/leanback/widget/BaseGridView;->mLayoutManager:Landroidx/leanback/widget/GridLayoutManager;

    return-void

    .line 947
    :cond_1
    move-object v0, p1

    check-cast v0, Landroidx/leanback/widget/GridLayoutManager;

    iput-object v0, p0, Landroidx/leanback/widget/BaseGridView;->mLayoutManager:Landroidx/leanback/widget/GridLayoutManager;

    .line 948
    invoke-virtual {v0, p0}, Landroidx/leanback/widget/GridLayoutManager;->setGridView(Landroidx/leanback/widget/BaseGridView;)V

    .line 949
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    return-void
.end method

.method public setOnChildViewHolderSelectedListener(Landroidx/leanback/widget/OnChildViewHolderSelectedListener;)V
    .locals 0

    .line 734
    iget-object p0, p0, Landroidx/leanback/widget/BaseGridView;->mLayoutManager:Landroidx/leanback/widget/GridLayoutManager;

    invoke-virtual {p0, p1}, Landroidx/leanback/widget/GridLayoutManager;->setOnChildViewHolderSelectedListener(Landroidx/leanback/widget/OnChildViewHolderSelectedListener;)V

    return-void
.end method

.method public setSelectedPosition(I)V
    .locals 1

    .line 764
    iget-object p0, p0, Landroidx/leanback/widget/BaseGridView;->mLayoutManager:Landroidx/leanback/widget/GridLayoutManager;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroidx/leanback/widget/GridLayoutManager;->setSelection(II)V

    return-void
.end method

.method public setSelectedPositionSmooth(I)V
    .locals 0

    .line 805
    iget-object p0, p0, Landroidx/leanback/widget/BaseGridView;->mLayoutManager:Landroidx/leanback/widget/GridLayoutManager;

    invoke-virtual {p0, p1}, Landroidx/leanback/widget/GridLayoutManager;->setSelectionSmooth(I)V

    return-void
.end method

.method public setWindowAlignment(I)V
    .locals 1

    .line 357
    iget-object v0, p0, Landroidx/leanback/widget/BaseGridView;->mLayoutManager:Landroidx/leanback/widget/GridLayoutManager;

    invoke-virtual {v0, p1}, Landroidx/leanback/widget/GridLayoutManager;->setWindowAlignment(I)V

    .line 358
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    return-void
.end method

.method public smoothScrollBy(II)V
    .locals 2

    const/4 v0, 0x0

    const/high16 v1, -0x80000000

    .line 1316
    invoke-virtual {p0, p1, p2, v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollBy(IILandroid/view/animation/Interpolator;I)V

    return-void
.end method

.method public smoothScrollBy(IILandroid/view/animation/Interpolator;)V
    .locals 1

    const/high16 v0, -0x80000000

    .line 1327
    invoke-virtual {p0, p1, p2, p3, v0}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollBy(IILandroid/view/animation/Interpolator;I)V

    return-void
.end method
