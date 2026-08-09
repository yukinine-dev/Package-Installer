.class public Landroidx/leanback/widget/HorizontalGridView;
.super Landroidx/leanback/widget/BaseGridView;
.source "HorizontalGridView.java"


# instance fields
.field private mFadingHighEdge:Z

.field private mFadingLowEdge:Z

.field private mHighFadeShader:Landroid/graphics/LinearGradient;

.field private mHighFadeShaderLength:I

.field private mHighFadeShaderOffset:I

.field private mLowFadeShader:Landroid/graphics/LinearGradient;

.field private mLowFadeShaderLength:I

.field private mLowFadeShaderOffset:I

.field private mTempBitmapHigh:Landroid/graphics/Bitmap;

.field private mTempBitmapLow:Landroid/graphics/Bitmap;

.field private mTempPaint:Landroid/graphics/Paint;

.field private final mTempRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 74
    invoke-direct {p0, p1, v0}, Landroidx/leanback/widget/HorizontalGridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 78
    invoke-direct {p0, p1, p2, v0}, Landroidx/leanback/widget/HorizontalGridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 83
    invoke-direct {p0, p1, p2, p3}, Landroidx/leanback/widget/BaseGridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 62
    new-instance p3, Landroid/graphics/Paint;

    invoke-direct {p3}, Landroid/graphics/Paint;-><init>()V

    iput-object p3, p0, Landroidx/leanback/widget/HorizontalGridView;->mTempPaint:Landroid/graphics/Paint;

    .line 71
    new-instance p3, Landroid/graphics/Rect;

    invoke-direct {p3}, Landroid/graphics/Rect;-><init>()V

    iput-object p3, p0, Landroidx/leanback/widget/HorizontalGridView;->mTempRect:Landroid/graphics/Rect;

    .line 84
    iget-object p3, p0, Landroidx/leanback/widget/BaseGridView;->mLayoutManager:Landroidx/leanback/widget/GridLayoutManager;

    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroidx/leanback/widget/GridLayoutManager;->setOrientation(I)V

    .line 85
    invoke-virtual {p0, p1, p2}, Landroidx/leanback/widget/HorizontalGridView;->initAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private getTempBitmapHigh()Landroid/graphics/Bitmap;
    .locals 3

    .line 304
    iget-object v0, p0, Landroidx/leanback/widget/HorizontalGridView;->mTempBitmapHigh:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 305
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget v1, p0, Landroidx/leanback/widget/HorizontalGridView;->mHighFadeShaderLength:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroidx/leanback/widget/HorizontalGridView;->mTempBitmapHigh:Landroid/graphics/Bitmap;

    .line 306
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 314
    :cond_0
    iget v0, p0, Landroidx/leanback/widget/HorizontalGridView;->mHighFadeShaderLength:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Landroidx/leanback/widget/HorizontalGridView;->mTempBitmapHigh:Landroid/graphics/Bitmap;

    .line 318
    :cond_1
    iget-object p0, p0, Landroidx/leanback/widget/HorizontalGridView;->mTempBitmapHigh:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method private getTempBitmapLow()Landroid/graphics/Bitmap;
    .locals 3

    .line 294
    iget-object v0, p0, Landroidx/leanback/widget/HorizontalGridView;->mTempBitmapLow:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 295
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget v1, p0, Landroidx/leanback/widget/HorizontalGridView;->mLowFadeShaderLength:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroidx/leanback/widget/HorizontalGridView;->mTempBitmapLow:Landroid/graphics/Bitmap;

    .line 296
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 297
    :cond_0
    iget v0, p0, Landroidx/leanback/widget/HorizontalGridView;->mLowFadeShaderLength:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Landroidx/leanback/widget/HorizontalGridView;->mTempBitmapLow:Landroid/graphics/Bitmap;

    .line 300
    :cond_1
    iget-object p0, p0, Landroidx/leanback/widget/HorizontalGridView;->mTempBitmapLow:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method private needsFadingHighEdge()Z
    .locals 6

    .line 279
    iget-boolean v0, p0, Landroidx/leanback/widget/HorizontalGridView;->mFadingHighEdge:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 282
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    :goto_0
    if-ltz v0, :cond_2

    .line 284
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 285
    iget-object v4, p0, Landroidx/leanback/widget/BaseGridView;->mLayoutManager:Landroidx/leanback/widget/GridLayoutManager;

    invoke-virtual {v4, v3}, Landroidx/leanback/widget/GridLayoutManager;->getOpticalRight(Landroid/view/View;)I

    move-result v3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v4

    .line 286
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v5

    sub-int/2addr v4, v5

    iget v5, p0, Landroidx/leanback/widget/HorizontalGridView;->mHighFadeShaderOffset:I

    add-int/2addr v4, v5

    if-le v3, v4, :cond_1

    return v2

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method private needsFadingLowEdge()Z
    .locals 6

    .line 265
    iget-boolean v0, p0, Landroidx/leanback/widget/HorizontalGridView;->mFadingLowEdge:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 268
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    .line 270
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 271
    iget-object v4, p0, Landroidx/leanback/widget/BaseGridView;->mLayoutManager:Landroidx/leanback/widget/GridLayoutManager;

    invoke-virtual {v4, v3}, Landroidx/leanback/widget/GridLayoutManager;->getOpticalLeft(Landroid/view/View;)I

    move-result v3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v4

    iget v5, p0, Landroidx/leanback/widget/HorizontalGridView;->mLowFadeShaderOffset:I

    sub-int/2addr v4, v5

    if-ge v3, v4, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method private updateLayerType()V
    .locals 3

    .line 401
    iget-boolean v0, p0, Landroidx/leanback/widget/HorizontalGridView;->mFadingLowEdge:Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Landroidx/leanback/widget/HorizontalGridView;->mFadingHighEdge:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 405
    :cond_0
    invoke-virtual {p0, v1, v2}, Landroid/view/ViewGroup;->setLayerType(ILandroid/graphics/Paint;)V

    const/4 v0, 0x1

    .line 406
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setWillNotDraw(Z)V

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x2

    .line 402
    invoke-virtual {p0, v0, v2}, Landroid/view/ViewGroup;->setLayerType(ILandroid/graphics/Paint;)V

    .line 403
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->setWillNotDraw(Z)V

    :goto_1
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 323
    invoke-direct/range {p0 .. p0}, Landroidx/leanback/widget/HorizontalGridView;->needsFadingLowEdge()Z

    move-result v2

    .line 324
    invoke-direct/range {p0 .. p0}, Landroidx/leanback/widget/HorizontalGridView;->needsFadingHighEdge()Z

    move-result v3

    const/4 v4, 0x0

    if-nez v2, :cond_0

    .line 326
    iput-object v4, v0, Landroidx/leanback/widget/HorizontalGridView;->mTempBitmapLow:Landroid/graphics/Bitmap;

    :cond_0
    if-nez v3, :cond_1

    .line 329
    iput-object v4, v0, Landroidx/leanback/widget/HorizontalGridView;->mTempBitmapHigh:Landroid/graphics/Bitmap;

    :cond_1
    if-nez v2, :cond_2

    if-nez v3, :cond_2

    .line 332
    invoke-super/range {p0 .. p1}, Landroidx/recyclerview/widget/RecyclerView;->draw(Landroid/graphics/Canvas;)V

    return-void

    .line 337
    :cond_2
    iget-boolean v5, v0, Landroidx/leanback/widget/HorizontalGridView;->mFadingLowEdge:Z

    const/4 v6, 0x0

    if-eqz v5, :cond_3

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v5

    iget v7, v0, Landroidx/leanback/widget/HorizontalGridView;->mLowFadeShaderOffset:I

    sub-int/2addr v5, v7

    iget v7, v0, Landroidx/leanback/widget/HorizontalGridView;->mLowFadeShaderLength:I

    sub-int/2addr v5, v7

    goto :goto_0

    :cond_3
    move v5, v6

    .line 338
    :goto_0
    iget-boolean v7, v0, Landroidx/leanback/widget/HorizontalGridView;->mFadingHighEdge:Z

    if-eqz v7, :cond_4

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v7

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v8

    sub-int/2addr v7, v8

    iget v8, v0, Landroidx/leanback/widget/HorizontalGridView;->mHighFadeShaderOffset:I

    add-int/2addr v7, v8

    iget v8, v0, Landroidx/leanback/widget/HorizontalGridView;->mHighFadeShaderLength:I

    add-int/2addr v7, v8

    goto :goto_1

    .line 339
    :cond_4
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v7

    .line 342
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v8

    .line 343
    iget-boolean v9, v0, Landroidx/leanback/widget/HorizontalGridView;->mFadingLowEdge:Z

    if-eqz v9, :cond_5

    iget v9, v0, Landroidx/leanback/widget/HorizontalGridView;->mLowFadeShaderLength:I

    goto :goto_2

    :cond_5
    move v9, v6

    :goto_2
    add-int/2addr v9, v5

    .line 344
    iget-boolean v10, v0, Landroidx/leanback/widget/HorizontalGridView;->mFadingHighEdge:Z

    if-eqz v10, :cond_6

    iget v10, v0, Landroidx/leanback/widget/HorizontalGridView;->mHighFadeShaderLength:I

    goto :goto_3

    :cond_6
    move v10, v6

    :goto_3
    sub-int v10, v7, v10

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v11

    .line 343
    invoke-virtual {v1, v9, v6, v10, v11}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 345
    invoke-super/range {p0 .. p1}, Landroidx/recyclerview/widget/RecyclerView;->draw(Landroid/graphics/Canvas;)V

    .line 346
    invoke-virtual {v1, v8}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 348
    new-instance v8, Landroid/graphics/Canvas;

    invoke-direct {v8}, Landroid/graphics/Canvas;-><init>()V

    .line 349
    iget-object v9, v0, Landroidx/leanback/widget/HorizontalGridView;->mTempRect:Landroid/graphics/Rect;

    iput v6, v9, Landroid/graphics/Rect;->top:I

    .line 350
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v10

    iput v10, v9, Landroid/graphics/Rect;->bottom:I

    const/4 v9, 0x0

    if-eqz v2, :cond_7

    .line 351
    iget v2, v0, Landroidx/leanback/widget/HorizontalGridView;->mLowFadeShaderLength:I

    if-lez v2, :cond_7

    .line 352
    invoke-direct/range {p0 .. p0}, Landroidx/leanback/widget/HorizontalGridView;->getTempBitmapLow()Landroid/graphics/Bitmap;

    move-result-object v2

    .line 353
    invoke-virtual {v2, v6}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 354
    invoke-virtual {v8, v2}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 356
    invoke-virtual {v8}, Landroid/graphics/Canvas;->save()I

    move-result v10

    .line 357
    iget v11, v0, Landroidx/leanback/widget/HorizontalGridView;->mLowFadeShaderLength:I

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v12

    invoke-virtual {v8, v6, v6, v11, v12}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    neg-int v11, v5

    int-to-float v11, v11

    .line 358
    invoke-virtual {v8, v11, v9}, Landroid/graphics/Canvas;->translate(FF)V

    .line 359
    invoke-super {v0, v8}, Landroidx/recyclerview/widget/RecyclerView;->draw(Landroid/graphics/Canvas;)V

    .line 360
    invoke-virtual {v8, v10}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 362
    iget-object v10, v0, Landroidx/leanback/widget/HorizontalGridView;->mTempPaint:Landroid/graphics/Paint;

    iget-object v12, v0, Landroidx/leanback/widget/HorizontalGridView;->mLowFadeShader:Landroid/graphics/LinearGradient;

    invoke-virtual {v10, v12}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    const/4 v13, 0x0

    const/4 v14, 0x0

    .line 363
    iget v10, v0, Landroidx/leanback/widget/HorizontalGridView;->mLowFadeShaderLength:I

    int-to-float v15, v10

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v10

    int-to-float v10, v10

    iget-object v12, v0, Landroidx/leanback/widget/HorizontalGridView;->mTempPaint:Landroid/graphics/Paint;

    move-object/from16 v17, v12

    move-object v12, v8

    move/from16 v16, v10

    invoke-virtual/range {v12 .. v17}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 365
    iget-object v10, v0, Landroidx/leanback/widget/HorizontalGridView;->mTempRect:Landroid/graphics/Rect;

    iput v6, v10, Landroid/graphics/Rect;->left:I

    .line 366
    iget v12, v0, Landroidx/leanback/widget/HorizontalGridView;->mLowFadeShaderLength:I

    iput v12, v10, Landroid/graphics/Rect;->right:I

    int-to-float v5, v5

    .line 367
    invoke-virtual {v1, v5, v9}, Landroid/graphics/Canvas;->translate(FF)V

    .line 368
    iget-object v5, v0, Landroidx/leanback/widget/HorizontalGridView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2, v5, v5, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 369
    invoke-virtual {v1, v11, v9}, Landroid/graphics/Canvas;->translate(FF)V

    :cond_7
    if-eqz v3, :cond_8

    .line 371
    iget v2, v0, Landroidx/leanback/widget/HorizontalGridView;->mHighFadeShaderLength:I

    if-lez v2, :cond_8

    .line 372
    invoke-direct/range {p0 .. p0}, Landroidx/leanback/widget/HorizontalGridView;->getTempBitmapHigh()Landroid/graphics/Bitmap;

    move-result-object v2

    .line 373
    invoke-virtual {v2, v6}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 374
    invoke-virtual {v8, v2}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 376
    invoke-virtual {v8}, Landroid/graphics/Canvas;->save()I

    move-result v3

    .line 377
    iget v5, v0, Landroidx/leanback/widget/HorizontalGridView;->mHighFadeShaderLength:I

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v10

    invoke-virtual {v8, v6, v6, v5, v10}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 378
    iget v5, v0, Landroidx/leanback/widget/HorizontalGridView;->mHighFadeShaderLength:I

    sub-int v5, v7, v5

    neg-int v5, v5

    int-to-float v5, v5

    invoke-virtual {v8, v5, v9}, Landroid/graphics/Canvas;->translate(FF)V

    .line 379
    invoke-super {v0, v8}, Landroidx/recyclerview/widget/RecyclerView;->draw(Landroid/graphics/Canvas;)V

    .line 380
    invoke-virtual {v8, v3}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 382
    iget-object v3, v0, Landroidx/leanback/widget/HorizontalGridView;->mTempPaint:Landroid/graphics/Paint;

    iget-object v5, v0, Landroidx/leanback/widget/HorizontalGridView;->mHighFadeShader:Landroid/graphics/LinearGradient;

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    const/4 v13, 0x0

    const/4 v14, 0x0

    .line 383
    iget v3, v0, Landroidx/leanback/widget/HorizontalGridView;->mHighFadeShaderLength:I

    int-to-float v15, v3

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v3

    int-to-float v3, v3

    iget-object v5, v0, Landroidx/leanback/widget/HorizontalGridView;->mTempPaint:Landroid/graphics/Paint;

    move-object v12, v8

    move/from16 v16, v3

    move-object/from16 v17, v5

    invoke-virtual/range {v12 .. v17}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 385
    iget-object v3, v0, Landroidx/leanback/widget/HorizontalGridView;->mTempRect:Landroid/graphics/Rect;

    iput v6, v3, Landroid/graphics/Rect;->left:I

    .line 386
    iget v5, v0, Landroidx/leanback/widget/HorizontalGridView;->mHighFadeShaderLength:I

    iput v5, v3, Landroid/graphics/Rect;->right:I

    sub-int v3, v7, v5

    int-to-float v3, v3

    .line 387
    invoke-virtual {v1, v3, v9}, Landroid/graphics/Canvas;->translate(FF)V

    .line 388
    iget-object v3, v0, Landroidx/leanback/widget/HorizontalGridView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2, v3, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 389
    iget v0, v0, Landroidx/leanback/widget/HorizontalGridView;->mHighFadeShaderLength:I

    sub-int/2addr v7, v0

    neg-int v0, v7

    int-to-float v0, v0

    invoke-virtual {v1, v0, v9}, Landroid/graphics/Canvas;->translate(FF)V

    :cond_8
    return-void
