.class public Lcom/android/packageinstaller/UninstallerActivity;
.super Landroid/app/Activity;
.source "UninstallerActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/packageinstaller/UninstallerActivity$DialogInfo;
    }
.end annotation


# instance fields
.field private mDialogInfo:Lcom/android/packageinstaller/UninstallerActivity$DialogInfo;

.field private mPackageName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 69
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private getPackageNameForUid(I)Ljava/lang/String;
    .locals 0

    .line 333
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/4 p1, 0x0

    .line 337
    aget-object p0, p0, p1

    return-object p0
.end method

.method private showAppNotFound()V
    .locals 3

    .line 212
    new-instance v0, Lcom/android/packageinstaller/handheld/ErrorDialogFragment;

    invoke-direct {v0}, Lcom/android/packageinstaller/handheld/ErrorDialogFragment;-><init>()V

    const v1, 0x7f0f0024

    const v2, 0x7f0f0023

    invoke-direct {p0, v0, v1, v2}, Lcom/android/packageinstaller/UninstallerActivity;->showDialogFragment(Lcom/android/packageinstaller/BottomDialogFragment;II)V

    return-void
.end method

.method private showConfirmationDialog()V
    .locals 2

    .line 208
    new-instance v0, Lcom/android/packageinstaller/handheld/UninstallAlertDialogFragment;

    invoke-direct {v0}, Lcom/android/packageinstaller/handheld/UninstallAlertDialogFragment;-><init>()V

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, v1}, Lcom/android/packageinstaller/UninstallerActivity;->showDialogFragment(Lcom/android/packageinstaller/BottomDialogFragment;II)V

    return-void
.end method

