.class final Lcom/android/packageinstaller/wear/WearPackageInstallerService$ServiceHandler;
.super Landroid/os/Handler;
.source "WearPackageInstallerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/packageinstaller/wear/WearPackageInstallerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ServiceHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/packageinstaller/wear/WearPackageInstallerService;


# direct methods
.method public constructor <init>(Lcom/android/packageinstaller/wear/WearPackageInstallerService;Landroid/os/Looper;)V
    .locals 0

    .line 513
    iput-object p1, p0, Lcom/android/packageinstaller/wear/WearPackageInstallerService$ServiceHandler;->this$0:Lcom/android/packageinstaller/wear/WearPackageInstallerService;

    .line 514
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 518
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 523
    :cond_0
    iget-object p0, p0, Lcom/android/packageinstaller/wear/WearPackageInstallerService$ServiceHandler;->this$0:Lcom/android/packageinstaller/wear/WearPackageInstallerService;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/packageinstaller/wear/WearPackageInstallerService;->-$$Nest$muninstallPackage(Lcom/android/packageinstaller/wear/WearPackageInstallerService;Landroid/os/Bundle;)V

    goto :goto_0

    .line 520
    :cond_1
    iget-object p0, p0, Lcom/android/packageinstaller/wear/WearPackageInstallerService$ServiceHandler;->this$0:Lcom/android/packageinstaller/wear/WearPackageInstallerService;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/packageinstaller/wear/WearPackageInstallerService;->-$$Nest$minstallPackage(Lcom/android/packageinstaller/wear/WearPackageInstallerService;Landroid/os/Bundle;)V

    :goto_0
    return-void
.end method
