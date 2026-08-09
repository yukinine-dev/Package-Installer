.class public Lcom/android/packageinstaller/PackageInstallerActivity;
.super Lcom/android/packageinstaller/BottomAlertActivity;
.source "PackageInstallerActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/packageinstaller/PackageInstallerActivity$AppErrorDialog;,
        Lcom/android/packageinstaller/PackageInstallerActivity$ExternalSourcesBlockedDialog;,
        Lcom/android/packageinstaller/PackageInstallerActivity$UnknownSourcesListener;,
        Lcom/android/packageinstaller/PackageInstallerActivity$InstallErrorDialog;,
        Lcom/android/packageinstaller/PackageInstallerActivity$OutOfSpaceDialog;,
        Lcom/android/packageinstaller/PackageInstallerActivity$NotSupportedOnWearDialog;,
        Lcom/android/packageinstaller/PackageInstallerActivity$AnonymousSourceDialog;,
        Lcom/android/packageinstaller/PackageInstallerActivity$SimpleErrorDialog;
    }
.end annotation


# static fields
.field private static final ALLOW_UNKNOWN_SOURCES_KEY:Ljava/lang/String;


# instance fields
.field private mActiveUnknownSourcesListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/packageinstaller/PackageInstallerActivity$UnknownSourcesListener;",
            ">;"
        }
    .end annotation
.end field

.field private mAllowUnknownSources:Z

.field public mAppInfo:Landroid/content/pm/ApplicationInfo;

.field mAppOpsManager:Landroid/app/AppOpsManager;

.field private mAppSnippet:Lcom/android/packageinstaller/PackageUtil$AppSnippet;

.field private mCallingAttributionTag:Ljava/lang/String;

.field mCallingPackage:Ljava/lang/String;

.field private mEnableOk:Z

.field mInstaller:Landroid/content/pm/PackageInstaller;

.field mIpm:Landroid/content/pm/IPackageManager;

.field private final mLocalLOGV:Z

.field private mOk:Landroid/widget/Button;

.field private mOriginatingPackage:Ljava/lang/String;

.field private mOriginatingURI:Landroid/net/Uri;

.field private mOriginatingUid:I

.field private mPackageURI:Landroid/net/Uri;

.field public mPkgInfo:Landroid/content/pm/PackageInfo;

.field mPm:Landroid/content/pm/PackageManager;

.field private mReferrerURI:Landroid/net/Uri;

.field private mSessionId:I

.field mSourceInfo:Landroid/content/pm/ApplicationInfo;

.field mUserManager:Landroid/os/UserManager;


