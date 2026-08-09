.class public Lcom/android/packageinstaller/PackageInstallerActivity$OutOfSpaceDialog;
.super Lcom/android/packageinstaller/PackageInstallerActivity$AppErrorDialog;
.source "PackageInstallerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/packageinstaller/PackageInstallerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OutOfSpaceDialog"
.end annotation


# direct methods
.method public static synthetic $r8$lambda$MPDI-8UA_CqCcl20xTs-b25EMuc(Lcom/android/packageinstaller/PackageInstallerActivity$OutOfSpaceDialog;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/packageinstaller/PackageInstallerActivity$OutOfSpaceDialog;->lambda$createDialog$1(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$iXOQLcCziB9RTovnKQw7bPS5MRQ(Lcom/android/packageinstaller/PackageInstallerActivity$OutOfSpaceDialog;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/packageinstaller/PackageInstallerActivity$OutOfSpaceDialog;->lambda$createDialog$0(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 766
    invoke-direct {p0}, Lcom/android/packageinstaller/PackageInstallerActivity$AppErrorDialog;-><init>()V

    return-void
.end method

.method private synthetic lambda$createDialog$0(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 780
    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.intent.action.MANAGE_PACKAGE_STORAGE"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 p2, 0x10000000

    .line 781
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 782
    invoke-virtual {p0, p1}, Landroid/app/DialogFragment;->startActivity(Landroid/content/Intent;)V

    .line 783
    invoke-virtual {p0}, Landroid/app/DialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private synthetic lambda$createDialog$1(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 785
    invoke-virtual {p0}, Landroid/app/DialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method static newInstance(Ljava/lang/CharSequence;)Lcom/android/packageinstaller/PackageInstallerActivity$AppErrorDialog;
    .locals 1

    .line 768
    new-instance v0, Lcom/android/packageinstaller/PackageInstallerActivity$OutOfSpaceDialog;

    invoke-direct {v0}, Lcom/android/packageinstaller/PackageInstallerActivity$OutOfSpaceDialog;-><init>()V

    .line 769
    invoke-virtual {v0, p0}, Lcom/android/packageinstaller/PackageInstallerActivity$AppErrorDialog;->setArgument(Ljava/lang/CharSequence;)V

    return-object v0
.end method


# virtual methods
.method protected createDialog(Ljava/lang/CharSequence;)Landroid/app/Dialog;
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const p1, 0x7f0f006f

    .line 775
    invoke-virtual {p0, p1, v0}, Landroid/app/DialogFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 776
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/DialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 777
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v0, Lcom/android/packageinstaller/PackageInstallerActivity$OutOfSpaceDialog$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/packageinstaller/PackageInstallerActivity$OutOfSpaceDialog$$ExternalSyntheticLambda0;-><init>(Lcom/android/packageinstaller/PackageInstallerActivity$OutOfSpaceDialog;)V

    const v1, 0x7f0f0066

    .line 778
    invoke-virtual {p1, v1, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v0, Lcom/android/packageinstaller/PackageInstallerActivity$OutOfSpaceDialog$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/packageinstaller/PackageInstallerActivity$OutOfSpaceDialog$$ExternalSyntheticLambda1;-><init>(Lcom/android/packageinstaller/PackageInstallerActivity$OutOfSpaceDialog;)V

    const p0, 0x7f0f0027

    .line 785
    invoke-virtual {p1, p0, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    .line 786
    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p0

    return-object p0
.end method
