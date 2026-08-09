.class public Lcom/android/packageinstaller/SwipeSheetContainer;
.super Landroid/widget/FrameLayout;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private mDownX:F

.field private mDownY:F

.field private mDragging:Z

.field private final mSheet:Landroid/view/View;

.field private mSheetHeight:I

.field private mStartTranslationY:F

.field private final mTouchSlop:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/view/View;)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/packageinstaller/SwipeSheetContainer;->mActivity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/android/packageinstaller/SwipeSheetContainer;->mSheet:Landroid/view/View;

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/android/packageinstaller/SwipeSheetContainer;->mTouchSlop:I

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p2, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public static attach(Landroid/app/Activity;)V
    .locals 4

    instance-of v0, p0, Lcom/android/packageinstaller/InstallInstalling;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_3

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-lez v1, :cond_3

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v1, v2, Lcom/android/packageinstaller/SwipeSheetContainer;

    if-eqz v1, :cond_1

    return-void

    :cond_1
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    new-instance v1, Lcom/android/packageinstaller/SwipeSheetContainer;

    invoke-direct {v1, p0, v2}, Lcom/android/packageinstaller/SwipeSheetContainer;-><init>(Landroid/app/Activity;Landroid/view/View;)V

    if-eqz v3, :cond_2

    invoke-virtual {v0, v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_3
    :goto_0
    return-void
.end method

.method private beginDrag()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/packageinstaller/SwipeSheetContainer;->mDragging:Z

    iget-object v0, p0, Lcom/android/packageinstaller/SwipeSheetContainer;->mSheet:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v1

    iput v1, p0, Lcom/android/packageinstaller/SwipeSheetContainer;->mStartTranslationY:F

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v1

    iput v1, p0, Lcom/android/packageinstaller/SwipeSheetContainer;->mSheetHeight:I

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iput v1, p0, Lcom/android/packageinstaller/SwipeSheetContainer;->mDownX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iput v1, p0, Lcom/android/packageinstaller/SwipeSheetContainer;->mDownY:F

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/packageinstaller/SwipeSheetContainer;->mDragging:Z

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v0, 0x0

    return v0

    :cond_1
    iget-boolean v1, p0, Lcom/android/packageinstaller/SwipeSheetContainer;->mDragging:Z

    if-eqz v1, :cond_2

    const/4 v0, 0x1

    return v0

    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iget v3, p0, Lcom/android/packageinstaller/SwipeSheetContainer;->mDownX:F

    sub-float v4, v2, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget v3, p0, Lcom/android/packageinstaller/SwipeSheetContainer;->mDownY:F

    sub-float v5, v2, v3

    const/4 v6, 0x0

    cmpg-float v7, v5, v6

    if-lez v7, :cond_3

    iget v7, p0, Lcom/android/packageinstaller/SwipeSheetContainer;->mTouchSlop:I

    int-to-float v7, v7

    cmpg-float v8, v5, v7

    if-lez v8, :cond_3

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v9

    cmpg-float v10, v5, v9

    if-ltz v10, :cond_3

    invoke-direct {p0}, Lcom/android/packageinstaller/SwipeSheetContainer;->beginDrag()V

    const/4 v0, 0x1

    return v0

    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iput v1, p0, Lcom/android/packageinstaller/SwipeSheetContainer;->mDownX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iput v1, p0, Lcom/android/packageinstaller/SwipeSheetContainer;->mDownY:F

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/packageinstaller/SwipeSheetContainer;->mDragging:Z

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    goto :goto_2

    :cond_2
    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    return v0

    :goto_0
    iget-boolean v1, p0, Lcom/android/packageinstaller/SwipeSheetContainer;->mDragging:Z

    if-nez v1, :cond_5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iget v3, p0, Lcom/android/packageinstaller/SwipeSheetContainer;->mDownX:F

    sub-float v4, v2, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget v3, p0, Lcom/android/packageinstaller/SwipeSheetContainer;->mDownY:F

    sub-float v5, v2, v3

    const/4 v6, 0x0

    cmpg-float v7, v5, v6

    if-lez v7, :cond_4

    iget v7, p0, Lcom/android/packageinstaller/SwipeSheetContainer;->mTouchSlop:I

    int-to-float v7, v7

    cmpg-float v8, v5, v7

    if-lez v8, :cond_4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v9

    cmpg-float v10, v5, v9

    if-ltz v10, :cond_4

    invoke-direct {p0}, Lcom/android/packageinstaller/SwipeSheetContainer;->beginDrag()V

    goto :goto_1

    :cond_4
    const/4 v0, 0x1

    return v0

    :cond_5
    :goto_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget v3, p0, Lcom/android/packageinstaller/SwipeSheetContainer;->mDownY:F

    sub-float v4, v2, v3

    iget v5, p0, Lcom/android/packageinstaller/SwipeSheetContainer;->mStartTranslationY:F

    add-float v5, v5, v4

    const/4 v6, 0x0

    cmpg-float v7, v5, v6

    if-gez v7, :cond_6

    move v5, v6

    :cond_6
    iget-object v8, p0, Lcom/android/packageinstaller/SwipeSheetContainer;->mSheet:Landroid/view/View;

    invoke-virtual {v8, v5}, Landroid/view/View;->setTranslationY(F)V

    const/4 v0, 0x1

    return v0

    :goto_2
    iget-boolean v1, p0, Lcom/android/packageinstaller/SwipeSheetContainer;->mDragging:Z

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/packageinstaller/SwipeSheetContainer;->mDragging:Z

    if-nez v1, :cond_7

    const/4 v0, 0x1

    return v0

    :cond_7
    iget-object v3, p0, Lcom/android/packageinstaller/SwipeSheetContainer;->mSheet:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTranslationY()F

    move-result v4

    iget v5, p0, Lcom/android/packageinstaller/SwipeSheetContainer;->mSheetHeight:I

    int-to-float v5, v5

    const/high16 v6, 0x3f400000    # 0.75f

    mul-float v7, v5, v6

    cmpg-float v8, v4, v7

    if-lez v8, :cond_8

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    invoke-virtual {v8, v5}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    new-instance v9, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v9}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v8, v9}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    const-wide/16 v9, 0xdc

    invoke-virtual {v8, v9, v10}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/ViewPropertyAnimator;->start()V

    const-wide/16 v10, 0xdc

    invoke-virtual {p0, p0, v10, v11}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 v0, 0x1

    return v0

    :cond_8
    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    new-instance v9, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v9}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v8, v9}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    const-wide/16 v9, 0xdc

    invoke-virtual {v8, v9, v10}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/ViewPropertyAnimator;->start()V

    const/4 v0, 0x1

    return v0
.end method

.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/packageinstaller/SwipeSheetContainer;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    :cond_0
    return-void
.end method
