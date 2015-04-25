.class Landroid/app/WallpaperManager$Globals;
.super Landroid/app/IWallpaperManagerCallback$Stub;
.source "WallpaperManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/WallpaperManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Globals"
.end annotation


# static fields
.field private static final MSG_CLEAR_WALLPAPER:I = 0x1


# instance fields
.field private mDefaultWallpaper:Landroid/graphics/Bitmap;

.field private final mHandler:Landroid/os/Handler;

.field private mService:Landroid/app/IWallpaperManager;

.field private mWallpaper:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Landroid/os/Looper;)V
    .locals 2
    .parameter "looper"

    .prologue
    .line 231
    invoke-direct {p0}, Landroid/app/IWallpaperManagerCallback$Stub;-><init>()V

    .line 232
    const-string/jumbo v1, "wallpaper"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 233
    .local v0, b:Landroid/os/IBinder;
    invoke-static {v0}, Landroid/app/IWallpaperManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IWallpaperManager;

    move-result-object v1

    iput-object v1, p0, Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;

    .line 234
    new-instance v1, Landroid/app/WallpaperManager$Globals$1;

    invoke-direct {v1, p0, p1}, Landroid/app/WallpaperManager$Globals$1;-><init>(Landroid/app/WallpaperManager$Globals;Landroid/os/Looper;)V

    iput-object v1, p0, Landroid/app/WallpaperManager$Globals;->mHandler:Landroid/os/Handler;

    .line 247
    return-void
.end method

