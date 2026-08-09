.class public Lcom/android/packageinstaller/InstallFailed;
.super Lcom/android/packageinstaller/BottomAlertActivity;
.source "InstallFailed.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/packageinstaller/InstallFailed$OutOfSpaceDialog;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private mLabel:Ljava/lang/CharSequence;


# direct methods
.method public static synthetic $r8$lambda$kdmhN4vALkdGvByXijClfej8uys(Lcom/android/packageinstaller/InstallFailed;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/packageinstaller/InstallFailed;->lambda$onCreate$0(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmLabel(Lcom/android/packageinstaller/InstallFailed;)Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Lcom/android/packageinstaller/InstallFailed;->mLabel:Ljava/lang/CharSequence;

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 50
    const-class v0, Lcom/android/packageinstaller/InstallFailed;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/packageinstaller/InstallFailed;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 49
    invoke-direct {p0}, Lcom/android/packageinstaller/BottomAlertActivity;-><init>()V

    return-void
.end method

.method private synthetic lambda$onCreate$0(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 130
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private setExplanationFromErrorCode(I)V
    .locals 3

    .line 63
    sget-object v0, Lcom/android/packageinstaller/InstallFailed;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Installation status code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x7

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    const p1, 0x7f0900c8

    .line 80
    invoke-virtual {p0, p1}, Landroid/app/Activity;->requireViewById(I)Landroid/view/View;

    move-result-object p0

    goto :goto_0

    :cond_0
    const p1, 0x7f0900ca

    .line 71
    invoke-virtual {p0, p1}, Landroid/app/Activity;->requireViewById(I)Landroid/view/View;

    move-result-object p0

    goto :goto_0

    :cond_1
    const p1, 0x7f0900cc

    .line 77
    invoke-virtual {p0, p1}, Landroid/app/Activity;->requireViewById(I)Landroid/view/View;

    move-result-object p0

    goto :goto_0

    :cond_2
    const p1, 0x7f0900cb

    .line 74
    invoke-virtual {p0, p1}, Landroid/app/Activity;->requireViewById(I)Landroid/view/View;

    move-result-object p0

    goto :goto_0

    :cond_3
    const p1, 0x7f0900c9

    .line 68
    invoke-virtual {p0, p1}, Landroid/app/Activity;->requireViewById(I)Landroid/view/View;

    move-result-object p0

    :goto_0
    const/4 p1, 0x0

    .line 84
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10

    .line 89
    invoke-super {p0, p1}, Lcom/android/packageinstaller/BottomAlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 91
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "android.content.pm.extra.STATUS"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 94
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "android.intent.extra.RETURN_RESULT"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const/16 v0, -0x6e

    const-string v2, "android.content.pm.extra.LEGACY_STATUS"

    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 99
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v2, "android.intent.extra.INSTALL_RESULT"

    .line 100
    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 101
    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 102
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto/16 :goto_3

    .line 104
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.android.packageinstaller.applicationInfo"

    .line 106
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ApplicationInfo;

    .line 107
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 111
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 113
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v4

    const-string v5, "package"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 114
    new-instance v0, Lcom/android/packageinstaller/PackageUtil$AppSnippet;

    invoke-virtual {v2, v1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v4

    iget-object v5, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 115
    invoke-virtual {v2, v1}, Landroid/content/pm/PackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-direct {v0, v4, v1, v5}, Lcom/android/packageinstaller/PackageUtil$AppSnippet;-><init>(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 117
    :cond_1
    new-instance v2, Ljava/io/File;

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 118
    invoke-static {p0, v1, v2}, Lcom/android/packageinstaller/PackageUtil;->getAppSnippet(Landroid/app/Activity;Landroid/content/pm/ApplicationInfo;Ljava/io/File;)Lcom/android/packageinstaller/PackageUtil$AppSnippet;

    move-result-object v0

    .line 122
    :goto_0
    iget-object v1, v0, Lcom/android/packageinstaller/PackageUtil$AppSnippet;->label:Ljava/lang/CharSequence;

    iput-object v1, p0, Lcom/android/packageinstaller/InstallFailed;->mLabel:Ljava/lang/CharSequence;

    const v1, 0x7f0c001e

    const/4 v2, 0x0

    .line 123
    invoke-static {p0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v4, 0x7f090049

    .line 124
    invoke-virtual {v1, v4}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 125
    iget-object v5, v0, Lcom/android/packageinstaller/PackageUtil$AppSnippet;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const v4, 0x7f09004b

    .line 126
    invoke-virtual {v1, v4}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 127
    iget-object v5, p0, Lcom/android/packageinstaller/BottomAlertActivity;->mAlert:Lcom/android/internal/app/AlertController;

    invoke-virtual {v5, v1}, Lcom/android/internal/app/AlertController;->setView(Landroid/view/View;)V

    iget-object v0, v0, Lcom/android/packageinstaller/PackageUtil$AppSnippet;->label:Ljava/lang/CharSequence;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 129
    iget-object v0, p0, Lcom/android/packageinstaller/BottomAlertActivity;->mAlert:Lcom/android/internal/app/AlertController;

    const v1, 0x7f0f0029

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v4, Lcom/android/packageinstaller/InstallFailed$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0}, Lcom/android/packageinstaller/InstallFailed$$ExternalSyntheticLambda0;-><init>(Lcom/android/packageinstaller/InstallFailed;)V

    const/4 v5, -0x1

    invoke-virtual {v0, v5, v1, v4, v2}, Lcom/android/internal/app/AlertController;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    .line 131
    invoke-virtual {p0}, Lcom/android/packageinstaller/BottomAlertActivity;->setupAlert()V

    .line 133
    iget-object v0, p0, Lcom/android/packageinstaller/BottomAlertActivity;->mAlert:Lcom/android/internal/app/AlertController;

    invoke-virtual {v0, v5}, Lcom/android/internal/app/AlertController;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    const v1, 0x7f07005b

    .line 134
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    const v1, 0x1010039

    .line 135
    invoke-virtual {p0, p0, v1}, Lcom/android/packageinstaller/BottomAlertActivity;->getColorAttrDefaultColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    const v1, 0x1010435

    .line 136
    invoke-virtual {p0, p0, v1}, Lcom/android/packageinstaller/BottomAlertActivity;->getColorAttrDefaultColor(Landroid/content/Context;I)I

    move-result v1

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 137
    invoke-virtual {v0}, Landroid/widget/Button;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/ButtonBarLayout;

    .line 138
    invoke-virtual {v0}, Lcom/android/internal/widget/ButtonBarLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 139
    iput v5, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    const/16 v2, 0x11

    .line 140
    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 141
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x7f060076

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    .line 142
    iput v4, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 143
    iput v4, v1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 144
    iput v4, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 145
    iput v4, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 146
    :goto_1
    invoke-virtual {v0}, Lcom/android/internal/widget/ButtonBarLayout;->getChildCount()I

    move-result v6

    if-ge v3, v6, :cond_4

    .line 147
    invoke-virtual {v0, v3}, Lcom/android/internal/widget/ButtonBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 148
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-eqz v7, :cond_2

    const/16 v7, 0x8

    .line 149
    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 151
    :cond_2
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v8, 0x3f800000    # 1.0f

    .line 152
    iput v8, v7, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 153
    iput v5, v7, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 154
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f060060

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    iput v8, v7, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 155
    iput v2, v7, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 156
    div-int/lit8 v8, v4, 0x2

    .line 157
    invoke-virtual {v6}, Landroid/view/View;->getId()I

    move-result v6

    const v9, 0x1020019

    if-ne v6, v9, :cond_3

    .line 158
    iput v8, v7, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    goto :goto_2

    .line 160
    :cond_3
    iput v8, v7, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 163
    :cond_4
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ButtonBarLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, 0x6

    if-ne p1, v0, :cond_5

    .line 167
    new-instance v0, Lcom/android/packageinstaller/InstallFailed$OutOfSpaceDialog;

    invoke-direct {v0}, Lcom/android/packageinstaller/InstallFailed$OutOfSpaceDialog;-><init>()V

    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "outofspace"

    invoke-virtual {v0, v1, v2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 171
    :cond_5
    invoke-direct {p0, p1}, Lcom/android/packageinstaller/InstallFailed;->setExplanationFromErrorCode(I)V

    :goto_3
    return-void
.end method
