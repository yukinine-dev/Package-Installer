.class Lcom/android/packageinstaller/wear/WearPackageInstallerService$PackageInstallListener;
.super Ljava/lang/Object;
.source "WearPackageInstallerService.java"

# interfaces
.implements Lcom/android/packageinstaller/wear/PackageInstallerImpl$InstallListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/packageinstaller/wear/WearPackageInstallerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PackageInstallListener"
.end annotation


# instance fields
.field private mApplicationPackageName:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mStartId:I

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field final synthetic this$0:Lcom/android/packageinstaller/wear/WearPackageInstallerService;


# direct methods
.method private constructor <init>(Lcom/android/packageinstaller/wear/WearPackageInstallerService;Landroid/content/Context;Landroid/os/PowerManager$WakeLock;ILjava/lang/String;)V
    .locals 0

    .line 536
    iput-object p1, p0, Lcom/android/packageinstaller/wear/WearPackageInstallerService$PackageInstallListener;->this$0:Lcom/android/packageinstaller/wear/WearPackageInstallerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 537
    iput-object p2, p0, Lcom/android/packageinstaller/wear/WearPackageInstallerService$PackageInstallListener;->mContext:Landroid/content/Context;

    .line 538
    iput-object p3, p0, Lcom/android/packageinstaller/wear/WearPackageInstallerService$PackageInstallListener;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 539
    iput p4, p0, Lcom/android/packageinstaller/wear/WearPackageInstallerService$PackageInstallListener;->mStartId:I

    .line 540
    iput-object p5, p0, Lcom/android/packageinstaller/wear/WearPackageInstallerService$PackageInstallListener;->mApplicationPackageName:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/packageinstaller/wear/WearPackageInstallerService;Landroid/content/Context;Landroid/os/PowerManager$WakeLock;ILjava/lang/String;Lcom/android/packageinstaller/wear/WearPackageInstallerService$PackageInstallListener-IA;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/android/packageinstaller/wear/WearPackageInstallerService$PackageInstallListener;-><init>(Lcom/android/packageinstaller/wear/WearPackageInstallerService;Landroid/content/Context;Landroid/os/PowerManager$WakeLock;ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public installBeginning()V
    .locals 2

    .line 545
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Package "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/packageinstaller/wear/WearPackageInstallerService$PackageInstallListener;->mApplicationPackageName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " is being installed."

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "WearPkgInstallerService"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public installFailed(ILjava/lang/String;)V
    .locals 1

    .line 565
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Package install failed "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/packageinstaller/wear/WearPackageInstallerService$PackageInstallListener;->mApplicationPackageName:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", errorCode "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "WearPkgInstallerService"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    iget-object p1, p0, Lcom/android/packageinstaller/wear/WearPackageInstallerService$PackageInstallListener;->this$0:Lcom/android/packageinstaller/wear/WearPackageInstallerService;

    iget-object p2, p0, Lcom/android/packageinstaller/wear/WearPackageInstallerService$PackageInstallListener;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    iget p0, p0, Lcom/android/packageinstaller/wear/WearPackageInstallerService$PackageInstallListener;->mStartId:I

    invoke-static {p1, p2, p0}, Lcom/android/packageinstaller/wear/WearPackageInstallerService;->-$$Nest$mfinishService(Lcom/android/packageinstaller/wear/WearPackageInstallerService;Landroid/os/PowerManager$WakeLock;I)V

    return-void
.end method

.method public installSucceeded()V
    .locals 3

    :try_start_0
    const-string v0, "WearPkgInstallerService"

    .line 551
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/packageinstaller/wear/WearPackageInstallerService$PackageInstallListener;->mApplicationPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " was installed."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 554
    iget-object v0, p0, Lcom/android/packageinstaller/wear/WearPackageInstallerService$PackageInstallListener;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/packageinstaller/wear/WearPackageInstallerService$PackageInstallListener;->mApplicationPackageName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/packageinstaller/wear/WearPackageUtil;->getTemporaryFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 556
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 559
    :cond_0
    iget-object v0, p0, Lcom/android/packageinstaller/wear/WearPackageInstallerService$PackageInstallListener;->this$0:Lcom/android/packageinstaller/wear/WearPackageInstallerService;

    iget-object v1, p0, Lcom/android/packageinstaller/wear/WearPackageInstallerService$PackageInstallListener;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    iget p0, p0, Lcom/android/packageinstaller/wear/WearPackageInstallerService$PackageInstallListener;->mStartId:I

    invoke-static {v0, v1, p0}, Lcom/android/packageinstaller/wear/WearPackageInstallerService;->-$$Nest$mfinishService(Lcom/android/packageinstaller/wear/WearPackageInstallerService;Landroid/os/PowerManager$WakeLock;I)V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/packageinstaller/wear/WearPackageInstallerService$PackageInstallListener;->this$0:Lcom/android/packageinstaller/wear/WearPackageInstallerService;

    iget-object v2, p0, Lcom/android/packageinstaller/wear/WearPackageInstallerService$PackageInstallListener;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    iget p0, p0, Lcom/android/packageinstaller/wear/WearPackageInstallerService$PackageInstallListener;->mStartId:I

    invoke-static {v1, v2, p0}, Lcom/android/packageinstaller/wear/WearPackageInstallerService;->-$$Nest$mfinishService(Lcom/android/packageinstaller/wear/WearPackageInstallerService;Landroid/os/PowerManager$WakeLock;I)V

    .line 560
    throw v0
.end method
