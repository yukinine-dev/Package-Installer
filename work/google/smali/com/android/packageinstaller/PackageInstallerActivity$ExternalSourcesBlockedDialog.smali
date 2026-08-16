.class public Lcom/android/packageinstaller/PackageInstallerActivity$ExternalSourcesBlockedDialog;
.super Lcom/android/packageinstaller/PackageInstallerActivity$AppErrorDialog;
.source "PackageInstallerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/packageinstaller/PackageInstallerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ExternalSourcesBlockedDialog"
.end annotation


# direct methods
.method public static synthetic $r8$lambda$ITan2qoCKMfdCffGwufr_cty3Oo(Lcom/android/packageinstaller/PackageInstallerActivity;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/android/packageinstaller/PackageInstallerActivity$ExternalSourcesBlockedDialog;->lambda$createDialog$1(Lcom/android/packageinstaller/PackageInstallerActivity;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$hEs7uCURiYJmgQmI-3-FmfAztZc(Ljava/lang/CharSequence;Lcom/android/packageinstaller/PackageInstallerActivity;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/android/packageinstaller/PackageInstallerActivity$ExternalSourcesBlockedDialog;->lambda$createDialog$0(Ljava/lang/CharSequence;Lcom/android/packageinstaller/PackageInstallerActivity;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 846
    invoke-direct {p0}, Lcom/android/packageinstaller/PackageInstallerActivity$AppErrorDialog;-><init>()V

    return-void
.end method

.method private static synthetic lambda$createDialog$0(Ljava/lang/CharSequence;Lcom/android/packageinstaller/PackageInstallerActivity;Landroid/content/DialogInterface;I)V
    .locals 1

    .line 869
    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    const-string p3, "android.settings.MANAGE_UNKNOWN_APP_SOURCES"

    .line 870
    invoke-virtual {p2, p3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 872
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "package:"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    .line 873
    invoke-virtual {p2, p0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/high16 p0, 0x40000000    # 2.0f

    .line 874
    invoke-virtual {p2, p0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 876
    :try_start_0
    new-instance p0, Lcom/android/packageinstaller/PackageInstallerActivity$UnknownSourcesListener;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p3, 0x0

    invoke-direct {p0, p1, p3}, Lcom/android/packageinstaller/PackageInstallerActivity$UnknownSourcesListener;-><init>(Lcom/android/packageinstaller/PackageInstallerActivity;Lcom/android/packageinstaller/PackageInstallerActivity$UnknownSourcesListener-IA;)V

    invoke-static {p1, p0}, Lcom/android/packageinstaller/PackageInstallerActivity;->-$$Nest$mregister(Lcom/android/packageinstaller/PackageInstallerActivity;Lcom/android/packageinstaller/PackageInstallerActivity$UnknownSourcesListener;)V

    const/4 p0, 0x1

    .line 877
    invoke-virtual {p1, p2, p0}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "PackageInstaller"

    const-string p1, "Settings activity not found for action: android.settings.MANAGE_UNKNOWN_APP_SOURCES"

    .line 880
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private static synthetic lambda$createDialog$1(Lcom/android/packageinstaller/PackageInstallerActivity;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 885
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method static newInstance(Ljava/lang/String;)Lcom/android/packageinstaller/PackageInstallerActivity$AppErrorDialog;
    .locals 1

    .line 848
    new-instance v0, Lcom/android/packageinstaller/PackageInstallerActivity$ExternalSourcesBlockedDialog;

    invoke-direct {v0}, Lcom/android/packageinstaller/PackageInstallerActivity$ExternalSourcesBlockedDialog;-><init>()V

    .line 850
    invoke-virtual {v0, p0}, Lcom/android/packageinstaller/PackageInstallerActivity$AppErrorDialog;->setArgument(Ljava/lang/CharSequence;)V

    return-object v0
.end method


# virtual methods
.method protected createDialog(Ljava/lang/CharSequence;)Landroid/app/Dialog;
    .locals 4

    .line 857
    invoke-virtual {p0}, Landroid/app/DialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object p0

    check-cast p0, Lcom/android/packageinstaller/PackageInstallerActivity;

    .line 859
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 861
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 863
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 864
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 865
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0f0092

    .line 866
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0f002a

    new-instance v2, Lcom/android/packageinstaller/PackageInstallerActivity$ExternalSourcesBlockedDialog$$ExternalSyntheticLambda0;

    invoke-direct {v2, p1, p0}, Lcom/android/packageinstaller/PackageInstallerActivity$ExternalSourcesBlockedDialog$$ExternalSyntheticLambda0;-><init>(Ljava/lang/CharSequence;Lcom/android/packageinstaller/PackageInstallerActivity;)V

    .line 867
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0f0027

    new-instance v2, Lcom/android/packageinstaller/PackageInstallerActivity$ExternalSourcesBlockedDialog$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lcom/android/packageinstaller/PackageInstallerActivity$ExternalSourcesBlockedDialog$$ExternalSyntheticLambda1;-><init>(Lcom/android/packageinstaller/PackageInstallerActivity;)V

    .line 884
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 886
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 888
    :catch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Did not find app info for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "PackageInstaller"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 889
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    const/4 p0, 0x0

    return-object p0
.end method
