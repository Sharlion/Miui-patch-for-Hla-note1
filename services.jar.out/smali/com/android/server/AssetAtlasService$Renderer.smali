.class Lcom/android/server/AssetAtlasService$Renderer;
.super Ljava/lang/Object;
.source "AssetAtlasService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AssetAtlasService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Renderer"
.end annotation


# instance fields
.field private mAtlasBitmap:Landroid/graphics/Bitmap;

.field private final mBitmaps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private mNativeBitmap:I

.field private final mPixelCount:I

.field final synthetic this$0:Lcom/android/server/AssetAtlasService;


# direct methods
.method constructor <init>(Lcom/android/server/AssetAtlasService;Ljava/util/ArrayList;I)V
    .locals 0
    .parameter
    .parameter
    .parameter "pixelCount"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 227
    .local p2, bitmaps:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/graphics/Bitmap;>;"
    iput-object p1, p0, Lcom/android/server/AssetAtlasService$Renderer;->this$0:Lcom/android/server/AssetAtlasService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 228
    iput-object p2, p0, Lcom/android/server/AssetAtlasService$Renderer;->mBitmaps:Ljava/util/ArrayList;

    .line 229
    iput p3, p0, Lcom/android/server/AssetAtlasService$Renderer;->mPixelCount:I

    .line 230
    return-void
.end method

.method private acquireCanvas(II)Landroid/graphics/Canvas;
    .locals 2
    .parameter "width"
    .parameter "height"

    .prologue
    .line 395
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    .line 396
    .local v0, canvas:Landroid/graphics/Canvas;
    #calls: Lcom/android/server/AssetAtlasService;->nAcquireAtlasCanvas(Landroid/graphics/Canvas;II)I
    invoke-static {v0, p1, p2}, Lcom/android/server/AssetAtlasService;->access$1200(Landroid/graphics/Canvas;II)I

    move-result v1

    iput v1, p0, Lcom/android/server/AssetAtlasService$Renderer;->mNativeBitmap:I

    .line 397
    return-object v0
.end method

.method private releaseCanvas(Landroid/graphics/Canvas;)V
    .locals 1
    .parameter "canvas"

    .prologue
    .line 427
    iget v0, p0, Lcom/android/server/AssetAtlasService$Renderer;->mNativeBitmap:I

    #calls: Lcom/android/server/AssetAtlasService;->nReleaseAtlasCanvas(Landroid/graphics/Canvas;I)V
    invoke-static {p1, v0}, Lcom/android/server/AssetAtlasService;->access$1300(Landroid/graphics/Canvas;I)V

    .line 429
    return-void
.end method

