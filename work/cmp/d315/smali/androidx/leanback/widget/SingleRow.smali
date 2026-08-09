.class Landroidx/leanback/widget/SingleRow;
.super Landroidx/leanback/widget/Grid;
.source "SingleRow.java"


# instance fields
.field private final mTmpLocation:Landroidx/leanback/widget/Grid$Location;


# direct methods
.method constructor <init>()V
    .locals 2

    .line 31
    invoke-direct {p0}, Landroidx/leanback/widget/Grid;-><init>()V

    .line 29
    new-instance v0, Landroidx/leanback/widget/Grid$Location;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/leanback/widget/Grid$Location;-><init>(I)V

    iput-object v0, p0, Landroidx/leanback/widget/SingleRow;->mTmpLocation:Landroidx/leanback/widget/Grid$Location;

    const/4 v0, 0x1

    .line 32
    invoke-virtual {p0, v0}, Landroidx/leanback/widget/Grid;->setNumRows(I)V

    return-void
.end method


# virtual methods
.method protected final appendVisibleItems(IZ)Z
    .locals 9

    .line 106
    iget-object v0, p0, Landroidx/leanback/widget/Grid;->mProvider:Landroidx/leanback/widget/Grid$Provider;

    invoke-interface {v0}, Landroidx/leanback/widget/Grid$Provider;->getCount()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    if-nez p2, :cond_1

    .line 109
    invoke-virtual {p0, p1}, Landroidx/leanback/widget/Grid;->checkAppendOverLimit(I)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 114
    :cond_1
    invoke-virtual {p0}, Landroidx/leanback/widget/SingleRow;->getStartIndexForAppend()I

    move-result v0

    const/4 v2, 0x1

    move v3, v1

    :goto_0
    iget-object v4, p0, Landroidx/leanback/widget/Grid;->mProvider:Landroidx/leanback/widget/Grid$Provider;

    invoke-interface {v4}, Landroidx/leanback/widget/Grid$Provider;->getCount()I

    move-result v4

    if-ge v0, v4, :cond_7

    .line 115
    iget-object v3, p0, Landroidx/leanback/widget/Grid;->mProvider:Landroidx/leanback/widget/Grid$Provider;

    iget-object v4, p0, Landroidx/leanback/widget/Grid;->mTmpItem:[Ljava/lang/Object;

    invoke-interface {v3, v0, v2, v4, v1}, Landroidx/leanback/widget/Grid$Provider;->createItem(IZ[Ljava/lang/Object;Z)I

    move-result v6

    .line 117
    iget v3, p0, Landroidx/leanback/widget/Grid;->mFirstVisibleIndex:I

    if-ltz v3, :cond_4

    iget v3, p0, Landroidx/leanback/widget/Grid;->mLastVisibleIndex:I

    if-gez v3, :cond_2

    goto :goto_2

    .line 121
    :cond_2
    iget-boolean v3, p0, Landroidx/leanback/widget/Grid;->mReversedFlow:Z

    if-eqz v3, :cond_3

    .line 122
    iget-object v3, p0, Landroidx/leanback/widget/Grid;->mProvider:Landroidx/leanback/widget/Grid$Provider;

    add-int/lit8 v4, v0, -0x1

    invoke-interface {v3, v4}, Landroidx/leanback/widget/Grid$Provider;->getEdge(I)I

    move-result v3

    iget-object v5, p0, Landroidx/leanback/widget/Grid;->mProvider:Landroidx/leanback/widget/Grid$Provider;

    invoke-interface {v5, v4}, Landroidx/leanback/widget/Grid$Provider;->getSize(I)I

    move-result v4

    sub-int/2addr v3, v4

    iget v4, p0, Landroidx/leanback/widget/Grid;->mSpacing:I

    sub-int/2addr v3, v4

    goto :goto_1

    .line 124
    :cond_3
    iget-object v3, p0, Landroidx/leanback/widget/Grid;->mProvider:Landroidx/leanback/widget/Grid$Provider;

    add-int/lit8 v4, v0, -0x1

    invoke-interface {v3, v4}, Landroidx/leanback/widget/Grid$Provider;->getEdge(I)I

    move-result v3

    iget-object v5, p0, Landroidx/leanback/widget/Grid;->mProvider:Landroidx/leanback/widget/Grid$Provider;

    invoke-interface {v5, v4}, Landroidx/leanback/widget/Grid$Provider;->getSize(I)I

    move-result v4

    add-int/2addr v3, v4

    iget v4, p0, Landroidx/leanback/widget/Grid;->mSpacing:I

    add-int/2addr v3, v4

    .line 126
    :goto_1
    iput v0, p0, Landroidx/leanback/widget/Grid;->mLastVisibleIndex:I

    goto :goto_4

    .line 118
    :cond_4
    :goto_2
    iget-boolean v3, p0, Landroidx/leanback/widget/Grid;->mReversedFlow:Z

    if-eqz v3, :cond_5

    const v3, 0x7fffffff

    goto :goto_3

    :cond_5
    const/high16 v3, -0x80000000

    .line 119
    :goto_3
    iput v0, p0, Landroidx/leanback/widget/Grid;->mFirstVisibleIndex:I

    iput v0, p0, Landroidx/leanback/widget/Grid;->mLastVisibleIndex:I

    :goto_4
    move v8, v3

    .line 128
    iget-object v3, p0, Landroidx/leanback/widget/Grid;->mProvider:Landroidx/leanback/widget/Grid$Provider;

    iget-object v4, p0, Landroidx/leanback/widget/Grid;->mTmpItem:[Ljava/lang/Object;

    aget-object v4, v4, v1

    const/4 v7, 0x0

    move v5, v0

    invoke-interface/range {v3 .. v8}, Landroidx/leanback/widget/Grid$Provider;->addItem(Ljava/lang/Object;IIII)V

    if-nez p2, :cond_8

    .line 130
    invoke-virtual {p0, p1}, Landroidx/leanback/widget/Grid;->checkAppendOverLimit(I)Z

    move-result v3

    if-eqz v3, :cond_6

    goto :goto_5

    :cond_6
    add-int/lit8 v0, v0, 0x1

    move v3, v2

    goto :goto_0

    :cond_7
    move v2, v3

    :cond_8
    :goto_5
    return v2
.end method

.method public collectAdjacentPrefetchPositions(IILandroidx/recyclerview/widget/RecyclerView$LayoutManager$LayoutPrefetchRegistry;)V
    .locals 3

    .line 142
    iget-boolean v0, p0, Landroidx/leanback/widget/Grid;->mReversedFlow:Z

    if-eqz v0, :cond_0

    if-lez p2, :cond_3

    goto :goto_0

    :cond_0
    if-gez p2, :cond_3

    .line 144
    :goto_0
    invoke-virtual {p0}, Landroidx/leanback/widget/Grid;->getFirstVisibleIndex()I

    move-result p2

    if-nez p2, :cond_1

    return-void

    .line 148
    :cond_1
    invoke-virtual {p0}, Landroidx/leanback/widget/SingleRow;->getStartIndexForPrepend()I

    move-result p2

    .line 149
    iget-object v0, p0, Landroidx/leanback/widget/Grid;->mProvider:Landroidx/leanback/widget/Grid$Provider;

    iget v1, p0, Landroidx/leanback/widget/Grid;->mFirstVisibleIndex:I

    invoke-interface {v0, v1}, Landroidx/leanback/widget/Grid$Provider;->getEdge(I)I

    move-result v0

    .line 150
    iget-boolean v1, p0, Landroidx/leanback/widget/Grid;->mReversedFlow:Z

    iget p0, p0, Landroidx/leanback/widget/Grid;->mSpacing:I

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    neg-int p0, p0

    :goto_1
    add-int/2addr v0, p0

    goto :goto_2

    .line 153
    :cond_3
    invoke-virtual {p0}, Landroidx/leanback/widget/Grid;->getLastVisibleIndex()I

    move-result p2

    iget-object v0, p0, Landroidx/leanback/widget/Grid;->mProvider:Landroidx/leanback/widget/Grid$Provider;

    invoke-interface {v0}, Landroidx/leanback/widget/Grid$Provider;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p2, v0, :cond_4

    return-void

    .line 157
    :cond_4
    invoke-virtual {p0}, Landroidx/leanback/widget/SingleRow;->getStartIndexForAppend()I

    move-result p2

    .line 158
    iget-object v0, p0, Landroidx/leanback/widget/Grid;->mProvider:Landroidx/leanback/widget/Grid$Provider;

    iget v1, p0, Landroidx/leanback/widget/Grid;->mLastVisibleIndex:I

    invoke-interface {v0, v1}, Landroidx/leanback/widget/Grid$Provider;->getSize(I)I

    move-result v0

    iget v1, p0, Landroidx/leanback/widget/Grid;->mSpacing:I

    add-int/2addr v0, v1

    .line 159
    iget-object v1, p0, Landroidx/leanback/widget/Grid;->mProvider:Landroidx/leanback/widget/Grid$Provider;

    iget v2, p0, Landroidx/leanback/widget/Grid;->mLastVisibleIndex:I

    invoke-interface {v1, v2}, Landroidx/leanback/widget/Grid$Provider;->getEdge(I)I

    move-result v1

    .line 160
    iget-boolean p0, p0, Landroidx/leanback/widget/Grid;->mReversedFlow:Z

    if-eqz p0, :cond_5

    neg-int v0, v0

    :cond_5
    add-int/2addr v0, v1

    :goto_2
    sub-int/2addr v0, p1

    .line 163
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result p0

    .line 164
    invoke-interface {p3, p2, p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager$LayoutPrefetchRegistry;->addPosition(II)V

    return-void
.end method

.method protected final findRowMax(ZI[I)I
    .locals 0

    if-eqz p3, :cond_0

    const/4 p1, 0x0

    .line 189
    aput p1, p3, p1

    const/4 p1, 0x1

    .line 190
    aput p2, p3, p1

    .line 192
    :cond_0
    iget-boolean p1, p0, Landroidx/leanback/widget/Grid;->mReversedFlow:Z

    if-eqz p1, :cond_1

    iget-object p0, p0, Landroidx/leanback/widget/Grid;->mProvider:Landroidx/leanback/widget/Grid$Provider;

    invoke-interface {p0, p2}, Landroidx/leanback/widget/Grid$Provider;->getEdge(I)I

    move-result p0

    goto :goto_0

    .line 193
    :cond_1
    iget-object p1, p0, Landroidx/leanback/widget/Grid;->mProvider:Landroidx/leanback/widget/Grid$Provider;

    invoke-interface {p1, p2}, Landroidx/leanback/widget/Grid$Provider;->getEdge(I)I

    move-result p1

    iget-object p0, p0, Landroidx/leanback/widget/Grid;->mProvider:Landroidx/leanback/widget/Grid$Provider;

    invoke-interface {p0, p2}, Landroidx/leanback/widget/Grid$Provider;->getSize(I)I

    move-result p0

    add-int/2addr p0, p1

    :goto_0
    return p0
.end method

.method protected final findRowMin(ZI[I)I
    .locals 0

    if-eqz p3, :cond_0

    const/4 p1, 0x0

    .line 179
    aput p1, p3, p1

    const/4 p1, 0x1

    .line 180
    aput p2, p3, p1

    .line 182
    :cond_0
    iget-boolean p1, p0, Landroidx/leanback/widget/Grid;->mReversedFlow:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Landroidx/leanback/widget/Grid;->mProvider:Landroidx/leanback/widget/Grid$Provider;

    invoke-interface {p1, p2}, Landroidx/leanback/widget/Grid$Provider;->getEdge(I)I

    move-result p1

    iget-object p0, p0, Landroidx/leanback/widget/Grid;->mProvider:Landroidx/leanback/widget/Grid$Provider;

    invoke-interface {p0, p2}, Landroidx/leanback/widget/Grid$Provider;->getSize(I)I

    move-result p0

    sub-int/2addr p1, p0

    goto :goto_0

    .line 183
    :cond_1
    iget-object p0, p0, Landroidx/leanback/widget/Grid;->mProvider:Landroidx/leanback/widget/Grid$Provider;

    invoke-interface {p0, p2}, Landroidx/leanback/widget/Grid$Provider;->getEdge(I)I

    move-result p1

    :goto_0
    return p1
.end method

.method public final getItemPositionsInRows(II)[Landroidx/collection/CircularIntArray;
    .locals 2

    .line 170
    iget-object v0, p0, Landroidx/leanback/widget/Grid;->mTmpItemPositionsInRows:[Landroidx/collection/CircularIntArray;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroidx/collection/CircularIntArray;->clear()V

    .line 171
    iget-object v0, p0, Landroidx/leanback/widget/Grid;->mTmpItemPositionsInRows:[Landroidx/collection/CircularIntArray;

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Landroidx/collection/CircularIntArray;->addLast(I)V

    .line 172
    iget-object p1, p0, Landroidx/leanback/widget/Grid;->mTmpItemPositionsInRows:[Landroidx/collection/CircularIntArray;

    aget-object p1, p1, v1

    invoke-virtual {p1, p2}, Landroidx/collection/CircularIntArray;->addLast(I)V

    .line 173
    iget-object p0, p0, Landroidx/leanback/widget/Grid;->mTmpItemPositionsInRows:[Landroidx/collection/CircularIntArray;

    return-object p0
.end method

.method public final getLocation(I)Landroidx/leanback/widget/Grid$Location;
    .locals 0

    .line 38
    iget-object p0, p0, Landroidx/leanback/widget/SingleRow;->mTmpLocation:Landroidx/leanback/widget/Grid$Location;

    return-object p0
.end method

.method getStartIndexForAppend()I
    .locals 2

    .line 52
    iget v0, p0, Landroidx/leanback/widget/Grid;->mLastVisibleIndex:I

    if-ltz v0, :cond_0

    add-int/lit8 v0, v0, 0x1

    return v0

    .line 54
    :cond_0
    iget v0, p0, Landroidx/leanback/widget/Grid;->mStartIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 55
    iget-object p0, p0, Landroidx/leanback/widget/Grid;->mProvider:Landroidx/leanback/widget/Grid$Provider;

    invoke-interface {p0}, Landroidx/leanback/widget/Grid$Provider;->getCount()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    invoke-static {v0, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method getStartIndexForPrepend()I
    .locals 2

    .line 62
    iget v0, p0, Landroidx/leanback/widget/Grid;->mFirstVisibleIndex:I

    if-ltz v0, :cond_0

    add-int/lit8 v0, v0, -0x1

    return v0

    .line 64
    :cond_0
    iget v0, p0, Landroidx/leanback/widget/Grid;->mStartIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 65
    iget-object p0, p0, Landroidx/leanback/widget/Grid;->mProvider:Landroidx/leanback/widget/Grid$Provider;

    invoke-interface {p0}, Landroidx/leanback/widget/Grid$Provider;->getCount()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    invoke-static {v0, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0

    .line 67
    :cond_1
    iget-object p0, p0, Landroidx/leanback/widget/Grid;->mProvider:Landroidx/leanback/widget/Grid$Provider;

    invoke-interface {p0}, Landroidx/leanback/widget/Grid$Provider;->getCount()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    return p0
.end method

.method protected final prependVisibleItems(IZ)Z
    .locals 10

    .line 73
    iget-object v0, p0, Landroidx/leanback/widget/Grid;->mProvider:Landroidx/leanback/widget/Grid$Provider;

    invoke-interface {v0}, Landroidx/leanback/widget/Grid$Provider;->getCount()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    if-nez p2, :cond_1

    .line 76
    invoke-virtual {p0, p1}, Landroidx/leanback/widget/Grid;->checkPrependOverLimit(I)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 80
    :cond_1
    iget-object v0, p0, Landroidx/leanback/widget/Grid;->mProvider:Landroidx/leanback/widget/Grid$Provider;

    invoke-interface {v0}, Landroidx/leanback/widget/Grid$Provider;->getMinIndex()I

    move-result v0

    .line 81
    invoke-virtual {p0}, Landroidx/leanback/widget/SingleRow;->getStartIndexForPrepend()I

    move-result v2

    const/4 v3, 0x1

    move v4, v1

    :goto_0
    if-lt v2, v0, :cond_7

    .line 82
    iget-object v4, p0, Landroidx/leanback/widget/Grid;->mProvider:Landroidx/leanback/widget/Grid$Provider;

    iget-object v5, p0, Landroidx/leanback/widget/Grid;->mTmpItem:[Ljava/lang/Object;

    invoke-interface {v4, v2, v1, v5, v1}, Landroidx/leanback/widget/Grid$Provider;->createItem(IZ[Ljava/lang/Object;Z)I

    move-result v7

    .line 84
    iget v4, p0, Landroidx/leanback/widget/Grid;->mFirstVisibleIndex:I

    if-ltz v4, :cond_4

    iget v4, p0, Landroidx/leanback/widget/Grid;->mLastVisibleIndex:I

    if-gez v4, :cond_2

    goto :goto_2

    .line 88
    :cond_2
    iget-boolean v4, p0, Landroidx/leanback/widget/Grid;->mReversedFlow:Z

    if-eqz v4, :cond_3

    .line 89
    iget-object v4, p0, Landroidx/leanback/widget/Grid;->mProvider:Landroidx/leanback/widget/Grid$Provider;

    add-int/lit8 v5, v2, 0x1

    invoke-interface {v4, v5}, Landroidx/leanback/widget/Grid$Provider;->getEdge(I)I

    move-result v4

    iget v5, p0, Landroidx/leanback/widget/Grid;->mSpacing:I

    add-int/2addr v4, v5

    add-int/2addr v4, v7

    goto :goto_1

    .line 91
    :cond_3
    iget-object v4, p0, Landroidx/leanback/widget/Grid;->mProvider:Landroidx/leanback/widget/Grid$Provider;

    add-int/lit8 v5, v2, 0x1

    invoke-interface {v4, v5}, Landroidx/leanback/widget/Grid$Provider;->getEdge(I)I

    move-result v4

    iget v5, p0, Landroidx/leanback/widget/Grid;->mSpacing:I

    sub-int/2addr v4, v5

    sub-int/2addr v4, v7

    .line 93
    :goto_1
    iput v2, p0, Landroidx/leanback/widget/Grid;->mFirstVisibleIndex:I

    goto :goto_4

    .line 85
    :cond_4
    :goto_2
    iget-boolean v4, p0, Landroidx/leanback/widget/Grid;->mReversedFlow:Z

    if-eqz v4, :cond_5

    const/high16 v4, -0x80000000

    goto :goto_3

    :cond_5
    const v4, 0x7fffffff

    .line 86
    :goto_3
    iput v2, p0, Landroidx/leanback/widget/Grid;->mFirstVisibleIndex:I

    iput v2, p0, Landroidx/leanback/widget/Grid;->mLastVisibleIndex:I

    :goto_4
    move v9, v4

    .line 95
    iget-object v4, p0, Landroidx/leanback/widget/Grid;->mProvider:Landroidx/leanback/widget/Grid$Provider;

    iget-object v5, p0, Landroidx/leanback/widget/Grid;->mTmpItem:[Ljava/lang/Object;

    aget-object v5, v5, v1

    const/4 v8, 0x0

    move v6, v2

    invoke-interface/range {v4 .. v9}, Landroidx/leanback/widget/Grid$Provider;->addItem(Ljava/lang/Object;IIII)V

    if-nez p2, :cond_8

    .line 97
    invoke-virtual {p0, p1}, Landroidx/leanback/widget/Grid;->checkPrependOverLimit(I)Z

    move-result v4

    if-eqz v4, :cond_6

    goto :goto_5

    :cond_6
    add-int/lit8 v2, v2, -0x1

    move v4, v3

    goto :goto_0

    :cond_7
    move v3, v4

    :cond_8
    :goto_5
    return v3
.end method
