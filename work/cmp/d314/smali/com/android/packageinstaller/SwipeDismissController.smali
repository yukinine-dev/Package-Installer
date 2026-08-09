.class public Lcom/android/packageinstaller/SwipeDismissController;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;
.implements Ljava/lang/Runnable;


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private mDownRawY:F

.field private mDragging:Z

.field private final mMinFlingVelocity:F

.field private final mSheet:Landroid/view/View;

.field private mSheetHeight:I

.field private mStartTranslationY:F

.field private final mTouchSlop:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/view/View;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/packageinstaller/SwipeDismissController;->mActivity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/android/packageinstaller/SwipeDismissController;->mSheet:Landroid/view/View;

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/android/packageinstaller/SwipeDismissController;->mTouchSlop:I

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/android/packageinstaller/SwipeDismissController;->mMinFlingVelocity:F

    return-void
.end method

.method public static attach(Landroid/app/Activity;)V
    .locals 3

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0900bf

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    new-instance v0, Lcom/android/packageinstaller/SwipeDismissController;

    invoke-direct {v0, p0, v1}, Lcom/android/packageinstaller/SwipeDismissController;-><init>(Landroid/app/Activity;Landroid/view/View;)V

    invoke-virtual {v2, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 13

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    goto :goto_3

    :cond_2
    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    goto/16 :goto_5

    :cond_3
    const/4 v0, 0x0

    return v0

    :goto_0
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v1

    iput-object v1, p0, Lcom/android/packageinstaller/SwipeDismissController;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1, p2}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    iput v2, p0, Lcom/android/packageinstaller/SwipeDismissController;->mDownRawY:F

    iget-object v3, p0, Lcom/android/packageinstaller/SwipeDismissController;->mSheet:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTranslationY()F

    move-result v4

    iput v4, p0, Lcom/android/packageinstaller/SwipeDismissController;->mStartTranslationY:F

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v5

    iput v5, p0, Lcom/android/packageinstaller/SwipeDismissController;->mSheetHeight:I

    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/packageinstaller/SwipeDismissController;->mDragging:Z

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/ViewPropertyAnimator;->cancel()V

    const/4 v0, 0x1

    return v0

    :goto_1
    iget-object v1, p0, Lcom/android/packageinstaller/SwipeDismissController;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v1, :cond_4

    invoke-virtual {v1, p2}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    :cond_4
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    iget v3, p0, Lcom/android/packageinstaller/SwipeDismissController;->mDownRawY:F

    sub-float v4, v2, v3

    iget-boolean v5, p0, Lcom/android/packageinstaller/SwipeDismissController;->mDragging:Z

    if-nez v5, :cond_6

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v6

    iget v7, p0, Lcom/android/packageinstaller/SwipeDismissController;->mTouchSlop:I

    int-to-float v7, v7

    cmpg-float v8, v6, v7

    if-lez v8, :cond_5

    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/packageinstaller/SwipeDismissController;->mDragging:Z

    goto :goto_2

    :cond_5
    const/4 v0, 0x1

    return v0

    :cond_6
    :goto_2
    iget v6, p0, Lcom/android/packageinstaller/SwipeDismissController;->mStartTranslationY:F

    add-float v6, v6, v4

    const/4 v7, 0x0

    cmpg-float v8, v6, v7

    if-gez v8, :cond_7

    move v6, v7

    :cond_7
    iget-object v9, p0, Lcom/android/packageinstaller/SwipeDismissController;->mSheet:Landroid/view/View;

    invoke-virtual {v9, v6}, Landroid/view/View;->setTranslationY(F)V

    const/4 v0, 0x1

    return v0

    :goto_3
    iget-object v1, p0, Lcom/android/packageinstaller/SwipeDismissController;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/4 v2, 0x0

    if-eqz v1, :cond_8

    invoke-virtual {v1, p2}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    const/16 v3, 0x3e8

    invoke-virtual {v1, v3}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    invoke-virtual {v1}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v2

    invoke-virtual {v1}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/packageinstaller/SwipeDismissController;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_8
    iget-object v4, p0, Lcom/android/packageinstaller/SwipeDismissController;->mSheet:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getTranslationY()F

    move-result v5

    iget-boolean v6, p0, Lcom/android/packageinstaller/SwipeDismissController;->mDragging:Z

    if-nez v6, :cond_9

    goto :goto_4

    :cond_9
    iget v7, p0, Lcom/android/packageinstaller/SwipeDismissController;->mSheetHeight:I

    int-to-float v7, v7

    const/high16 v8, 0x40e00000    # 7.0f

    mul-float v9, v7, v8

    const/high16 v10, 0x41a00000    # 20.0f

    mul-float v11, v5, v10

    cmpg-float v12, v11, v9

    if-gtz v12, :cond_a

    iget v6, p0, Lcom/android/packageinstaller/SwipeDismissController;->mMinFlingVelocity:F

    cmpg-float v12, v2, v6

    if-gtz v12, :cond_a

    goto :goto_4

    :cond_a
    iget-object v6, p0, Lcom/android/packageinstaller/SwipeDismissController;->mSheet:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6, v7}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    new-instance v8, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v8}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v6, v8}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    const-wide/16 v8, 0xdc

    invoke-virtual {v6, v8, v9}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/ViewPropertyAnimator;->start()V

    iget-object v9, p0, Lcom/android/packageinstaller/SwipeDismissController;->mSheet:Landroid/view/View;

    const-wide/16 v10, 0xdc

    invoke-virtual {v9, p0, v10, v11}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/packageinstaller/SwipeDismissController;->mDragging:Z

    const/4 v0, 0x1

    return v0

    :goto_4
    iget-object v6, p0, Lcom/android/packageinstaller/SwipeDismissController;->mSheet:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    new-instance v8, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v8}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v6, v8}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    const-wide/16 v8, 0xdc

    invoke-virtual {v6, v8, v9}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/ViewPropertyAnimator;->start()V

    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/packageinstaller/SwipeDismissController;->mDragging:Z

    const/4 v0, 0x1

    return v0

    :goto_5
    iget-object v1, p0, Lcom/android/packageinstaller/SwipeDismissController;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v1, :cond_b

    invoke-virtual {v1}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/packageinstaller/SwipeDismissController;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_b
    iget-object v3, p0, Lcom/android/packageinstaller/SwipeDismissController;->mSheet:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v3, v5}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    const-wide/16 v6, 0xdc

    invoke-virtual {v3, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->start()V

    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/packageinstaller/SwipeDismissController;->mDragging:Z

    const/4 v0, 0x1

    return v0
.end method

.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/packageinstaller/SwipeDismissController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    :cond_0
    return-void
.end method
