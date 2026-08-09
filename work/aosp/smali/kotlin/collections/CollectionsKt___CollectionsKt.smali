.class Lkotlin/collections/CollectionsKt___CollectionsKt;
.super Lkotlin/collections/CollectionsKt___CollectionsJvmKt;
.source "_Collections.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\n_Collections.kt\nKotlin\n*S Kotlin\n*F\n+ 1 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n+ 4 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n+ 5 Iterators.kt\nkotlin/collections/CollectionsKt__IteratorsKt\n*L\n1#1,3692:1\n288#1,2:3693\n518#1,7:3695\n533#1,6:3702\n857#1,2:3709\n788#1:3711\n1860#1,2:3712\n789#1,2:3714\n1862#1:3716\n791#1:3717\n1860#1,3:3718\n809#1,2:3721\n847#1,2:3723\n1253#1,4:3729\n1222#1,4:3733\n1238#1,4:3737\n1285#1,4:3741\n1446#1,5:3745\n1461#1,5:3750\n1502#1,3:3755\n1505#1,3:3765\n1520#1,3:3768\n1523#1,3:3778\n1620#1,3:3795\n1590#1,4:3798\n1579#1:3802\n1860#1,2:3803\n1862#1:3806\n1580#1:3807\n1860#1,3:3808\n1611#1:3811\n1851#1:3812\n1852#1:3814\n1612#1:3815\n1851#1,2:3816\n1860#1,3:3818\n2843#1,3:3821\n2846#1,6:3825\n2868#1,3:3831\n2871#1,7:3835\n857#1,2:3842\n819#1:3844\n847#1,2:3845\n819#1:3847\n847#1,2:3848\n819#1:3850\n847#1,2:3851\n3414#1,8:3857\n3442#1,7:3865\n3473#1,10:3872\n1#2:3708\n1#2:3805\n1#2:3813\n1#2:3824\n1#2:3834\n37#3,2:3725\n37#3,2:3727\n359#4,7:3758\n359#4,7:3771\n359#4,7:3781\n359#4,7:3788\n32#5,2:3853\n32#5,2:3855\n*S KotlinDebug\n*F\n+ 1 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n167#1:3693,2\n177#1:3695,7\n187#1:3702,6\n766#1:3709,2\n777#1:3711\n777#1:3712,2\n777#1:3714,2\n777#1:3716\n777#1:3717\n788#1:3718,3\n800#1:3721,2\n819#1:3723,2\n1180#1:3729,4\n1195#1:3733,4\n1209#1:3737,4\n1272#1:3741,4\n1360#1:3745,5\n1373#1:3750,5\n1477#1:3755,3\n1477#1:3765,3\n1490#1:3768,3\n1490#1:3778,3\n1549#1:3795,3\n1559#1:3798,4\n1569#1:3802\n1569#1:3803,2\n1569#1:3806\n1569#1:3807\n1579#1:3808,3\n1603#1:3811\n1603#1:3812\n1603#1:3814\n1603#1:3815\n1611#1:3816,2\n2641#1:3818,3\n2945#1:3821,3\n2945#1:3825,6\n2963#1:3831,3\n2963#1:3835,7\n3139#1:3842,2\n3152#1:3844\n3152#1:3845,2\n3166#1:3847\n3166#1:3848,2\n3180#1:3850\n3180#1:3851,2\n3403#1:3857,8\n3431#1:3865,7\n3460#1:3872,10\n1569#1:3805\n1603#1:3813\n2945#1:3824\n2963#1:3834\n1032#1:3725,2\n1075#1:3727,2\n1477#1:3758,7\n1490#1:3771,7\n1504#1:3781,7\n1522#1:3788,7\n3348#1:3853,2\n3390#1:3855,2\n*E\n"
.end annotation


# direct methods
.method public static contains(Ljava/lang/Iterable;Ljava/lang/Object;)Z
    .locals 1
    .param p0    # Ljava/lang/Iterable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+TT;>;TT;)Z"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    instance-of v0, p0, Ljava/util/Collection;

    if-eqz v0, :cond_0

    .line 75
    check-cast p0, Ljava/util/Collection;

    invoke-interface {p0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 76
    :cond_0
    invoke-static {p0, p1}, Lkotlin/collections/CollectionsKt___CollectionsKt;->indexOf(Ljava/lang/Iterable;Ljava/lang/Object;)I

    move-result p0

    if-ltz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final indexOf(Ljava/lang/Iterable;Ljava/lang/Object;)I
    .locals 2
    .param p0    # Ljava/lang/Iterable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+TT;>;TT;)I"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 313
    instance-of v0, p0, Ljava/util/List;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p0

    return p0

    :cond_0
    const/4 v0, 0x0

    .line 315
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    if-gez v0, :cond_1

    .line 316
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->throwIndexOverflow()V

    .line 317
    :cond_1
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    return v0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    const/4 p0, -0x1

    return p0
.end method

.method public static zip(Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/util/List;
    .locals 4
    .param p0    # Ljava/lang/Iterable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Iterable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+TT;>;",
            "Ljava/lang/Iterable<",
            "+TR;>;)",
            "Ljava/util/List<",
            "Lkotlin/Pair<",
            "TT;TR;>;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "other"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3442
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 3443
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 3444
    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {p0, v3}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result p0

    invoke-static {p1, v3}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result p1

    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    move-result p0

    invoke-direct {v2, p0}, Ljava/util/ArrayList;-><init>(I)V

    .line 3445
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 3446
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    .line 3431
    invoke-static {p0, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p0

    .line 3446
    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v2
.end method
