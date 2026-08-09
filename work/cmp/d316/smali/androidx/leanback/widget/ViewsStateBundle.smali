.class final Landroidx/leanback/widget/ViewsStateBundle;
.super Ljava/lang/Object;
.source "ViewsStateBundle.java"


# instance fields
.field private mChildStates:Landroidx/collection/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/LruCache<",
            "Ljava/lang/String;",
            "Landroid/util/SparseArray<",
            "Landroid/os/Parcelable;",
            ">;>;"
        }
    .end annotation
.end field

.field private mLimitNumber:I

.field private mSavePolicy:I


# direct methods
.method constructor <init>()V
    .locals 1

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 56
    iput v0, p0, Landroidx/leanback/widget/ViewsStateBundle;->mSavePolicy:I

    const/16 v0, 0x64

    .line 57
    iput v0, p0, Landroidx/leanback/widget/ViewsStateBundle;->mLimitNumber:I

    return-void
.end method

.method static getSaveStatesKey(I)Ljava/lang/String;
    .locals 0

    .line 223
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private saveViewUnchecked(Landroid/view/View;I)V
    .locals 1

    .line 214
    iget-object v0, p0, Landroidx/leanback/widget/ViewsStateBundle;->mChildStates:Landroidx/collection/LruCache;

    if-eqz v0, :cond_0

    .line 215
    invoke-static {p2}, Landroidx/leanback/widget/ViewsStateBundle;->getSaveStatesKey(I)Ljava/lang/String;

    move-result-object p2

    .line 216
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 217
    invoke-virtual {p1, v0}, Landroid/view/View;->saveHierarchyState(Landroid/util/SparseArray;)V

    .line 218
    iget-object p0, p0, Landroidx/leanback/widget/ViewsStateBundle;->mChildStates:Landroidx/collection/LruCache;

    invoke-virtual {p0, p2, v0}, Landroidx/collection/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method


# virtual methods
.method clear()V
    .locals 0

    .line 61
    iget-object p0, p0, Landroidx/leanback/widget/ViewsStateBundle;->mChildStates:Landroidx/collection/LruCache;

    if-eqz p0, :cond_0

    .line 62
    invoke-virtual {p0}, Landroidx/collection/LruCache;->evictAll()V

    :cond_0
    return-void
.end method

.method loadFromBundle(Landroid/os/Bundle;)V
    .locals 4

    .line 90
    iget-object v0, p0, Landroidx/leanback/widget/ViewsStateBundle;->mChildStates:Landroidx/collection/LruCache;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 91
    invoke-virtual {v0}, Landroidx/collection/LruCache;->evictAll()V

    .line 92
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 93
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 94
    iget-object v2, p0, Landroidx/leanback/widget/ViewsStateBundle;->mChildStates:Landroidx/collection/LruCache;

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroidx/collection/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method loadView(Landroid/view/View;I)V
    .locals 1

    .line 138
    iget-object v0, p0, Landroidx/leanback/widget/ViewsStateBundle;->mChildStates:Landroidx/collection/LruCache;

    if-eqz v0, :cond_0

    .line 139
    invoke-static {p2}, Landroidx/leanback/widget/ViewsStateBundle;->getSaveStatesKey(I)Ljava/lang/String;

    move-result-object p2

    .line 142
    iget-object p0, p0, Landroidx/leanback/widget/ViewsStateBundle;->mChildStates:Landroidx/collection/LruCache;

    invoke-virtual {p0, p2}, Landroidx/collection/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/SparseArray;

    if-eqz p0, :cond_0

    .line 144
    invoke-virtual {p1, p0}, Landroid/view/View;->restoreHierarchyState(Landroid/util/SparseArray;)V

    :cond_0
    return-void
.end method

.method remove(I)V
    .locals 1

    .line 67
    iget-object v0, p0, Landroidx/leanback/widget/ViewsStateBundle;->mChildStates:Landroidx/collection/LruCache;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/collection/LruCache;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    iget-object p0, p0, Landroidx/leanback/widget/ViewsStateBundle;->mChildStates:Landroidx/collection/LruCache;

    invoke-static {p1}, Landroidx/leanback/widget/ViewsStateBundle;->getSaveStatesKey(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/collection/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method saveAsBundle()Landroid/os/Bundle;
    .locals 3

    .line 76
    iget-object v0, p0, Landroidx/leanback/widget/ViewsStateBundle;->mChildStates:Landroidx/collection/LruCache;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroidx/collection/LruCache;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 79
    :cond_0
    iget-object p0, p0, Landroidx/leanback/widget/ViewsStateBundle;->mChildStates:Landroidx/collection/LruCache;

    invoke-virtual {p0}, Landroidx/collection/LruCache;->snapshot()Ljava/util/Map;

    move-result-object p0

    .line 80
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 82
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 83
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 84
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseArray;

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    goto :goto_0

    :cond_1
    return-object v0

    :cond_2
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method

.method saveOffscreenView(Landroid/view/View;I)V
    .locals 2

    .line 177
    iget v0, p0, Landroidx/leanback/widget/ViewsStateBundle;->mSavePolicy:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 180
    :cond_0
    invoke-direct {p0, p1, p2}, Landroidx/leanback/widget/ViewsStateBundle;->saveViewUnchecked(Landroid/view/View;I)V

    goto :goto_0

    .line 183
    :cond_1
    invoke-virtual {p0, p2}, Landroidx/leanback/widget/ViewsStateBundle;->remove(I)V

    :goto_0
    return-void
.end method

.method saveOnScreenView(Landroid/os/Bundle;Landroid/view/View;I)Landroid/os/Bundle;
    .locals 0

    .line 158
    iget p0, p0, Landroidx/leanback/widget/ViewsStateBundle;->mSavePolicy:I

    if-eqz p0, :cond_1

    .line 159
    invoke-static {p3}, Landroidx/leanback/widget/ViewsStateBundle;->getSaveStatesKey(I)Ljava/lang/String;

    move-result-object p0

    .line 160
    new-instance p3, Landroid/util/SparseArray;

    invoke-direct {p3}, Landroid/util/SparseArray;-><init>()V

    .line 161
    invoke-virtual {p2, p3}, Landroid/view/View;->saveHierarchyState(Landroid/util/SparseArray;)V

    if-nez p1, :cond_0

    .line 163
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 165
    :cond_0
    invoke-virtual {p1, p0, p3}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    :cond_1
    return-object p1
.end method