.method private renderAtlas(Landroid/view/GraphicBuffer;Landroid/graphics/Atlas;I)Z
    .locals 39
    .parameter "buffer"
    .parameter "atlas"
    .parameter "packCount"

    .prologue
    .line 276
    new-instance v25, Landroid/graphics/Paint;

    invoke-direct/range {v25 .. v25}, Landroid/graphics/Paint;-><init>()V

    .line 277
    .local v25, paint:Landroid/graphics/Paint;
    new-instance v34, Landroid/graphics/PorterDuffXfermode;

    sget-object v35, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-direct/range {v34 .. v35}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    move-object/from16 v0, v25

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 281
    invoke-virtual/range {p1 .. p1}, Landroid/view/GraphicBuffer;->getWidth()I

    move-result v34

    invoke-virtual/range {p1 .. p1}, Landroid/view/GraphicBuffer;->getHeight()I

    move-result v35

    move-object/from16 v0, p0

    move/from16 v1, v34

    move/from16 v2, v35

    invoke-direct {v0, v1, v2}, Lcom/android/server/AssetAtlasService$Renderer;->acquireCanvas(II)Landroid/graphics/Canvas;

    move-result-object v8

    .line 282
    .local v8, canvas:Landroid/graphics/Canvas;
    if-nez v8, :cond_0

    const/16 v28, 0x0

    .line 380
    :goto_0
    return v28

    .line 284
    :cond_0
    new-instance v17, Landroid/graphics/Atlas$Entry;

    invoke-direct/range {v17 .. v17}, Landroid/graphics/Atlas$Entry;-><init>()V

    .line 286
    .local v17, entry:Landroid/graphics/Atlas$Entry;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AssetAtlasService$Renderer;->this$0:Lcom/android/server/AssetAtlasService;

    move-object/from16 v34, v0

    mul-int/lit8 v35, p3, 0x4

    move/from16 v0, v35

    new-array v0, v0, [I

    move-object/from16 v35, v0

    #setter for: Lcom/android/server/AssetAtlasService;->mAtlasMap:[I
    invoke-static/range {v34 .. v35}, Lcom/android/server/AssetAtlasService;->access$402(Lcom/android/server/AssetAtlasService;[I)[I

    .line 287
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AssetAtlasService$Renderer;->this$0:Lcom/android/server/AssetAtlasService;

    move-object/from16 v34, v0

    #getter for: Lcom/android/server/AssetAtlasService;->mAtlasMap:[I
    invoke-static/range {v34 .. v34}, Lcom/android/server/AssetAtlasService;->access$400(Lcom/android/server/AssetAtlasService;)[I

    move-result-object v4

    .line 288
    .local v4, atlasMap:[I
    const/16 v22, 0x0

    .line 290
    .local v22, mapIndex:I
    const/16 v28, 0x0

    .line 292
    .local v28, result:Z
    :try_start_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v30

    .line 293
    .local v30, startRender:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AssetAtlasService$Renderer;->mBitmaps:Ljava/util/ArrayList;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v9

    .line 295
    .local v9, count:I
    const/16 v19, 0x0

    .local v19, i:I
    move/from16 v23, v22

    .end local v22           #mapIndex:I
    .local v23, mapIndex:I
    :goto_1
    move/from16 v0, v19

    if-ge v0, v9, :cond_1

    .line 296
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AssetAtlasService$Renderer;->mBitmaps:Ljava/util/ArrayList;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Bitmap;

    .line 297
    .local v5, bitmap:Landroid/graphics/Bitmap;
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v34

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v35

    move-object/from16 v0, p2

    move/from16 v1, v34

    move/from16 v2, v35

    move-object/from16 v3, v17

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Atlas;->pack(IILandroid/graphics/Atlas$Entry;)Landroid/graphics/Atlas$Entry;

    move-result-object v34

    if-eqz v34, :cond_5

    .line 301
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AssetAtlasService$Renderer;->this$0:Lcom/android/server/AssetAtlasService;

    move-object/from16 v34, v0

    #getter for: Lcom/android/server/AssetAtlasService;->mAtlasMap:[I
    invoke-static/range {v34 .. v34}, Lcom/android/server/AssetAtlasService;->access$400(Lcom/android/server/AssetAtlasService;)[I

    move-result-object v34

    move-object/from16 v0, v34

    array-length v0, v0

    move/from16 v34, v0

    move/from16 v0, v23

    move/from16 v1, v34

    if-lt v0, v1, :cond_3

    .line 302
    #calls: Lcom/android/server/AssetAtlasService;->deleteDataFile()V
    invoke-static {}, Lcom/android/server/AssetAtlasService;->access$500()V

    .line 322
    .end local v5           #bitmap:Landroid/graphics/Bitmap;
    :cond_1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v13

    .line 323
    .local v13, endRender:J
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/AssetAtlasService$Renderer;->mNativeBitmap:I

    move/from16 v34, v0

    if-eqz v34, :cond_2

    .line 324
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/AssetAtlasService$Renderer;->mNativeBitmap:I

    move/from16 v34, v0

    move-object/from16 v0, p1

    move/from16 v1, v34

    #calls: Lcom/android/server/AssetAtlasService;->nUploadAtlas(Landroid/view/GraphicBuffer;I)Z
    invoke-static {v0, v1}, Lcom/android/server/AssetAtlasService;->access$600(Landroid/view/GraphicBuffer;I)Z

    move-result v28

    .line 326
    :cond_2
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v15

    .line 329
    .local v15, endUpload:J
    if-eqz v28, :cond_9

    .line 330
    const/16 v26, 0x0

    .line 331
    .local v26, programResult:Z
    new-instance v18, Ljava/io/FileDescriptor;

    invoke-direct/range {v18 .. v18}, Ljava/io/FileDescriptor;-><init>()V

    .line 332
    .local v18, fd:Ljava/io/FileDescriptor;
    const/16 v34, 0x1

    move/from16 v0, v34

    new-array v0, v0, [I

    move-object/from16 v24, v0

    .line 333
    .local v24, mapLength:[I
    const/16 v34, 0x1

    move/from16 v0, v34

    new-array v6, v0, [I

    .line 338
    .local v6, bufferLength:[I
    const/16 v34, 0xc8

    move/from16 v0, v34

    new-array v0, v0, [J

    move-object/from16 v21, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 341
    .local v21, map:[J
    :try_start_2
    move-object/from16 v0, v18

    move-object/from16 v1, v21

    move-object/from16 v2, v24

    #calls: Lcom/android/server/AssetAtlasService;->nBuildProgramBinaries(Ljava/io/FileDescriptor;[I[J[I)Z
    invoke-static {v0, v6, v1, v2}, Lcom/android/server/AssetAtlasService;->access$700(Ljava/io/FileDescriptor;[I[J[I)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-result v26

    .line 346
    :goto_2
    if-eqz v26, :cond_9

    :try_start_3
    invoke-virtual/range {v18 .. v18}, Ljava/io/FileDescriptor;->valid()Z

    move-result v34

    if-eqz v34, :cond_9

    .line 347
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AssetAtlasService$Renderer;->this$0:Lcom/android/server/AssetAtlasService;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    move-object/from16 v1, v18

    #setter for: Lcom/android/server/AssetAtlasService;->mFD:Ljava/io/FileDescriptor;
    invoke-static {v0, v1}, Lcom/android/server/AssetAtlasService;->access$802(Lcom/android/server/AssetAtlasService;Ljava/io/FileDescriptor;)Ljava/io/FileDescriptor;

    .line 348
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AssetAtlasService$Renderer;->this$0:Lcom/android/server/AssetAtlasService;

    move-object/from16 v34, v0

    const/16 v35, 0x0

    aget v35, v24, v35

    move/from16 v0, v35

    new-array v0, v0, [J

    move-object/from16 v35, v0

    #setter for: Lcom/android/server/AssetAtlasService;->mProgramMap:[J
    invoke-static/range {v34 .. v35}, Lcom/android/server/AssetAtlasService;->access$902(Lcom/android/server/AssetAtlasService;[J)[J

    .line 349
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AssetAtlasService$Renderer;->this$0:Lcom/android/server/AssetAtlasService;

    move-object/from16 v34, v0

    const/16 v35, 0x0

    aget v35, v6, v35

    #setter for: Lcom/android/server/AssetAtlasService;->mBinaryLength:I
    invoke-static/range {v34 .. v35}, Lcom/android/server/AssetAtlasService;->access$1002(Lcom/android/server/AssetAtlasService;I)I

    .line 351
    const/16 v19, 0x0

    move/from16 v20, v19

    .end local v19           #i:I
    .local v20, i:I
    :goto_3
    const/16 v34, 0x0

    aget v34, v24, v34

    move/from16 v0, v20

    move/from16 v1, v34

    if-ge v0, v1, :cond_8

    .line 352
    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "ProgramEntry#"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, "%2d"

    const/16 v36, 0x1

    move/from16 v0, v36

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v36, v0

    const/16 v37, 0x0

    div-int/lit8 v38, v20, 0x4

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    aput-object v38, v36, v37

    invoke-static/range {v35 .. v36}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    .line 353
    .local v32, str:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AssetAtlasService$Renderer;->this$0:Lcom/android/server/AssetAtlasService;

    move-object/from16 v34, v0

    #getter for: Lcom/android/server/AssetAtlasService;->mProgramMap:[J
    invoke-static/range {v34 .. v34}, Lcom/android/server/AssetAtlasService;->access$900(Lcom/android/server/AssetAtlasService;)[J

    move-result-object v34

    aget-wide v35, v21, v20

    aput-wide v35, v34, v20

    .line 354
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AssetAtlasService$Renderer;->this$0:Lcom/android/server/AssetAtlasService;

    move-object/from16 v34, v0

    #getter for: Lcom/android/server/AssetAtlasService;->mProgramMap:[J
    invoke-static/range {v34 .. v34}, Lcom/android/server/AssetAtlasService;->access$900(Lcom/android/server/AssetAtlasService;)[J

    move-result-object v34

    add-int/lit8 v19, v20, 0x1

    .end local v20           #i:I
    .restart local v19       #i:I
    aget-wide v34, v34, v20

    invoke-static/range {v34 .. v35}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v29

    .line 355
    .local v29, s:Ljava/lang/String;
    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v34

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, " 0x"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->length()I

    move-result v34

    rsub-int/lit8 v34, v34, 0x10

    if-lez v34, :cond_7

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "%0"

    move-object/from16 v0, v34

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->length()I

    move-result v36

    rsub-int/lit8 v36, v36, 0x10

    move-object/from16 v0, v34

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v36, "d"

    move-object/from16 v0, v34

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    const/16 v36, 0x1

    move/from16 v0, v36

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v36, v0

    const/16 v37, 0x0

    const/16 v38, 0x0

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    aput-object v38, v36, v37

    move-object/from16 v0, v34

    move-object/from16 v1, v36

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v34

    :goto_4
    move-object/from16 v0, v35

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    .line 356
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AssetAtlasService$Renderer;->this$0:Lcom/android/server/AssetAtlasService;

    move-object/from16 v34, v0

    #getter for: Lcom/android/server/AssetAtlasService;->mProgramMap:[J
    invoke-static/range {v34 .. v34}, Lcom/android/server/AssetAtlasService;->access$900(Lcom/android/server/AssetAtlasService;)[J

    move-result-object v34

    aget-wide v35, v21, v19

    aput-wide v35, v34, v19

    .line 357
    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v34

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, ", "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AssetAtlasService$Renderer;->this$0:Lcom/android/server/AssetAtlasService;

    move-object/from16 v35, v0

    #getter for: Lcom/android/server/AssetAtlasService;->mProgramMap:[J
    invoke-static/range {v35 .. v35}, Lcom/android/server/AssetAtlasService;->access$900(Lcom/android/server/AssetAtlasService;)[J

    move-result-object v35

    add-int/lit8 v20, v19, 0x1

    .end local v19           #i:I
    .restart local v20       #i:I
    aget-wide v35, v35, v19

    invoke-virtual/range {v34 .. v36}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    .line 358
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AssetAtlasService$Renderer;->this$0:Lcom/android/server/AssetAtlasService;

    move-object/from16 v34, v0

    #getter for: Lcom/android/server/AssetAtlasService;->mProgramMap:[J
    invoke-static/range {v34 .. v34}, Lcom/android/server/AssetAtlasService;->access$900(Lcom/android/server/AssetAtlasService;)[J

    move-result-object v34

    aget-wide v35, v21, v20

    aput-wide v35, v34, v20

    .line 359
    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v34

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, ", "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AssetAtlasService$Renderer;->this$0:Lcom/android/server/AssetAtlasService;

    move-object/from16 v35, v0

    #getter for: Lcom/android/server/AssetAtlasService;->mProgramMap:[J
    invoke-static/range {v35 .. v35}, Lcom/android/server/AssetAtlasService;->access$900(Lcom/android/server/AssetAtlasService;)[J

    move-result-object v35

    add-int/lit8 v19, v20, 0x1

    .end local v20           #i:I
    .restart local v19       #i:I
    aget-wide v35, v35, v20

    invoke-virtual/range {v34 .. v36}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    .line 360
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AssetAtlasService$Renderer;->this$0:Lcom/android/server/AssetAtlasService;

    move-object/from16 v34, v0

    #getter for: Lcom/android/server/AssetAtlasService;->mProgramMap:[J
    invoke-static/range {v34 .. v34}, Lcom/android/server/AssetAtlasService;->access$900(Lcom/android/server/AssetAtlasService;)[J

    move-result-object v34

    aget-wide v35, v21, v19

    aput-wide v35, v34, v19

    .line 361
    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v34

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, ", "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AssetAtlasService$Renderer;->this$0:Lcom/android/server/AssetAtlasService;

    move-object/from16 v35, v0

    #getter for: Lcom/android/server/AssetAtlasService;->mProgramMap:[J
    invoke-static/range {v35 .. v35}, Lcom/android/server/AssetAtlasService;->access$900(Lcom/android/server/AssetAtlasService;)[J

    move-result-object v35

    add-int/lit8 v20, v19, 0x1

    .end local v19           #i:I
    .restart local v20       #i:I
    aget-wide v35, v35, v19

    invoke-virtual/range {v34 .. v36}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    .line 362
    const-string v34, "AssetAtlasService"

    move-object/from16 v0, v34

    move-object/from16 v1, v32

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_3

    .line 377
    .end local v6           #bufferLength:[I
    .end local v13           #endRender:J
    .end local v15           #endUpload:J
    .end local v18           #fd:Ljava/io/FileDescriptor;
    .end local v20           #i:I
    .end local v21           #map:[J
    .end local v24           #mapLength:[I
    .end local v26           #programResult:Z
    .end local v29           #s:Ljava/lang/String;
    .end local v32           #str:Ljava/lang/String;
    :catchall_0
    move-exception v34

    move/from16 v22, v23

    .end local v9           #count:I
    .end local v23           #mapIndex:I
    .end local v30           #startRender:J
    .restart local v22       #mapIndex:I
    :goto_5
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/android/server/AssetAtlasService$Renderer;->releaseCanvas(Landroid/graphics/Canvas;)V

    throw v34

    .line 306
    .end local v22           #mapIndex:I
    .restart local v5       #bitmap:Landroid/graphics/Bitmap;
    .restart local v9       #count:I
    .restart local v19       #i:I
    .restart local v23       #mapIndex:I
    .restart local v30       #startRender:J
    :cond_3
    :try_start_4
    invoke-virtual {v8}, Landroid/graphics/Canvas;->save()I

    .line 307
    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Atlas$Entry;->x:I

    move/from16 v34, v0

    move/from16 v0, v34

    int-to-float v0, v0

    move/from16 v34, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Atlas$Entry;->y:I

    move/from16 v35, v0

    move/from16 v0, v35

    int-to-float v0, v0

    move/from16 v35, v0

    move/from16 v0, v34

    move/from16 v1, v35

    invoke-virtual {v8, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 308
    move-object/from16 v0, v17

    iget-boolean v0, v0, Landroid/graphics/Atlas$Entry;->rotated:Z

    move/from16 v34, v0

    if-eqz v34, :cond_4

    .line 309
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v34

    move/from16 v0, v34

    int-to-float v0, v0

    move/from16 v34, v0

    const/16 v35, 0x0

    move/from16 v0, v34

    move/from16 v1, v35

    invoke-virtual {v8, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 310
    const/high16 v34, 0x42b4

    move/from16 v0, v34

    invoke-virtual {v8, v0}, Landroid/graphics/Canvas;->rotate(F)V

    .line 312
    :cond_4
    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    move/from16 v0, v34

    move/from16 v1, v35

    move-object/from16 v2, v36

    invoke-virtual {v8, v5, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 313
    invoke-virtual {v8}, Landroid/graphics/Canvas;->restore()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 315
    add-int/lit8 v22, v23, 0x1

    .end local v23           #mapIndex:I
    .restart local v22       #mapIndex:I
    :try_start_5
    iget v0, v5, Landroid/graphics/Bitmap;->mNativeBitmap:I

    move/from16 v34, v0

    aput v34, v4, v23
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 316
    add-int/lit8 v23, v22, 0x1

    .end local v22           #mapIndex:I
    .restart local v23       #mapIndex:I
    :try_start_6
    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Atlas$Entry;->x:I

    move/from16 v34, v0

    aput v34, v4, v22
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 317
    add-int/lit8 v22, v23, 0x1

    .end local v23           #mapIndex:I
    .restart local v22       #mapIndex:I
    :try_start_7
    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Atlas$Entry;->y:I

    move/from16 v34, v0

    aput v34, v4, v23
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 318
    add-int/lit8 v23, v22, 0x1

    .end local v22           #mapIndex:I
    .restart local v23       #mapIndex:I
    :try_start_8
    move-object/from16 v0, v17

    iget-boolean v0, v0, Landroid/graphics/Atlas$Entry;->rotated:Z

    move/from16 v34, v0

    if-eqz v34, :cond_6

    const/16 v34, 0x1

    :goto_6
    aput v34, v4, v22

    :cond_5
    move/from16 v22, v23

    .line 295
    .end local v23           #mapIndex:I
    .restart local v22       #mapIndex:I
    add-int/lit8 v19, v19, 0x1

    move/from16 v23, v22

    .end local v22           #mapIndex:I
    .restart local v23       #mapIndex:I
    goto/16 :goto_1

    .line 318
    :cond_6
    const/16 v34, 0x0

    goto :goto_6

    .line 342
    .end local v5           #bitmap:Landroid/graphics/Bitmap;
    .restart local v6       #bufferLength:[I
    .restart local v13       #endRender:J
    .restart local v15       #endUpload:J
    .restart local v18       #fd:Ljava/io/FileDescriptor;
    .restart local v21       #map:[J
    .restart local v24       #mapLength:[I
    .restart local v26       #programResult:Z
    :catch_0
    move-exception v10

    .line 343
    .local v10, e:Ljava/io/IOException;
    const-string v34, "AssetAtlasService"

    const-string v35, "Assetatlas build program binaries fail"

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 355
    .end local v10           #e:Ljava/io/IOException;
    .restart local v29       #s:Ljava/lang/String;
    .restart local v32       #str:Ljava/lang/String;
    :cond_7
    const-string v34, ""

    goto/16 :goto_4

    .line 364
    .end local v19           #i:I
    .end local v29           #s:Ljava/lang/String;
    .end local v32           #str:Ljava/lang/String;
    .restart local v20       #i:I
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AssetAtlasService$Renderer;->this$0:Lcom/android/server/AssetAtlasService;

    move-object/from16 v34, v0

    #getter for: Lcom/android/server/AssetAtlasService;->mProgramBinariesReady:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static/range {v34 .. v34}, Lcom/android/server/AssetAtlasService;->access$1100(Lcom/android/server/AssetAtlasService;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v34

    const/16 v35, 0x1

    invoke-virtual/range {v34 .. v35}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 367
    .end local v6           #bufferLength:[I
    .end local v18           #fd:Ljava/io/FileDescriptor;
    .end local v20           #i:I
    .end local v21           #map:[J
    .end local v24           #mapLength:[I
    .end local v26           #programResult:Z
    :cond_9
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v11

    .line 370
    .local v11, endBuild:J
    sub-long v34, v13, v30

    move-wide/from16 v0, v34

    long-to-float v0, v0

    move/from16 v34, v0

    const/high16 v35, 0x447a

    div-float v34, v34, v35

    const/high16 v35, 0x447a

    div-float v27, v34, v35

    .line 371
    .local v27, renderDuration:F
    sub-long v34, v15, v13

    move-wide/from16 v0, v34

    long-to-float v0, v0

    move/from16 v34, v0

    const/high16 v35, 0x447a

    div-float v34, v34, v35

    const/high16 v35, 0x447a

    div-float v33, v34, v35

    .line 372
    .local v33, uploadDuration:F
    sub-long v34, v11, v15

    move-wide/from16 v0, v34

    long-to-float v0, v0

    move/from16 v34, v0

    const/high16 v35, 0x447a

    div-float v34, v34, v35

    const/high16 v35, 0x447a

    div-float v7, v34, v35

    .line 373
    .local v7, buildDuration:F
    const-string v34, "AssetAtlasService"

    const-string v35, "Rendered atlas in %.2fms (%.2f+%.2f+%.2fms)"

    const/16 v36, 0x4

    move/from16 v0, v36

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v36, v0

    const/16 v37, 0x0

    add-float v38, v27, v33

    add-float v38, v38, v7

    invoke-static/range {v38 .. v38}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v38

    aput-object v38, v36, v37

    const/16 v37, 0x1

    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v38

    aput-object v38, v36, v37

    const/16 v37, 0x2

    invoke-static/range {v33 .. v33}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v38

    aput-object v38, v36, v37

    const/16 v37, 0x3

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v38

    aput-object v38, v36, v37

    invoke-static/range {v35 .. v36}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 377
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/android/server/AssetAtlasService$Renderer;->releaseCanvas(Landroid/graphics/Canvas;)V

    goto/16 :goto_0

    .end local v7           #buildDuration:F
    .end local v9           #count:I
    .end local v11           #endBuild:J
    .end local v13           #endRender:J
    .end local v15           #endUpload:J
    .end local v23           #mapIndex:I
    .end local v27           #renderDuration:F
    .end local v30           #startRender:J
    .end local v33           #uploadDuration:F
    .restart local v22       #mapIndex:I
    :catchall_1
    move-exception v34

    goto/16 :goto_5
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 245
    iget-object v2, p0, Lcom/android/server/AssetAtlasService$Renderer;->this$0:Lcom/android/server/AssetAtlasService;

    iget-object v3, p0, Lcom/android/server/AssetAtlasService$Renderer;->mBitmaps:Ljava/util/ArrayList;

    iget v4, p0, Lcom/android/server/AssetAtlasService$Renderer;->mPixelCount:I

    iget-object v5, p0, Lcom/android/server/AssetAtlasService$Renderer;->this$0:Lcom/android/server/AssetAtlasService;

    #getter for: Lcom/android/server/AssetAtlasService;->mVersionName:Ljava/lang/String;
    invoke-static {v5}, Lcom/android/server/AssetAtlasService;->access$000(Lcom/android/server/AssetAtlasService;)Ljava/lang/String;

    move-result-object v5

    #calls: Lcom/android/server/AssetAtlasService;->chooseConfiguration(Ljava/util/ArrayList;ILjava/lang/String;)Lcom/android/server/AssetAtlasService$Configuration;
    invoke-static {v2, v3, v4, v5}, Lcom/android/server/AssetAtlasService;->access$100(Lcom/android/server/AssetAtlasService;Ljava/util/ArrayList;ILjava/lang/String;)Lcom/android/server/AssetAtlasService$Configuration;

    move-result-object v1

    .line 246
    .local v1, config:Lcom/android/server/AssetAtlasService$Configuration;
    const-string v2, "AssetAtlasService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Loaded configuration: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    if-eqz v1, :cond_0

    .line 249
    iget-object v2, p0, Lcom/android/server/AssetAtlasService$Renderer;->this$0:Lcom/android/server/AssetAtlasService;

    iget v3, v1, Lcom/android/server/AssetAtlasService$Configuration;->width:I

    iget v4, v1, Lcom/android/server/AssetAtlasService$Configuration;->height:I

    const/16 v5, 0x100

    invoke-static {v3, v4, v6, v5}, Landroid/view/GraphicBuffer;->create(IIII)Landroid/view/GraphicBuffer;

    move-result-object v3

    #setter for: Lcom/android/server/AssetAtlasService;->mBuffer:Landroid/view/GraphicBuffer;
    invoke-static {v2, v3}, Lcom/android/server/AssetAtlasService;->access$202(Lcom/android/server/AssetAtlasService;Landroid/view/GraphicBuffer;)Landroid/view/GraphicBuffer;

    .line 252
    iget-object v2, p0, Lcom/android/server/AssetAtlasService$Renderer;->this$0:Lcom/android/server/AssetAtlasService;

    #getter for: Lcom/android/server/AssetAtlasService;->mBuffer:Landroid/view/GraphicBuffer;
    invoke-static {v2}, Lcom/android/server/AssetAtlasService;->access$200(Lcom/android/server/AssetAtlasService;)Landroid/view/GraphicBuffer;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 253
    new-instance v0, Landroid/graphics/Atlas;

    iget-object v2, v1, Lcom/android/server/AssetAtlasService$Configuration;->type:Landroid/graphics/Atlas$Type;

    iget v3, v1, Lcom/android/server/AssetAtlasService$Configuration;->width:I

    iget v4, v1, Lcom/android/server/AssetAtlasService$Configuration;->height:I

    iget v5, v1, Lcom/android/server/AssetAtlasService$Configuration;->flags:I

    invoke-direct {v0, v2, v3, v4, v5}, Landroid/graphics/Atlas;-><init>(Landroid/graphics/Atlas$Type;III)V

    .line 254
    .local v0, atlas:Landroid/graphics/Atlas;
    iget-object v2, p0, Lcom/android/server/AssetAtlasService$Renderer;->this$0:Lcom/android/server/AssetAtlasService;

    #getter for: Lcom/android/server/AssetAtlasService;->mBuffer:Landroid/view/GraphicBuffer;
    invoke-static {v2}, Lcom/android/server/AssetAtlasService;->access$200(Lcom/android/server/AssetAtlasService;)Landroid/view/GraphicBuffer;

    move-result-object v2

    iget v3, v1, Lcom/android/server/AssetAtlasService$Configuration;->count:I

    invoke-direct {p0, v2, v0, v3}, Lcom/android/server/AssetAtlasService$Renderer;->renderAtlas(Landroid/view/GraphicBuffer;Landroid/graphics/Atlas;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 255
    iget-object v2, p0, Lcom/android/server/AssetAtlasService$Renderer;->this$0:Lcom/android/server/AssetAtlasService;

    #getter for: Lcom/android/server/AssetAtlasService;->mAtlasReady:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v2}, Lcom/android/server/AssetAtlasService;->access$300(Lcom/android/server/AssetAtlasService;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 259
    .end local v0           #atlas:Landroid/graphics/Atlas;
    :cond_0
    return-void
.end method