# direct methods
.method public static synthetic $r8$lambda$qE7Qm3CNK6W9IATEDG2WB_m75u8(Lcom/android/packageinstaller/PackageInstallerActivity;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/packageinstaller/PackageInstallerActivity;->lambda$bindUi$1(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$sgsGA3TVZFKwvpHX-p9Gh7wGwvg(Lcom/android/packageinstaller/PackageInstallerActivity;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/packageinstaller/PackageInstallerActivity;->lambda$bindUi$0(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmActiveUnknownSourcesListeners(Lcom/android/packageinstaller/PackageInstallerActivity;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mActiveUnknownSourcesListeners:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmOriginatingPackage(Lcom/android/packageinstaller/PackageInstallerActivity;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mOriginatingPackage:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmAllowUnknownSources(Lcom/android/packageinstaller/PackageInstallerActivity;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mAllowUnknownSources:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$minitiateInstall(Lcom/android/packageinstaller/PackageInstallerActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/packageinstaller/PackageInstallerActivity;->initiateInstall()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mregister(Lcom/android/packageinstaller/PackageInstallerActivity;Lcom/android/packageinstaller/PackageInstallerActivity$UnknownSourcesListener;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/packageinstaller/PackageInstallerActivity;->register(Lcom/android/packageinstaller/PackageInstallerActivity$UnknownSourcesListener;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$munregister(Lcom/android/packageinstaller/PackageInstallerActivity;Lcom/android/packageinstaller/PackageInstallerActivity$UnknownSourcesListener;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/packageinstaller/PackageInstallerActivity;->unregister(Lcom/android/packageinstaller/PackageInstallerActivity$UnknownSourcesListener;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/android/packageinstaller/PackageInstallerActivity;

    .line 85
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "ALLOW_UNKNOWN_SOURCES_KEY"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/packageinstaller/PackageInstallerActivity;->ALLOW_UNKNOWN_SOURCES_KEY:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 76
    invoke-direct {p0}, Lcom/android/packageinstaller/BottomAlertActivity;-><init>()V

    .line 109
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mActiveUnknownSourcesListeners:Ljava/util/List;

    const/4 v0, -0x1

    .line 110
    iput v0, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mSessionId:I

    .line 114
    iput v0, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mOriginatingUid:I

    const/4 v0, 0x0

    .line 116
    iput-boolean v0, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mLocalLOGV:Z

    .line 126
    iput-boolean v0, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mEnableOk:Z

    return-void
.end method

.method private bindUi()V
    .locals 10

    const v0, 0x7f0c0073

    const/4 v1, 0x0

    .line 421
    invoke-static {p0, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v2, 0x7f090049

    .line 422
    invoke-virtual {v0, v2}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 423
    iget-object v3, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mAppSnippet:Lcom/android/packageinstaller/PackageUtil$AppSnippet;

    iget-object v3, v3, Lcom/android/packageinstaller/PackageUtil$AppSnippet;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const v5, 0x7f090191

    .line 424
    invoke-virtual {v0, v5}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const v2, 0x7f09004b

    .line 424
    invoke-virtual {v0, v2}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 425
    iget-object v3, p0, Lcom/android/packageinstaller/BottomAlertActivity;->mAlert:Lcom/android/internal/app/AlertController;

    invoke-virtual {v3, v0}, Lcom/android/internal/app/AlertController;->setView(Landroid/view/View;)V

    .line 426
    iget-object v0, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mAppSnippet:Lcom/android/packageinstaller/PackageUtil$AppSnippet;

    iget-object v3, v0, Lcom/android/packageinstaller/PackageUtil$AppSnippet;->pkgname:Ljava/lang/CharSequence;

    iget-object v0, v0, Lcom/android/packageinstaller/PackageUtil$AppSnippet;->label:Ljava/lang/CharSequence;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 427
    iget-object v0, p0, Lcom/android/packageinstaller/BottomAlertActivity;->mAlert:Lcom/android/internal/app/AlertController;

    const v2, 0x7f0f0031

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/android/packageinstaller/PackageInstallerActivity$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Lcom/android/packageinstaller/PackageInstallerActivity$$ExternalSyntheticLambda0;-><init>(Lcom/android/packageinstaller/PackageInstallerActivity;)V

    const/4 v4, -0x1

    invoke-virtual {v0, v4, v2, v3, v1}, Lcom/android/internal/app/AlertController;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    .line 438
    iget-object v0, p0, Lcom/android/packageinstaller/BottomAlertActivity;->mAlert:Lcom/android/internal/app/AlertController;

    const v2, 0x7f0f0027

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/android/packageinstaller/PackageInstallerActivity$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0}, Lcom/android/packageinstaller/PackageInstallerActivity$$ExternalSyntheticLambda1;-><init>(Lcom/android/packageinstaller/PackageInstallerActivity;)V

    const/4 v5, -0x2

    invoke-virtual {v0, v5, v2, v3, v1}, Lcom/android/internal/app/AlertController;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    .line 447
    invoke-virtual {p0}, Lcom/android/packageinstaller/BottomAlertActivity;->setupAlert()V

    .line 449
    iget-object v0, p0, Lcom/android/packageinstaller/BottomAlertActivity;->mAlert:Lcom/android/internal/app/AlertController;

    invoke-virtual {v0, v4}, Lcom/android/internal/app/AlertController;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    iput-object v0, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mOk:Landroid/widget/Button;

    const/4 v1, 0x0

    .line 450
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 452
    iget-object v0, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mOk:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->isInTouchMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 453
    iget-object v0, p0, Lcom/android/packageinstaller/BottomAlertActivity;->mAlert:Lcom/android/internal/app/AlertController;

    invoke-virtual {v0, v5}, Lcom/android/internal/app/AlertController;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Button;->requestFocus()Z

    .line 456
    :cond_0
    iget-object v0, p0, Lcom/android/packageinstaller/BottomAlertActivity;->mAlert:Lcom/android/internal/app/AlertController;

    invoke-virtual {v0, v5}, Lcom/android/internal/app/AlertController;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    .line 457
    iget-object v2, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mOk:Landroid/widget/Button;

    const v3, 0x7f07005b

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 458
    iget-object v2, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mOk:Landroid/widget/Button;

    const v5, 0x1010039

    invoke-virtual {p0, p0, v5}, Lcom/android/packageinstaller/BottomAlertActivity;->getColorAttrDefaultColor(Landroid/content/Context;I)I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setTextColor(I)V

    .line 459
    iget-object v2, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mOk:Landroid/widget/Button;

    const v5, 0x1010435

    invoke-virtual {p0, p0, v5}, Lcom/android/packageinstaller/BottomAlertActivity;->getColorAttrDefaultColor(Landroid/content/Context;I)I

    move-result v5

    invoke-static {v5}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 460
    invoke-virtual {v0, v3}, Landroid/widget/Button;->setBackgroundResource(I)V

    const v2, 0x1010030

    .line 461
    invoke-virtual {p0, p0, v2}, Lcom/android/packageinstaller/BottomAlertActivity;->getColorAttrDefaultColor(Landroid/content/Context;I)I

    move-result v2

    const v3, 0x3dcccccd    # 0.1f

    invoke-virtual {p0, v2, v3}, Lcom/android/packageinstaller/BottomAlertActivity;->adjustAlpha(IF)I

    move-result v2

    invoke-static {v2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    const v2, 0x1010036

    .line 462
    invoke-virtual {p0, p0, v2}, Lcom/android/packageinstaller/BottomAlertActivity;->getColorAttrDefaultColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setTextColor(I)V

    .line 463
    iget-object v0, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mOk:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/ButtonBarLayout;

    .line 464
    invoke-virtual {v0}, Lcom/android/internal/widget/ButtonBarLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 465
    iput v4, v2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    const/16 v3, 0x11

    .line 466
    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 467
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f060076

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v5

    .line 468
    iput v5, v2, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 469
    iput v5, v2, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 470
    iput v5, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 471
    iput v5, v2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 472
    :goto_0
    invoke-virtual {v0}, Lcom/android/internal/widget/ButtonBarLayout;->getChildCount()I

    move-result v6

    if-ge v1, v6, :cond_3

    .line 473
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ButtonBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 474
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-eqz v7, :cond_1

    const/16 v7, 0x8

    .line 475
    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 477
    :cond_1
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v8, 0x3f800000    # 1.0f

    .line 478
    iput v8, v7, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 479
    iput v4, v7, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 480
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f060060

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    iput v8, v7, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 481
    iput v3, v7, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 482
    div-int/lit8 v8, v5, 0x2

    .line 483
    invoke-virtual {v6}, Landroid/view/View;->getId()I

    move-result v6

    const v9, 0x1020019

    if-ne v6, v9, :cond_2

    .line 484
    iput v8, v7, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    goto :goto_1

    .line 486
    :cond_2
    iput v8, v7, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 489
    :cond_3
    invoke-virtual {v0, v2}, Lcom/android/internal/widget/ButtonBarLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private checkIfAllowedAndInitiateInstall()V
    .locals 5

    .line 498
    iget-object v0, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mUserManager:Landroid/os/UserManager;

    .line 499
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    const-string v2, "no_install_apps"

    .line 498
    invoke-virtual {v0, v2, v1}, Landroid/os/UserManager;->getUserRestrictionSource(Ljava/lang/String;Landroid/os/UserHandle;)I

    move-result v0

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_0

    const/16 v0, 0x9

    .line 502
    invoke-direct {p0, v0}, Lcom/android/packageinstaller/PackageInstallerActivity;->showDialogInner(I)V

    return-void

    :cond_0
    if-eqz v0, :cond_1

    .line 509
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.SHOW_ADMIN_SUPPORT_DETAILS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 510
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    .line 514
    :cond_1
    iget-boolean v0, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mAllowUnknownSources:Z

    if-nez v0, :cond_6

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/packageinstaller/PackageInstallerActivity;->isInstallRequestFromUnknownSource(Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    .line 519
    :cond_2
    iget-object v0, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mUserManager:Landroid/os/UserManager;

    .line 520
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    const-string v2, "no_install_unknown_sources"

    .line 519
    invoke-virtual {v0, v2, v1}, Landroid/os/UserManager;->getUserRestrictionSource(Ljava/lang/String;Landroid/os/UserHandle;)I

    move-result v0

    .line 521
    iget-object v1, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mUserManager:Landroid/os/UserManager;

    .line 522
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v3

    const-string v4, "no_install_unknown_sources_globally"

    .line 521
    invoke-virtual {v1, v4, v3}, Landroid/os/UserManager;->getUserRestrictionSource(Ljava/lang/String;Landroid/os/UserHandle;)I

    move-result v1

    or-int v3, v0, v1

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_3

    const/4 v0, 0x5

    .line 527
    invoke-direct {p0, v0}, Lcom/android/packageinstaller/PackageInstallerActivity;->showDialogInner(I)V

    goto :goto_1

    :cond_3
    if-eqz v0, :cond_4

    .line 529
    invoke-direct {p0, v2}, Lcom/android/packageinstaller/PackageInstallerActivity;->startAdminSupportDetailsActivity(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    if-eqz v1, :cond_5

    .line 531
    invoke-direct {p0, v4}, Lcom/android/packageinstaller/PackageInstallerActivity;->startAdminSupportDetailsActivity(Ljava/lang/String;)V

    goto :goto_1

    .line 534
    :cond_5
    invoke-direct {p0}, Lcom/android/packageinstaller/PackageInstallerActivity;->handleUnknownSources()V

    goto :goto_1

    .line 516
    :cond_6
    :goto_0
    invoke-direct {p0}, Lcom/android/packageinstaller/PackageInstallerActivity;->initiateInstall()V

    :goto_1
    return-void
.end method

.method private createDialog(I)Lcom/android/packageinstaller/BottomDialogFragment;
    .locals 0

    packed-switch p1, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    :pswitch_0
    const p0, 0x7f0f0032

    .line 201
    invoke-static {p0}, Lcom/android/packageinstaller/PackageInstallerActivity$SimpleErrorDialog;->newInstance(I)Lcom/android/packageinstaller/PackageInstallerActivity$SimpleErrorDialog;

    move-result-object p0

    return-object p0

    .line 207
    :pswitch_1
    iget-object p0, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mOriginatingPackage:Ljava/lang/String;

    invoke-static {p0}, Lcom/android/packageinstaller/PackageInstallerActivity$ExternalSourcesBlockedDialog;->newInstance(Ljava/lang/String;)Lcom/android/packageinstaller/PackageInstallerActivity$AppErrorDialog;

    move-result-object p0

    return-object p0

    .line 199
    :pswitch_2
    invoke-static {}, Lcom/android/packageinstaller/PackageInstallerActivity$NotSupportedOnWearDialog;->newInstance()Lcom/android/packageinstaller/PackageInstallerActivity$SimpleErrorDialog;

    move-result-object p0

    return-object p0

    .line 209
    :pswitch_3
    invoke-static {}, Lcom/android/packageinstaller/PackageInstallerActivity$AnonymousSourceDialog;->newInstance()Lcom/android/packageinstaller/PackageInstallerActivity$AnonymousSourceDialog;

    move-result-object p0

    return-object p0

    :pswitch_4
    const p0, 0x7f0f0091

    .line 204
    invoke-static {p0}, Lcom/android/packageinstaller/PackageInstallerActivity$SimpleErrorDialog;->newInstance(I)Lcom/android/packageinstaller/PackageInstallerActivity$SimpleErrorDialog;

    move-result-object p0

    return-object p0

    .line 196
    :pswitch_5
    iget-object p1, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mPm:Landroid/content/pm/PackageManager;

    iget-object p0, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mPkgInfo:Landroid/content/pm/PackageInfo;

    iget-object p0, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 197
    invoke-virtual {p1, p0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object p0

    .line 196
    invoke-static {p0}, Lcom/android/packageinstaller/PackageInstallerActivity$InstallErrorDialog;->newInstance(Ljava/lang/CharSequence;)Lcom/android/packageinstaller/PackageInstallerActivity$AppErrorDialog;

    move-result-object p0

    return-object p0

    .line 193
    :pswitch_6
    iget-object p1, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mPm:Landroid/content/pm/PackageManager;

    iget-object p0, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mPkgInfo:Landroid/content/pm/PackageInfo;

    iget-object p0, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 194
    invoke-virtual {p1, p0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object p0

    .line 193
    invoke-static {p0}, Lcom/android/packageinstaller/PackageInstallerActivity$OutOfSpaceDialog;->newInstance(Ljava/lang/CharSequence;)Lcom/android/packageinstaller/PackageInstallerActivity$AppErrorDialog;

    move-result-object p0

    return-object p0

    :pswitch_7
    const/high16 p0, 0x7f0f0000

    .line 191
    invoke-static {p0}, Lcom/android/packageinstaller/PackageInstallerActivity$SimpleErrorDialog;->newInstance(I)Lcom/android/packageinstaller/PackageInstallerActivity$SimpleErrorDialog;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getPackageNameForUid(I)Ljava/lang/String;
    .locals 6

    .line 243
    iget-object v0, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 247
    :cond_0
    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-le v1, v3, :cond_3

    .line 248
    iget-object v1, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mCallingPackage:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 249
    array-length v1, v0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, v0, v3

    .line 250
    iget-object v5, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mCallingPackage:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    return-object v4

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 255
    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Multiple packages found for source uid "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "PackageInstaller"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    :cond_3
    aget-object p0, v0, v2

    return-object p0
.end method

.method public static getVersionCode(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, " ("

    invoke-virtual {p0, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getminSdkVersion(Landroid/content/pm/PackageInfo;)Ljava/lang/String;
    .locals 1
    .param p0, "packageInfo"    # Landroid/content/pm/PackageInfo;

    .prologue
    .line 1
    iget-object v0, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->minSdkVersion:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static gettargetSdkVersion(Landroid/content/pm/PackageInfo;)Ljava/lang/String;
    .locals 1
    .param p0, "packageInfo"    # Landroid/content/pm/PackageInfo;

    .prologue
    .line 1
    iget-object v0, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private handleUnknownSources()V
    .locals 8

    .line 557
    iget-object v0, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mOriginatingPackage:Ljava/lang/String;

    const-string v1, "PackageInstaller"

    if-nez v0, :cond_0

    .line 558
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No source found for package "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mPkgInfo:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x6

    .line 559
    invoke-direct {p0, v0}, Lcom/android/packageinstaller/PackageInstallerActivity;->showDialogInner(I)V

    return-void

    :cond_0
    const-string v0, "android.permission.REQUEST_INSTALL_PACKAGES"

    .line 564
    invoke-static {v0}, Landroid/app/AppOpsManager;->permissionToOpCode(Ljava/lang/String;)I

    move-result v0

    .line 565
    iget-object v2, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mAppOpsManager:Landroid/app/AppOpsManager;

    iget v4, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mOriginatingUid:I

    iget-object v5, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mOriginatingPackage:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mCallingAttributionTag:Ljava/lang/String;

    const-string v7, "Started package installation activity"

    move v3, v0

    invoke-virtual/range {v2 .. v7}, Landroid/app/AppOpsManager;->noteOpNoThrow(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_3

    const/4 v3, 0x2

    if-eq v2, v3, :cond_2

    const/4 v4, 0x3

    if-eq v2, v4, :cond_1

    .line 581
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid app op mode "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " for OP_REQUEST_INSTALL_PACKAGES found for uid "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mOriginatingUid:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 583
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 571
    :cond_1
    iget-object v1, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mAppOpsManager:Landroid/app/AppOpsManager;

    iget v2, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mOriginatingUid:I

    iget-object v4, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mOriginatingPackage:Ljava/lang/String;

    invoke-virtual {v1, v0, v2, v4, v3}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V

    :cond_2
    const/16 v0, 0x8

    .line 575
    invoke-direct {p0, v0}, Lcom/android/packageinstaller/PackageInstallerActivity;->showDialogInner(I)V

    goto :goto_0

    .line 578
    :cond_3
    invoke-direct {p0}, Lcom/android/packageinstaller/PackageInstallerActivity;->initiateInstall()V

    :goto_0
    return-void
.end method

.method private initiateInstall()V
    .locals 4

    .line 272
    iget-object v0, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mPkgInfo:Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 275
    iget-object v1, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mPm:Landroid/content/pm/PackageManager;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->canonicalToCurrentPackageNames([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 276
    array-length v2, v1

    if-lez v2, :cond_0

    aget-object v1, v1, v3

    if-eqz v1, :cond_0

    .line 278
    iget-object v0, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mPkgInfo:Landroid/content/pm/PackageInfo;

    iput-object v1, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 279
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iput-object v1, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object v0, v1

    :cond_0
    const/4 v1, 0x0

    .line 287
    :try_start_0
    iget-object v2, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mPm:Landroid/content/pm/PackageManager;

    const/16 v3, 0x2000

    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 289
    :try_start_1
    iget-object v2, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iput-object v2, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v2, :cond_1

    .line 290
    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v3, 0x800000

    and-int/2addr v2, v3

    if-nez v2, :cond_1

    .line 291
    iput-object v1, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mAppInfo:Landroid/content/pm/ApplicationInfo;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-object v0, v1

    .line 294
    :catch_1
    iput-object v1, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    .line 297
    :cond_1
    :goto_0
    invoke-direct {p0, v0}, Lcom/android/packageinstaller/PackageInstallerActivity;->startInstallConfirm(Landroid/content/pm/PackageInfo;)V

    return-void
.end method

.method private isInstallRequestFromUnknownSource(Landroid/content/Intent;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method private synthetic lambda$bindUi$0(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 429
    iget-object p1, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mOk:Landroid/widget/Button;

    invoke-virtual {p1}, Landroid/widget/Button;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 430
    iget p1, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mSessionId:I

    const/4 p2, -0x1

    if-eq p1, p2, :cond_0

    .line 431
    iget-object p2, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mInstaller:Landroid/content/pm/PackageInstaller;

    const/4 v0, 0x1

    invoke-virtual {p2, p1, v0}, Landroid/content/pm/PackageInstaller;->setPermissionsResult(IZ)V

    .line 432
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 434
    :cond_0
    invoke-direct {p0}, Lcom/android/packageinstaller/PackageInstallerActivity;->startInstall()V

    :cond_1
    :goto_0
    return-void
.end method

.method private synthetic lambda$bindUi$1(Landroid/content/DialogInterface;I)V
    .locals 1

    const/4 p1, 0x0

    .line 441
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setResult(I)V

    .line 442
    iget p2, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mSessionId:I

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    .line 443
    iget-object v0, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mInstaller:Landroid/content/pm/PackageInstaller;

    invoke-virtual {v0, p2, p1}, Landroid/content/pm/PackageInstaller;->setPermissionsResult(IZ)V

    .line 445
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private processPackageUri(Landroid/net/Uri;)Z
    .locals 7

    .line 595
    iput-object p1, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mPackageURI:Landroid/net/Uri;

    .line 597
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    .line 600
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    const-string v1, "package"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, -0x2

    const/4 v4, 0x2

    const-string v5, "PackageInstaller"

    if-nez v1, :cond_2

    const-string v1, "file"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 623
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/16 p1, 0x1000

    .line 624
    invoke-static {p0, v0, p1}, Lcom/android/packageinstaller/PackageUtil;->getPackageInfo(Landroid/content/Context;Ljava/io/File;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mPkgInfo:Landroid/content/pm/PackageInfo;

    if-nez p1, :cond_0

    const-string p1, "Parse error when parsing manifest. Discontinuing installation"

    .line 629
    invoke-static {v5, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 630
    invoke-direct {p0, v4}, Lcom/android/packageinstaller/PackageInstallerActivity;->showDialogInner(I)V

    .line 631
    invoke-virtual {p0, v3}, Lcom/android/packageinstaller/PackageInstallerActivity;->setPmResult(I)V

    return v2

    .line 635
    :cond_0
    iget-object p1, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {p0, p1, v0}, Lcom/android/packageinstaller/PackageUtil;->getAppSnippet(Landroid/app/Activity;Landroid/content/pm/ApplicationInfo;Ljava/io/File;)Lcom/android/packageinstaller/PackageUtil$AppSnippet;

    move-result-object p1

    iput-object p1, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mAppSnippet:Lcom/android/packageinstaller/PackageUtil$AppSnippet;

    goto :goto_0

    .line 640
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected URI scheme "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 603
    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {p1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v1

    const/16 v6, 0x3000

    invoke-virtual {v0, v1, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mPkgInfo:Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 608
    :catch_0
    iget-object v0, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mPkgInfo:Landroid/content/pm/PackageInfo;

    if-nez v0, :cond_3

    .line 609
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Requested package "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " not available. Discontinuing installation"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 611
    invoke-direct {p0, v4}, Lcom/android/packageinstaller/PackageInstallerActivity;->showDialogInner(I)V

    .line 612
    invoke-virtual {p0, v3}, Lcom/android/packageinstaller/PackageInstallerActivity;->setPmResult(I)V

    return v2

    .line 615
    :cond_3
    iget-object p1, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mPm:Landroid/content/pm/PackageManager;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p1, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object p1

    .line 617
    new-instance v0, Lcom/android/packageinstaller/PackageUtil$AppSnippet;

    iget-object v1, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mPm:Landroid/content/pm/PackageManager;

    iget-object v2, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mPkgInfo:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 618
    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-direct {v0, p1, v1, v3}, Lcom/android/packageinstaller/PackageUtil$AppSnippet;-><init>(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;)V

    iput-object v0, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mAppSnippet:Lcom/android/packageinstaller/PackageUtil$AppSnippet;

    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private register(Lcom/android/packageinstaller/PackageInstallerActivity$UnknownSourcesListener;)V
    .locals 3

    .line 832
    iget-object v0, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mAppOpsManager:Landroid/app/AppOpsManager;

    iget-object v1, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mOriginatingPackage:Ljava/lang/String;

    const-string v2, "android:request_install_packages"

    invoke-virtual {v0, v2, v1, p1}, Landroid/app/AppOpsManager;->startWatchingMode(Ljava/lang/String;Ljava/lang/String;Landroid/app/AppOpsManager$OnOpChangedListener;)V

    .line 835
    iget-object p0, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mActiveUnknownSourcesListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private setAppInfoButton()V
    .locals 3

    const v0, 0x7f09019f

    const/4 v2, 0x0

    .line 143
    invoke-virtual {p0, v0}, Landroid/app/Activity;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    new-instance v1, Lcom/android/packageinstaller/PackageInstallerActivity$1;

    invoke-direct {v1, p0}, Lcom/android/packageinstaller/PackageInstallerActivity$1;-><init>(Lcom/android/packageinstaller/PackageInstallerActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private setComponents()V
    .locals 9

    const v1, 0x7f090198

    .line 137
    invoke-virtual {p0, v1}, Landroid/app/Activity;->requireViewById(I)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f090199

    .line 137
    invoke-virtual {p0, v2}, Landroid/app/Activity;->requireViewById(I)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f090196

    .line 137
    invoke-virtual {p0, v3}, Landroid/app/Activity;->requireViewById(I)Landroid/view/View;

    move-result-object v3

    const v4, 0x7f090197

    .line 137
    invoke-virtual {p0, v4}, Landroid/app/Activity;->requireViewById(I)Landroid/view/View;

    move-result-object v4

    const v5, 0x7f09019d

    .line 137
    invoke-virtual {p0, v5}, Landroid/app/Activity;->requireViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const v7, 0x7f09019c

    invoke-virtual {p0, v7}, Landroid/app/Activity;->requireViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    const v8, 0x7f09019e

    invoke-virtual {p0, v8}, Landroid/app/Activity;->requireViewById(I)Landroid/view/View;

    move-result-object v8

    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v8, v6}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f0f009b

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(I)V

    const v0, 0x7f0f009c

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method private showDialogInner(I)V
    .locals 2

    .line 170
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v1, "dialog"

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/packageinstaller/BottomDialogFragment;

    if-eqz v0, :cond_0

    .line 172
    invoke-virtual {v0}, Landroid/app/DialogFragment;->dismissAllowingStateLoss()V

    .line 175
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/packageinstaller/PackageInstallerActivity;->createDialog(I)Lcom/android/packageinstaller/BottomDialogFragment;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 177
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p0

    invoke-virtual {p1, p0, v1}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private startAdminSupportDetailsActivity(Ljava/lang/String;)V
    .locals 1

    .line 544
    const-class v0, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 545
    invoke-virtual {v0, p1}, Landroid/app/admin/DevicePolicyManager;->createAdminSupportIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 548
    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 553
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private startInstall()V
    .locals 5

    .line 657
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 658
    iget-object v1, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mPkgInfo:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    const-string v2, "com.android.packageinstaller.applicationInfo"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 660
    iget-object v1, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mPackageURI:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 661
    const-class v1, Lcom/android/packageinstaller/InstallInstalling;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 662
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "android.intent.extra.INSTALLER_PACKAGE_NAME"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 664
    iget-object v3, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mOriginatingURI:Landroid/net/Uri;

    if-eqz v3, :cond_0

    const-string v4, "android.intent.extra.ORIGINATING_URI"

    .line 665
    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 667
    :cond_0
    iget-object v3, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mReferrerURI:Landroid/net/Uri;

    if-eqz v3, :cond_1

    const-string v4, "android.intent.extra.REFERRER"

    .line 668
    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 670
    :cond_1
    iget v3, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mOriginatingUid:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_2

    const-string v4, "android.intent.extra.ORIGINATING_UID"

    .line 671
    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_2
    if-eqz v1, :cond_3

    .line 674
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 677
    :cond_3
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "android.intent.extra.RETURN_RESULT"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x1

    .line 678
    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_4
    const/high16 v1, 0x2000000

    .line 680
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 682
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 683
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private startInstallConfirm(Landroid/content/pm/PackageInfo;)V
    .locals 14

    const v0, 0x7f090181

    .line 129
    invoke-virtual {p0, v0}, Landroid/app/Activity;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f090185

    .line 137
    invoke-virtual {p0, v0}, Landroid/app/Activity;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    const v2, 0x7f090184

    .line 138
    invoke-virtual {p0, v2}, Landroid/app/Activity;->requireViewById(I)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f09019c

    .line 139
    invoke-virtual {p0, v3}, Landroid/app/Activity;->requireViewById(I)Landroid/view/View;

    move-result-object v3

    const v4, 0x7f090157

    .line 140
    invoke-virtual {p0, v4}, Landroid/app/Activity;->requireViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    .line 142
    iget-object v4, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v4, :cond_0

    const v4, 0x7f0900c7

    .line 143
    invoke-virtual {p0, v4}, Landroid/app/Activity;->requireViewById(I)Landroid/view/View;

    move-result-object v4

    const v5, 0x7f0900ce

    .line 144
    invoke-virtual {p0, v5}, Landroid/app/Activity;->requireViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const v7, 0x7f090192

    .line 144
    invoke-virtual {p0, v7}, Landroid/app/Activity;->requireViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    invoke-static {p1}, Lcom/android/packageinstaller/PackageInstallerActivity;->getminSdkVersion(Landroid/content/pm/PackageInfo;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v7, 0x7f090193

    .line 144
    invoke-virtual {p0, v7}, Landroid/app/Activity;->requireViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    invoke-static {p1}, Lcom/android/packageinstaller/PackageInstallerActivity;->gettargetSdkVersion(Landroid/content/pm/PackageInfo;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget v6, p1, Landroid/content/pm/PackageInfo;->versionCode:I

    iget-object p1, p1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-static {p1, v6}, Lcom/android/packageinstaller/PackageInstallerActivity;->getVersionCode(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v5, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 146
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 147
    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0}, Lcom/android/packageinstaller/PackageInstallerActivity;->setComponents()V

    invoke-direct {p0}, Lcom/android/packageinstaller/PackageInstallerActivity;->setAppInfoButton()V

    iget-object v0, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mOk:Landroid/widget/Button;

    const v7, 0x7f0f0093

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setText(I)V

    goto :goto_0

    :cond_0
    const p1, 0x7f0900c6

    .line 150
    invoke-virtual {p0, p1}, Landroid/app/Activity;->requireViewById(I)Landroid/view/View;

    move-result-object v4

    :goto_0
    const v7, 0x7f090194

    .line 144
    invoke-virtual {p0, v7}, Landroid/app/Activity;->requireViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    const p1, 0x7f090180

    .line 152
    invoke-virtual {p0, p1}, Landroid/app/Activity;->requireViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 153
    iget-object v0, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mPkgInfo:Landroid/content/pm/PackageInfo;

    invoke-static {v0}, Lcom/android/packageinstaller/PackageInstallerActivity;->getminSdkVersion(Landroid/content/pm/PackageInfo;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v7, 0x7f090195

    .line 144
    invoke-virtual {p0, v7}, Landroid/app/Activity;->requireViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    invoke-static {v0}, Lcom/android/packageinstaller/PackageInstallerActivity;->gettargetSdkVersion(Landroid/content/pm/PackageInfo;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget v5, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-static {v0, v5}, Lcom/android/packageinstaller/PackageInstallerActivity;->getVersionCode(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 154
    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    .line 155
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    const/4 p1, 0x1

    .line 157
    iput-boolean p1, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mEnableOk:Z

    .line 158
    iget-object v0, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mOk:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 159
    iget-object p0, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mOk:Landroid/widget/Button;

    invoke-virtual {p0, p1}, Landroid/widget/Button;->setFilterTouchesWhenObscured(Z)V

    return-void
.end method

.method private unregister(Lcom/android/packageinstaller/PackageInstallerActivity$UnknownSourcesListener;)V
    .locals 1

    .line 839
    iget-object v0, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mAppOpsManager:Landroid/app/AppOpsManager;

    invoke-virtual {v0, p1}, Landroid/app/AppOpsManager;->stopWatchingMode(Landroid/app/AppOpsManager$OnOpChangedListener;)V

    .line 840
    iget-object p0, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mActiveUnknownSourcesListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 6

    .line 216
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    const/4 p3, 0x1

    if-ne p1, p3, :cond_1

    const/4 p1, -0x1

    if-ne p2, p1, :cond_1

    .line 219
    iput-boolean p3, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mAllowUnknownSources:Z

    const-string p1, "android.permission.REQUEST_INSTALL_PACKAGES"

    .line 225
    invoke-static {p1}, Landroid/app/AppOpsManager;->permissionToOpCode(Ljava/lang/String;)I

    move-result v1

    .line 226
    iget-object v0, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mAppOpsManager:Landroid/app/AppOpsManager;

    iget v2, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mOriginatingUid:I

    iget-object v3, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mOriginatingPackage:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mCallingAttributionTag:Ljava/lang/String;

    const-string v5, "Successfully started package installation activity"

    invoke-virtual/range {v0 .. v5}, Landroid/app/AppOpsManager;->noteOpNoThrow(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p1

    const-string p2, "dialog"

    invoke-virtual {p1, p2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object p1

    check-cast p1, Lcom/android/packageinstaller/BottomDialogFragment;

    if-eqz p1, :cond_0

    .line 233
    invoke-virtual {p1}, Landroid/app/DialogFragment;->dismissAllowingStateLoss()V

    .line 236
    :cond_0
    invoke-direct {p0}, Lcom/android/packageinstaller/PackageInstallerActivity;->initiateInstall()V

    goto :goto_0

    .line 238
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :goto_0
    return-void
.end method

.method public onBackPressed()V
    .locals 3

    .line 649
    iget v0, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mSessionId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 650
    iget-object v1, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mInstaller:Landroid/content/pm/PackageInstaller;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageInstaller;->setPermissionsResult(IZ)V

    .line 652
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 310
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x80000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addSystemFlags(I)V

    const/4 v0, 0x0

    .line 312
    invoke-super {p0, v0}, Lcom/android/packageinstaller/BottomAlertActivity;->onCreate(Landroid/os/Bundle;)V

    const v1, 0x7f01001d

    const v2, 0x7f01001e

    invoke-virtual {p0, v1, v2}, Landroid/app/Activity;->overridePendingTransition(II)V

    if-eqz p1, :cond_0

    .line 315
    sget-object v1, Lcom/android/packageinstaller/PackageInstallerActivity;->ALLOW_UNKNOWN_SOURCES_KEY:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mAllowUnknownSources:Z

    .line 318
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mPm:Landroid/content/pm/PackageManager;

    .line 319
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mIpm:Landroid/content/pm/IPackageManager;

    const-string p1, "appops"

    .line 320
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/AppOpsManager;

    iput-object p1, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 321
    iget-object p1, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {p1}, Landroid/content/pm/PackageManager;->getPackageInstaller()Landroid/content/pm/PackageInstaller;

    move-result-object p1

    iput-object p1, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mInstaller:Landroid/content/pm/PackageInstaller;

    const-string p1, "user"

    .line 322
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/UserManager;

    iput-object p1, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mUserManager:Landroid/os/UserManager;

    .line 324
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v1, "EXTRA_CALLING_PACKAGE"

    .line 326
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mCallingPackage:Ljava/lang/String;

    const-string v1, "EXTRA_CALLING_ATTRIBUTION_TAG"

    .line 327
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mCallingAttributionTag:Ljava/lang/String;

    const-string v1, "EXTRA_ORIGINAL_SOURCE_INFO"

    .line 328
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ApplicationInfo;

    iput-object v1, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mSourceInfo:Landroid/content/pm/ApplicationInfo;

    const-string v1, "android.intent.extra.ORIGINATING_UID"

    const/4 v2, -0x1

    .line 329
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mOriginatingUid:I

    if-eq v1, v2, :cond_1

    .line 332
    invoke-direct {p0, v1}, Lcom/android/packageinstaller/PackageInstallerActivity;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    move-object v1, v0

    :goto_0
    iput-object v1, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mOriginatingPackage:Ljava/lang/String;

    .line 336
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v3, "android.content.pm.action.CONFIRM_INSTALL"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v3, "PackageInstaller"

    if-eqz v1, :cond_4

    const-string v1, "android.content.pm.extra.SESSION_ID"

    .line 337
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 338
    iget-object v1, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mInstaller:Landroid/content/pm/PackageInstaller;

    invoke-virtual {v1, p1}, Landroid/content/pm/PackageInstaller;->getSessionInfo(I)Landroid/content/pm/PackageInstaller$SessionInfo;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 339
    iget-boolean v2, v1, Landroid/content/pm/PackageInstaller$SessionInfo;->sealed:Z

    if-eqz v2, :cond_3

    iget-object v2, v1, Landroid/content/pm/PackageInstaller$SessionInfo;->resolvedBaseCodePath:Ljava/lang/String;

    if-nez v2, :cond_2

    goto :goto_1

    .line 345
    :cond_2
    iput p1, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mSessionId:I

    .line 346
    new-instance p1, Ljava/io/File;

    iget-object v1, v1, Landroid/content/pm/PackageInstaller$SessionInfo;->resolvedBaseCodePath:Ljava/lang/String;

    invoke-direct {p1, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    .line 347
    iput-object v0, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mOriginatingURI:Landroid/net/Uri;

    .line 348
    iput-object v0, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mReferrerURI:Landroid/net/Uri;

    goto :goto_2

    .line 340
    :cond_3
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Session "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mSessionId:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " in funky state; ignoring"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    .line 350
    :cond_4
    iput v2, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mSessionId:I

    .line 351
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    const-string v1, "android.intent.extra.ORIGINATING_URI"

    .line 352
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    iput-object v1, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mOriginatingURI:Landroid/net/Uri;

    const-string v1, "android.intent.extra.REFERRER"

    .line 353
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/net/Uri;

    iput-object p1, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mReferrerURI:Landroid/net/Uri;

    move-object p1, v0

    :goto_2
    if-nez p1, :cond_5

    const-string p1, "Unspecified source"

    .line 358
    invoke-static {v3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, -0x3

    .line 359
    invoke-virtual {p0, p1}, Lcom/android/packageinstaller/PackageInstallerActivity;->setPmResult(I)V

    .line 360
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    .line 364
    :cond_5
    invoke-static {p0}, Lcom/android/packageinstaller/DeviceUtils;->isWear(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 p1, 0x7

    .line 365
    invoke-direct {p0, p1}, Lcom/android/packageinstaller/PackageInstallerActivity;->showDialogInner(I)V

    return-void

    .line 369
    :cond_6
    invoke-direct {p0, p1}, Lcom/android/packageinstaller/PackageInstallerActivity;->processPackageUri(Landroid/net/Uri;)Z

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 414
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 415
    :goto_0
    iget-object v0, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mActiveUnknownSourcesListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 416
    iget-object v0, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mActiveUnknownSourcesListeners:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/packageinstaller/PackageInstallerActivity$UnknownSourcesListener;

    invoke-direct {p0, v0}, Lcom/android/packageinstaller/PackageInstallerActivity;->unregister(Lcom/android/packageinstaller/PackageInstallerActivity$UnknownSourcesListener;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 1

    .line 397
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 399
    iget-object p0, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mOk:Landroid/widget/Button;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    .line 401
    invoke-virtual {p0, v0}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 379
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 383
    iget-object v0, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mAppSnippet:Lcom/android/packageinstaller/PackageUtil$AppSnippet;

    if-eqz v0, :cond_0

    .line 386
    invoke-direct {p0}, Lcom/android/packageinstaller/PackageInstallerActivity;->bindUi()V

    .line 387
    invoke-direct {p0}, Lcom/android/packageinstaller/PackageInstallerActivity;->checkIfAllowedAndInitiateInstall()V

    .line 390
    :cond_0
    iget-object v0, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mOk:Landroid/widget/Button;

    if-eqz v0, :cond_1

    .line 391
    iget-boolean p0, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mEnableOk:Z

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_1
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 407
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 409
    sget-object v0, Lcom/android/packageinstaller/PackageInstallerActivity;->ALLOW_UNKNOWN_SOURCES_KEY:Ljava/lang/String;

    iget-boolean p0, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mAllowUnknownSources:Z

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method setPmResult(I)V
    .locals 2

    .line 301
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.intent.extra.INSTALL_RESULT"

    .line 302
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    const/4 v1, -0x1

    .line 303
    :cond_0
    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    return-void
.end method
