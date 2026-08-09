.class public Lcom/android/packageinstaller/wear/WearPackageInstallerService;
.super Landroid/app/Service;
.source "WearPackageInstallerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/packageinstaller/wear/WearPackageInstallerService$PackageDeleteObserver;,
        Lcom/android/packageinstaller/wear/WearPackageInstallerService$PackageInstallListener;,
        Lcom/android/packageinstaller/wear/WearPackageInstallerService$ServiceHandler;
    }
.end annotation


# static fields
.field private static volatile lockStatic:Landroid/os/PowerManager$WakeLock;


# instance fields
.field private final START_INSTALL:I

.field private final START_UNINSTALL:I

.field private mInstallNotificationId:I

.field private final mNotifIdMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mNotificationChannel:Landroid/app/NotificationChannel;

.field private mServiceHandler:Lcom/android/packageinstaller/wear/WearPackageInstallerService$ServiceHandler;


# direct methods
.method static bridge synthetic -$$Nest$mfinishService(Lcom/android/packageinstaller/wear/WearPackageInstallerService;Landroid/os/PowerManager$WakeLock;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/packageinstaller/wear/WearPackageInstallerService;->finishService(Landroid/os/PowerManager$WakeLock;I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$minstallPackage(Lcom/android/packageinstaller/wear/WearPackageInstallerService;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/packageinstaller/wear/WearPackageInstallerService;->installPackage(Landroid/os/Bundle;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$muninstallPackage(Lcom/android/packageinstaller/wear/WearPackageInstallerService;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/packageinstaller/wear/WearPackageInstallerService;->uninstallPackage(Landroid/os/Bundle;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 84
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const/4 v0, 0x1

    .line 89
    iput v0, p0, Lcom/android/packageinstaller/wear/WearPackageInstallerService;->START_INSTALL:I

    const/4 v1, 0x2

    .line 90
    iput v1, p0, Lcom/android/packageinstaller/wear/WearPackageInstallerService;->START_UNINSTALL:I

    .line 91
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Lcom/android/packageinstaller/wear/WearPackageInstallerService;->mNotifIdMap:Ljava/util/Map;

    .line 92
    iput v0, p0, Lcom/android/packageinstaller/wear/WearPackageInstallerService;->mInstallNotificationId:I

    return-void
.end method

.method private declared-synchronized buildNotification(Ljava/lang/String;Ljava/lang/String;)Landroid/util/Pair;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Landroid/app/Notification;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 486
    :try_start_0
    iget-object v0, p0, Lcom/android/packageinstaller/wear/WearPackageInstallerService;->mNotifIdMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 487
    iget-object v0, p0, Lcom/android/packageinstaller/wear/WearPackageInstallerService;->mNotifIdMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_0

    .line 489
    :cond_0
    iget v0, p0, Lcom/android/packageinstaller/wear/WearPackageInstallerService;->mInstallNotificationId:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/packageinstaller/wear/WearPackageInstallerService;->mInstallNotificationId:I

    .line 490
    iget-object v1, p0, Lcom/android/packageinstaller/wear/WearPackageInstallerService;->mNotifIdMap:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move p1, v0

    .line 493
    :goto_0
    iget-object v0, p0, Lcom/android/packageinstaller/wear/WearPackageInstallerService;->mNotificationChannel:Landroid/app/NotificationChannel;

    if-nez v0, :cond_1

    .line 494
    new-instance v0, Landroid/app/NotificationChannel;

    const-string v1, "wear_app_install_uninstall"

    const v2, 0x7f0f0096

    .line 495
    invoke-virtual {p0, v2}, Landroid/app/Service;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    iput-object v0, p0, Lcom/android/packageinstaller/wear/WearPackageInstallerService;->mNotificationChannel:Landroid/app/NotificationChannel;

    .line 496
    const-class v0, Landroid/app/NotificationManager;

    invoke-virtual {p0, v0}, Landroid/app/Service;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 497
    iget-object v1, p0, Lcom/android/packageinstaller/wear/WearPackageInstallerService;->mNotificationChannel:Landroid/app/NotificationChannel;

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 499
    :cond_1
    new-instance v0, Landroid/util/Pair;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-instance v1, Landroid/app/Notification$Builder;

    const-string v2, "wear_app_install_uninstall"

    invoke-direct {v1, p0, v2}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const v2, 0x7f070060

    .line 500
    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 501
    invoke-virtual {v1, p2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p2

    .line 502
    invoke-virtual {p2}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p2

    invoke-direct {v0, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 499
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private checkPermissions(Landroid/content/pm/PackageInfo;IILandroid/net/Uri;Ljava/util/List;Ljava/io/File;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageInfo;",
            "II",
            "Landroid/net/Uri;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/io/File;",
            ")Z"
        }
    .end annotation

    .line 378
    iget-object p3, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget p3, p3, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/4 p6, 0x1

    const/16 v0, 0x17

    if-lt p3, v0, :cond_0

    return p6

    .line 383
    :cond_0
    iget-object p1, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, p1, p4, p5}, Lcom/android/packageinstaller/wear/WearPackageInstallerService;->doesWearHaveUngrantedPerms(Ljava/lang/String;Landroid/net/Uri;Ljava/util/List;)Z

    move-result p0

    if-nez p0, :cond_1

    return p6

    :cond_1
    if-eqz p2, :cond_2

    if-lt p2, v0, :cond_3

    :cond_2
    const-string p0, "WearPkgInstallerService"

    const-string p1, "MNC: Wear app\'s targetSdkVersion should be at least 23, if phone app is targeting at least 23, will continue."

    .line 391
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method private doesWearHaveUngrantedPerms(Ljava/lang/String;Landroid/net/Uri;Ljava/util/List;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "WearPkgInstallerService"

    const/4 v1, 0x1

    if-nez p2, :cond_0

    const-string p0, "Permission URI is null"

    .line 407
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 411
    :cond_0
    invoke-virtual {p0}, Landroid/app/Service;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, p2

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    if-nez p0, :cond_1

    const-string p0, "Could not get the cursor for the permissions"

    .line 413
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 418
    :cond_1
    new-instance p2, Ljava/util/HashSet;

    invoke-direct {p2}, Ljava/util/HashSet;-><init>()V

    .line 419
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 420
    :cond_2
    :goto_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_4

    .line 423
    invoke-interface {p0}, Landroid/database/Cursor;->getColumnCount()I

    move-result v3

    const/4 v5, 0x2

    if-ne v3, v5, :cond_2

    const/4 v3, 0x3

    .line 424
    invoke-interface {p0, v4}, Landroid/database/Cursor;->getType(I)I

    move-result v5

    if-ne v3, v5, :cond_2

    .line 425
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getType(I)I

    move-result v3

    if-ne v1, v3, :cond_2

    .line 426
    invoke-interface {p0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 427
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 428
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, v1, :cond_3

    .line 429
    invoke-interface {p2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 431
    :cond_3
    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 435
    :cond_4
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 438
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_5
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_7

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    .line 439
    invoke-interface {p2, p3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 441
    invoke-interface {v2, p3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    const-string v4, " has a permission \""

    const-string v5, "Wearable "

    if-nez v3, :cond_6

    .line 444
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "\" that is not defined in the host application\'s manifest."

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v0, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 447
    :cond_6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "\" that is not granted in the host application."

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v0, p3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    move v4, v1

    goto :goto_1

    :cond_7
    return v4
.end method

.method private finishService(Landroid/os/PowerManager$WakeLock;I)V
    .locals 1

    if-eqz p1, :cond_0

    .line 466
    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 467
    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 469
    :cond_0
    invoke-virtual {p0, p2}, Landroid/app/Service;->stopSelf(I)V

    return-void
.end method

.method private finishServiceEarly(I)V
    .locals 2

    .line 460
    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    .line 459
    invoke-direct {p0, v0, v1}, Lcom/android/packageinstaller/wear/WearPackageInstallerService;->buildNotification(Ljava/lang/String;Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v0

    .line 461
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Landroid/app/Notification;

    invoke-virtual {p0, v1, v0}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;)V

    const/4 v0, 0x0

    .line 462
    invoke-direct {p0, v0, p1}, Lcom/android/packageinstaller/wear/WearPackageInstallerService;->finishService(Landroid/os/PowerManager$WakeLock;I)V

    return-void
.end method

.method private getLabelAndUpdateNotification(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 507
    const-class v0, Landroid/app/NotificationManager;

    invoke-virtual {p0, v0}, Landroid/app/Service;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 508
    invoke-direct {p0, p1, p2}, Lcom/android/packageinstaller/wear/WearPackageInstallerService;->buildNotification(Ljava/lang/String;Ljava/lang/String;)Landroid/util/Pair;

    move-result-object p0

    .line 509
    iget-object p1, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p0, Landroid/app/Notification;

    invoke-virtual {v0, p1, p0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method

.method private declared-synchronized getLock(Landroid/content/Context;)Landroid/os/PowerManager$WakeLock;
    .locals 2

    monitor-enter p0

    .line 473
    :try_start_0
    sget-object v0, Lcom/android/packageinstaller/wear/WearPackageInstallerService;->lockStatic:Landroid/os/PowerManager$WakeLock;

    if-nez v0, :cond_0

    const-string v0, "power"

    .line 475
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 477
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x1

    .line 476
    invoke-virtual {v0, v1, p1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    sput-object p1, Lcom/android/packageinstaller/wear/WearPackageInstallerService;->lockStatic:Landroid/os/PowerManager$WakeLock;

    .line 478
    sget-object p1, Lcom/android/packageinstaller/wear/WearPackageInstallerService;->lockStatic:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p1, v1}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 480
    :cond_0
    sget-object p1, Lcom/android/packageinstaller/wear/WearPackageInstallerService;->lockStatic:Landroid/os/PowerManager$WakeLock;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private installPackage(Landroid/os/Bundle;)V
    .locals 28
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongConstant"
        }
    .end annotation

    move-object/from16 v8, p0

    const-string v0, "r"

    .line 176
    invoke-static/range {p1 .. p1}, Lcom/android/packageinstaller/wear/WearPackageArgs;->getStartId(Landroid/os/Bundle;)I

    move-result v9

    .line 177
    invoke-static/range {p1 .. p1}, Lcom/android/packageinstaller/wear/WearPackageArgs;->getPackageName(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v10

    .line 178
    invoke-static/range {p1 .. p1}, Lcom/android/packageinstaller/wear/WearPackageArgs;->getAssetUri(Landroid/os/Bundle;)Landroid/net/Uri;

    move-result-object v11

    .line 179
    invoke-static/range {p1 .. p1}, Lcom/android/packageinstaller/wear/WearPackageArgs;->getPermUri(Landroid/os/Bundle;)Landroid/net/Uri;

    move-result-object v5

    .line 180
    invoke-static/range {p1 .. p1}, Lcom/android/packageinstaller/wear/WearPackageArgs;->checkPerms(Landroid/os/Bundle;)Z

    move-result v1

    .line 181
    invoke-static/range {p1 .. p1}, Lcom/android/packageinstaller/wear/WearPackageArgs;->skipIfSameVersion(Landroid/os/Bundle;)Z

    move-result v2

    .line 182
    invoke-static/range {p1 .. p1}, Lcom/android/packageinstaller/wear/WearPackageArgs;->getCompanionSdkVersion(Landroid/os/Bundle;)I

    move-result v3

    .line 183
    invoke-static/range {p1 .. p1}, Lcom/android/packageinstaller/wear/WearPackageArgs;->getCompanionDeviceVersion(Landroid/os/Bundle;)I

    move-result v4

    .line 184
    invoke-static/range {p1 .. p1}, Lcom/android/packageinstaller/wear/WearPackageArgs;->getCompressionAlg(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v6

    .line 185
    invoke-static/range {p1 .. p1}, Lcom/android/packageinstaller/wear/WearPackageArgs;->skipIfLowerVersion(Landroid/os/Bundle;)Z

    move-result v7

    const-string v12, "WearPkgInstallerService"

    const/4 v13, 0x3

    .line 187
    invoke-static {v12, v13}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 188
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Installing package: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, ", assetUri: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v15, ",permUri: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v15, ", startId: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, ", checkPerms: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v15, ", skipIfSameVersion: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v15, ", compressionAlg: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, ", companionSdkVersion: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, ", companionDeviceVersion: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, ", skipIfLowerVersion: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v12, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/app/Service;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v14

    .line 198
    invoke-virtual/range {p0 .. p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v15

    invoke-direct {v8, v15}, Lcom/android/packageinstaller/wear/WearPackageInstallerService;->getLock(Landroid/content/Context;)Landroid/os/PowerManager$WakeLock;

    move-result-object v15

    const v13, 0x401000

    const/16 v16, 0x0

    const/16 v17, 0x2

    move-object/from16 v18, v5

    const/16 v19, 0x0

    .line 203
    :try_start_0
    invoke-virtual {v14, v10, v13}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v13
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v13, :cond_1

    move/from16 v20, v17

    goto :goto_2

    :catchall_0
    move-exception v0

    :goto_0
    move/from16 v5, v19

    goto/16 :goto_10

    :catch_0
    move-exception v0

    :goto_1
    move/from16 v5, v19

    goto/16 :goto_e

    :catch_1
    move-object/from16 v13, v16

    :cond_1
    move/from16 v20, v19

    :goto_2
    and-int/lit8 v20, v20, 0x2

    if-eqz v20, :cond_2

    const/4 v5, 0x3

    .line 213
    :try_start_1
    invoke-static {v12, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v21

    if-eqz v21, :cond_2

    .line 214
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v21, v4

    const-string v4, "Replacing package:"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v12, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_2
    move/from16 v21, v4

    .line 223
    :goto_3
    invoke-virtual/range {p0 .. p0}, Landroid/app/Service;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 224
    invoke-virtual {v4, v11, v0}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v4

    .line 225
    invoke-static {v8, v4, v10, v6}, Lcom/android/packageinstaller/wear/WearPackageUtil;->getFileFromFd(Landroid/content/Context;Landroid/os/ParcelFileDescriptor;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v6
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v6, :cond_4

    .line 228
    :try_start_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Could not create a temp file from FD for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v6, :cond_3

    .line 336
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 338
    :cond_3
    invoke-direct {v8, v15, v9}, Lcom/android/packageinstaller/wear/WearPackageInstallerService;->finishService(Landroid/os/PowerManager$WakeLock;I)V

    return-void

    :catchall_1
    move-exception v0

    move-object/from16 v16, v6

    goto :goto_0

    :catch_2
    move-exception v0

    move-object/from16 v16, v6

    goto :goto_1

    :cond_4
    const/16 v4, 0x5000

    .line 231
    :try_start_3
    invoke-static {v8, v6, v4}, Lcom/android/packageinstaller/PackageUtil;->getPackageInfo(Landroid/content/Context;Ljava/io/File;I)Landroid/content/pm/PackageInfo;

    move-result-object v4
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_a
    .catchall {:try_start_3 .. :try_end_3} :catchall_6

    if-nez v4, :cond_5

    .line 234
    :try_start_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Could not parse apk information for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 336
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 338
    invoke-direct {v8, v15, v9}, Lcom/android/packageinstaller/wear/WearPackageInstallerService;->finishService(Landroid/os/PowerManager$WakeLock;I)V

    return-void

    .line 238
    :cond_5
    :try_start_5
    iget-object v5, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_a
    .catchall {:try_start_5 .. :try_end_5} :catchall_6

    if-nez v5, :cond_6

    .line 239
    :try_start_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Wearable Package Name has to match what is provided for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 336
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 338
    invoke-direct {v8, v15, v9}, Lcom/android/packageinstaller/wear/WearPackageInstallerService;->finishService(Landroid/os/PowerManager$WakeLock;I)V

    return-void

    .line 244
    :cond_6
    :try_start_7
    iget-object v5, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v22, v0

    .line 245
    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 246
    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;
    :try_end_7
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_a
    .catchall {:try_start_7 .. :try_end_7} :catchall_6

    move-object/from16 v23, v11

    const/4 v11, 0x1

    :try_start_8
    new-array v0, v11, [Ljava/lang/Object;

    .line 248
    invoke-virtual {v5, v14}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v5

    aput-object v5, v0, v19

    const v5, 0x7f0f003e

    invoke-virtual {v8, v5, v0}, Landroid/app/Service;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 247
    invoke-direct {v8, v10, v0}, Lcom/android/packageinstaller/wear/WearPackageInstallerService;->getLabelAndUpdateNotification(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    iget-object v0, v4, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0
    :try_end_8
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_8} :catch_9
    .catchall {:try_start_8 .. :try_end_8} :catchall_6

    if-eqz v13, :cond_d

    move-object v11, v0

    move v5, v1

    .line 254
    :try_start_9
    invoke-virtual {v4}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v0

    .line 255
    invoke-virtual {v13}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v24
    :try_end_9
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    cmp-long v16, v24, v0

    move/from16 v24, v3

    const-string v3, "; not installing due to versionCheck"

    move/from16 v25, v5

    const-string v5, "Version number of new app ("

    if-nez v16, :cond_8

    if-eqz v2, :cond_7

    .line 257
    :try_start_a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Version number ("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ") of new app is equal to existing app for "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catch Ljava/io/FileNotFoundException; {:try_start_a .. :try_end_a} :catch_3
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 336
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 338
    invoke-direct {v8, v15, v9}, Lcom/android/packageinstaller/wear/WearPackageInstallerService;->finishService(Landroid/os/PowerManager$WakeLock;I)V

    return-void

    .line 262
    :cond_7
    :try_start_b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ") is equal to existing app for "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 265
    :cond_8
    invoke-virtual {v13}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v26
    :try_end_b
    .catch Ljava/io/FileNotFoundException; {:try_start_b .. :try_end_b} :catch_3
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    cmp-long v2, v26, v0

    if-lez v2, :cond_a

    const-string v2, ") for "

    move-object/from16 v26, v14

    const-string v14, ") is lower than existing app ( "

    if-eqz v7, :cond_9

    .line 268
    :try_start_c
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 270
    invoke-virtual {v13}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v0

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 268
    invoke-static {v12, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catch Ljava/io/FileNotFoundException; {:try_start_c .. :try_end_c} :catch_3
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 336
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 338
    invoke-direct {v8, v15, v9}, Lcom/android/packageinstaller/wear/WearPackageInstallerService;->finishService(Landroid/os/PowerManager$WakeLock;I)V

    return-void

    .line 274
    :cond_9
    :try_start_d
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 276
    invoke-virtual {v13}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v0

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 274
    invoke-static {v12, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :cond_a
    :goto_4
    move-object/from16 v26, v14

    .line 282
    :goto_5
    iget-object v0, v13, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    if-eqz v0, :cond_e

    move/from16 v0, v19

    .line 283
    :goto_6
    iget-object v1, v13, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_e

    .line 285
    iget-object v1, v13, Landroid/content/pm/PackageInfo;->requestedPermissionsFlags:[I

    aget v1, v1, v0

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_c

    const/4 v1, 0x3

    .line 287
    invoke-static {v12, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 288
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v13, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " is already granted for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v12, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    :cond_b
    iget-object v2, v13, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-interface {v11, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_d
    .catch Ljava/io/FileNotFoundException; {:try_start_d .. :try_end_d} :catch_3
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    goto :goto_7

    :cond_c
    const/4 v1, 0x3

    :goto_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :catch_3
    move-exception v0

    move-object/from16 v16, v6

    :goto_8
    move/from16 v5, v19

    move-object/from16 v11, v23

    goto/16 :goto_e

    :cond_d
    move-object v11, v0

    move/from16 v25, v1

    move/from16 v24, v3

    move-object/from16 v26, v14

    .line 299
    :cond_e
    :try_start_e
    iget-object v0, v4, Landroid/content/pm/PackageInfo;->reqFeatures:[Landroid/content/pm/FeatureInfo;

    array-length v1, v0
    :try_end_e
    .catch Ljava/io/FileNotFoundException; {:try_start_e .. :try_end_e} :catch_9
    .catchall {:try_start_e .. :try_end_e} :catchall_6

    move/from16 v3, v19

    const/4 v2, 0x1

    :goto_9
    if-ge v3, v1, :cond_11

    :try_start_f
    aget-object v5, v0, v3

    .line 300
    iget-object v7, v5, Landroid/content/pm/FeatureInfo;->name:Ljava/lang/String;

    move-object/from16 v13, v26

    if-eqz v7, :cond_f

    invoke-virtual {v13, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_f

    iget v7, v5, Landroid/content/pm/FeatureInfo;->flags:I

    const/4 v14, 0x1

    and-int/2addr v7, v14

    if-eqz v7, :cond_10

    .line 302
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Wearable does not have required feature: "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " for "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v12, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f
    .catch Ljava/io/FileNotFoundException; {:try_start_f .. :try_end_f} :catch_3
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    move/from16 v2, v19

    goto :goto_a

    :cond_f
    const/4 v14, 0x1

    :cond_10
    :goto_a
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v26, v13

    goto :goto_9

    :cond_11
    const/4 v14, 0x1

    if-nez v2, :cond_12

    .line 336
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 338
    invoke-direct {v8, v15, v9}, Lcom/android/packageinstaller/wear/WearPackageInstallerService;->finishService(Landroid/os/PowerManager$WakeLock;I)V

    return-void

    :cond_12
    if-eqz v25, :cond_13

    move-object/from16 v1, p0

    move-object v2, v4

    move/from16 v3, v24

    move/from16 v4, v21

    move v13, v14

    move-object/from16 v5, v18

    move-object v14, v6

    move-object v6, v11

    move-object v7, v14

    .line 316
    :try_start_10
    invoke-direct/range {v1 .. v7}, Lcom/android/packageinstaller/wear/WearPackageInstallerService;->checkPermissions(Landroid/content/pm/PackageInfo;IILandroid/net/Uri;Ljava/util/List;Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_14

    const-string v0, "Wearable does not have enough permissions."

    .line 318
    invoke-static {v12, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_10
    .catch Ljava/io/FileNotFoundException; {:try_start_10 .. :try_end_10} :catch_4
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    .line 336
    invoke-virtual {v14}, Ljava/io/File;->delete()Z

    .line 338
    invoke-direct {v8, v15, v9}, Lcom/android/packageinstaller/wear/WearPackageInstallerService;->finishService(Landroid/os/PowerManager$WakeLock;I)V

    return-void

    :catchall_2
    move-exception v0

    move-object/from16 v16, v14

    goto/16 :goto_0

    :catch_4
    move-exception v0

    move-object/from16 v16, v14

    goto/16 :goto_8

    :cond_13
    move v13, v14

    move-object v14, v6

    .line 323
    :cond_14
    :try_start_11
    invoke-virtual/range {p0 .. p0}, Landroid/app/Service;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0
    :try_end_11
    .catch Ljava/io/FileNotFoundException; {:try_start_11 .. :try_end_11} :catch_8
    .catchall {:try_start_11 .. :try_end_11} :catchall_5

    move-object/from16 v1, v22

    move-object/from16 v11, v23

    :try_start_12
    invoke-virtual {v0, v11, v1}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    .line 324
    invoke-static/range {p0 .. p0}, Lcom/android/packageinstaller/wear/PackageInstallerFactory;->getPackageInstaller(Landroid/content/Context;)Lcom/android/packageinstaller/wear/PackageInstallerImpl;

    move-result-object v7

    new-instance v6, Lcom/android/packageinstaller/wear/WearPackageInstallerService$PackageInstallListener;
    :try_end_12
    .catch Ljava/io/FileNotFoundException; {:try_start_12 .. :try_end_12} :catch_7
    .catchall {:try_start_12 .. :try_end_12} :catchall_5

    const/16 v16, 0x0

    move-object v1, v6

    move-object/from16 v2, p0

    move-object/from16 v3, p0

    move-object v4, v15

    move v5, v9

    move-object v13, v6

    move-object v6, v10

    move-object/from16 p1, v14

    move-object v14, v7

    move-object/from16 v7, v16

    :try_start_13
    invoke-direct/range {v1 .. v7}, Lcom/android/packageinstaller/wear/WearPackageInstallerService$PackageInstallListener;-><init>(Lcom/android/packageinstaller/wear/WearPackageInstallerService;Landroid/content/Context;Landroid/os/PowerManager$WakeLock;ILjava/lang/String;Lcom/android/packageinstaller/wear/WearPackageInstallerService$PackageInstallListener-IA;)V

    invoke-virtual {v14, v10, v0, v13}, Lcom/android/packageinstaller/wear/PackageInstallerImpl;->install(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;Lcom/android/packageinstaller/wear/PackageInstallerImpl$InstallListener;)V
    :try_end_13
    .catch Ljava/io/FileNotFoundException; {:try_start_13 .. :try_end_13} :catch_6
    .catchall {:try_start_13 .. :try_end_13} :catchall_4

    .line 328
    :try_start_14
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Sent installation request for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_14
    .catch Ljava/io/FileNotFoundException; {:try_start_14 .. :try_end_14} :catch_5
    .catchall {:try_start_14 .. :try_end_14} :catchall_3

    goto :goto_f

    :catchall_3
    move-exception v0

    move-object/from16 v16, p1

    const/4 v5, 0x1

    goto :goto_10

    :catch_5
    move-exception v0

    move-object/from16 v16, p1

    const/4 v5, 0x1

    goto :goto_e

    :catchall_4
    move-exception v0

    goto :goto_c

    :catch_6
    move-exception v0

    goto :goto_d

    :catch_7
    move-exception v0

    move-object/from16 p1, v14

    goto :goto_d

    :catchall_5
    move-exception v0

    move-object/from16 p1, v14

    goto :goto_c

    :catch_8
    move-exception v0

    move-object/from16 p1, v14

    goto :goto_b

    :catch_9
    move-exception v0

    move-object/from16 p1, v6

    :goto_b
    move-object/from16 v11, v23

    goto :goto_d

    :catchall_6
    move-exception v0

    move-object/from16 p1, v6

    :goto_c
    move-object/from16 v16, p1

    goto/16 :goto_0

    :catch_a
    move-exception v0

    move-object/from16 p1, v6

    :goto_d
    move-object/from16 v16, p1

    goto/16 :goto_1

    .line 330
    :goto_e
    :try_start_15
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not find the file with URI "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v12, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_7

    if-nez v5, :cond_16

    if-eqz v16, :cond_15

    .line 336
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->delete()Z

    .line 338
    :cond_15
    invoke-direct {v8, v15, v9}, Lcom/android/packageinstaller/wear/WearPackageInstallerService;->finishService(Landroid/os/PowerManager$WakeLock;I)V

    :cond_16
    :goto_f
    return-void

    :catchall_7
    move-exception v0

    :goto_10
    if-nez v5, :cond_18

    if-eqz v16, :cond_17

    .line 336
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->delete()Z

    .line 338
    :cond_17
    invoke-direct {v8, v15, v9}, Lcom/android/packageinstaller/wear/WearPackageInstallerService;->finishService(Landroid/os/PowerManager$WakeLock;I)V

    .line 340
    :cond_18
    throw v0
.end method

.method private uninstallPackage(Landroid/os/Bundle;)V
    .locals 8

    const-string v0, "WearPkgInstallerService"

    .line 348
    invoke-static {p1}, Lcom/android/packageinstaller/wear/WearPackageArgs;->getStartId(Landroid/os/Bundle;)I

    move-result v1

    .line 349
    invoke-static {p1}, Lcom/android/packageinstaller/wear/WearPackageArgs;->getPackageName(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object p1

    .line 351
    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/packageinstaller/wear/WearPackageInstallerService;->getLock(Landroid/content/Context;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    .line 352
    invoke-virtual {p0}, Landroid/app/Service;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v4, 0x0

    .line 354
    :try_start_0
    invoke-virtual {v3, p1, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v5

    const v6, 0x7f0f008e

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    .line 355
    iget-object v5, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 356
    invoke-virtual {v5, v3}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v5

    aput-object v5, v7, v4

    invoke-virtual {p0, v6, v7}, Landroid/app/Service;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 355
    invoke-direct {p0, p1, v4}, Lcom/android/packageinstaller/wear/WearPackageInstallerService;->getLabelAndUpdateNotification(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    new-instance v4, Lcom/android/packageinstaller/wear/WearPackageInstallerService$PackageDeleteObserver;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v2, v1, v5}, Lcom/android/packageinstaller/wear/WearPackageInstallerService$PackageDeleteObserver;-><init>(Lcom/android/packageinstaller/wear/WearPackageInstallerService;Landroid/os/PowerManager$WakeLock;ILcom/android/packageinstaller/wear/WearPackageInstallerService$PackageDeleteObserver-IA;)V

    const/4 v5, 0x2

    invoke-virtual {v3, p1, v4, v5}, Landroid/content/pm/PackageManager;->deletePackage(Ljava/lang/String;Landroid/content/pm/IPackageDeleteObserver;I)V

    .line 362
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Sent delete request for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    .line 365
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not find package, not deleting "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 366
    invoke-direct {p0, v2, v1}, Lcom/android/packageinstaller/wear/WearPackageInstallerService;->finishService(Landroid/os/PowerManager$WakeLock;I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public onCreate()V
    .locals 3

    .line 103
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 104
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "PackageInstallerThread"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 106
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 108
    new-instance v1, Lcom/android/packageinstaller/wear/WearPackageInstallerService$ServiceHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, p0, v0}, Lcom/android/packageinstaller/wear/WearPackageInstallerService$ServiceHandler;-><init>(Lcom/android/packageinstaller/wear/WearPackageInstallerService;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/packageinstaller/wear/WearPackageInstallerService;->mServiceHandler:Lcom/android/packageinstaller/wear/WearPackageInstallerService$ServiceHandler;

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 5

    .line 113
    invoke-static {p0}, Lcom/android/packageinstaller/DeviceUtils;->isWear(Landroid/content/Context;)Z

    move-result p2

    const/4 v0, 0x2

    const-string v1, "WearPkgInstallerService"

    if-nez p2, :cond_0

    const-string p1, "Not running on wearable."

    .line 114
    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    invoke-direct {p0, p3}, Lcom/android/packageinstaller/wear/WearPackageInstallerService;->finishServiceEarly(I)V

    return v0

    :cond_0
    if-nez p1, :cond_1

    const-string p1, "Got null intent."

    .line 120
    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    invoke-direct {p0, p3}, Lcom/android/packageinstaller/wear/WearPackageInstallerService;->finishServiceEarly(I)V

    return v0

    :cond_1
    const/4 p2, 0x3

    .line 125
    invoke-static {v1, p2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 126
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Got install/uninstall request "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    :cond_2
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p2

    if-nez p2, :cond_3

    const-string p1, "No package URI in intent"

    .line 131
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    invoke-direct {p0, p3}, Lcom/android/packageinstaller/wear/WearPackageInstallerService;->finishServiceEarly(I)V

    return v0

    .line 136
    :cond_3
    invoke-static {p2}, Lcom/android/packageinstaller/wear/WearPackageUtil;->getSanitizedPackageName(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_4

    .line 138
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid package name in URI (expected package:<pkgName>): "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    invoke-direct {p0, p3}, Lcom/android/packageinstaller/wear/WearPackageInstallerService;->finishServiceEarly(I)V

    return v0

    .line 143
    :cond_4
    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/android/packageinstaller/wear/WearPackageInstallerService;->getLock(Landroid/content/Context;)Landroid/os/PowerManager$WakeLock;

    move-result-object p2

    .line 144
    invoke-virtual {p2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v3

    if-nez v3, :cond_5

    .line 145
    invoke-virtual {p2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 148
    :cond_5
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    if-nez p2, :cond_6

    .line 150
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 152
    :cond_6
    invoke-static {p2, p3}, Lcom/android/packageinstaller/wear/WearPackageArgs;->setStartId(Landroid/os/Bundle;I)Landroid/os/Bundle;

    .line 153
    invoke-static {p2, v2}, Lcom/android/packageinstaller/wear/WearPackageArgs;->setPackageName(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/Bundle;

    .line 156
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "android.intent.action.INSTALL_PACKAGE"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 157
    iget-object p1, p0, Lcom/android/packageinstaller/wear/WearPackageInstallerService;->mServiceHandler:Lcom/android/packageinstaller/wear/WearPackageInstallerService$ServiceHandler;

    const/4 p3, 0x1

    invoke-virtual {p1, p3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    const p3, 0x7f0f003d

    .line 158
    invoke-virtual {p0, p3}, Landroid/app/Service;->getString(I)Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    .line 159
    :cond_7
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "android.intent.action.UNINSTALL_PACKAGE"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 160
    iget-object p1, p0, Lcom/android/packageinstaller/wear/WearPackageInstallerService;->mServiceHandler:Lcom/android/packageinstaller/wear/WearPackageInstallerService$ServiceHandler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    const p3, 0x7f0f008d

    .line 161
    invoke-virtual {p0, p3}, Landroid/app/Service;->getString(I)Ljava/lang/String;

    move-result-object p3

    .line 167
    :goto_0
    invoke-direct {p0, v2, p3}, Lcom/android/packageinstaller/wear/WearPackageInstallerService;->buildNotification(Ljava/lang/String;Ljava/lang/String;)Landroid/util/Pair;

    move-result-object p3

    .line 168
    iget-object v1, p3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object p3, p3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p3, Landroid/app/Notification;

    invoke-virtual {p0, v1, p3}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;)V

    .line 169
    invoke-virtual {p1, p2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 170
    iget-object p0, p0, Lcom/android/packageinstaller/wear/WearPackageInstallerService;->mServiceHandler:Lcom/android/packageinstaller/wear/WearPackageInstallerService$ServiceHandler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return v0

    .line 163
    :cond_8
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown action : "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    invoke-direct {p0, p3}, Lcom/android/packageinstaller/wear/WearPackageInstallerService;->finishServiceEarly(I)V

    return v0
.end method
