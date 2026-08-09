.class public Lcom/android/packageinstaller/InstallInstalling;
.super Lcom/android/packageinstaller/BottomAlertActivity;
.source "InstallInstalling.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/packageinstaller/InstallInstalling$InstallingAsyncTask;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private mCancelButton:Landroid/widget/Button;

.field private mCommitState:I

.field private mPendingCommit:Lcom/android/packageinstaller/PendingCommit;

.field private mInstallId:I

.field private mInstallingTask:Lcom/android/packageinstaller/InstallInstalling$InstallingAsyncTask;

.field private mPackageURI:Landroid/net/Uri;

.field private mSessionId:I


# direct methods
.method public static synthetic $r8$lambda$OjOETagaEB8P6cxwOsvr5nUW-rI(Lcom/android/packageinstaller/InstallInstalling;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/packageinstaller/InstallInstalling;->lambda$onCreate$0(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$h20orLHq1uEjqA7TcbF-N4KFO4I(Lcom/android/packageinstaller/InstallInstalling;IILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/packageinstaller/InstallInstalling;->launchFinishBasedOnResult(IILjava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmCancelButton(Lcom/android/packageinstaller/InstallInstalling;)Landroid/widget/Button;
    .locals 0

    iget-object p0, p0, Lcom/android/packageinstaller/InstallInstalling;->mCancelButton:Landroid/widget/Button;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmInstallId(Lcom/android/packageinstaller/InstallInstalling;)I
    .locals 0

    iget p0, p0, Lcom/android/packageinstaller/InstallInstalling;->mInstallId:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmPackageURI(Lcom/android/packageinstaller/InstallInstalling;)Landroid/net/Uri;
    .locals 0

    iget-object p0, p0, Lcom/android/packageinstaller/InstallInstalling;->mPackageURI:Landroid/net/Uri;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSessionId(Lcom/android/packageinstaller/InstallInstalling;)I
    .locals 0

    iget p0, p0, Lcom/android/packageinstaller/InstallInstalling;->mSessionId:I

    return p0
.end method

.method static bridge synthetic -$$Nest$mlaunchFailure(Lcom/android/packageinstaller/InstallInstalling;IILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/packageinstaller/InstallInstalling;->launchFailure(IILjava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetLOG_TAG()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/packageinstaller/InstallInstalling;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 63
    const-class v0, Lcom/android/packageinstaller/InstallInstalling;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/packageinstaller/InstallInstalling;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 62
    invoke-direct {p0}, Lcom/android/packageinstaller/BottomAlertActivity;-><init>()V

    return-void
.end method

.method public static isAndroidS()Z
    .locals 3

    const-string/jumbo v0, "ro.build.version.release"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "12"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    return v2
.end method

.method private synthetic lambda$onCreate$0(Landroid/content/DialogInterface;I)V
    .locals 2

    # mark CANCELLED and drop any pending delayed commit so it can never run
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/packageinstaller/InstallInstalling;->mCommitState:I

    iget-object v0, p0, Lcom/android/packageinstaller/InstallInstalling;->mPendingCommit:Lcom/android/packageinstaller/PendingCommit;

    if-eqz v0, :cond_nopc

    iget-object v1, p0, Lcom/android/packageinstaller/InstallInstalling;->mCancelButton:Landroid/widget/Button;

    if-eqz v1, :cond_nopc

    invoke-virtual {v1, v0}, Landroid/widget/Button;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_nopc
    .line 121
    iget-object p1, p0, Lcom/android/packageinstaller/InstallInstalling;->mInstallingTask:Lcom/android/packageinstaller/InstallInstalling$InstallingAsyncTask;

    if-eqz p1, :cond_0

    const/4 p2, 0x1

    .line 122
    invoke-virtual {p1, p2}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 125
    :cond_0
    iget p1, p0, Lcom/android/packageinstaller/InstallInstalling;->mSessionId:I

    const/4 p2, 0x0

    if-lez p1, :cond_1

    .line 126
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/pm/PackageManager;->getPackageInstaller()Landroid/content/pm/PackageInstaller;

    move-result-object p1

    iget v0, p0, Lcom/android/packageinstaller/InstallInstalling;->mSessionId:I

    invoke-virtual {p1, v0}, Landroid/content/pm/PackageInstaller;->abandonSession(I)V

    .line 127
    iput p2, p0, Lcom/android/packageinstaller/InstallInstalling;->mSessionId:I

    .line 130
    :cond_1
    invoke-virtual {p0, p2}, Landroid/app/Activity;->setResult(I)V

    .line 131
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private launchFailure(IILjava/lang/String;)V
    .locals 2

    .line 261
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 262
    const-class v1, Lcom/android/packageinstaller/InstallFailed;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const/high16 v1, 0x2000000

    .line 263
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "android.content.pm.extra.STATUS"

    .line 264
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "android.content.pm.extra.LEGACY_STATUS"

    .line 265
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "android.content.pm.extra.STATUS_MESSAGE"

    .line 266
    invoke-virtual {v0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 268
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 269
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private launchFinishBasedOnResult(IILjava/lang/String;)V
    .locals 0

    if-nez p1, :cond_0

    .line 337
    invoke-direct {p0}, Lcom/android/packageinstaller/InstallInstalling;->launchSuccess()V

    goto :goto_0

    .line 339
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/packageinstaller/InstallInstalling;->launchFailure(IILjava/lang/String;)V

    :goto_0
    return-void
.end method

.method private launchSuccess()V
    .locals 2

    .line 245
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 246
    const-class v1, Lcom/android/packageinstaller/InstallSuccess;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const/high16 v1, 0x2000000

    .line 247
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 249
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 250
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method


# virtual methods
.method public scheduleCommit(Landroid/content/pm/PackageInstaller$Session;Landroid/content/IntentSender;)V
    .locals 4

    # state = COMMIT_PENDING
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/packageinstaller/InstallInstalling;->mCommitState:I

    new-instance v0, Lcom/android/packageinstaller/PendingCommit;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/packageinstaller/PendingCommit;-><init>(Lcom/android/packageinstaller/InstallInstalling;Landroid/content/pm/PackageInstaller$Session;Landroid/content/IntentSender;)V

    iput-object v0, p0, Lcom/android/packageinstaller/InstallInstalling;->mPendingCommit:Lcom/android/packageinstaller/PendingCommit;

    iget-object v1, p0, Lcom/android/packageinstaller/InstallInstalling;->mCancelButton:Landroid/widget/Button;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v1, v0, v2, v3}, Landroid/widget/Button;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public commitNow(Landroid/content/pm/PackageInstaller$Session;Landroid/content/IntentSender;)V
    .locals 2

    # only proceed if still COMMIT_PENDING (guards against CANCELLED / double-commit)
    iget v0, p0, Lcom/android/packageinstaller/InstallInstalling;->mCommitState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_go

    return-void

    :cond_go
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_go2

    return-void

    :cond_go2
    # state = COMMITTED
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/packageinstaller/InstallInstalling;->mCommitState:I

    invoke-virtual {p1, p2}, Landroid/content/pm/PackageInstaller$Session;->commit(Landroid/content/IntentSender;)V

    iget-object v0, p0, Lcom/android/packageinstaller/InstallInstalling;->mCancelButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    invoke-virtual {p0, v1}, Landroid/app/Activity;->setFinishOnTouchOutside(Z)V

    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .line 302
    iget-object v0, p0, Lcom/android/packageinstaller/InstallInstalling;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 303
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, ". Try only apk size."

    const-string v3, "Cannot calculate installed size "

    .line 96
    invoke-super/range {p0 .. p1}, Lcom/android/packageinstaller/BottomAlertActivity;->onCreate(Landroid/os/Bundle;)V

    # v3.18: block outside-tap for the entire InstallInstalling lifecycle
    # (incl. the 3s pre-commit window). Default theme has
    # windowCloseOnTouchOutside=true, so without this an outside tap closes
    # the screen before commit. Only affects this activity; Cancel/buttons/
    # swipe unaffected (this governs taps outside the window only).
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/app/Activity;->setFinishOnTouchOutside(Z)V

    .line 98
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "com.android.packageinstaller.applicationInfo"

    .line 99
    invoke-virtual {v4, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ApplicationInfo;

    .line 100
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    iput-object v5, v0, Lcom/android/packageinstaller/InstallInstalling;->mPackageURI:Landroid/net/Uri;

    .line 102
    invoke-virtual {v5}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v5

    const-string v6, "package"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const/16 v6, -0x6e

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v5, :cond_0

    .line 104
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->installExistingPackage(Ljava/lang/String;)I

    .line 105
    invoke-direct/range {p0 .. p0}, Lcom/android/packageinstaller/InstallInstalling;->launchSuccess()V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_6

    .line 107
    :catch_0
    invoke-direct {v0, v7, v6, v8}, Lcom/android/packageinstaller/InstallInstalling;->launchFailure(IILjava/lang/String;)V

    goto/16 :goto_6

    .line 111
    :cond_0
    new-instance v5, Ljava/io/File;

    iget-object v9, v0, Lcom/android/packageinstaller/InstallInstalling;->mPackageURI:Landroid/net/Uri;

    invoke-virtual {v9}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v5, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 112
    invoke-static {v0, v4, v5}, Lcom/android/packageinstaller/PackageUtil;->getAppSnippet(Landroid/app/Activity;Landroid/content/pm/ApplicationInfo;Ljava/io/File;)Lcom/android/packageinstaller/PackageUtil$AppSnippet;

    move-result-object v4

    const v5, 0x7f0c001e

    .line 113
    invoke-static {v0, v5, v8}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    const v9, 0x7f090049

    .line 114
    invoke-virtual {v5, v9}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    .line 115
    iget-object v10, v4, Lcom/android/packageinstaller/PackageUtil$AppSnippet;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const v9, 0x7f09004b

    .line 116
    invoke-virtual {v5, v9}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 117
    iget-object v10, v0, Lcom/android/packageinstaller/BottomAlertActivity;->mAlert:Lcom/android/internal/app/AlertController;

    invoke-virtual {v10, v5}, Lcom/android/internal/app/AlertController;->setView(Landroid/view/View;)V

    iget-object v4, v4, Lcom/android/packageinstaller/PackageUtil$AppSnippet;->label:Ljava/lang/CharSequence;

    invoke-virtual {v9, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, v0, Lcom/android/packageinstaller/BottomAlertActivity;->mAlert:Lcom/android/internal/app/AlertController;

    const v5, 0x7f0f0027

    invoke-virtual {v0, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v9, Lcom/android/packageinstaller/InstallInstalling$$ExternalSyntheticLambda0;

    invoke-direct {v9, v0}, Lcom/android/packageinstaller/InstallInstalling$$ExternalSyntheticLambda0;-><init>(Lcom/android/packageinstaller/InstallInstalling;)V

    const/4 v10, -0x2

    invoke-virtual {v4, v10, v5, v9, v8}, Lcom/android/internal/app/AlertController;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    .line 133
    invoke-virtual/range {p0 .. p0}, Lcom/android/packageinstaller/BottomAlertActivity;->setupAlert()V

    const v4, 0x7f0900cf

    .line 134
    invoke-virtual {v0, v4}, Landroid/app/Activity;->requireViewById(I)Landroid/view/View;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 136
    iget-object v4, v0, Lcom/android/packageinstaller/BottomAlertActivity;->mAlert:Lcom/android/internal/app/AlertController;

    invoke-virtual {v4, v10}, Lcom/android/internal/app/AlertController;->getButton(I)Landroid/widget/Button;

    move-result-object v4

    const v9, 0x7f07005b

    .line 137
    invoke-virtual {v4, v9}, Landroid/widget/Button;->setBackgroundResource(I)V

    const v9, 0x1010030

    .line 138
    invoke-virtual {v0, v0, v9}, Lcom/android/packageinstaller/BottomAlertActivity;->getColorAttrDefaultColor(Landroid/content/Context;I)I

    move-result v9

    const v11, 0x3dcccccd    # 0.1f

    invoke-virtual {v0, v9, v11}, Lcom/android/packageinstaller/BottomAlertActivity;->adjustAlpha(IF)I

    move-result v9

    invoke-static {v9}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v9

    invoke-virtual {v4, v9}, Landroid/widget/Button;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    const v9, 0x1010036

    .line 139
    invoke-virtual {v0, v0, v9}, Lcom/android/packageinstaller/BottomAlertActivity;->getColorAttrDefaultColor(Landroid/content/Context;I)I

    move-result v9

    invoke-virtual {v4, v9}, Landroid/widget/Button;->setTextColor(I)V

    .line 140
    invoke-virtual {v4}, Landroid/widget/Button;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Lcom/android/internal/widget/ButtonBarLayout;

    .line 141
    invoke-virtual {v4}, Lcom/android/internal/widget/ButtonBarLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v11, -0x1

    .line 142
    iput v11, v9, Landroid/widget/FrameLayout$LayoutParams;->width:I

    const/16 v12, 0x11

    .line 143
    iput v12, v9, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 144
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f060076

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v13

    .line 145
    iput v13, v9, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 146
    iput v13, v9, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 147
    iput v13, v9, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 148
    iput v13, v9, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    move v14, v5

    .line 149
    :goto_0
    invoke-virtual {v4}, Lcom/android/internal/widget/ButtonBarLayout;->getChildCount()I

    move-result v15

    if-ge v14, v15, :cond_3

    .line 150
    invoke-virtual {v4, v14}, Lcom/android/internal/widget/ButtonBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v15

    .line 151
    invoke-virtual {v15}, Landroid/view/View;->getVisibility()I

    move-result v16

    if-eqz v16, :cond_1

    const/16 v10, 0x8

    .line 152
    invoke-virtual {v15, v10}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 154
    :cond_1
    invoke-virtual {v15}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v6, 0x3f800000    # 1.0f

    .line 155
    iput v6, v10, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 156
    iput v11, v10, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 157
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v8, 0x7f060060

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, v10, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 158
    iput v12, v10, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 159
    div-int/lit8 v6, v13, 0x2

    .line 160
    invoke-virtual {v15}, Landroid/view/View;->getId()I

    move-result v8

    const v15, 0x1020019

    if-ne v8, v15, :cond_2

    .line 161
    iput v6, v10, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    goto :goto_1

    .line 163
    :cond_2
    iput v6, v10, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    :goto_1
    add-int/lit8 v14, v14, 0x1

    const/16 v6, -0x6e

    const/4 v8, 0x0

    const/4 v10, -0x2

    goto :goto_0

    .line 166
    :cond_3
    invoke-virtual {v4, v9}, Lcom/android/internal/widget/ButtonBarLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    if-eqz v1, :cond_4

    const-string v2, "com.android.packageinstaller.SESSION_ID"

    .line 169
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/android/packageinstaller/InstallInstalling;->mSessionId:I

    const-string v2, "com.android.packageinstaller.INSTALL_ID"

    .line 170
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/android/packageinstaller/InstallInstalling;->mInstallId:I

    .line 175
    :try_start_1
    new-instance v2, Lcom/android/packageinstaller/InstallInstalling$$ExternalSyntheticLambda1;

    invoke-direct {v2, v0}, Lcom/android/packageinstaller/InstallInstalling$$ExternalSyntheticLambda1;-><init>(Lcom/android/packageinstaller/InstallInstalling;)V

    invoke-static {v0, v1, v2}, Lcom/android/packageinstaller/InstallEventReceiver;->addObserver(Landroid/content/Context;ILcom/android/packageinstaller/EventResultPersister$EventResultObserver;)I
    :try_end_1
    .catch Lcom/android/packageinstaller/EventResultPersister$OutOfIdsException; {:try_start_1 .. :try_end_1} :catch_4

    goto/16 :goto_5

    .line 181
    :cond_4
    new-instance v1, Landroid/content/pm/PackageInstaller$SessionParams;

    invoke-direct {v1, v7}, Landroid/content/pm/PackageInstaller$SessionParams;-><init>(I)V

    .line 183
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v6, "android.intent.extra.REFERRER"

    invoke-virtual {v4, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/net/Uri;

    const/4 v6, 0x4

    if-eqz v4, :cond_5

    move v8, v6

    goto :goto_2

    :cond_5
    const/4 v8, 0x3

    .line 184
    :goto_2
    invoke-static {}, Lcom/android/packageinstaller/InstallInstalling;->isAndroidS()Z

    move-result v17

    if-nez v17, :cond_6

    invoke-virtual {v1, v8}, Landroid/content/pm/PackageInstaller$SessionParams;->setPackageSource(I)V

    .line 187
    :cond_6
    invoke-virtual {v1, v5}, Landroid/content/pm/PackageInstaller$SessionParams;->setInstallAsInstantApp(Z)V

    .line 188
    invoke-virtual {v1, v4}, Landroid/content/pm/PackageInstaller$SessionParams;->setReferrerUri(Landroid/net/Uri;)V

    .line 189
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v8, "android.intent.extra.ORIGINATING_URI"

    .line 190
    invoke-virtual {v4, v8}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/net/Uri;

    .line 189
    invoke-virtual {v1, v4}, Landroid/content/pm/PackageInstaller$SessionParams;->setOriginatingUri(Landroid/net/Uri;)V

    .line 191
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v8, "android.intent.extra.ORIGINATING_UID"

    invoke-virtual {v4, v8, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/content/pm/PackageInstaller$SessionParams;->setOriginatingUid(I)V

    .line 193
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v8, "android.intent.extra.INSTALLER_PACKAGE_NAME"

    invoke-virtual {v4, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/content/pm/PackageInstaller$SessionParams;->setInstallerPackageName(Ljava/lang/String;)V

    .line 195
    invoke-virtual {v1, v6}, Landroid/content/pm/PackageInstaller$SessionParams;->setInstallReason(I)V

    .line 197
    new-instance v4, Ljava/io/File;

    iget-object v6, v0, Lcom/android/packageinstaller/InstallInstalling;->mPackageURI:Landroid/net/Uri;

    invoke-virtual {v6}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 199
    :try_start_2
    invoke-static {}, Landroid/content/pm/parsing/result/ParseTypeImpl;->forDefaultParsing()Landroid/content/pm/parsing/result/ParseTypeImpl;

    move-result-object v6

    .line 201
    invoke-virtual {v6}, Landroid/content/pm/parsing/result/ParseTypeImpl;->reset()Landroid/content/pm/parsing/result/ParseInput;

    move-result-object v6

    .line 200
    invoke-static {v6, v4, v5}, Landroid/content/pm/parsing/ApkLiteParseUtils;->parsePackageLite(Landroid/content/pm/parsing/result/ParseInput;Ljava/io/File;I)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v5

    .line 202
    invoke-interface {v5}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 203
    sget-object v5, Lcom/android/packageinstaller/InstallInstalling;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Cannot parse package "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, ". Assuming defaults."

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v5

    invoke-virtual {v1, v5, v6}, Landroid/content/pm/PackageInstaller$SessionParams;->setSize(J)V

    goto :goto_3

    .line 208
    :cond_7
    invoke-interface {v5}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/parsing/PackageLite;

    .line 209
    invoke-virtual {v5}, Landroid/content/pm/parsing/PackageLite;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/content/pm/PackageInstaller$SessionParams;->setAppPackageName(Ljava/lang/String;)V

    .line 210
    invoke-virtual {v5}, Landroid/content/pm/parsing/PackageLite;->getInstallLocation()I

    move-result v6

    invoke-virtual {v1, v6}, Landroid/content/pm/PackageInstaller$SessionParams;->setInstallLocation(I)V

    .line 211
    iget-object v6, v1, Landroid/content/pm/PackageInstaller$SessionParams;->abiOverride:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/android/internal/content/InstallLocationUtils;->calculateInstalledSize(Landroid/content/pm/parsing/PackageLite;Ljava/lang/String;)J

    move-result-wide v5

    invoke-virtual {v1, v5, v6}, Landroid/content/pm/PackageInstaller$SessionParams;->setSize(J)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    .line 215
    :catch_1
    sget-object v5, Lcom/android/packageinstaller/InstallInstalling;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageInstaller$SessionParams;->setSize(J)V

    :goto_3
    const/high16 v2, -0x80000000

    .line 221
    :try_start_3
    new-instance v3, Lcom/android/packageinstaller/InstallInstalling$$ExternalSyntheticLambda1;

    invoke-direct {v3, v0}, Lcom/android/packageinstaller/InstallInstalling$$ExternalSyntheticLambda1;-><init>(Lcom/android/packageinstaller/InstallInstalling;)V

    .line 222
    invoke-static {v0, v2, v3}, Lcom/android/packageinstaller/InstallEventReceiver;->addObserver(Landroid/content/Context;ILcom/android/packageinstaller/EventResultPersister$EventResultObserver;)I

    move-result v2

    iput v2, v0, Lcom/android/packageinstaller/InstallInstalling;->mInstallId:I
    :try_end_3
    .catch Lcom/android/packageinstaller/EventResultPersister$OutOfIdsException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_4

    :catch_2
    const/16 v2, -0x6e

    const/4 v3, 0x0

    .line 225
    invoke-direct {v0, v7, v2, v3}, Lcom/android/packageinstaller/InstallInstalling;->launchFailure(IILjava/lang/String;)V

    .line 230
    :goto_4
    :try_start_4
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/pm/PackageManager;->getPackageInstaller()Landroid/content/pm/PackageInstaller;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/pm/PackageInstaller;->createSession(Landroid/content/pm/PackageInstaller$SessionParams;)I

    move-result v1

    iput v1, v0, Lcom/android/packageinstaller/InstallInstalling;->mSessionId:I
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_5

    :catch_3
    const/16 v1, -0x6e

    const/4 v2, 0x0

    .line 232
    invoke-direct {v0, v7, v1, v2}, Lcom/android/packageinstaller/InstallInstalling;->launchFailure(IILjava/lang/String;)V

    .line 237
    :catch_4
    :goto_5
    iget-object v1, v0, Lcom/android/packageinstaller/BottomAlertActivity;->mAlert:Lcom/android/internal/app/AlertController;

    const/4 v2, -0x2

    invoke-virtual {v1, v2}, Lcom/android/internal/app/AlertController;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    iput-object v1, v0, Lcom/android/packageinstaller/InstallInstalling;->mCancelButton:Landroid/widget/Button;

    :goto_6
    return-void
.end method

.method protected onDestroy()V
    .locals 4

    .line 309
    iget-object v0, p0, Lcom/android/packageinstaller/InstallInstalling;->mInstallingTask:Lcom/android/packageinstaller/InstallInstalling$InstallingAsyncTask;

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    .line 310
    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 311
    iget-object v0, p0, Lcom/android/packageinstaller/InstallInstalling;->mInstallingTask:Lcom/android/packageinstaller/InstallInstalling$InstallingAsyncTask;

    monitor-enter v0

    .line 312
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/android/packageinstaller/InstallInstalling;->mInstallingTask:Lcom/android/packageinstaller/InstallInstalling$InstallingAsyncTask;

    iget-boolean v1, v1, Lcom/android/packageinstaller/InstallInstalling$InstallingAsyncTask;->isDone:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 314
    :try_start_1
    iget-object v1, p0, Lcom/android/packageinstaller/InstallInstalling;->mInstallingTask:Lcom/android/packageinstaller/InstallInstalling$InstallingAsyncTask;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 316
    :try_start_2
    sget-object v2, Lcom/android/packageinstaller/InstallInstalling;->LOG_TAG:Ljava/lang/String;

    const-string v3, "Interrupted while waiting for installing task to cancel"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 320
    :cond_0
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    .line 323
    :cond_1
    :goto_1
    iget v0, p0, Lcom/android/packageinstaller/InstallInstalling;->mInstallId:I

    invoke-static {p0, v0}, Lcom/android/packageinstaller/InstallEventReceiver;->removeObserver(Landroid/content/Context;I)V

    .line 325
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method protected onResume()V
    .locals 3

    .line 274
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 277
    iget-object v0, p0, Lcom/android/packageinstaller/InstallInstalling;->mInstallingTask:Lcom/android/packageinstaller/InstallInstalling$InstallingAsyncTask;

    if-nez v0, :cond_1

    .line 278
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->getPackageInstaller()Landroid/content/pm/PackageInstaller;

    move-result-object v0

    .line 279
    iget v1, p0, Lcom/android/packageinstaller/InstallInstalling;->mSessionId:I

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageInstaller;->getSessionInfo(I)Landroid/content/pm/PackageInstaller$SessionInfo;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 281
    invoke-virtual {v0}, Landroid/content/pm/PackageInstaller$SessionInfo;->isActive()Z

    move-result v0

    if-nez v0, :cond_0

    .line 282
    new-instance v0, Lcom/android/packageinstaller/InstallInstalling$InstallingAsyncTask;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/android/packageinstaller/InstallInstalling$InstallingAsyncTask;-><init>(Lcom/android/packageinstaller/InstallInstalling;Lcom/android/packageinstaller/InstallInstalling$InstallingAsyncTask-IA;)V

    iput-object v0, p0, Lcom/android/packageinstaller/InstallInstalling;->mInstallingTask:Lcom/android/packageinstaller/InstallInstalling$InstallingAsyncTask;

    new-array p0, v1, [Ljava/lang/Void;

    .line 283
    invoke-virtual {v0, p0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 286
    :cond_0
    iget-object v0, p0, Lcom/android/packageinstaller/InstallInstalling;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 287
    invoke-virtual {p0, v1}, Landroid/app/Activity;->setFinishOnTouchOutside(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 294
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 296
    iget v0, p0, Lcom/android/packageinstaller/InstallInstalling;->mSessionId:I

    const-string v1, "com.android.packageinstaller.SESSION_ID"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 297
    iget p0, p0, Lcom/android/packageinstaller/InstallInstalling;->mInstallId:I

    const-string v0, "com.android.packageinstaller.INSTALL_ID"

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method
