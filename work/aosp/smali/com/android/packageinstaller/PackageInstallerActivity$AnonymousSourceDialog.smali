.class public Lcom/android/packageinstaller/PackageInstallerActivity$AnonymousSourceDialog;
.super Lcom/android/packageinstaller/BottomDialogFragment;
.source "PackageInstallerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/packageinstaller/PackageInstallerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AnonymousSourceDialog"
.end annotation


# direct methods
.method public static synthetic $r8$lambda$JZN9zx_sjsyKACtxupsXkvCeyhA(Lcom/android/packageinstaller/PackageInstallerActivity$AnonymousSourceDialog;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/packageinstaller/PackageInstallerActivity$AnonymousSourceDialog;->lambda$onCreateDialog$0(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$d8vzCOH16KCJRSbQbCBv_ZD-ybQ(Lcom/android/packageinstaller/PackageInstallerActivity$AnonymousSourceDialog;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/packageinstaller/PackageInstallerActivity$AnonymousSourceDialog;->lambda$onCreateDialog$1(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 721
    invoke-direct {p0}, Lcom/android/packageinstaller/BottomDialogFragment;-><init>()V

    return-void
.end method

.method private synthetic lambda$onCreateDialog$0(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 733
    invoke-virtual {p0}, Landroid/app/DialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object p0

    check-cast p0, Lcom/android/packageinstaller/PackageInstallerActivity;

    const/4 p1, 0x1

    .line 735
    invoke-static {p0, p1}, Lcom/android/packageinstaller/PackageInstallerActivity;->-$$Nest$fputmAllowUnknownSources(Lcom/android/packageinstaller/PackageInstallerActivity;Z)V

    .line 736
    invoke-static {p0}, Lcom/android/packageinstaller/PackageInstallerActivity;->-$$Nest$minitiateInstall(Lcom/android/packageinstaller/PackageInstallerActivity;)V

    return-void
.end method

.method private synthetic lambda$onCreateDialog$1(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 738
    invoke-virtual {p0}, Landroid/app/DialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method static newInstance()Lcom/android/packageinstaller/PackageInstallerActivity$AnonymousSourceDialog;
    .locals 1

    .line 723
    new-instance v0, Lcom/android/packageinstaller/PackageInstallerActivity$AnonymousSourceDialog;

    invoke-direct {v0}, Lcom/android/packageinstaller/PackageInstallerActivity$AnonymousSourceDialog;-><init>()V

    return-object v0
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0

    .line 744
    invoke-virtual {p0}, Landroid/app/DialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2

    .line 728
    new-instance p1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/DialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v0, 0x7f0f001f

    .line 729
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v0, Lcom/android/packageinstaller/PackageInstallerActivity$AnonymousSourceDialog$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/packageinstaller/PackageInstallerActivity$AnonymousSourceDialog$$ExternalSyntheticLambda0;-><init>(Lcom/android/packageinstaller/PackageInstallerActivity$AnonymousSourceDialog;)V

    const v1, 0x7f0f001e

    .line 730
    invoke-virtual {p1, v1, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v0, Lcom/android/packageinstaller/PackageInstallerActivity$AnonymousSourceDialog$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/packageinstaller/PackageInstallerActivity$AnonymousSourceDialog$$ExternalSyntheticLambda1;-><init>(Lcom/android/packageinstaller/PackageInstallerActivity$AnonymousSourceDialog;)V

    const p0, 0x7f0f0027

    .line 738
    invoke-virtual {p1, p0, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    .line 739
    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p0

    return-object p0
.end method