.method static synthetic access$002(Landroid/app/WallpaperManager$Globals;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 222
    iput-object p1, p0, Landroid/app/WallpaperManager$Globals;->mWallpaper:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$102(Landroid/app/WallpaperManager$Globals;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 222
    iput-object p1, p0, Landroid/app/WallpaperManager$Globals;->mDefaultWallpaper:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$300(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 222
    iget-object v0, p0, Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;

    return-object v0
.end method

.method static synthetic access$500(Landroid/app/WallpaperManager$Globals;Landroid/content/Context;)Ljava/io/InputStream;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 222
    invoke-direct {p0, p1}, Landroid/app/WallpaperManager$Globals;->openDefaultWallpaperRes(Landroid/content/Context;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method private getCurrentWallpaperLocked(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 9
    .parameter "context"

    .prologue
    const/4 v7, 0x0

    .line 294
    :try_start_0
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 295
    .local v4, params:Landroid/os/Bundle;
    iget-object v6, p0, Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;

    invoke-interface {v6, p0, v4}, Landroid/app/IWallpaperManager;->getWallpaper(Landroid/app/IWallpaperManagerCallback;Landroid/os/Bundle;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    .line 296
    .local v1, fd:Landroid/os/ParcelFileDescriptor;
    if-eqz v1, :cond_0

    .line 297
    const-string/jumbo v6, "width"

    const/4 v8, 0x0

    invoke-virtual {v4, v6, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 298
    .local v5, width:I
    const-string v6, "height"

    const/4 v8, 0x0

    invoke-virtual {v4, v6, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    .line 301
    .local v2, height:I
    :try_start_1
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 302
    .local v3, options:Landroid/graphics/BitmapFactory$Options;
    const/4 v6, 0x1

    iput-boolean v6, v3, Landroid/graphics/BitmapFactory$Options;->inPostProc:Z

    .line 303
    const/4 v6, 0x1

    iput v6, v3, Landroid/graphics/BitmapFactory$Options;->inPostProcFlag:I

    .line 304
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v6

    const/4 v8, 0x0

    invoke-static {v6, v8, v3}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v6

    .line 310
    :try_start_2
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    .line 319
    .end local v1           #fd:Landroid/os/ParcelFileDescriptor;
    .end local v2           #height:I
    .end local v3           #options:Landroid/graphics/BitmapFactory$Options;
    .end local v4           #params:Landroid/os/Bundle;
    .end local v5           #width:I
    :goto_0
    return-object v6

    .line 306
    .restart local v1       #fd:Landroid/os/ParcelFileDescriptor;
    .restart local v2       #height:I
    .restart local v4       #params:Landroid/os/Bundle;
    .restart local v5       #width:I
    :catch_0
    move-exception v0

    .line 307
    .local v0, e:Ljava/lang/OutOfMemoryError;
    :try_start_3
    invoke-static {}, Landroid/app/WallpaperManager;->access$200()Ljava/lang/String;

    move-result-object v6

    const-string v8, "Can\'t decode file"

    invoke-static {v6, v8, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 310
    :try_start_4
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1

    .end local v0           #e:Ljava/lang/OutOfMemoryError;
    .end local v1           #fd:Landroid/os/ParcelFileDescriptor;
    .end local v2           #height:I
    .end local v4           #params:Landroid/os/Bundle;
    .end local v5           #width:I
    :cond_0
    :goto_1
    move-object v6, v7

    .line 319
    goto :goto_0

    .line 309
    .restart local v1       #fd:Landroid/os/ParcelFileDescriptor;
    .restart local v2       #height:I
    .restart local v4       #params:Landroid/os/Bundle;
    .restart local v5       #width:I
    :catchall_0
    move-exception v6

    .line 310
    :try_start_5
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1

    .line 313
    :goto_2
    :try_start_6
    throw v6
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_1

    .line 316
    .end local v1           #fd:Landroid/os/ParcelFileDescriptor;
    .end local v2           #height:I
    .end local v4           #params:Landroid/os/Bundle;
    .end local v5           #width:I
    :catch_1
    move-exception v6

    goto :goto_1

    .line 311
    .restart local v1       #fd:Landroid/os/ParcelFileDescriptor;
    .restart local v2       #height:I
    .restart local v3       #options:Landroid/graphics/BitmapFactory$Options;
    .restart local v4       #params:Landroid/os/Bundle;
    .restart local v5       #width:I
    :catch_2
    move-exception v7

    goto :goto_0

    .end local v3           #options:Landroid/graphics/BitmapFactory$Options;
    .restart local v0       #e:Ljava/lang/OutOfMemoryError;
    :catch_3
    move-exception v6

    goto :goto_1

    .end local v0           #e:Ljava/lang/OutOfMemoryError;
    :catch_4
    move-exception v8

    goto :goto_2
.end method

.method private getDefaultWallpaperLocked(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 8
    .parameter "context"

    .prologue
    const/4 v6, 0x0

    .line 354
    :try_start_0
    invoke-direct {p0, p1}, Landroid/app/WallpaperManager$Globals;->openDefaultWallpaperRes(Landroid/content/Context;)Ljava/io/InputStream;

    move-result-object v2

    .line 355
    .local v2, is:Ljava/io/InputStream;
    if-eqz v2, :cond_0

    .line 356
    iget-object v5, p0, Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;

    invoke-interface {v5}, Landroid/app/IWallpaperManager;->getWidthHint()I

    move-result v4

    .line 357
    .local v4, width:I
    iget-object v5, p0, Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;

    invoke-interface {v5}, Landroid/app/IWallpaperManager;->getHeightHint()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 360
    .local v1, height:I
    :try_start_1
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 362
    .local v3, options:Landroid/graphics/BitmapFactory$Options;
    const/4 v5, 0x1

    iput-boolean v5, v3, Landroid/graphics/BitmapFactory$Options;->inPostProc:Z

    .line 363
    const/4 v5, 0x1

    iput v5, v3, Landroid/graphics/BitmapFactory$Options;->inPostProcFlag:I

    .line 364
    const/4 v5, 0x0

    invoke-static {v2, v5, v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v5

    .line 369
    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    .line 378
    .end local v1           #height:I
    .end local v2           #is:Ljava/io/InputStream;
    .end local v3           #options:Landroid/graphics/BitmapFactory$Options;
    .end local v4           #width:I
    :goto_0
    return-object v5

    .line 365
    .restart local v1       #height:I
    .restart local v2       #is:Ljava/io/InputStream;
    .restart local v4       #width:I
    :catch_0
    move-exception v0

    .line 366
    .local v0, e:Ljava/lang/OutOfMemoryError;
    :try_start_3
    invoke-static {}, Landroid/app/WallpaperManager;->access$200()Ljava/lang/String;

    move-result-object v5

    const-string v7, "Can\'t decode stream"

    invoke-static {v5, v7, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 369
    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1

    .end local v0           #e:Ljava/lang/OutOfMemoryError;
    .end local v1           #height:I
    .end local v2           #is:Ljava/io/InputStream;
    .end local v4           #width:I
    :cond_0
    :goto_1
    move-object v5, v6

    .line 378
    goto :goto_0

    .line 368
    .restart local v1       #height:I
    .restart local v2       #is:Ljava/io/InputStream;
    .restart local v4       #width:I
    :catchall_0
    move-exception v5

    .line 369
    :try_start_5
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1

    .line 372
    :goto_2
    :try_start_6
    throw v5
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_1

    .line 375
    .end local v1           #height:I
    .end local v2           #is:Ljava/io/InputStream;
    .end local v4           #width:I
    :catch_1
    move-exception v5

    goto :goto_1

    .line 370
    .restart local v1       #height:I
    .restart local v2       #is:Ljava/io/InputStream;
    .restart local v3       #options:Landroid/graphics/BitmapFactory$Options;
    .restart local v4       #width:I
    :catch_2
    move-exception v6

    goto :goto_0

    .end local v3           #options:Landroid/graphics/BitmapFactory$Options;
    .restart local v0       #e:Ljava/lang/OutOfMemoryError;
    :catch_3
    move-exception v5

    goto :goto_1

    .end local v0           #e:Ljava/lang/OutOfMemoryError;
    :catch_4
    move-exception v7

    goto :goto_2
.end method

.method private openDefaultWallpaperRes(Landroid/content/Context;)Ljava/io/InputStream;
    .locals 8
    .parameter "context"

    .prologue
    .line 325
    const/4 v3, 0x0

    .line 326
    .local v3, mWallpaperPlugin:Lcom/mediatek/common/wallpaper/IWallpaperPlugin;
    const/4 v2, 0x0

    .line 329
    .local v2, is:Ljava/io/InputStream;
    :try_start_0
    const-class v4, Lcom/mediatek/common/pluginmanager/IPluginManager;

    const/4 v5, 0x5

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "createPluginObject"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object p1, v5, v6

    const/4 v6, 0x2

    const-class v7, Lcom/mediatek/common/wallpaper/IWallpaperPlugin;

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x3

    const/4 v7, 0x0

    aput-object v7, v5, v6

    const/4 v6, 0x4

    const-string v7, "class"

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Lcom/mediatek/common/MediatekClassFactory;->createInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lcom/mediatek/common/wallpaper/IWallpaperPlugin;

    move-object v3, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 340
    :goto_0
    if-eqz v3, :cond_0

    invoke-interface {v3, p1}, Lcom/mediatek/common/wallpaper/IWallpaperPlugin;->getPluginResources(Landroid/content/Context;)Landroid/content/res/Resources;

    move-result-object v4

    if-nez v4, :cond_1

    .line 341
    :cond_0
    invoke-static {}, Landroid/app/WallpaperManager;->access$200()Ljava/lang/String;

    move-result-object v4

    const-string v5, "get the wallpaper image from the plug-in"

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1080223

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v2

    .line 348
    :goto_1
    return-object v2

    .line 336
    :catch_0
    move-exception v1

    .line 337
    .local v1, e:Ljava/lang/Exception;
    invoke-static {}, Landroid/app/WallpaperManager;->access$200()Ljava/lang/String;

    move-result-object v4

    const-string v5, "load IWallpaperPlugin exception: "

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 345
    .end local v1           #e:Ljava/lang/Exception;
    :cond_1
    invoke-interface {v3, p1}, Lcom/mediatek/common/wallpaper/IWallpaperPlugin;->getPluginResources(Landroid/content/Context;)Landroid/content/res/Resources;

    move-result-object v4

    invoke-interface {v3}, Lcom/mediatek/common/wallpaper/IWallpaperPlugin;->getPluginDefaultImage()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v2

    goto :goto_1
.end method


# virtual methods
.method public forgetLoadedWallpaper()V
    .locals 2

    .prologue
    .line 285
    monitor-enter p0

    .line 286
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Landroid/app/WallpaperManager$Globals;->mWallpaper:Landroid/graphics/Bitmap;

    .line 287
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/WallpaperManager$Globals;->mDefaultWallpaper:Landroid/graphics/Bitmap;

    .line 288
    iget-object v0, p0, Landroid/app/WallpaperManager$Globals;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 289
    monitor-exit p0

    .line 290
    return-void

    .line 289
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onWallpaperChanged()V
    .locals 2

    .prologue
    .line 255
    iget-object v0, p0, Landroid/app/WallpaperManager$Globals;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 256
    return-void
.end method

.method public peekWallpaperBitmap(Landroid/content/Context;Z)Landroid/graphics/Bitmap;
    .locals 3
    .parameter "context"
    .parameter "returnDefault"

    .prologue
    .line 259
    monitor-enter p0

    .line 260
    :try_start_0
    iget-object v1, p0, Landroid/app/WallpaperManager$Globals;->mWallpaper:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    .line 261
    iget-object v1, p0, Landroid/app/WallpaperManager$Globals;->mWallpaper:Landroid/graphics/Bitmap;

    monitor-exit p0

    .line 280
    :goto_0
    return-object v1

    .line 263
    :cond_0
    iget-object v1, p0, Landroid/app/WallpaperManager$Globals;->mDefaultWallpaper:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    .line 264
    iget-object v1, p0, Landroid/app/WallpaperManager$Globals;->mDefaultWallpaper:Landroid/graphics/Bitmap;

    monitor-exit p0

    goto :goto_0

    .line 281
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 266
    :cond_1
    const/4 v1, 0x0

    :try_start_1
    iput-object v1, p0, Landroid/app/WallpaperManager$Globals;->mWallpaper:Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 268
    :try_start_2
    invoke-direct {p0, p1}, Landroid/app/WallpaperManager$Globals;->getCurrentWallpaperLocked(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Landroid/app/WallpaperManager$Globals;->mWallpaper:Landroid/graphics/Bitmap;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_0

    .line 272
    :goto_1
    if-eqz p2, :cond_3

    .line 273
    :try_start_3
    iget-object v1, p0, Landroid/app/WallpaperManager$Globals;->mWallpaper:Landroid/graphics/Bitmap;

    if-nez v1, :cond_2

    .line 274
    invoke-direct {p0, p1}, Landroid/app/WallpaperManager$Globals;->getDefaultWallpaperLocked(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Landroid/app/WallpaperManager$Globals;->mDefaultWallpaper:Landroid/graphics/Bitmap;

    .line 275
    iget-object v1, p0, Landroid/app/WallpaperManager$Globals;->mDefaultWallpaper:Landroid/graphics/Bitmap;

    monitor-exit p0

    goto :goto_0

    .line 269
    :catch_0
    move-exception v0

    .line 270
    .local v0, e:Ljava/lang/OutOfMemoryError;
    invoke-static {}, Landroid/app/WallpaperManager;->access$200()Ljava/lang/String;

    move-result-object v1

    const-string v2, "No memory load current wallpaper"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 277
    .end local v0           #e:Ljava/lang/OutOfMemoryError;
    :cond_2
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/app/WallpaperManager$Globals;->mDefaultWallpaper:Landroid/graphics/Bitmap;

    .line 280
    :cond_3
    iget-object v1, p0, Landroid/app/WallpaperManager$Globals;->mWallpaper:Landroid/graphics/Bitmap;

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method
