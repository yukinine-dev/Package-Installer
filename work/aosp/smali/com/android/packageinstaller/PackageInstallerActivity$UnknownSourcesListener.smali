.class Lcom/android/packageinstaller/PackageInstallerActivity$UnknownSourcesListener;
.super Ljava/lang/Object;
.source "PackageInstallerActivity.java"

# interfaces
.implements Landroid/app/AppOpsManager$OnOpChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/packageinstaller/PackageInstallerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UnknownSourcesListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/packageinstaller/PackageInstallerActivity;


# direct methods
.method public static synthetic $r8$lambda$2eJrvtD97T9R1Jj9sCYTKJbo9R0(Lcom/android/packageinstaller/PackageInstallerActivity$UnknownSourcesListener;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/packageinstaller/PackageInstallerActivity$UnknownSourcesListener;->lambda$onOpChanged$0()V

    return-void
.end method

.method private constructor <init>(Lcom/android/packageinstaller/PackageInstallerActivity;)V
    .locals 0

    .line 809
    iput-object p1, p0, Lcom/android/packageinstaller/PackageInstallerActivity$UnknownSourcesListener;->this$0:Lcom/android/packageinstaller/PackageInstallerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/packageinstaller/PackageInstallerActivity;Lcom/android/packageinstaller/PackageInstallerActivity$UnknownSourcesListener-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/packageinstaller/PackageInstallerActivity$UnknownSourcesListener;-><init>(Lcom/android/packageinstaller/PackageInstallerActivity;)V

    return-void
.end method

.method private synthetic lambda$onOpChanged$0()V
    .locals 2

    .line 822
    iget-object v0, p0, Lcom/android/packageinstaller/PackageInstallerActivity$UnknownSourcesListener;->this$0:Lcom/android/packageinstaller/PackageInstallerActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 823
    iget-object p0, p0, Lcom/android/packageinstaller/PackageInstallerActivity$UnknownSourcesListener;->this$0:Lcom/android/packageinstaller/PackageInstallerActivity;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/high16 v1, 0x20000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onOpChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 813
    iget-object p1, p0, Lcom/android/packageinstaller/PackageInstallerActivity$UnknownSourcesListener;->this$0:Lcom/android/packageinstaller/PackageInstallerActivity;

    invoke-static {p1}, Lcom/android/packageinstaller/PackageInstallerActivity;->-$$Nest$fgetmOriginatingPackage(Lcom/android/packageinstaller/PackageInstallerActivity;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 816
    :cond_0
    iget-object p1, p0, Lcom/android/packageinstaller/PackageInstallerActivity$UnknownSourcesListener;->this$0:Lcom/android/packageinstaller/PackageInstallerActivity;

    invoke-static {p1, p0}, Lcom/android/packageinstaller/PackageInstallerActivity;->-$$Nest$munregister(Lcom/android/packageinstaller/PackageInstallerActivity;Lcom/android/packageinstaller/PackageInstallerActivity$UnknownSourcesListener;)V

    .line 817
    iget-object p1, p0, Lcom/android/packageinstaller/PackageInstallerActivity$UnknownSourcesListener;->this$0:Lcom/android/packageinstaller/PackageInstallerActivity;

    invoke-static {p1}, Lcom/android/packageinstaller/PackageInstallerActivity;->-$$Nest$fgetmActiveUnknownSourcesListeners(Lcom/android/packageinstaller/PackageInstallerActivity;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 818
    iget-object p1, p0, Lcom/android/packageinstaller/PackageInstallerActivity$UnknownSourcesListener;->this$0:Lcom/android/packageinstaller/PackageInstallerActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->isDestroyed()Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    .line 821
    :cond_1
    iget-object p1, p0, Lcom/android/packageinstaller/PackageInstallerActivity$UnknownSourcesListener;->this$0:Lcom/android/packageinstaller/PackageInstallerActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object p1

    new-instance p2, Lcom/android/packageinstaller/PackageInstallerActivity$UnknownSourcesListener$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/android/packageinstaller/PackageInstallerActivity$UnknownSourcesListener$$ExternalSyntheticLambda0;-><init>(Lcom/android/packageinstaller/PackageInstallerActivity$UnknownSourcesListener;)V

    const-wide/16 v0, 0x1f4

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
