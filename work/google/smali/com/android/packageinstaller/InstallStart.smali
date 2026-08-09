.class public Lcom/android/packageinstaller/InstallStart;
.super Landroid/app/Activity;
.source "InstallStart.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "InstallStart"


# instance fields
.field private mAbortInstall:Z

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mUserManager:Landroid/os/UserManager;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 47
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    .line 53
    iput-boolean v0, p0, Lcom/android/packageinstaller/InstallStart;->mAbortInstall:Z

    return-void
.end method

.method private getOriginatingUid(Landroid/content/pm/ApplicationInfo;)I
    .locals 3

    .line 212
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.intent.extra.ORIGINATING_UID"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-eqz p1, :cond_0

    .line 217
    iget p1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    goto :goto_0

    .line 220
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object p1

    .line 221
    invoke-virtual {p0}, Landroid/app/Activity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {p1, v1}, Landroid/app/IActivityManager;->getLaunchedFromUid(Landroid/os/IBinder;)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const-string v1, "android.permission.MANAGE_DOCUMENTS"

    .line 229
    invoke-virtual {p0, v1, v2, p1}, Landroid/app/Activity;->checkPermission(Ljava/lang/String;II)I

    move-result v1

    if-nez v1, :cond_1

    return v0

    .line 233
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/packageinstaller/InstallStart;->isSystemDownloadsProvider(I)Z

    move-result p0

    if-eqz p0, :cond_2

    return v0

    :cond_2
    return p1

    .line 224
    :catch_0
    sget-object p1, Lcom/android/packageinstaller/InstallStart;->LOG_TAG:Ljava/lang/String;

    const-string v0, "Could not determine the launching uid."

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    .line 225
    iput-boolean p1, p0, Lcom/android/packageinstaller/InstallStart;->mAbortInstall:Z

    return v2
.end method

