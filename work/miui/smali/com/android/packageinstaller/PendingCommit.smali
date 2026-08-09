.class public Lcom/android/packageinstaller/PendingCommit;
.super Ljava/lang/Object;
.implements Ljava/lang/Runnable;


# instance fields
.field private final mHost:Lcom/android/packageinstaller/InstallInstalling;

.field private final mSender:Landroid/content/IntentSender;

.field private final mSession:Landroid/content/pm/PackageInstaller$Session;


# direct methods
.method public constructor <init>(Lcom/android/packageinstaller/InstallInstalling;Landroid/content/pm/PackageInstaller$Session;Landroid/content/IntentSender;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/packageinstaller/PendingCommit;->mHost:Lcom/android/packageinstaller/InstallInstalling;

    iput-object p2, p0, Lcom/android/packageinstaller/PendingCommit;->mSession:Landroid/content/pm/PackageInstaller$Session;

    iput-object p3, p0, Lcom/android/packageinstaller/PendingCommit;->mSender:Landroid/content/IntentSender;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/android/packageinstaller/PendingCommit;->mHost:Lcom/android/packageinstaller/InstallInstalling;

    iget-object v1, p0, Lcom/android/packageinstaller/PendingCommit;->mSession:Landroid/content/pm/PackageInstaller$Session;

    iget-object v2, p0, Lcom/android/packageinstaller/PendingCommit;->mSender:Landroid/content/IntentSender;

    invoke-virtual {v0, v1, v2}, Lcom/android/packageinstaller/InstallInstalling;->commitNow(Landroid/content/pm/PackageInstaller$Session;Landroid/content/IntentSender;)V

    return-void
.end method
