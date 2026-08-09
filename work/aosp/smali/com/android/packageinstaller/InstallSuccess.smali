.class public Lcom/android/packageinstaller/InstallSuccess;
.super Lcom/android/packageinstaller/BottomAlertActivity;
.source "InstallSuccess.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private mAppPackageName:Ljava/lang/String;

.field private mAppSnippet:Lcom/android/packageinstaller/PackageUtil$AppSnippet;

.field private mLaunchIntent:Landroid/content/Intent;


# direct methods
.method public static synthetic $r8$lambda$oBx7Ld7vDKaMuljGlmzP0WCOJd4(Lcom/android/packageinstaller/InstallSuccess;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/packageinstaller/InstallSuccess;->lambda$bindUi$1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$qfWilHVYyhkj2w2yNo16yV_skFI(Lcom/android/packageinstaller/InstallSuccess;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/packageinstaller/InstallSuccess;->lambda$bindUi$0(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 48
    const-class v0, Lcom/android/packageinstaller/InstallSuccess;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/packageinstaller/InstallSuccess;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Lcom/android/packageinstaller/BottomAlertActivity;-><init>()V

    return-void
.end method

.method private bindUi()V
    .locals 11

    .line 100
    iget-object v0, p0, Lcom/android/packageinstaller/InstallSuccess;->mAppSnippet:Lcom/android/packageinstaller/PackageUtil$AppSnippet;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const v0, 0x7f0c001e

    const/4 v1, 0x0

    .line 104
    invoke-static {p0, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v2, 0x7f090049

    .line 105
    invoke-virtual {v0, v2}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 106
    iget-object v3, p0, Lcom/android/packageinstaller/InstallSuccess;->mAppSnippet:Lcom/android/packageinstaller/PackageUtil$AppSnippet;

    iget-object v3, v3, Lcom/android/packageinstaller/PackageUtil$AppSnippet;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const v2, 0x7f09004b

    .line 107
    invoke-virtual {v0, v2}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 108
    iget-object v3, p0, Lcom/android/packageinstaller/BottomAlertActivity;->mAlert:Lcom/android/internal/app/AlertController;

    invoke-virtual {v3, v0}, Lcom/android/internal/app/AlertController;->setView(Landroid/view/View;)V

    .line 109
    iget-object v0, p0, Lcom/android/packageinstaller/InstallSuccess;->mAppSnippet:Lcom/android/packageinstaller/PackageUtil$AppSnippet;

    iget-object v0, v0, Lcom/android/packageinstaller/PackageUtil$AppSnippet;->label:Ljava/lang/CharSequence;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    iget-object v0, p0, Lcom/android/packageinstaller/BottomAlertActivity;->mAlert:Lcom/android/internal/app/AlertController;

    const v2, 0x7f0f003f

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x1

    invoke-virtual {v0, v3, v2, v1, v1}, Lcom/android/internal/app/AlertController;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    .line 112
    iget-object v0, p0, Lcom/android/packageinstaller/BottomAlertActivity;->mAlert:Lcom/android/internal/app/AlertController;

    const v2, 0x7f0f0029

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v4, Lcom/android/packageinstaller/InstallSuccess$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0}, Lcom/android/packageinstaller/InstallSuccess$$ExternalSyntheticLambda0;-><init>(Lcom/android/packageinstaller/InstallSuccess;)V

    const/4 v5, -0x2

    invoke-virtual {v0, v5, v2, v4, v1}, Lcom/android/internal/app/AlertController;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    .line 119
    invoke-virtual {p0}, Lcom/android/packageinstaller/BottomAlertActivity;->setupAlert()V

    const v0, 0x7f0900cd

    .line 120
    invoke-virtual {p0, v0}, Landroid/app/Activity;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 121
    iget-object v0, p0, Lcom/android/packageinstaller/BottomAlertActivity;->mAlert:Lcom/android/internal/app/AlertController;

    invoke-virtual {v0, v3}, Lcom/android/internal/app/AlertController;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    .line 122
    iget-object v2, p0, Lcom/android/packageinstaller/BottomAlertActivity;->mAlert:Lcom/android/internal/app/AlertController;

    invoke-virtual {v2, v5}, Lcom/android/internal/app/AlertController;->getButton(I)Landroid/widget/Button;

    move-result-object v2

    const v4, 0x7f07005b

    .line 123
    invoke-virtual {v0, v4}, Landroid/widget/Button;->setBackgroundResource(I)V

    const v5, 0x1010039

    .line 124
    invoke-virtual {p0, p0, v5}, Lcom/android/packageinstaller/BottomAlertActivity;->getColorAttrDefaultColor(Landroid/content/Context;I)I

    move-result v5

    iget-object v6, p0, Lcom/android/packageinstaller/InstallSuccess;->mLaunchIntent:Landroid/content/Intent;

    if-nez v6, :cond_1

    invoke-virtual {p0}, Lcom/android/packageinstaller/InstallSuccess;->getDisabledStateColor()I

    move-result v5

    :cond_1
    invoke-virtual {v0, v5}, Landroid/widget/Button;->setTextColor(I)V

    const v5, 0x1010435

    .line 125
    invoke-virtual {p0, p0, v5}, Lcom/android/packageinstaller/BottomAlertActivity;->getColorAttrDefaultColor(Landroid/content/Context;I)I

    move-result v5

    invoke-static {v5}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 126
    invoke-virtual {v2, v4}, Landroid/widget/Button;->setBackgroundResource(I)V

    const v4, 0x1010030

    .line 127
    invoke-virtual {p0, p0, v4}, Lcom/android/packageinstaller/BottomAlertActivity;->getColorAttrDefaultColor(Landroid/content/Context;I)I

    move-result v4

    const v5, 0x3dcccccd    # 0.1f

    invoke-virtual {p0, v4, v5}, Lcom/android/packageinstaller/BottomAlertActivity;->adjustAlpha(IF)I

    move-result v4

    invoke-static {v4}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    const v4, 0x1010036

    .line 128
    invoke-virtual {p0, p0, v4}, Lcom/android/packageinstaller/BottomAlertActivity;->getColorAttrDefaultColor(Landroid/content/Context;I)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setTextColor(I)V

    .line 129
    invoke-virtual {v0}, Landroid/widget/Button;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/ButtonBarLayout;

    .line 130
    invoke-virtual {v0}, Lcom/android/internal/widget/ButtonBarLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 131
    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    const/16 v4, 0x11

    .line 132
    iput v4, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 133
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f060076

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v5

    .line 134
    iput v5, v2, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 135
    iput v5, v2, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 136
    iput v5, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 137
    iput v5, v2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    move v6, v1

    .line 138
    :goto_0
    invoke-virtual {v0}, Lcom/android/internal/widget/ButtonBarLayout;->getChildCount()I

    move-result v7

    if-ge v6, v7, :cond_4

    .line 139
    invoke-virtual {v0, v6}, Lcom/android/internal/widget/ButtonBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 140
    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v8

    if-eqz v8, :cond_2

    const/16 v8, 0x8

    .line 141
    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 143
    :cond_2
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v9, 0x3f800000    # 1.0f

    .line 144
    iput v9, v8, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 145
    iput v3, v8, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 146
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f060060

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    iput v9, v8, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 147
    iput v4, v8, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 148
    div-int/lit8 v9, v5, 0x2

    .line 149
    invoke-virtual {v7}, Landroid/view/View;->getId()I

    move-result v7

    const v10, 0x1020019

    if-ne v7, v10, :cond_3

    .line 150
    iput v9, v8, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    goto :goto_1

    .line 152
    :cond_3
    iput v9, v8, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 155
    :cond_4
    invoke-virtual {v0, v2}, Lcom/android/internal/widget/ButtonBarLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 158
    iget-object v0, p0, Lcom/android/packageinstaller/InstallSuccess;->mLaunchIntent:Landroid/content/Intent;

    if-eqz v0, :cond_5

    .line 159
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v2, p0, Lcom/android/packageinstaller/InstallSuccess;->mLaunchIntent:Landroid/content/Intent;

    invoke-virtual {v0, v2, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 161
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_5

    const/4 v0, 0x1

    goto :goto_2

    :cond_5
    move v0, v1

    .line 166
    :goto_2
    iget-object v2, p0, Lcom/android/packageinstaller/BottomAlertActivity;->mAlert:Lcom/android/internal/app/AlertController;

    invoke-virtual {v2, v3}, Lcom/android/internal/app/AlertController;->getButton(I)Landroid/widget/Button;

    move-result-object v2

    if-eqz v0, :cond_6

    .line 168
    new-instance v0, Lcom/android/packageinstaller/InstallSuccess$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/packageinstaller/InstallSuccess$$ExternalSyntheticLambda1;-><init>(Lcom/android/packageinstaller/InstallSuccess;)V

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_3

    .line 177
    :cond_6
    invoke-virtual {v2, v1}, Landroid/widget/Button;->setEnabled(Z)V

    :goto_3
    return-void
.end method

.method public static isNightMode(Landroid/content/Context;)Z
    .locals 1

    .line 314
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    .line 315
    iget p0, p0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 p0, p0, 0x30

    const/16 v0, 0x20

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private synthetic lambda$bindUi$0(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 114
    iget-object p1, p0, Lcom/android/packageinstaller/InstallSuccess;->mAppPackageName:Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 115
    sget-object p1, Lcom/android/packageinstaller/InstallSuccess;->LOG_TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Finished installing "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/packageinstaller/InstallSuccess;->mAppPackageName:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private synthetic lambda$bindUi$1(Landroid/view/View;)V
    .locals 2

    .line 170
    :try_start_0
    iget-object p1, p0, Lcom/android/packageinstaller/InstallSuccess;->mLaunchIntent:Landroid/content/Intent;

    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 172
    sget-object v0, Lcom/android/packageinstaller/InstallSuccess;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Could not start activity"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 174
    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method


# virtual methods
.method public getDisabledStateColor()I
    .locals 3

    invoke-static {p0}, Lcom/android/packageinstaller/InstallSuccess;->isNightMode(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v1, "#44ffffff"

    goto :goto_0

    :cond_0
    const-string v1, "#44000000"

    :goto_0
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 61
    invoke-super {p0, p1}, Lcom/android/packageinstaller/BottomAlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 63
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "android.intent.extra.RETURN_RESULT"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 65
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const/4 v0, 0x1

    const-string v1, "android.intent.extra.INSTALL_RESULT"

    .line 66
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 v0, -0x1

    .line 67
    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 68
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_1

    .line 70
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "com.android.packageinstaller.applicationInfo"

    .line 72
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .line 73
    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/packageinstaller/InstallSuccess;->mAppPackageName:Ljava/lang/String;

    .line 74
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    .line 77
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 79
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    const-string v3, "package"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 80
    new-instance p1, Lcom/android/packageinstaller/PackageUtil$AppSnippet;

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v2

    iget-object v3, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 81
    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-direct {p1, v2, v0, v3}, Lcom/android/packageinstaller/PackageUtil$AppSnippet;-><init>(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;)V

    iput-object p1, p0, Lcom/android/packageinstaller/InstallSuccess;->mAppSnippet:Lcom/android/packageinstaller/PackageUtil$AppSnippet;

    goto :goto_0

    .line 83
    :cond_1
    new-instance v1, Ljava/io/File;

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 84
    invoke-static {p0, v0, v1}, Lcom/android/packageinstaller/PackageUtil;->getAppSnippet(Landroid/app/Activity;Landroid/content/pm/ApplicationInfo;Ljava/io/File;)Lcom/android/packageinstaller/PackageUtil$AppSnippet;

    move-result-object p1

    iput-object p1, p0, Lcom/android/packageinstaller/InstallSuccess;->mAppSnippet:Lcom/android/packageinstaller/PackageUtil$AppSnippet;

    .line 87
    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iget-object v0, p0, Lcom/android/packageinstaller/InstallSuccess;->mAppPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    iput-object p1, p0, Lcom/android/packageinstaller/InstallSuccess;->mLaunchIntent:Landroid/content/Intent;

    .line 89
    invoke-direct {p0}, Lcom/android/packageinstaller/InstallSuccess;->bindUi()V

    :goto_1
    return-void
.end method

.method protected onResume()V
    .locals 0

    .line 95
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 96
    invoke-direct {p0}, Lcom/android/packageinstaller/InstallSuccess;->bindUi()V

    return-void
.end method
