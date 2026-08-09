.class final Lcom/android/packageinstaller/InstallStaging$StagingAsyncTask;
.super Landroid/os/AsyncTask;
.source "InstallStaging.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/packageinstaller/InstallStaging;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "StagingAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Landroid/net/Uri;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/packageinstaller/InstallStaging;


# direct methods
.method private constructor <init>(Lcom/android/packageinstaller/InstallStaging;)V
    .locals 0

    .line 215
    iput-object p1, p0, Lcom/android/packageinstaller/InstallStaging$StagingAsyncTask;->this$0:Lcom/android/packageinstaller/InstallStaging;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/packageinstaller/InstallStaging;Lcom/android/packageinstaller/InstallStaging$StagingAsyncTask-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/packageinstaller/InstallStaging$StagingAsyncTask;-><init>(Lcom/android/packageinstaller/InstallStaging;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Landroid/net/Uri;)Ljava/lang/Boolean;
    .locals 5

    if-eqz p1, :cond_6

    .line 218
    array-length v0, p1

    if-gtz v0, :cond_0

    goto :goto_3

    :cond_0
    const/4 v0, 0x0

    .line 221
    aget-object p1, p1, v0

    .line 222
    :try_start_0
    iget-object v1, p0, Lcom/android/packageinstaller/InstallStaging$StagingAsyncTask;->this$0:Lcom/android/packageinstaller/InstallStaging;

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p1, :cond_2

    .line 226
    :try_start_1
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-eqz p1, :cond_1

    .line 240
    :try_start_2
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_1
    return-object p0

    .line 229
    :cond_2
    :try_start_3
    new-instance v1, Ljava/io/FileOutputStream;

    iget-object v2, p0, Lcom/android/packageinstaller/InstallStaging$StagingAsyncTask;->this$0:Lcom/android/packageinstaller/InstallStaging;

    invoke-static {v2}, Lcom/android/packageinstaller/InstallStaging;->-$$Nest$fgetmStagedFile(Lcom/android/packageinstaller/InstallStaging;)Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    const/high16 v2, 0x100000

    :try_start_4
    new-array v2, v2, [B

    .line 232
    :goto_0
    invoke-virtual {p1, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    if-ltz v3, :cond_4

    .line 234
    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 235
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 239
    :try_start_5
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 240
    :try_start_6
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_6 .. :try_end_6} :catch_0

    return-object p0

    .line 237
    :cond_3
    :try_start_7
    invoke-virtual {v1, v2, v0, v3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_0

    .line 239
    :cond_4
    :try_start_8
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 240
    :try_start_9
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_9 .. :try_end_9} :catch_0

    .line 244
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0

    :catchall_0
    move-exception p0

    .line 229
    :try_start_a
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    :try_start_b
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw p0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    :catchall_2
    move-exception p0

    if-eqz p1, :cond_5

    .line 222
    :try_start_c
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    goto :goto_2

    :catchall_3
    move-exception p1

    :try_start_d
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_5
    :goto_2
    throw p0
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_d .. :try_end_d} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_d .. :try_end_d} :catch_0

    :catch_0
    move-exception p0

    .line 241
    invoke-static {}, Lcom/android/packageinstaller/InstallStaging;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Error staging apk from content URI"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 242
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0

    .line 219
    :cond_6
    :goto_3
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 215
    check-cast p1, [Landroid/net/Uri;

    invoke-virtual {p0, p1}, Lcom/android/packageinstaller/InstallStaging$StagingAsyncTask;->doInBackground([Landroid/net/Uri;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 2

    .line 249
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 251
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/packageinstaller/InstallStaging$StagingAsyncTask;->this$0:Lcom/android/packageinstaller/InstallStaging;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 252
    iget-object v0, p0, Lcom/android/packageinstaller/InstallStaging$StagingAsyncTask;->this$0:Lcom/android/packageinstaller/InstallStaging;

    const-class v1, Lcom/android/packageinstaller/DeleteStagedFileOnResult;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 253
    iget-object v0, p0, Lcom/android/packageinstaller/InstallStaging$StagingAsyncTask;->this$0:Lcom/android/packageinstaller/InstallStaging;

    invoke-static {v0}, Lcom/android/packageinstaller/InstallStaging;->-$$Nest$fgetmStagedFile(Lcom/android/packageinstaller/InstallStaging;)Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/4 v0, 0x0

    const-string v1, "android.intent.extra.RETURN_RESULT"

    .line 255
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 v0, 0x2000000

    .line 256
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :cond_0
    const/high16 v0, 0x10000

    .line 259
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 260
    iget-object v0, p0, Lcom/android/packageinstaller/InstallStaging$StagingAsyncTask;->this$0:Lcom/android/packageinstaller/InstallStaging;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 262
    iget-object p0, p0, Lcom/android/packageinstaller/InstallStaging$StagingAsyncTask;->this$0:Lcom/android/packageinstaller/InstallStaging;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 264
    :cond_1
    iget-object p0, p0, Lcom/android/packageinstaller/InstallStaging$StagingAsyncTask;->this$0:Lcom/android/packageinstaller/InstallStaging;

    invoke-static {p0}, Lcom/android/packageinstaller/InstallStaging;->-$$Nest$mshowError(Lcom/android/packageinstaller/InstallStaging;)V

    :goto_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 215
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/android/packageinstaller/InstallStaging$StagingAsyncTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
