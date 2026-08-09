.class Lcom/android/packageinstaller/EventResultPersister;
.super Ljava/lang/Object;
.source "EventResultPersister.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/packageinstaller/EventResultPersister$OutOfIdsException;,
        Lcom/android/packageinstaller/EventResultPersister$EventResult;,
        Lcom/android/packageinstaller/EventResultPersister$EventResultObserver;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "EventResultPersister"


# instance fields
.field private mCounter:I

.field private mIsPersistScheduled:Z

.field private mIsPersistingStateValid:Z

.field private final mLock:Ljava/lang/Object;

.field private final mObservers:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/packageinstaller/EventResultPersister$EventResultObserver;",
            ">;"
        }
    .end annotation
.end field

.field private final mResults:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/packageinstaller/EventResultPersister$EventResult;",
            ">;"
        }
    .end annotation
.end field

.field private final mResultsFile:Landroid/util/AtomicFile;


# direct methods
.method public static synthetic $r8$lambda$KaPPE-b-3JH14_8y0xwILWII7xg(Lcom/android/packageinstaller/EventResultPersister;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/packageinstaller/EventResultPersister;->lambda$writeState$0()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Ljava/io/File;)V
    .locals 10

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/packageinstaller/EventResultPersister;->mLock:Ljava/lang/Object;

    .line 64
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/packageinstaller/EventResultPersister;->mResults:Landroid/util/SparseArray;

    .line 69
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/packageinstaller/EventResultPersister;->mObservers:Landroid/util/SparseArray;

    .line 92
    new-instance v0, Landroid/util/AtomicFile;

    invoke-direct {v0, p1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lcom/android/packageinstaller/EventResultPersister;->mResultsFile:Landroid/util/AtomicFile;

    const p1, -0x7fffffff

    .line 93
    iput p1, p0, Lcom/android/packageinstaller/EventResultPersister;->mCounter:I

    .line 95
    :try_start_0
    invoke-virtual {v0}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    .line 97
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 99
    invoke-static {v0}, Lcom/android/packageinstaller/EventResultPersister;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 100
    :goto_0
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3

    .line 101
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "results"

    .line 102
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v1, "counter"

    .line 103
    invoke-static {v0, v1}, Lcom/android/packageinstaller/EventResultPersister;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/packageinstaller/EventResultPersister;->mCounter:I

    goto :goto_1

    :cond_0
    const-string v2, "result"

    .line 104
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "id"

    .line 105
    invoke-static {v0, v1}, Lcom/android/packageinstaller/EventResultPersister;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v1

    const-string v2, "status"

    .line 106
    invoke-static {v0, v2}, Lcom/android/packageinstaller/EventResultPersister;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v5

    const-string v2, "legacyStatus"

    .line 107
    invoke-static {v0, v2}, Lcom/android/packageinstaller/EventResultPersister;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v6

    const-string v2, "statusMessage"

    .line 108
    invoke-static {v0, v2}, Lcom/android/packageinstaller/EventResultPersister;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 110
    iget-object v2, p0, Lcom/android/packageinstaller/EventResultPersister;->mResults:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    .line 114
    iget-object v2, p0, Lcom/android/packageinstaller/EventResultPersister;->mResults:Landroid/util/SparseArray;

    new-instance v9, Lcom/android/packageinstaller/EventResultPersister$EventResult;

    const/4 v8, 0x0

    move-object v3, v9

    move-object v4, p0

    invoke-direct/range {v3 .. v8}, Lcom/android/packageinstaller/EventResultPersister$EventResult;-><init>(Lcom/android/packageinstaller/EventResultPersister;IILjava/lang/String;Lcom/android/packageinstaller/EventResultPersister$EventResult-IA;)V

    invoke-virtual {v2, v1, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 119
    :goto_1
    invoke-static {v0}, Lcom/android/packageinstaller/EventResultPersister;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    .line 111
    :cond_1
    new-instance v0, Ljava/lang/Exception;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " has two results"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 116
    :cond_2
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "unexpected tag"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    if-eqz p1, :cond_5

    .line 121
    :try_start_2
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    :catchall_0
    move-exception v0

    if-eqz p1, :cond_4

    .line 95
    :try_start_3
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p1

    :try_start_4
    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    :goto_2
    throw v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 122
    :catch_0
    iget-object p1, p0, Lcom/android/packageinstaller/EventResultPersister;->mResults:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->clear()V

    .line 123
    invoke-direct {p0}, Lcom/android/packageinstaller/EventResultPersister;->writeState()V

    :cond_5
    :goto_3
    return-void
.end method

.method private synthetic lambda$writeState$0()V
    .locals 9

    .line 235
    :goto_0
    iget-object v0, p0, Lcom/android/packageinstaller/EventResultPersister;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 236
    :try_start_0
    iget v1, p0, Lcom/android/packageinstaller/EventResultPersister;->mCounter:I

    .line 237
    iget-object v2, p0, Lcom/android/packageinstaller/EventResultPersister;->mResults:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->clone()Landroid/util/SparseArray;

    move-result-object v2

    const/4 v3, 0x1

    .line 238
    iput-boolean v3, p0, Lcom/android/packageinstaller/EventResultPersister;->mIsPersistingStateValid:Z

    .line 239
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v0, 0x0

    const/4 v4, 0x0

    .line 243
    :try_start_1
    iget-object v5, p0, Lcom/android/packageinstaller/EventResultPersister;->mResultsFile:Landroid/util/AtomicFile;

    invoke-virtual {v5}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v5
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 244
    :try_start_2
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v6

    .line 245
    sget-object v7, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v7}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v5, v7}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 246
    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v6, v4, v7}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v7, "http://xmlpull.org/v1/doc/features.html#indent-output"

    .line 247
    invoke-interface {v6, v7, v3}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    const-string v3, "results"

    .line 249
    invoke-interface {v6, v4, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v3, "counter"

    .line 250
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v6, v4, v3, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 252
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v1

    move v3, v0

    :goto_1
    if-ge v3, v1, :cond_1

    const-string v7, "result"

    .line 254
    invoke-interface {v6, v4, v7}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v7, "id"

    .line 256
    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    .line 255
    invoke-interface {v6, v4, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v7, "status"

    .line 258
    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/packageinstaller/EventResultPersister$EventResult;

    iget v8, v8, Lcom/android/packageinstaller/EventResultPersister$EventResult;->status:I

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    .line 257
    invoke-interface {v6, v4, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v7, "legacyStatus"

    .line 260
    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/packageinstaller/EventResultPersister$EventResult;

    iget v8, v8, Lcom/android/packageinstaller/EventResultPersister$EventResult;->legacyStatus:I

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    .line 259
    invoke-interface {v6, v4, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 261
    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/packageinstaller/EventResultPersister$EventResult;

    iget-object v7, v7, Lcom/android/packageinstaller/EventResultPersister$EventResult;->message:Ljava/lang/String;

    if-eqz v7, :cond_0

    const-string v7, "statusMessage"

    .line 263
    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/packageinstaller/EventResultPersister$EventResult;

    iget-object v8, v8, Lcom/android/packageinstaller/EventResultPersister$EventResult;->message:Ljava/lang/String;

    .line 262
    invoke-interface {v6, v4, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_0
    const-string v7, "result"

    .line 265
    invoke-interface {v6, v4, v7}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    const-string v1, "results"

    .line 268
    invoke-interface {v6, v4, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 269
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 271
    iget-object v1, p0, Lcom/android/packageinstaller/EventResultPersister;->mResultsFile:Landroid/util/AtomicFile;

    invoke-virtual {v1, v5}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    :catch_0
    move-exception v1

    move-object v4, v5

    goto :goto_2

    :catch_1
    move-exception v1

    :goto_2
    if-eqz v4, :cond_2

    .line 274
    iget-object v2, p0, Lcom/android/packageinstaller/EventResultPersister;->mResultsFile:Landroid/util/AtomicFile;

    invoke-virtual {v2, v4}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 277
    :cond_2
    sget-object v2, Lcom/android/packageinstaller/EventResultPersister;->LOG_TAG:Ljava/lang/String;

    const-string v3, "error writing results"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 278
    iget-object v1, p0, Lcom/android/packageinstaller/EventResultPersister;->mResultsFile:Landroid/util/AtomicFile;

    invoke-virtual {v1}, Landroid/util/AtomicFile;->delete()V

    .line 283
    :goto_3
    iget-object v1, p0, Lcom/android/packageinstaller/EventResultPersister;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 284
    :try_start_3
    iget-boolean v2, p0, Lcom/android/packageinstaller/EventResultPersister;->mIsPersistingStateValid:Z

    if-eqz v2, :cond_3

    .line 285
    iput-boolean v0, p0, Lcom/android/packageinstaller/EventResultPersister;->mIsPersistScheduled:Z

    .line 286
    monitor-exit v1

    return-void

    .line 288
    :cond_3
    monitor-exit v1

    goto/16 :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0

    :catchall_1
    move-exception p0

    .line 239
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p0
.end method

.method private static nextElement(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 136
    :cond_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    :cond_1
    return-void
.end method

.method private static readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I
    .locals 1

    const/4 v0, 0x0

    .line 148
    invoke-interface {p0, v0, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private static readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 159
    invoke-interface {p0, v0, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private writeState()V
    .locals 2

    .line 223
    iget-object v0, p0, Lcom/android/packageinstaller/EventResultPersister;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 224
    :try_start_0
    iput-boolean v1, p0, Lcom/android/packageinstaller/EventResultPersister;->mIsPersistingStateValid:Z

    .line 226
    iget-boolean v1, p0, Lcom/android/packageinstaller/EventResultPersister;->mIsPersistScheduled:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    .line 227
    iput-boolean v1, p0, Lcom/android/packageinstaller/EventResultPersister;->mIsPersistScheduled:Z

    .line 229
    new-instance v1, Lcom/android/packageinstaller/EventResultPersister$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/packageinstaller/EventResultPersister$$ExternalSyntheticLambda0;-><init>(Lcom/android/packageinstaller/EventResultPersister;)V

    invoke-static {v1}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 292
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method addObserver(ILcom/android/packageinstaller/EventResultPersister$EventResultObserver;)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/packageinstaller/EventResultPersister$OutOfIdsException;
        }
    .end annotation

    .line 304
    iget-object v0, p0, Lcom/android/packageinstaller/EventResultPersister;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, -0x1

    const/high16 v2, -0x80000000

    if-ne p1, v2, :cond_0

    .line 308
    :try_start_0
    invoke-virtual {p0}, Lcom/android/packageinstaller/EventResultPersister;->getNewId()I

    move-result p1

    goto :goto_0

    .line 310
    :cond_0
    iget-object v1, p0, Lcom/android/packageinstaller/EventResultPersister;->mResults:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v1

    :goto_0
    if-ltz v1, :cond_1

    .line 315
    iget-object v2, p0, Lcom/android/packageinstaller/EventResultPersister;->mResults:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/packageinstaller/EventResultPersister$EventResult;

    .line 317
    iget v3, v2, Lcom/android/packageinstaller/EventResultPersister$EventResult;->status:I

    iget v4, v2, Lcom/android/packageinstaller/EventResultPersister$EventResult;->legacyStatus:I

    iget-object v2, v2, Lcom/android/packageinstaller/EventResultPersister$EventResult;->message:Ljava/lang/String;

    invoke-interface {p2, v3, v4, v2}, Lcom/android/packageinstaller/EventResultPersister$EventResultObserver;->onResult(IILjava/lang/String;)V

    .line 318
    iget-object p2, p0, Lcom/android/packageinstaller/EventResultPersister;->mResults:Landroid/util/SparseArray;

    invoke-virtual {p2, v1}, Landroid/util/SparseArray;->removeAt(I)V

    .line 319
    invoke-direct {p0}, Lcom/android/packageinstaller/EventResultPersister;->writeState()V

    goto :goto_1

    .line 321
    :cond_1
    iget-object p0, p0, Lcom/android/packageinstaller/EventResultPersister;->mObservers:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 323
    :goto_1
    monitor-exit v0

    return p1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getNewId()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/packageinstaller/EventResultPersister$OutOfIdsException;
        }
    .end annotation

    .line 166
    iget-object v0, p0, Lcom/android/packageinstaller/EventResultPersister;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 167
    :try_start_0
    iget v1, p0, Lcom/android/packageinstaller/EventResultPersister;->mCounter:I

    const v2, 0x7fffffff

    if-eq v1, v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    .line 171
    iput v1, p0, Lcom/android/packageinstaller/EventResultPersister;->mCounter:I

    .line 172
    invoke-direct {p0}, Lcom/android/packageinstaller/EventResultPersister;->writeState()V

    .line 174
    iget p0, p0, Lcom/android/packageinstaller/EventResultPersister;->mCounter:I

    add-int/lit8 p0, p0, -0x1

    monitor-exit v0

    return p0

    .line 168
    :cond_0
    new-instance v1, Lcom/android/packageinstaller/EventResultPersister$OutOfIdsException;

    invoke-direct {v1, p0}, Lcom/android/packageinstaller/EventResultPersister$OutOfIdsException;-><init>(Lcom/android/packageinstaller/EventResultPersister;)V

    throw v1

    :catchall_0
    move-exception p0

    .line 175
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method onEventReceived(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8

    const-string v0, "android.content.pm.extra.STATUS"

    const/4 v1, 0x0

    .line 186
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    const/4 v0, -0x1

    if-ne v4, v0, :cond_0

    const-string p0, "android.intent.extra.INTENT"

    .line 189
    invoke-virtual {p2, p0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    check-cast p0, Landroid/content/Intent;

    invoke-virtual {p1, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void

    :cond_0
    const-string p1, "EventResultPersister.EXTRA_ID"

    .line 194
    invoke-virtual {p2, p1, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const-string v0, "android.content.pm.extra.STATUS_MESSAGE"

    .line 195
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v0, "android.content.pm.extra.LEGACY_STATUS"

    .line 196
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    const/4 p2, 0x0

    .line 199
    iget-object v0, p0, Lcom/android/packageinstaller/EventResultPersister;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 200
    :try_start_0
    iget-object v2, p0, Lcom/android/packageinstaller/EventResultPersister;->mObservers:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    :goto_0
    if-ge v1, v2, :cond_2

    .line 202
    iget-object v3, p0, Lcom/android/packageinstaller/EventResultPersister;->mObservers:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    if-ne v3, p1, :cond_1

    .line 203
    iget-object p2, p0, Lcom/android/packageinstaller/EventResultPersister;->mObservers:Landroid/util/SparseArray;

    invoke-virtual {p2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/packageinstaller/EventResultPersister$EventResultObserver;

    .line 204
    iget-object v2, p0, Lcom/android/packageinstaller/EventResultPersister;->mObservers:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->removeAt(I)V

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    if-eqz p2, :cond_3

    .line 211
    invoke-interface {p2, v4, v5, v6}, Lcom/android/packageinstaller/EventResultPersister$EventResultObserver;->onResult(IILjava/lang/String;)V

    goto :goto_2

    .line 213
    :cond_3
    iget-object p2, p0, Lcom/android/packageinstaller/EventResultPersister;->mResults:Landroid/util/SparseArray;

    new-instance v1, Lcom/android/packageinstaller/EventResultPersister$EventResult;

    const/4 v7, 0x0

    move-object v2, v1

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/packageinstaller/EventResultPersister$EventResult;-><init>(Lcom/android/packageinstaller/EventResultPersister;IILjava/lang/String;Lcom/android/packageinstaller/EventResultPersister$EventResult-IA;)V

    invoke-virtual {p2, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 214
    invoke-direct {p0}, Lcom/android/packageinstaller/EventResultPersister;->writeState()V

    .line 216
    :goto_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method removeObserver(I)V
    .locals 1

    .line 335
    iget-object v0, p0, Lcom/android/packageinstaller/EventResultPersister;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 336
    :try_start_0
    iget-object p0, p0, Lcom/android/packageinstaller/EventResultPersister;->mObservers:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 337
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
