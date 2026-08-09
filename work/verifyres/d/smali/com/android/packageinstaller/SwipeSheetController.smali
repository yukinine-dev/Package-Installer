.class public Lcom/android/packageinstaller/SwipeSheetController;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private final mDecor:Landroid/view/View;

.field private mDownX:F

.field private mDownY:F

.field private mDragging:Z

.field private mSheetHeight:I

.field private mStartTransY:F

.field private final mTouchSlop:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/view/View;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/packageinstaller/SwipeSheetController;->mActivity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/android/packageinstaller/SwipeSheetController;->mDecor:Landroid/view/View;

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/android/packageinstaller/SwipeSheetController;->mTouchSlop:I

    return-void
.end method

.method private apply(Landroid/view/MotionEvent;)V
    .locals 4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iget v1, p0, Lcom/android/packageinstaller/SwipeSheetController;->mDownY:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/android/packageinstaller/SwipeSheetController;->mStartTransY:F

    add-float/2addr v0, v1

    const/4 v1, 0x0

    cmpg-float v2, v0, v1

    if-gez v2, :cond_0

    const/4 v0, 0x0

    :cond_0
    iget-object v1, p0, Lcom/android/packageinstaller/SwipeSheetController;->mDecor:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method

.method public static attach(Landroid/app/Activity;)Lcom/android/packageinstaller/SwipeSheetController;
    .locals 3

    instance-of v0, p0, Lcom/android/packageinstaller/InstallInstalling;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/android/packageinstaller/SwipeSheetController;

    invoke-direct {v1, p0, v0}, Lcom/android/packageinstaller/SwipeSheetController;-><init>(Landroid/app/Activity;Landroid/view/View;)V

    return-object v1
.end method

.method private dismiss()V
    .locals 5

    iget-object v0, p0, Lcom/android/packageinstaller/SwipeSheetController;->mDecor:Landroid/view/View;

    iget v1, p0, Lcom/android/packageinstaller/SwipeSheetController;->mSheetHeight:I

    int-to-float v1, v1

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    new-instance v3, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const-wide/16 v3, 0xc8

    invoke-virtual {v2, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->start()V

    const-wide/16 v3, 0xc8

    invoke-virtual {v0, p0, v3, v4}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private settle()V
    .locals 3

    iget-object v0, p0, Lcom/android/packageinstaller/SwipeSheetController;->mDecor:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method


# virtual methods
.method public onDispatch(Landroid/view/MotionEvent;)I
    .locals 8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    iput v1, p0, Lcom/android/packageinstaller/SwipeSheetController;->mDownX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    iput v1, p0, Lcom/android/packageinstaller/SwipeSheetController;->mDownY:F

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/packageinstaller/SwipeSheetController;->mDragging:Z

    iget-object v2, p0, Lcom/android/packageinstaller/SwipeSheetController;->mDecor:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTranslationY()F

    move-result v3

    iput v3, p0, Lcom/android/packageinstaller/SwipeSheetController;->mStartTransY:F

    invoke-virtual {v2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->cancel()V

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    iget-boolean v1, p0, Lcom/android/packageinstaller/SwipeSheetController;->mDragging:Z

    if-eqz v1, :cond_1

    invoke-direct {p0, p1}, Lcom/android/packageinstaller/SwipeSheetController;->apply(Landroid/view/MotionEvent;)V

    const/4 v0, 0x1

    return v0

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    iget v2, p0, Lcom/android/packageinstaller/SwipeSheetController;->mDownY:F

    sub-float v3, v1, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    iget v2, p0, Lcom/android/packageinstaller/SwipeSheetController;->mDownX:F

    sub-float v4, v1, v2

    iget v2, p0, Lcom/android/packageinstaller/SwipeSheetController;->mTouchSlop:I

    int-to-float v2, v2

    cmpg-float v5, v3, v2

    if-lez v5, :cond_2

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v6

    cmpg-float v7, v3, v6

    if-ltz v7, :cond_2

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/packageinstaller/SwipeSheetController;->mDragging:Z

    iget-object v2, p0, Lcom/android/packageinstaller/SwipeSheetController;->mDecor:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    iput v2, p0, Lcom/android/packageinstaller/SwipeSheetController;->mSheetHeight:I

    invoke-direct {p0, p1}, Lcom/android/packageinstaller/SwipeSheetController;->apply(Landroid/view/MotionEvent;)V

    const/4 v0, 0x2

    return v0

    :cond_2
    const/4 v0, 0x0

    return v0

    :cond_3
    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x3

    if-eq v0, v1, :cond_4

    const/4 v0, 0x0

    return v0

    :cond_4
    iget-boolean v1, p0, Lcom/android/packageinstaller/SwipeSheetController;->mDragging:Z

    if-nez v1, :cond_5

    const/4 v0, 0x0

    return v0

    :cond_5
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/packageinstaller/SwipeSheetController;->mDragging:Z

    iget-object v2, p0, Lcom/android/packageinstaller/SwipeSheetController;->mDecor:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTranslationY()F

    move-result v3

    iget v4, p0, Lcom/android/packageinstaller/SwipeSheetController;->mSheetHeight:I

    int-to-float v4, v4

    const v5, 0x3f400000    # 0.75f

    mul-float v5, v4, v5

    cmpg-float v6, v3, v5

    if-lez v6, :cond_6

    invoke-direct {p0}, Lcom/android/packageinstaller/SwipeSheetController;->dismiss()V

    const/4 v0, 0x1

    return v0

    :cond_6
    invoke-direct {p0}, Lcom/android/packageinstaller/SwipeSheetController;->settle()V

    const/4 v0, 0x1

    return v0
.end method

.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/packageinstaller/SwipeSheetController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    :cond_0
    return-void
.end method