.end method

.method protected initAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CustomViewStyleable"
        }
    .end annotation

    .line 90
    invoke-virtual {p0, p1, p2}, Landroidx/leanback/widget/BaseGridView;->initBaseGridViewAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 91
    sget-object v2, Landroidx/leanback/widget/R$styleable;->lbHorizontalGridView:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v7

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, v7

    .line 92
    invoke-static/range {v0 .. v6}, Landroidx/core/view/ViewCompat;->saveAttributeDataForStyleable(Landroid/view/View;Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V

    .line 94
    invoke-virtual {p0, v7}, Landroidx/leanback/widget/HorizontalGridView;->setRowHeight(Landroid/content/res/TypedArray;)V

    .line 95
    sget p1, Landroidx/leanback/widget/R$styleable;->lbHorizontalGridView_numberOfRows:I

    const/4 p2, 0x1

    invoke-virtual {v7, p1, p2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/leanback/widget/HorizontalGridView;->setNumRows(I)V

    .line 96
    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    .line 97
    invoke-direct {p0}, Landroidx/leanback/widget/HorizontalGridView;->updateLayerType()V

    .line 98
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Landroidx/leanback/widget/HorizontalGridView;->mTempPaint:Landroid/graphics/Paint;

    .line 99
    new-instance p0, Landroid/graphics/PorterDuffXfermode;

    sget-object p2, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p0, p2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, p0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    return-void
.end method

.method public setNumRows(I)V
    .locals 1

    .line 114
    iget-object v0, p0, Landroidx/leanback/widget/BaseGridView;->mLayoutManager:Landroidx/leanback/widget/GridLayoutManager;

    invoke-virtual {v0, p1}, Landroidx/leanback/widget/GridLayoutManager;->setNumRows(I)V

    .line 115
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    return-void
.end method

.method public setRowHeight(I)V
    .locals 1

    .line 126
    iget-object v0, p0, Landroidx/leanback/widget/BaseGridView;->mLayoutManager:Landroidx/leanback/widget/GridLayoutManager;

    invoke-virtual {v0, p1}, Landroidx/leanback/widget/GridLayoutManager;->setRowHeight(I)V

    .line 127
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    return-void
.end method

.method setRowHeight(Landroid/content/res/TypedArray;)V
    .locals 2

    .line 103
    sget v0, Landroidx/leanback/widget/R$styleable;->lbHorizontalGridView_rowHeight:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 105
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result p1

    .line 106
    invoke-virtual {p0, p1}, Landroidx/leanback/widget/HorizontalGridView;->setRowHeight(I)V

    :cond_0
    return-void
.end method
