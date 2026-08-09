.class public Lcom/android/packageinstaller/InstallStaging;
.super Lcom/android/packageinstaller/BottomAlertActivity;
.source "InstallStaging.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/packageinstaller/InstallStaging$StagingAsyncTask;,
        Lcom/android/packageinstaller/InstallStaging$ErrorDialog;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private mStagedFile:Ljava/io/File;

.field private mStagingTask:Lcom/android/packageinstaller/InstallStaging$StagingAsyncTask;


# direct methods
.method public static synthetic $r8$lambda$f6S7CIZ90Bzlsp86F2jdG_gCv4c(Lcom/android/packageinstaller/InstallStaging;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/packageinstaller/InstallStaging;->lambda$onCreate$0(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmStagedFile(Lcom/android/packageinstaller/InstallStaging;)Ljava/io/File;
    .locals 0

    iget-object p0, p0, Lcom/android/packageinstaller/InstallStaging;->mStagedFile:Ljava/io/File;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mshowError(Lcom/android/packageinstaller/InstallStaging;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/packageinstaller/InstallStaging;->showError()V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetLOG_TAG()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/packageinstaller/InstallStaging;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 54
    const-class v0, Lcom/android/packageinstaller/InstallStaging;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/packageinstaller/InstallStaging;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 53
    invoke-direct {p0}, Lcom/android/packageinstaller/BottomAlertActivity;-><init>()V

    return-void
.end method

.method private synthetic lambda$onCreate$0(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 82
    iget-object p1, p0, Lcom/android/packageinstaller/InstallStaging;->mStagingTask:Lcom/android/packageinstaller/InstallStaging$StagingAsyncTask;

    if-eqz p1, :cond_0

    const/4 p2, 0x1

    .line 83
    invoke-virtual {p1, p2}, Landroid/os/AsyncTask;->cancel(Z)Z

    :cond_0
    const/4 p1, 0x0

    .line 85
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setResult(I)V

    .line 86
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private showError()V
    .locals 3

    .line 174
    new-instance v0, Lcom/android/packageinstaller/InstallStaging$ErrorDialog;

    invoke-direct {v0}, Lcom/android/packageinstaller/InstallStaging$ErrorDialog;-><init>()V

    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "error"

    invoke-virtual {v0, v1, v2}, Landroid/app/DialogFragment;->showAllowingStateLoss(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 176
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.intent.extra.INSTALL_RESULT"

    const/4 v2, -0x2

    .line 177
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 v1, 0x1

    .line 179
    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9

    .line 72
    invoke-super {p0, p1}, Lcom/android/packageinstaller/BottomAlertActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f01001d

    const v1, 0x7f01001e

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    const v0, 0x7f0c001e

    const/4 v1, 0x0

    .line 74
    invoke-static {p0, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v2, 0x7f090049

    .line 75
    invoke-virtual {v0, v2}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    const v3, 0x7f070060

    .line 76
    invoke-virtual {p0, v3}, Landroid/app/Activity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const v2, 0x7f09004b

    .line 77
    invoke-virtual {v0, v2}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 78
    iget-object v3, p0, Lcom/android/packageinstaller/BottomAlertActivity;->mAlert:Lcom/android/internal/app/AlertController;

    invoke-virtual {v3, v0}, Lcom/android/internal/app/AlertController;->setView(Landroid/view/View;)V

    const v0, 0x7f0f0022

    .line 79
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    iget-object v0, p0, Lcom/android/packageinstaller/BottomAlertActivity;->mAlert:Lcom/android/internal/app/AlertController;

    const v2, 0x7f0f0027

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/android/packageinstaller/InstallStaging$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Lcom/android/packageinstaller/InstallStaging$$ExternalSyntheticLambda0;-><init>(Lcom/android/packageinstaller/InstallStaging;)V

    const/4 v4, -0x2

    invoke-virtual {v0, v4, v2, v3, v1}, Lcom/android/internal/app/AlertController;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    .line 88
    invoke-virtual {p0}, Lcom/android/packageinstaller/BottomAlertActivity;->setupAlert()V

    const v0, 0x7f090155

    .line 89
    invoke-virtual {p0, v0}, Landroid/app/Activity;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    if-eqz p1, :cond_0

    .line 92
    new-instance v0, Ljava/io/File;

    const-string v3, "STAGED_FILE"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/packageinstaller/InstallStaging;->mStagedFile:Ljava/io/File;

    .line 94
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_0

    .line 95
    iput-object v1, p0, Lcom/android/packageinstaller/InstallStaging;->mStagedFile:Ljava/io/File;

    .line 99
    :cond_0
    iget-object p1, p0, Lcom/android/packageinstaller/BottomAlertActivity;->mAlert:Lcom/android/internal/app/AlertController;

    invoke-virtual {p1, v4}, Lcom/android/internal/app/AlertController;->getButton(I)Landroid/widget/Button;

    move-result-object p1

    const v0, 0x7f07005b

    .line 100
    invoke-virtual {p1, v0}, Landroid/widget/Button;->setBackgroundResource(I)V

    const v0, 0x1010030

    .line 101
    invoke-virtual {p0, p0, v0}, Lcom/android/packageinstaller/BottomAlertActivity;->getColorAttrDefaultColor(Landroid/content/Context;I)I

    move-result v0

    const v1, 0x3dcccccd    # 0.1f

    invoke-virtual {p0, v0, v1}, Lcom/android/packageinstaller/BottomAlertActivity;->adjustAlpha(IF)I

    move-result v0

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    const v0, 0x1010036

    .line 102
    invoke-virtual {p0, p0, v0}, Lcom/android/packageinstaller/BottomAlertActivity;->getColorAttrDefaultColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setTextColor(I)V

    .line 103
    invoke-virtual {p1}, Landroid/widget/Button;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Lcom/android/internal/widget/ButtonBarLayout;

    .line 104
    invoke-virtual {p1}, Lcom/android/internal/widget/ButtonBarLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    .line 105
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    const/16 v3, 0x11

    .line 106
    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 107
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f060076

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    .line 108
    iput v4, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 109
    iput v4, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 110
    iput v4, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 111
    iput v4, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 112
    :goto_0
    invoke-virtual {p1}, Lcom/android/internal/widget/ButtonBarLayout;->getChildCount()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 113
    invoke-virtual {p1, v2}, Lcom/android/internal/widget/ButtonBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 114
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-eqz v6, :cond_1

    const/16 v6, 0x8

    .line 115
    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 117
    :cond_1
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v7, 0x3f800000    # 1.0f

    .line 118
    iput v7, v6, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 119
    iput v1, v6, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 120
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f060060

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, v6, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 121
    iput v3, v6, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 122
    div-int/lit8 v7, v4, 0x2

    .line 123
    invoke-virtual {v5}, Landroid/view/View;->getId()I

    move-result v5

    const v8, 0x1020019

    if-ne v5, v8, :cond_2

    .line 124
    iput v7, v6, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    goto :goto_1

    .line 126
    :cond_2
    iput v7, v6, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 129
    :cond_3
    invoke-virtual {p1, v0}, Lcom/android/internal/widget/ButtonBarLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 163
    iget-object v0, p0, Lcom/android/packageinstaller/InstallStaging;->mStagingTask:Lcom/android/packageinstaller/InstallStaging$StagingAsyncTask;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 164
    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 167
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method protected onResume()V
    .locals 3

    .line 134
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 137
    iget-object v0, p0, Lcom/android/packageinstaller/InstallStaging;->mStagingTask:Lcom/android/packageinstaller/InstallStaging$StagingAsyncTask;

    if-nez v0, :cond_1

    .line 139
    iget-object v0, p0, Lcom/android/packageinstaller/InstallStaging;->mStagedFile:Ljava/io/File;

    if-nez v0, :cond_0

    .line 142
    :try_start_0
    invoke-static {p0}, Lcom/android/packageinstaller/TemporaryFileManager;->getStagedFile(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/android/packageinstaller/InstallStaging;->mStagedFile:Ljava/io/File;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 144
    :catch_0
    invoke-direct {p0}, Lcom/android/packageinstaller/InstallStaging;->showError()V

    return-void

    .line 149
    :cond_0
    :goto_0
    new-instance v0, Lcom/android/packageinstaller/InstallStaging$StagingAsyncTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/packageinstaller/InstallStaging$StagingAsyncTask;-><init>(Lcom/android/packageinstaller/InstallStaging;Lcom/android/packageinstaller/InstallStaging$StagingAsyncTask-IA;)V

    iput-object v0, p0, Lcom/android/packageinstaller/InstallStaging;->mStagingTask:Lcom/android/packageinstaller/InstallStaging$StagingAsyncTask;

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/net/Uri;

    const/4 v2, 0x0

    .line 150
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p0

    aput-object p0, v1, v2

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_1
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 156
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 158
    iget-object p0, p0, Lcom/android/packageinstaller/InstallStaging;->mStagedFile:Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    const-string v0, "STAGED_FILE"

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
