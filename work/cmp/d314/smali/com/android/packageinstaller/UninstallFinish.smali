.class public Lcom/android/packageinstaller/UninstallFinish;
.super Landroid/content/BroadcastReceiver;
.source "UninstallFinish.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 50
    const-class v0, Lcom/android/packageinstaller/UninstallFinish;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/packageinstaller/UninstallFinish;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private addDeviceManagerButton(Landroid/content/Context;Landroid/app/Notification$Builder;)V
    .locals 5

    .line 252
    new-instance p0, Landroid/content/Intent;

    invoke-direct {p0}, Landroid/content/Intent;-><init>()V

    const-string v0, "com.android.settings"

    const-string v1, "com.android.settings.Settings$DeviceAdminSettingsActivity"

    .line 253
    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v0, 0x50000000

    .line 255
    invoke-virtual {p0, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 257
    new-instance v0, Landroid/app/Notification$Action$Builder;

    const v1, 0x7f070063

    .line 258
    invoke-static {p1, v1}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object v1

    const v2, 0x7f0f0067

    .line 259
    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/high16 v4, 0xc000000

    .line 260
    invoke-static {p1, v3, p0, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    invoke-direct {v0, v1, v2, p0}, Landroid/app/Notification$Action$Builder;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 261
    invoke-virtual {v0}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    move-result-object p0

    .line 257
    invoke-virtual {p2, p0}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    return-void
.end method

.method private addManageUsersButton(Landroid/content/Context;Landroid/app/Notification$Builder;)V
    .locals 5

    .line 234
    new-instance p0, Landroid/content/Intent;

    const-string v0, "android.settings.USER_SETTINGS"

    invoke-direct {p0, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v0, 0x50000000

    .line 235
    invoke-virtual {p0, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 237
    new-instance v0, Landroid/app/Notification$Action$Builder;

    const v1, 0x7f070066

    .line 238
    invoke-static {p1, v1}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object v1

    const v2, 0x7f0f0069

    .line 239
    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/high16 v4, 0xc000000

    .line 240
    invoke-static {p1, v3, p0, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    invoke-direct {v0, v1, v2, p0}, Landroid/app/Notification$Action$Builder;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 241
    invoke-virtual {v0}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    move-result-object p0

    .line 237
    invoke-virtual {p2, p0}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    return-void
.end method

.method private isProfileOfOrSame(Landroid/os/UserManager;II)Z
    .locals 0

    const/4 p0, 0x1

    if-ne p2, p3, :cond_0

    return p0

    .line 211
    :cond_0
    invoke-virtual {p1, p3}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 212
    iget p1, p1, Landroid/content/pm/UserInfo;->id:I

    if-ne p1, p2, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private setBigText(Landroid/app/Notification$Builder;Ljava/lang/CharSequence;)V
    .locals 0

    .line 223
    new-instance p0, Landroid/app/Notification$BigTextStyle;

    invoke-direct {p0}, Landroid/app/Notification$BigTextStyle;-><init>()V

    invoke-virtual {p0, p2}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 19

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v0, p2

    const-string v3, "android.content.pm.extra.STATUS"

    const/4 v4, 0x0

    .line 55
    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 57
    sget-object v5, Lcom/android/packageinstaller/UninstallFinish;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Uninstall finished extras="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, -0x1

    if-ne v3, v6, :cond_0

    const-string v1, "android.intent.extra.INTENT"

    .line 60
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void

    :cond_0
    const-string v6, "com.android.packageinstaller.extra.UNINSTALL_ID"

    .line 64
    invoke-virtual {v0, v6, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    const-string v7, "com.android.packageinstaller.applicationInfo"

    .line 65
    invoke-virtual {v0, v7}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ApplicationInfo;

    const-string v8, "com.android.packageinstaller.extra.APP_LABEL"

    .line 67
    invoke-virtual {v0, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "android.intent.extra.UNINSTALL_ALL_USERS"

    .line 68
    invoke-virtual {v0, v9, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v9

    .line 70
    const-class v10, Landroid/app/NotificationManager;

    .line 71
    invoke-virtual {v2, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/NotificationManager;

    .line 72
    const-class v11, Landroid/os/UserManager;

    invoke-virtual {v2, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/os/UserManager;

    .line 74
    new-instance v12, Landroid/app/NotificationChannel;

    const v13, 0x7f0f0088

    .line 76
    invoke-virtual {v2, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x3

    const-string v15, "uninstall failure"

    invoke-direct {v12, v15, v13, v14}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 78
    invoke-virtual {v10, v12}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 80
    new-instance v12, Landroid/app/Notification$Builder;

    invoke-direct {v12, v2, v15}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    if-eqz v3, :cond_e

    const/4 v14, 0x2

    const-string v15, " with code "

    const-string v13, "Uninstall failed for "

    if-eq v3, v14, :cond_1

    .line 186
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    move/from16 v16, v6

    move-object/from16 v17, v10

    goto/16 :goto_7

    :cond_1
    const-string v14, "android.content.pm.extra.LEGACY_STATUS"

    .line 91
    invoke-virtual {v0, v14, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const/4 v14, -0x4

    const-string v4, "Failed to talk to package manager"

    if-eq v0, v14, :cond_7

    const/4 v3, -0x2

    if-eq v0, v3, :cond_2

    .line 180
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Uninstall blocked for "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " with legacy code "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const-string v0, "device_policy"

    .line 96
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 95
    invoke-static {v0}, Landroid/app/admin/IDevicePolicyManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/admin/IDevicePolicyManager;

    move-result-object v3

    .line 98
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    const/4 v9, 0x0

    .line 100
    invoke-virtual {v11}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_3
    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/UserInfo;

    .line 103
    iget v14, v0, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {v1, v11, v5, v14}, Lcom/android/packageinstaller/UninstallFinish;->isProfileOfOrSame(Landroid/os/UserManager;II)Z

    move-result v14

    if-eqz v14, :cond_4

    goto :goto_1

    .line 108
    :cond_4
    :try_start_0
    iget-object v14, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v15, v0, Landroid/content/pm/UserInfo;->id:I

    invoke-interface {v3, v14, v15}, Landroid/app/admin/IDevicePolicyManager;->packageHasActiveAdmins(Ljava/lang/String;I)Z

    move-result v14
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v14, :cond_3

    move-object v9, v0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 113
    sget-object v14, Lcom/android/packageinstaller/UninstallFinish;->LOG_TAG:Ljava/lang/String;

    invoke-static {v14, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :cond_5
    :goto_2
    const-string v0, "Uninstall failed because "

    if-nez v9, :cond_6

    .line 117
    sget-object v3, Lcom/android/packageinstaller/UninstallFinish;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " is a device admin"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    invoke-direct {v1, v2, v12}, Lcom/android/packageinstaller/UninstallFinish;->addDeviceManagerButton(Landroid/content/Context;Landroid/app/Notification$Builder;)V

    const v0, 0x7f0f0085

    .line 121
    invoke-virtual {v2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v12, v0}, Lcom/android/packageinstaller/UninstallFinish;->setBigText(Landroid/app/Notification$Builder;Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 124
    :cond_6
    sget-object v3, Lcom/android/packageinstaller/UninstallFinish;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " is a device admin of user "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x7f0f0086

    .line 127
    invoke-virtual {v2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    iget-object v3, v9, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v3, v4, v5

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v12, v0}, Lcom/android/packageinstaller/UninstallFinish;->setBigText(Landroid/app/Notification$Builder;Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_7
    const-string v0, "package"

    .line 135
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 134
    invoke-static {v0}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v5

    .line 137
    invoke-virtual {v11}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v14

    move/from16 v16, v6

    const/4 v6, 0x0

    .line 139
    :goto_3
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v0

    move-object/from16 v17, v10

    if-ge v6, v0, :cond_9

    .line 140
    invoke-interface {v14, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/UserInfo;

    .line 142
    :try_start_1
    iget-object v10, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2

    move-object/from16 v18, v14

    :try_start_2
    iget v14, v0, Landroid/content/pm/UserInfo;->id:I

    invoke-interface {v5, v10, v14}, Landroid/content/pm/IPackageManager;->getBlockUninstallForUser(Ljava/lang/String;I)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 144
    iget v0, v0, Landroid/content/pm/UserInfo;->id:I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_5

    :catch_1
    move-exception v0

    goto :goto_4

    :catch_2
    move-exception v0

    move-object/from16 v18, v14

    .line 149
    :goto_4
    sget-object v10, Lcom/android/packageinstaller/UninstallFinish;->LOG_TAG:Ljava/lang/String;

    invoke-static {v10, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_8
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v10, v17

    move-object/from16 v14, v18

    goto :goto_3

    :cond_9
    const/16 v0, -0x2710

    .line 153
    :goto_5
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    .line 154
    invoke-direct {v1, v11, v4, v0}, Lcom/android/packageinstaller/UninstallFinish;->isProfileOfOrSame(Landroid/os/UserManager;II)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 155
    invoke-direct {v1, v2, v12}, Lcom/android/packageinstaller/UninstallFinish;->addDeviceManagerButton(Landroid/content/Context;Landroid/app/Notification$Builder;)V

    goto :goto_6

    .line 157
    :cond_a
    invoke-direct {v1, v2, v12}, Lcom/android/packageinstaller/UninstallFinish;->addManageUsersButton(Landroid/content/Context;Landroid/app/Notification$Builder;)V

    :goto_6
    const/16 v4, -0x2710

    if-ne v0, v4, :cond_b

    .line 161
    sget-object v0, Lcom/android/packageinstaller/UninstallFinish;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " no blocking user"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    :cond_b
    if-nez v0, :cond_c

    const v0, 0x7f0f007f

    .line 166
    invoke-virtual {v2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 165
    invoke-direct {v1, v12, v0}, Lcom/android/packageinstaller/UninstallFinish;->setBigText(Landroid/app/Notification$Builder;Ljava/lang/CharSequence;)V

    goto :goto_7

    :cond_c
    if-eqz v9, :cond_d

    const v0, 0x7f0f0079

    .line 170
    invoke-virtual {v2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 169
    invoke-direct {v1, v12, v0}, Lcom/android/packageinstaller/UninstallFinish;->setBigText(Landroid/app/Notification$Builder;Ljava/lang/CharSequence;)V

    goto :goto_7

    :cond_d
    const v0, 0x7f0f0080

    .line 173
    invoke-virtual {v2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v12, v0}, Lcom/android/packageinstaller/UninstallFinish;->setBigText(Landroid/app/Notification$Builder;Ljava/lang/CharSequence;)V

    :goto_7
    const v0, 0x7f0f0084

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v8, v1, v3

    .line 192
    invoke-virtual {v2, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 191
    invoke-virtual {v12, v0}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 193
    invoke-virtual {v12, v3}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    const v0, 0x7f07005f

    .line 194
    invoke-virtual {v12, v0}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 195
    invoke-virtual {v12}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    move/from16 v1, v16

    move-object/from16 v10, v17

    invoke-virtual {v10, v1, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void

    :cond_e
    move v3, v4

    move v1, v6

    .line 85
    invoke-virtual {v10, v1}, Landroid/app/NotificationManager;->cancel(I)V

    const v0, 0x7f0f0082

    const/4 v1, 0x1

    new-array v4, v1, [Ljava/lang/Object;

    aput-object v8, v4, v3

    .line 87
    invoke-virtual {v2, v0, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 88
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method