.method private getSourceInfo(Ljava/lang/String;)Landroid/content/pm/ApplicationInfo;
    .locals 1

    if-eqz p1, :cond_0

    .line 194
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private isNotUserApp(Landroid/content/pm/ApplicationInfo;)Z
    .locals 3

    iget v0, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private isSystemDownloadsProvider(I)Z
    .locals 3

    move-object v2, p0

    .line 241
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "downloads"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object p0

    if-nez p0, :cond_0

    return v1

    .line 247
    :cond_0
    iget-object p0, p0, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 248
    invoke-direct {v2, p0}, Lcom/android/packageinstaller/InstallStart;->isNotUserApp(Landroid/content/pm/ApplicationInfo;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne p1, p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method private isUidRequestingPermission(I)Z
    .locals 6

    .line 167
    iget-object v0, p0, Lcom/android/packageinstaller/InstallStart;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 171
    :cond_0
    array-length v1, p1

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p1, v2

    .line 174
    :try_start_0
    iget-object v4, p0, Lcom/android/packageinstaller/InstallStart;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v5, 0x1000

    invoke-virtual {v4, v3, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 180
    iget-object v3, v3, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 181
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    const-string v4, "android.permission.REQUEST_INSTALL_PACKAGES"

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 p0, 0x1

    return p0

    :catch_0
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 14

    .line 57
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 58
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/packageinstaller/InstallStart;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 59
    const-class p1, Landroid/os/UserManager;

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/UserManager;

    iput-object p1, p0, Lcom/android/packageinstaller/InstallStart;->mUserManager:Landroid/os/UserManager;

    .line 60
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    .line 61
    invoke-virtual {p0}, Landroid/app/Activity;->getCallingPackage()Ljava/lang/String;

    move-result-object v0

    .line 65
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.content.pm.action.CONFIRM_INSTALL"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, -0x1

    if-eqz v1, :cond_0

    const-string v3, "android.content.pm.extra.SESSION_ID"

    .line 70
    invoke-virtual {p1, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    const/4 v4, 0x0

    if-nez v0, :cond_3

    if-eq v3, v2, :cond_3

    .line 73
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->getPackageInstaller()Landroid/content/pm/PackageInstaller;

    move-result-object v0

    .line 74
    invoke-virtual {v0, v3}, Landroid/content/pm/PackageInstaller;->getSessionInfo(I)Landroid/content/pm/PackageInstaller$SessionInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 75
    invoke-virtual {v0}, Landroid/content/pm/PackageInstaller$SessionInfo;->getInstallerPackageName()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_1
    move-object v3, v4

    :goto_1
    if-eqz v0, :cond_2

    .line 77
    invoke-virtual {v0}, Landroid/content/pm/PackageInstaller$SessionInfo;->getInstallerAttributionTag()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_2
    move-object v0, v4

    :goto_2
    move-object v13, v3

    move-object v3, v0

    move-object v0, v13

    goto :goto_3

    :cond_3
    move-object v3, v4

    .line 80
    :goto_3
    invoke-direct {p0, v0}, Lcom/android/packageinstaller/InstallStart;->getSourceInfo(Ljava/lang/String;)Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    .line 81
    invoke-direct {p0, v5}, Lcom/android/packageinstaller/InstallStart;->getOriginatingUid(Landroid/content/pm/ApplicationInfo;)I

    move-result v6

    const/4 v7, 0x0

    if-eqz v5, :cond_4

    .line 83
    iget v8, v5, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    and-int/lit8 v8, v8, 0x8

    if-eqz v8, :cond_4

    const-string v8, "android.intent.extra.NOT_UNKNOWN_SOURCE"

    .line 85
    invoke-virtual {p1, v8, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    goto :goto_4

    :cond_4
    move v8, v7

    :goto_4
    const/4 v9, 0x1

    if-nez v8, :cond_6

    if-eq v6, v2, :cond_6

    .line 89
    invoke-static {p0, v6}, Lcom/android/packageinstaller/PackageUtil;->getMaxTargetSdkVersionForUid(Landroid/content/Context;I)I

    move-result v2

    if-gez v2, :cond_5

    .line 91
    sget-object v2, Lcom/android/packageinstaller/InstallStart;->LOG_TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Cannot get target sdk version for uid "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    iput-boolean v9, p0, Lcom/android/packageinstaller/InstallStart;->mAbortInstall:Z

    goto :goto_5

    :cond_5
    const/16 v8, 0x1a

    if-lt v2, v8, :cond_6

    .line 94
    invoke-direct {p0, v6}, Lcom/android/packageinstaller/InstallStart;->isUidRequestingPermission(I)Z

    move-result v2

    if-nez v2, :cond_6

    .line 96
    sget-object v2, Lcom/android/packageinstaller/InstallStart;->LOG_TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Requesting uid "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " needs to declare permission "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "android.permission.REQUEST_INSTALL_PACKAGES"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    iput-boolean v9, p0, Lcom/android/packageinstaller/InstallStart;->mAbortInstall:Z

    .line 102
    :cond_6
    :goto_5
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v8, "android.intent.extra.INSTALLER_PACKAGE_NAME"

    invoke-virtual {v2, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 105
    invoke-virtual {p0}, Landroid/app/Activity;->getLaunchedFromPackage()Ljava/lang/String;

    move-result-object v10

    .line 106
    invoke-static {v2, v10}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_7

    iget-object v11, p0, Lcom/android/packageinstaller/InstallStart;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v12, "android.permission.INSTALL_PACKAGES"

    .line 107
    invoke-virtual {v11, v12, v10}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v10

    if-eqz v10, :cond_7

    .line 109
    sget-object v10, Lcom/android/packageinstaller/InstallStart;->LOG_TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "The given installer package name "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is invalid. Remove it."

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v10, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const v2, 0x534e4554

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/Object;

    const-string v11, "236687884"

    aput-object v11, v10, v7

    .line 111
    invoke-virtual {p0}, Landroid/app/Activity;->getLaunchedFromUid()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v9

    const/4 v11, 0x2

    const-string v12, "Invalid EXTRA_INSTALLER_PACKAGE_NAME"

    aput-object v12, v10, v11

    invoke-static {v2, v10}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 113
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 117
    :cond_7
    iget-boolean v2, p0, Lcom/android/packageinstaller/InstallStart;->mAbortInstall:Z

    if-eqz v2, :cond_8

    .line 118
    invoke-virtual {p0, v7}, Landroid/app/Activity;->setResult(I)V

    .line 119
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    .line 123
    :cond_8
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    const v7, 0x2000001

    .line 124
    invoke-virtual {v2, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v7, "EXTRA_CALLING_PACKAGE"

    .line 129
    invoke-virtual {v2, v7, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "EXTRA_CALLING_ATTRIBUTION_TAG"

    .line 130
    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "EXTRA_ORIGINAL_SOURCE_INFO"

    .line 132
    invoke-virtual {v2, v0, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v0, "android.intent.extra.ORIGINATING_UID"

    .line 133
    invoke-virtual {v2, v0, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    if-eqz v1, :cond_9

    .line 136
    const-class p1, Lcom/android/packageinstaller/PackageInstallerActivity;

    invoke-virtual {v2, p0, p1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto :goto_6

    .line 138
    :cond_9
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_a

    .line 140
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "content"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 146
    const-class p1, Lcom/android/packageinstaller/InstallStaging;

    invoke-virtual {v2, p0, p1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto :goto_6

    :cond_a
    if-eqz p1, :cond_b

    .line 147
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object p1

    const-string v0, "package"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 149
    const-class p1, Lcom/android/packageinstaller/PackageInstallerActivity;

    invoke-virtual {v2, p0, p1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    :goto_6
    move-object v4, v2

    goto :goto_7

    .line 151
    :cond_b
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const/4 v0, -0x3

    const-string v1, "android.intent.extra.INSTALL_RESULT"

    .line 152
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 154
    invoke-virtual {p0, v9, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    :goto_7
    if-eqz v4, :cond_c

    .line 161
    invoke-virtual {p0, v4}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 163
    :cond_c
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method