.method private showDialogFragment(Lcom/android/packageinstaller/BottomDialogFragment;II)V
    .locals 3

    .line 226
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 227
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p0

    const-string v1, "dialog"

    invoke-virtual {p0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 229
    invoke-virtual {v0, p0}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 232
    :cond_0
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    if-eqz p2, :cond_1

    const-string v2, "com.android.packageinstaller.arg.title"

    .line 234
    invoke-virtual {p0, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_1
    const-string p2, "com.android.packageinstaller.arg.text"

    .line 236
    invoke-virtual {p0, p2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 238
    invoke-virtual {p1, p0}, Landroid/app/DialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 239
    invoke-virtual {p1, v0, v1}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentTransaction;Ljava/lang/String;)I

    return-void
.end method

.method private showGenericError()V
    .locals 3

    .line 221
    new-instance v0, Lcom/android/packageinstaller/handheld/ErrorDialogFragment;

    invoke-direct {v0}, Lcom/android/packageinstaller/handheld/ErrorDialogFragment;-><init>()V

    const/4 v1, 0x0

    const v2, 0x7f0f002c

    invoke-direct {p0, v0, v1, v2}, Lcom/android/packageinstaller/UninstallerActivity;->showDialogFragment(Lcom/android/packageinstaller/BottomDialogFragment;II)V

    return-void
.end method

.method private showUserIsNotAllowed()V
    .locals 3

    .line 217
    new-instance v0, Lcom/android/packageinstaller/handheld/ErrorDialogFragment;

    invoke-direct {v0}, Lcom/android/packageinstaller/handheld/ErrorDialogFragment;-><init>()V

    const/4 v1, 0x0

    const v2, 0x7f0f0094

    invoke-direct {p0, v0, v1, v2}, Lcom/android/packageinstaller/UninstallerActivity;->showDialogFragment(Lcom/android/packageinstaller/BottomDialogFragment;II)V

    return-void
.end method


# virtual methods
.method public dispatchAborted()V
    .locals 3

    .line 321
    iget-object v0, p0, Lcom/android/packageinstaller/UninstallerActivity;->mDialogInfo:Lcom/android/packageinstaller/UninstallerActivity$DialogInfo;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/android/packageinstaller/UninstallerActivity$DialogInfo;->callback:Landroid/os/IBinder;

    if-eqz v0, :cond_0

    .line 322
    invoke-static {v0}, Landroid/content/pm/IPackageDeleteObserver2$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageDeleteObserver2;

    move-result-object v0

    .line 325
    :try_start_0
    iget-object p0, p0, Lcom/android/packageinstaller/UninstallerActivity;->mPackageName:Ljava/lang/String;

    const/4 v1, -0x5

    const-string v2, "Cancelled by user"

    invoke-interface {v0, p0, v1, v2}, Landroid/content/pm/IPackageDeleteObserver2;->onPackageDeleted(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public getDialogInfo()Lcom/android/packageinstaller/UninstallerActivity$DialogInfo;
    .locals 0

    .line 204
    iget-object p0, p0, Lcom/android/packageinstaller/UninstallerActivity;->mDialogInfo:Lcom/android/packageinstaller/UninstallerActivity$DialogInfo;

    return-object p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7

    const-string p1, "android.permission.DELETE_PACKAGES"

    const-string v0, "android.permission.REQUEST_DELETE_PACKAGES"

    const-string v1, "UninstallerActivity"

    .line 78
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/high16 v3, 0x80000

    invoke-virtual {v2, v3}, Landroid/view/Window;->addSystemFlags(I)V

    const/4 v2, 0x0

    .line 82
    invoke-super {p0, v2}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const/4 v2, 0x1

    .line 85
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v3

    invoke-virtual {p0}, Landroid/app/Activity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v4

    invoke-interface {v3, v4}, Landroid/app/IActivityManager;->getLaunchedFromUid(Landroid/os/IBinder;)I

    move-result v3

    .line 87
    invoke-direct {p0, v3}, Lcom/android/packageinstaller/UninstallerActivity;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_0

    .line 89
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Package not found for originating uid "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    invoke-virtual {p0, v2}, Landroid/app/Activity;->setResult(I)V

    .line 91
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_0
    const-string v5, "appops"

    .line 94
    invoke-virtual {p0, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/AppOpsManager;

    const-string v6, "android:request_delete_packages"

    .line 96
    invoke-virtual {v5, v6, v3, v4}, Landroid/app/AppOpsManager;->noteOpNoThrow(Ljava/lang/String;ILjava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_1

    .line 99
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Install from uid "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " disallowed by AppOps"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    invoke-virtual {p0, v2}, Landroid/app/Activity;->setResult(I)V

    .line 101
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    .line 106
    :cond_1
    invoke-static {p0, v3}, Lcom/android/packageinstaller/PackageUtil;->getMaxTargetSdkVersionForUid(Landroid/content/Context;I)I

    move-result v4

    const/16 v5, 0x1c

    if-lt v4, v5, :cond_2

    .line 107
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v4

    invoke-interface {v4, v0, v3}, Landroid/content/pm/IPackageManager;->checkUidPermission(Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_2

    .line 110
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v4

    invoke-interface {v4, p1, v3}, Landroid/content/pm/IPackageManager;->checkUidPermission(Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_2

    .line 113
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Uid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " does not have "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " or "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    invoke-virtual {p0, v2}, Landroid/app/Activity;->setResult(I)V

    .line 118
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2

    return-void

    .line 133
    :cond_2
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    .line 134
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_3

    const-string p1, "No package URI in intent"

    .line 136
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    invoke-direct {p0}, Lcom/android/packageinstaller/UninstallerActivity;->showAppNotFound()V

    return-void

    .line 140
    :cond_3
    invoke-virtual {v0}, Landroid/net/Uri;->getEncodedSchemeSpecificPart()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/packageinstaller/UninstallerActivity;->mPackageName:Ljava/lang/String;

    if-nez v2, :cond_4

    .line 142
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid package name in URI: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    invoke-direct {p0}, Lcom/android/packageinstaller/UninstallerActivity;->showAppNotFound()V

    return-void

    :cond_4
    const-string v2, "package"

    .line 148
    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 147
    invoke-static {v2}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v2

    .line 150
    new-instance v3, Lcom/android/packageinstaller/UninstallerActivity$DialogInfo;

    invoke-direct {v3}, Lcom/android/packageinstaller/UninstallerActivity$DialogInfo;-><init>()V

    iput-object v3, p0, Lcom/android/packageinstaller/UninstallerActivity;->mDialogInfo:Lcom/android/packageinstaller/UninstallerActivity$DialogInfo;

    const/4 v4, 0x0

    const-string v5, "android.intent.extra.UNINSTALL_ALL_USERS"

    .line 152
    invoke-virtual {p1, v5, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, v3, Lcom/android/packageinstaller/UninstallerActivity$DialogInfo;->allUsers:Z

    .line 153
    iget-object v3, p0, Lcom/android/packageinstaller/UninstallerActivity;->mDialogInfo:Lcom/android/packageinstaller/UninstallerActivity$DialogInfo;

    iget-boolean v3, v3, Lcom/android/packageinstaller/UninstallerActivity$DialogInfo;->allUsers:Z

    if-eqz v3, :cond_5

    invoke-static {p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/UserManager;->isAdminUser()Z

    move-result v3

    if-nez v3, :cond_5

    const-string p1, "Only admin user can request uninstall for all users"

    .line 154
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    invoke-direct {p0}, Lcom/android/packageinstaller/UninstallerActivity;->showUserIsNotAllowed()V

    return-void

    .line 158
    :cond_5
    iget-object v3, p0, Lcom/android/packageinstaller/UninstallerActivity;->mDialogInfo:Lcom/android/packageinstaller/UninstallerActivity$DialogInfo;

    const-string v4, "android.intent.extra.USER"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/os/UserHandle;

    iput-object v4, v3, Lcom/android/packageinstaller/UninstallerActivity$DialogInfo;->user:Landroid/os/UserHandle;

    .line 159
    iget-object v3, p0, Lcom/android/packageinstaller/UninstallerActivity;->mDialogInfo:Lcom/android/packageinstaller/UninstallerActivity$DialogInfo;

    iget-object v4, v3, Lcom/android/packageinstaller/UninstallerActivity$DialogInfo;->user:Landroid/os/UserHandle;

    if-nez v4, :cond_6

    .line 160
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v4

    iput-object v4, v3, Lcom/android/packageinstaller/UninstallerActivity$DialogInfo;->user:Landroid/os/UserHandle;

    goto :goto_0

    :cond_6
    const-string v3, "user"

    .line 162
    invoke-virtual {p0, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserManager;

    .line 163
    invoke-virtual {v3}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object v3

    .line 164
    iget-object v4, p0, Lcom/android/packageinstaller/UninstallerActivity;->mDialogInfo:Lcom/android/packageinstaller/UninstallerActivity$DialogInfo;

    iget-object v4, v4, Lcom/android/packageinstaller/UninstallerActivity$DialogInfo;->user:Landroid/os/UserHandle;

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 165
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "User "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " can\'t request uninstall for user "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/packageinstaller/UninstallerActivity;->mDialogInfo:Lcom/android/packageinstaller/UninstallerActivity$DialogInfo;

    iget-object v0, v0, Lcom/android/packageinstaller/UninstallerActivity$DialogInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    invoke-direct {p0}, Lcom/android/packageinstaller/UninstallerActivity;->showUserIsNotAllowed()V

    return-void

    .line 172
    :cond_7
    :goto_0
    iget-object v3, p0, Lcom/android/packageinstaller/UninstallerActivity;->mDialogInfo:Lcom/android/packageinstaller/UninstallerActivity$DialogInfo;

    const-string v4, "android.content.pm.extra.CALLBACK"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getIBinderExtra(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    iput-object p1, v3, Lcom/android/packageinstaller/UninstallerActivity$DialogInfo;->callback:Landroid/os/IBinder;

    .line 175
    :try_start_1
    iget-object p1, p0, Lcom/android/packageinstaller/UninstallerActivity;->mDialogInfo:Lcom/android/packageinstaller/UninstallerActivity$DialogInfo;

    iget-object v3, p0, Lcom/android/packageinstaller/UninstallerActivity;->mPackageName:Ljava/lang/String;

    const-wide/32 v4, 0x400000

    iget-object v6, p1, Lcom/android/packageinstaller/UninstallerActivity$DialogInfo;->user:Landroid/os/UserHandle;

    .line 176
    invoke-virtual {v6}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v6

    .line 175
    invoke-interface {v2, v3, v4, v5, v6}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iput-object v3, p1, Lcom/android/packageinstaller/UninstallerActivity$DialogInfo;->appInfo:Landroid/content/pm/ApplicationInfo;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    const-string p1, "Unable to get packageName. Package manager is dead?"

    .line 178
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    :goto_1
    iget-object p1, p0, Lcom/android/packageinstaller/UninstallerActivity;->mDialogInfo:Lcom/android/packageinstaller/UninstallerActivity$DialogInfo;

    iget-object p1, p1, Lcom/android/packageinstaller/UninstallerActivity$DialogInfo;->appInfo:Landroid/content/pm/ApplicationInfo;

    if-nez p1, :cond_8

    .line 182
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid packageName: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/packageinstaller/UninstallerActivity;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    invoke-direct {p0}, Lcom/android/packageinstaller/UninstallerActivity;->showAppNotFound()V

    return-void

    .line 188
    :cond_8
    invoke-virtual {v0}, Landroid/net/Uri;->getFragment()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_9

    .line 191
    :try_start_2
    iget-object v0, p0, Lcom/android/packageinstaller/UninstallerActivity;->mDialogInfo:Lcom/android/packageinstaller/UninstallerActivity$DialogInfo;

    new-instance v3, Landroid/content/ComponentName;

    iget-object v4, p0, Lcom/android/packageinstaller/UninstallerActivity;->mPackageName:Ljava/lang/String;

    invoke-direct {v3, v4, p1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v4, 0x0

    iget-object p1, p0, Lcom/android/packageinstaller/UninstallerActivity;->mDialogInfo:Lcom/android/packageinstaller/UninstallerActivity$DialogInfo;

    iget-object p1, p1, Lcom/android/packageinstaller/UninstallerActivity$DialogInfo;->user:Landroid/os/UserHandle;

    .line 193
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p1

    .line 191
    invoke-interface {v2, v3, v4, v5, p1}, Landroid/content/pm/IPackageManager;->getActivityInfo(Landroid/content/ComponentName;JI)Landroid/content/pm/ActivityInfo;

    move-result-object p1

    iput-object p1, v0, Lcom/android/packageinstaller/UninstallerActivity$DialogInfo;->activityInfo:Landroid/content/pm/ActivityInfo;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    const-string p1, "Unable to get className. Package manager is dead?"

    .line 195
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    :cond_9
    :goto_2
    invoke-direct {p0}, Lcom/android/packageinstaller/UninstallerActivity;->showConfirmationDialog()V

    return-void

    :catch_2
    const-string p1, "Could not determine the launching uid."

    .line 123
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    invoke-virtual {p0, v2}, Landroid/app/Activity;->setResult(I)V

    .line 126
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public startUninstallProgress(Z)V
    .locals 13

    const-string v0, "UninstallerActivity"

    .line 243
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "android.intent.extra.RETURN_RESULT"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 244
    iget-object v4, p0, Lcom/android/packageinstaller/UninstallerActivity;->mDialogInfo:Lcom/android/packageinstaller/UninstallerActivity$DialogInfo;

    iget-object v4, v4, Lcom/android/packageinstaller/UninstallerActivity$DialogInfo;->appInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/pm/ApplicationInfo;->loadSafeLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    const-string v5, "com.android.packageinstaller.extra.APP_LABEL"

    const-string v6, "com.android.packageinstaller.applicationInfo"

    const-string v7, "android.intent.extra.UNINSTALL_ALL_USERS"

    const/4 v8, 0x1

    if-nez v1, :cond_3

    .line 246
    iget-object v9, p0, Lcom/android/packageinstaller/UninstallerActivity;->mDialogInfo:Lcom/android/packageinstaller/UninstallerActivity$DialogInfo;

    iget-object v9, v9, Lcom/android/packageinstaller/UninstallerActivity$DialogInfo;->callback:Landroid/os/IBinder;

    if-nez v9, :cond_3

    invoke-virtual {p0}, Landroid/app/Activity;->getCallingActivity()Landroid/content/ComponentName;

    move-result-object v9

    if-eqz v9, :cond_0

    goto/16 :goto_1

    .line 268
    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/android/packageinstaller/UninstallEventReceiver;->getNewId(Landroid/content/Context;)I

    move-result v1
    :try_end_0
    .catch Lcom/android/packageinstaller/EventResultPersister$OutOfIdsException; {:try_start_0 .. :try_end_0} :catch_1

    .line 274
    new-instance v2, Landroid/content/Intent;

    const-class v9, Lcom/android/packageinstaller/UninstallFinish;

    invoke-direct {v2, p0, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v9, 0x10000000

    .line 276
    invoke-virtual {v2, v9}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 277
    iget-object v9, p0, Lcom/android/packageinstaller/UninstallerActivity;->mDialogInfo:Lcom/android/packageinstaller/UninstallerActivity$DialogInfo;

    iget-boolean v9, v9, Lcom/android/packageinstaller/UninstallerActivity$DialogInfo;->allUsers:Z

    invoke-virtual {v2, v7, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 278
    iget-object v7, p0, Lcom/android/packageinstaller/UninstallerActivity;->mDialogInfo:Lcom/android/packageinstaller/UninstallerActivity$DialogInfo;

    iget-object v7, v7, Lcom/android/packageinstaller/UninstallerActivity$DialogInfo;->appInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 279
    invoke-virtual {v2, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    const-string v5, "com.android.packageinstaller.extra.UNINSTALL_ID"

    .line 280
    invoke-virtual {v2, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 v5, 0xa000000

    .line 283
    invoke-static {p0, v1, v2, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    .line 286
    const-class v6, Landroid/app/NotificationManager;

    invoke-virtual {p0, v6}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/NotificationManager;

    .line 287
    new-instance v7, Landroid/app/NotificationChannel;

    const v9, 0x7f0f008f

    .line 288
    invoke-virtual {p0, v9}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v9

    const-string v10, "uninstalling"

    invoke-direct {v7, v10, v9, v8}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 290
    invoke-virtual {v6, v7}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 292
    new-instance v7, Landroid/app/Notification$Builder;

    invoke-direct {v7, p0, v10}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const v9, 0x7f070064

    .line 294
    invoke-virtual {v7, v9}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v7

    invoke-virtual {v7, v3, v8, v8}, Landroid/app/Notification$Builder;->setProgress(IIZ)Landroid/app/Notification$Builder;

    move-result-object v7

    const v9, 0x7f0f008e

    new-array v10, v8, [Ljava/lang/Object;

    aput-object v4, v10, v3

    .line 295
    invoke-virtual {p0, v9, v10}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 296
    invoke-virtual {v4}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v4

    .line 298
    invoke-virtual {v6, v1, v4}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 301
    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Uninstalling extras="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    iget-object v2, p0, Lcom/android/packageinstaller/UninstallerActivity;->mDialogInfo:Lcom/android/packageinstaller/UninstallerActivity$DialogInfo;

    iget-boolean v2, v2, Lcom/android/packageinstaller/UninstallerActivity$DialogInfo;->allUsers:Z

    if-eqz v2, :cond_1

    const/4 v2, 0x2

    goto :goto_0

    :cond_1
    move v2, v3

    :goto_0
    if-eqz p1, :cond_2

    move v3, v8

    :cond_2
    or-int v10, v2, v3

    .line 306
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/pm/IPackageManager;->getPackageInstaller()Landroid/content/pm/IPackageInstaller;

    move-result-object v7

    new-instance v8, Landroid/content/pm/VersionedPackage;

    iget-object p1, p0, Lcom/android/packageinstaller/UninstallerActivity;->mDialogInfo:Lcom/android/packageinstaller/UninstallerActivity$DialogInfo;

    iget-object p1, p1, Lcom/android/packageinstaller/UninstallerActivity$DialogInfo;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v2, -0x1

    invoke-direct {v8, p1, v2}, Landroid/content/pm/VersionedPackage;-><init>(Ljava/lang/String;I)V

    .line 309
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v11

    iget-object p1, p0, Lcom/android/packageinstaller/UninstallerActivity;->mDialogInfo:Lcom/android/packageinstaller/UninstallerActivity$DialogInfo;

    iget-object p1, p1, Lcom/android/packageinstaller/UninstallerActivity$DialogInfo;->user:Landroid/os/UserHandle;

    .line 310
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v12

    .line 306
    invoke-interface/range {v7 .. v12}, Landroid/content/pm/IPackageInstaller;->uninstall(Landroid/content/pm/VersionedPackage;Ljava/lang/String;ILandroid/content/IntentSender;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 312
    invoke-virtual {v6, v1}, Landroid/app/NotificationManager;->cancel(I)V

    const-string v1, "Cannot start uninstall"

    .line 314
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 315
    invoke-direct {p0}, Lcom/android/packageinstaller/UninstallerActivity;->showGenericError()V

    goto :goto_2

    .line 270
    :catch_1
    invoke-direct {p0}, Lcom/android/packageinstaller/UninstallerActivity;->showGenericError()V

    return-void

    .line 247
    :cond_3
    :goto_1
    new-instance v0, Landroid/content/Intent;

    const-class v3, Lcom/android/packageinstaller/UninstallUninstalling;

    invoke-direct {v0, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 249
    iget-object v3, p0, Lcom/android/packageinstaller/UninstallerActivity;->mDialogInfo:Lcom/android/packageinstaller/UninstallerActivity$DialogInfo;

    iget-object v3, v3, Lcom/android/packageinstaller/UninstallerActivity$DialogInfo;->user:Landroid/os/UserHandle;

    const-string v9, "android.intent.extra.USER"

    invoke-virtual {v0, v9, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 250
    iget-object v3, p0, Lcom/android/packageinstaller/UninstallerActivity;->mDialogInfo:Lcom/android/packageinstaller/UninstallerActivity$DialogInfo;

    iget-boolean v3, v3, Lcom/android/packageinstaller/UninstallerActivity$DialogInfo;->allUsers:Z

    invoke-virtual {v0, v7, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 251
    iget-object v3, p0, Lcom/android/packageinstaller/UninstallerActivity;->mDialogInfo:Lcom/android/packageinstaller/UninstallerActivity$DialogInfo;

    iget-object v3, v3, Lcom/android/packageinstaller/UninstallerActivity$DialogInfo;->appInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0, v6, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 252
    invoke-virtual {v0, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    const-string v3, "com.android.packageinstaller.extra.KEEP_DATA"

    .line 253
    invoke-virtual {v0, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 254
    iget-object p1, p0, Lcom/android/packageinstaller/UninstallerActivity;->mDialogInfo:Lcom/android/packageinstaller/UninstallerActivity$DialogInfo;

    iget-object p1, p1, Lcom/android/packageinstaller/UninstallerActivity$DialogInfo;->callback:Landroid/os/IBinder;

    const-string v3, "android.content.pm.extra.CALLBACK"

    invoke-virtual {v0, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/IBinder;)Landroid/content/Intent;

    if-eqz v1, :cond_4

    .line 257
    invoke-virtual {v0, v2, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_4
    if-nez v1, :cond_5

    .line 260
    invoke-virtual {p0}, Landroid/app/Activity;->getCallingActivity()Landroid/content/ComponentName;

    move-result-object p1

    if-eqz p1, :cond_6

    :cond_5
    const/high16 p1, 0x2000000

    .line 261
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 264
    :cond_6
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :goto_2
    return-void
.end method
