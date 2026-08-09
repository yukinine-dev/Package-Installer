.class public Landroidx/leanback/widget/SearchOrbView;
.super Landroid/widget/FrameLayout;
.source "SearchOrbView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/leanback/widget/SearchOrbView$Colors;
    }
.end annotation


# instance fields
.field private mAttachedToWindow:Z

.field private mColorAnimationEnabled:Z

.field private mColorAnimator:Landroid/animation/ValueAnimator;

.field private final mColorEvaluator:Landroid/animation/ArgbEvaluator;

.field private mColors:Landroidx/leanback/widget/SearchOrbView$Colors;

.field private final mFocusUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private final mFocusedZ:F

.field private final mFocusedZoom:F

.field private final mIcon:Landroid/widget/ImageView;

.field private mIconDrawable:Landroid/graphics/drawable/Drawable;

.field private mListener:Landroid/view/View$OnClickListener;

.field private final mPulseDurationMs:I

.field private final mRootView:Landroid/view/View;

.field private final mScaleDurationMs:I

.field private final mSearchOrbView:Landroid/view/View;

.field private mShadowFocusAnimator:Landroid/animation/ValueAnimator;

.field private final mUnfocusedZ:F

.field private final mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# direct methods
.method public static synthetic $r8$lambda$_lnjImbXq5CG3ca52CWXiSqeWf0(Landroidx/leanback/widget/SearchOrbView;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/leanback/widget/SearchOrbView;->lambda$new$1(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$jpGHhe5mTEb6sCNgO-qmDX3cZIY(Landroidx/leanback/widget/SearchOrbView;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/leanback/widget/SearchOrbView;->lambda$new$0(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 149
    invoke-direct {p0, p1, v0}, Landroidx/leanback/widget/SearchOrbView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 153
    sget v0, Landroidx/leanback/R$attr;->searchOrbViewStyle:I

    invoke-direct {p0, p1, p2, v0}, Landroidx/leanback/widget/SearchOrbView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 14
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CustomViewStyleable"
        }
    .end annotation

    move-object v7, p0

    move-object v1, p1

    .line 158
    invoke-direct/range {p0 .. p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 131
    new-instance v0, Landroid/animation/ArgbEvaluator;

    invoke-direct {v0}, Landroid/animation/ArgbEvaluator;-><init>()V

    iput-object v0, v7, Landroidx/leanback/widget/SearchOrbView;->mColorEvaluator:Landroid/animation/ArgbEvaluator;

    .line 133
    new-instance v0, Landroidx/leanback/widget/SearchOrbView$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Landroidx/leanback/widget/SearchOrbView$$ExternalSyntheticLambda0;-><init>(Landroidx/leanback/widget/SearchOrbView;)V

    iput-object v0, v7, Landroidx/leanback/widget/SearchOrbView;->mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 141
    new-instance v0, Landroidx/leanback/widget/SearchOrbView$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Landroidx/leanback/widget/SearchOrbView$$ExternalSyntheticLambda1;-><init>(Landroidx/leanback/widget/SearchOrbView;)V

    iput-object v0, v7, Landroidx/leanback/widget/SearchOrbView;->mFocusUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 160
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const-string v0, "layout_inflater"

    .line 163
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 164
    invoke-virtual {p0}, Landroidx/leanback/widget/SearchOrbView;->getLayoutResourceId()I

    move-result v2

    const/4 v9, 0x1

    invoke-virtual {v0, v2, p0, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, v7, Landroidx/leanback/widget/SearchOrbView;->mRootView:Landroid/view/View;

    .line 165
    sget v2, Landroidx/leanback/R$id;->search_orb:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v7, Landroidx/leanback/widget/SearchOrbView;->mSearchOrbView:Landroid/view/View;

    .line 166
    sget v2, Landroidx/leanback/R$id;->icon:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Landroid/widget/ImageView;

    iput-object v10, v7, Landroidx/leanback/widget/SearchOrbView;->mIcon:Landroid/widget/ImageView;

    .line 168
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Landroidx/leanback/R$fraction;->lb_search_orb_focused_zoom:I

    invoke-virtual {v0, v2, v9, v9}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v0

    iput v0, v7, Landroidx/leanback/widget/SearchOrbView;->mFocusedZoom:F

    .line 170
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Landroidx/leanback/R$integer;->lb_search_orb_pulse_duration_ms:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, v7, Landroidx/leanback/widget/SearchOrbView;->mPulseDurationMs:I

    .line 172
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Landroidx/leanback/R$integer;->lb_search_orb_scale_duration_ms:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, v7, Landroidx/leanback/widget/SearchOrbView;->mScaleDurationMs:I

    .line 174
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Landroidx/leanback/R$dimen;->lb_search_orb_focused_z:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v11, v0

    iput v11, v7, Landroidx/leanback/widget/SearchOrbView;->mFocusedZ:F

    .line 176
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Landroidx/leanback/R$dimen;->lb_search_orb_unfocused_z:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, v7, Landroidx/leanback/widget/SearchOrbView;->mUnfocusedZ:F

    .line 179
    sget-object v2, Landroidx/leanback/R$styleable;->lbSearchOrbView:[I

    const/4 v12, 0x0

    move-object/from16 v3, p2

    move/from16 v5, p3

    invoke-virtual {p1, v3, v2, v5, v12}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v13

    const/4 v6, 0x0

    move-object v0, p0

    move-object v4, v13

    .line 181
    invoke-static/range {v0 .. v6}, Landroidx/core/view/ViewCompat;->saveAttributeDataForStyleable(Landroid/view/View;Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V

    .line 184
    sget v0, Landroidx/leanback/R$styleable;->lbSearchOrbView_searchOrbIcon:I

    invoke-virtual {v13, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    .line 186
    sget v0, Landroidx/leanback/R$drawable;->lb_ic_in_app_search:I

    invoke-virtual {v8, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 188
    :cond_0
    invoke-virtual {p0, v0}, Landroidx/leanback/widget/SearchOrbView;->setOrbIcon(Landroid/graphics/drawable/Drawable;)V

    .line 190
    sget v0, Landroidx/leanback/R$color;->lb_default_search_color:I

    invoke-virtual {v8, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 191
    sget v1, Landroidx/leanback/R$styleable;->lbSearchOrbView_searchOrbColor:I

    invoke-virtual {v13, v1, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    .line 192
    sget v1, Landroidx/leanback/R$styleable;->lbSearchOrbView_searchOrbBrightColor:I

    invoke-virtual {v13, v1, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    .line 194
    sget v2, Landroidx/leanback/R$styleable;->lbSearchOrbView_searchOrbIconColor:I

    invoke-virtual {v13, v2, v12}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    .line 196
    new-instance v3, Landroidx/leanback/widget/SearchOrbView$Colors;

    invoke-direct {v3, v0, v1, v2}, Landroidx/leanback/widget/SearchOrbView$Colors;-><init>(III)V

    invoke-virtual {p0, v3}, Landroidx/leanback/widget/SearchOrbView;->setOrbColors(Landroidx/leanback/widget/SearchOrbView$Colors;)V

    .line 197
    invoke-virtual {v13}, Landroid/content/res/TypedArray;->recycle()V

    .line 199
    invoke-virtual {p0, v9}, Landroid/widget/FrameLayout;->setFocusable(Z)V

    .line 200
    invoke-virtual {p0, v12}, Landroid/widget/FrameLayout;->setClipChildren(Z)V

    .line 201
    invoke-virtual {p0, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 202
    invoke-virtual {p0, v12}, Landroid/widget/FrameLayout;->setSoundEffectsEnabled(Z)V

    const/4 v0, 0x0

    .line 203
    invoke-virtual {p0, v0}, Landroidx/leanback/widget/SearchOrbView;->setSearchOrbZ(F)V

    .line 206
    invoke-static {v10, v11}, Landroidx/core/view/ViewCompat;->setZ(Landroid/view/View;F)V

    return-void
.end method

.method private synthetic lambda$new$0(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 135
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    .line 136
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/leanback/widget/SearchOrbView;->setOrbViewColor(I)V

    return-void
.end method

.method private synthetic lambda$new$1(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 142
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/leanback/widget/SearchOrbView;->setSearchOrbZ(F)V

    return-void
.end method

.method private startShadowFocusAnimation(ZI)V
    .locals 2

    .line 230
    iget-object v0, p0, Landroidx/leanback/widget/SearchOrbView;->mShadowFocusAnimator:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_0

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 231
    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Landroidx/leanback/widget/SearchOrbView;->mShadowFocusAnimator:Landroid/animation/ValueAnimator;

    .line 232
    iget-object v1, p0, Landroidx/leanback/widget/SearchOrbView;->mFocusUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    :cond_0
    if-eqz p1, :cond_1

    .line 235
    iget-object p1, p0, Landroidx/leanback/widget/SearchOrbView;->mShadowFocusAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    .line 237
    :cond_1
    iget-object p1, p0, Landroidx/leanback/widget/SearchOrbView;->mShadowFocusAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->reverse()V

    .line 239
    :goto_0
    iget-object p0, p0, Landroidx/leanback/widget/SearchOrbView;->mShadowFocusAnimator:Landroid/animation/ValueAnimator;

    int-to-long p1, p2

    invoke-virtual {p0, p1, p2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private updateColorAnimator()V
    .locals 4

    .line 350
    iget-object v0, p0, Landroidx/leanback/widget/SearchOrbView;->mColorAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 351
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    const/4 v0, 0x0

    .line 352
    iput-object v0, p0, Landroidx/leanback/widget/SearchOrbView;->mColorAnimator:Landroid/animation/ValueAnimator;

    .line 354
    :cond_0
    iget-boolean v0, p0, Landroidx/leanback/widget/SearchOrbView;->mColorAnimationEnabled:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Landroidx/leanback/widget/SearchOrbView;->mAttachedToWindow:Z

    if-eqz v0, :cond_1

    .line 356
    iget-object v0, p0, Landroidx/leanback/widget/SearchOrbView;->mColorEvaluator:Landroid/animation/ArgbEvaluator;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Landroidx/leanback/widget/SearchOrbView;->mColors:Landroidx/leanback/widget/SearchOrbView$Colors;

    iget v3, v3, Landroidx/leanback/widget/SearchOrbView$Colors;->color:I

    .line 357
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Landroidx/leanback/widget/SearchOrbView;->mColors:Landroidx/leanback/widget/SearchOrbView$Colors;

    iget v3, v3, Landroidx/leanback/widget/SearchOrbView$Colors;->brightColor:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    iget-object v2, p0, Landroidx/leanback/widget/SearchOrbView;->mColors:Landroidx/leanback/widget/SearchOrbView$Colors;

    iget v2, v2, Landroidx/leanback/widget/SearchOrbView$Colors;->color:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    .line 356
    invoke-static {v0, v1}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Landroidx/leanback/widget/SearchOrbView;->mColorAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, -0x1

    .line 358
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 359
    iget-object v0, p0, Landroidx/leanback/widget/SearchOrbView;->mColorAnimator:Landroid/animation/ValueAnimator;

    iget v1, p0, Landroidx/leanback/widget/SearchOrbView;->mPulseDurationMs:I

    mul-int/2addr v1, v3

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 360
    iget-object v0, p0, Landroidx/leanback/widget/SearchOrbView;->mColorAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Landroidx/leanback/widget/SearchOrbView;->mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 361
    iget-object p0, p0, Landroidx/leanback/widget/SearchOrbView;->mColorAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    :cond_1
    return-void
.end method


# virtual methods
.method animateOnFocus(Z)V
    .locals 3

    if-eqz p1, :cond_0

    .line 249
    iget v0, p0, Landroidx/leanback/widget/SearchOrbView;->mFocusedZoom:F

    goto :goto_0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    .line 250
    :goto_0
    iget-object v1, p0, Landroidx/leanback/widget/SearchOrbView;->mRootView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget v1, p0, Landroidx/leanback/widget/SearchOrbView;->mScaleDurationMs:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 251
    iget v0, p0, Landroidx/leanback/widget/SearchOrbView;->mScaleDurationMs:I

    invoke-direct {p0, p1, v0}, Landroidx/leanback/widget/SearchOrbView;->startShadowFocusAnimation(ZI)V

    .line 252
    invoke-virtual {p0, p1}, Landroidx/leanback/widget/SearchOrbView;->enableOrbColorAnimation(Z)V

    return-void
.end method

.method public enableOrbColorAnimation(Z)V
    .locals 0

    .line 345
    iput-boolean p1, p0, Landroidx/leanback/widget/SearchOrbView;->mColorAnimationEnabled:Z

    .line 346
    invoke-direct {p0}, Landroidx/leanback/widget/SearchOrbView;->updateColorAnimator()V

    return-void
.end method

.method getFocusedZoom()F
    .locals 0

    .line 219
    iget p0, p0, Landroidx/leanback/widget/SearchOrbView;->mFocusedZoom:F

    return p0
.end method

.method getLayoutResourceId()I
    .locals 0

    .line 210
    sget p0, Landroidx/leanback/R$layout;->lb_search_orb:I

    return p0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 373
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    const/4 v0, 0x1

    .line 374
    iput-boolean v0, p0, Landroidx/leanback/widget/SearchOrbView;->mAttachedToWindow:Z

    .line 375
    invoke-direct {p0}, Landroidx/leanback/widget/SearchOrbView;->updateColorAnimator()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 224
    iget-object p0, p0, Landroidx/leanback/widget/SearchOrbView;->mListener:Landroid/view/View$OnClickListener;

    if-eqz p0, :cond_0

    .line 225
    invoke-interface {p0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    const/4 v0, 0x0

    .line 380
    iput-boolean v0, p0, Landroidx/leanback/widget/SearchOrbView;->mAttachedToWindow:Z

    .line 382
    invoke-direct {p0}, Landroidx/leanback/widget/SearchOrbView;->updateColorAnimator()V

    .line 383
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 0

    .line 244
    invoke-super {p0, p1, p2, p3}, Landroid/widget/FrameLayout;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 245
    invoke-virtual {p0, p1}, Landroidx/leanback/widget/SearchOrbView;->animateOnFocus(Z)V

    return-void
.end method

.method scaleOrbViewOnly(F)V
    .locals 1

    .line 214
    iget-object v0, p0, Landroidx/leanback/widget/SearchOrbView;->mSearchOrbView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setScaleX(F)V

    .line 215
    iget-object p0, p0, Landroidx/leanback/widget/SearchOrbView;->mSearchOrbView:Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/view/View;->setScaleY(F)V

    return-void
.end method

.method public setOnOrbClickedListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 280
    iput-object p1, p0, Landroidx/leanback/widget/SearchOrbView;->mListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public setOrbColors(Landroidx/leanback/widget/SearchOrbView$Colors;)V
    .locals 1

    .line 318
    iput-object p1, p0, Landroidx/leanback/widget/SearchOrbView;->mColors:Landroidx/leanback/widget/SearchOrbView$Colors;

    .line 319
    iget-object v0, p0, Landroidx/leanback/widget/SearchOrbView;->mIcon:Landroid/widget/ImageView;

    iget p1, p1, Landroidx/leanback/widget/SearchOrbView$Colors;->iconColor:I

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 321
    iget-object p1, p0, Landroidx/leanback/widget/SearchOrbView;->mColorAnimator:Landroid/animation/ValueAnimator;

    if-nez p1, :cond_0

    .line 322
    iget-object p1, p0, Landroidx/leanback/widget/SearchOrbView;->mColors:Landroidx/leanback/widget/SearchOrbView$Colors;

    iget p1, p1, Landroidx/leanback/widget/SearchOrbView$Colors;->color:I

    invoke-virtual {p0, p1}, Landroidx/leanback/widget/SearchOrbView;->setOrbViewColor(I)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 324
    invoke-virtual {p0, p1}, Landroidx/leanback/widget/SearchOrbView;->enableOrbColorAnimation(Z)V

    :goto_0
    return-void
.end method

.method public setOrbIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 261
    iput-object p1, p0, Landroidx/leanback/widget/SearchOrbView;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 262
    iget-object p0, p0, Landroidx/leanback/widget/SearchOrbView;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method setOrbViewColor(I)V
    .locals 1

    .line 366
    iget-object v0, p0, Landroidx/leanback/widget/SearchOrbView;->mSearchOrbView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v0, v0, Landroid/graphics/drawable/GradientDrawable;

    if-eqz v0, :cond_0

    .line 367
    iget-object p0, p0, Landroidx/leanback/widget/SearchOrbView;->mSearchOrbView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    check-cast p0, Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    :cond_0
    return-void
.end method

.method setSearchOrbZ(F)V
    .locals 2

    .line 145
    iget-object v0, p0, Landroidx/leanback/widget/SearchOrbView;->mSearchOrbView:Landroid/view/View;

    iget v1, p0, Landroidx/leanback/widget/SearchOrbView;->mUnfocusedZ:F

    iget p0, p0, Landroidx/leanback/widget/SearchOrbView;->mFocusedZ:F

    sub-float/2addr p0, v1

    mul-float/2addr p1, p0

    add-float/2addr v1, p1

    invoke-static {v0, v1}, Landroidx/core/view/ViewCompat;->setZ(Landroid/view/View;F)V

    return-void
.end method
