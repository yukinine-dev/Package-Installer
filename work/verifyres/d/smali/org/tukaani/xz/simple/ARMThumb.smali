.class public final Lorg/tukaani/xz/simple/ARMThumb;
.super Ljava/lang/Object;
.source "ARMThumb.java"

# interfaces
.implements Lorg/tukaani/xz/simple/SimpleFilter;


# instance fields
.field private final isEncoder:Z

.field private pos:I


# direct methods
.method public constructor <init>(ZI)V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-boolean p1, p0, Lorg/tukaani/xz/simple/ARMThumb;->isEncoder:Z

    add-int/lit8 p2, p2, 0x4

    .line 19
    iput p2, p0, Lorg/tukaani/xz/simple/ARMThumb;->pos:I

    return-void
.end method


# virtual methods
.method public code([BII)I
    .locals 8

    add-int/2addr p3, p2

    add-int/lit8 p3, p3, -0x4

    move v0, p2

    :goto_0
    if-gt v0, p3, :cond_2

    add-int/lit8 v1, v0, 0x1

    .line 27
    aget-byte v2, p1, v1

    and-int/lit16 v3, v2, 0xf8

    const/16 v4, 0xf0

    if-ne v3, v4, :cond_1

    add-int/lit8 v3, v0, 0x3

    aget-byte v5, p1, v3

    and-int/lit16 v6, v5, 0xf8

    const/16 v7, 0xf8

    if-ne v6, v7, :cond_1

    and-int/lit8 v2, v2, 0x7

    shl-int/lit8 v2, v2, 0x13

    .line 28
    aget-byte v6, p1, v0

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0xb

    or-int/2addr v2, v6

    and-int/lit8 v5, v5, 0x7

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v2, v5

    add-int/lit8 v5, v0, 0x2

    aget-byte v6, p1, v5

    and-int/lit16 v6, v6, 0xff

    or-int/2addr v2, v6

    shl-int/lit8 v2, v2, 0x1

    .line 35
    iget-boolean v6, p0, Lorg/tukaani/xz/simple/ARMThumb;->isEncoder:Z

    if-eqz v6, :cond_0

    .line 36
    iget v6, p0, Lorg/tukaani/xz/simple/ARMThumb;->pos:I

    add-int/2addr v6, v0

    sub-int/2addr v6, p2

    add-int/2addr v2, v6

    goto :goto_1

    .line 38
    :cond_0
    iget v6, p0, Lorg/tukaani/xz/simple/ARMThumb;->pos:I

    add-int/2addr v6, v0

    sub-int/2addr v6, p2

    sub-int/2addr v2, v6

    :goto_1
    ushr-int/lit8 v2, v2, 0x1

    ushr-int/lit8 v6, v2, 0x13

    and-int/lit8 v6, v6, 0x7

    or-int/2addr v4, v6

    int-to-byte v4, v4

    .line 41
    aput-byte v4, p1, v1

    ushr-int/lit8 v1, v2, 0xb

    int-to-byte v1, v1

    .line 42
    aput-byte v1, p1, v0

    ushr-int/lit8 v0, v2, 0x8

    and-int/lit8 v0, v0, 0x7

    or-int/2addr v0, v7

    int-to-byte v0, v0

    .line 43
    aput-byte v0, p1, v3

    int-to-byte v0, v2

    .line 44
    aput-byte v0, p1, v5

    move v0, v5

    :cond_1
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_2
    sub-int/2addr v0, p2

    .line 50
    iget p1, p0, Lorg/tukaani/xz/simple/ARMThumb;->pos:I

    add-int/2addr p1, v0

    iput p1, p0, Lorg/tukaani/xz/simple/ARMThumb;->pos:I

    return v0
.end method
