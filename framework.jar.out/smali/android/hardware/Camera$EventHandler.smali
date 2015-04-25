.class Landroid/hardware/Camera$EventHandler;
.super Landroid/os/Handler;
.source "Camera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/Camera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EventHandler"
.end annotation


# instance fields
.field private mCamera:Landroid/hardware/Camera;

.field final synthetic this$0:Landroid/hardware/Camera;


# direct methods
.method public constructor <init>(Landroid/hardware/Camera;Landroid/hardware/Camera;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "c"
    .parameter "looper"

    .prologue
    .line 1019
    iput-object p1, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    .line 1020
    invoke-direct {p0, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1021
    iput-object p2, p0, Landroid/hardware/Camera$EventHandler;->mCamera:Landroid/hardware/Camera;

    .line 1022
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 26
    .parameter "msg"

    .prologue
    .line 1028
    const-string v22, "CameraFramework"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "handleMessage: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1030
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v22, v0

    sparse-switch v22, :sswitch_data_0

    .line 1355
    const-string v22, "CameraFramework"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Unknown message type "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1356
    :cond_0
    :goto_0
    return-void

    .line 1032
    :sswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v22, v0

    #getter for: Landroid/hardware/Camera;->mShutterCallback:Landroid/hardware/Camera$ShutterCallback;
    invoke-static/range {v22 .. v22}, Landroid/hardware/Camera;->access$000(Landroid/hardware/Camera;)Landroid/hardware/Camera$ShutterCallback;

    move-result-object v22

    if-eqz v22, :cond_0

    .line 1033
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v22, v0

    #getter for: Landroid/hardware/Camera;->mShutterCallback:Landroid/hardware/Camera$ShutterCallback;
    invoke-static/range {v22 .. v22}, Landroid/hardware/Camera;->access$000(Landroid/hardware/Camera;)Landroid/hardware/Camera$ShutterCallback;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Landroid/hardware/Camera$ShutterCallback;->onShutter()V

    goto :goto_0

    .line 1038
    :sswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v22, v0

    #getter for: Landroid/hardware/Camera;->mRawImageCallback:Landroid/hardware/Camera$PictureCallback;
    invoke-static/range {v22 .. v22}, Landroid/hardware/Camera;->access$100(Landroid/hardware/Camera;)Landroid/hardware/Camera$PictureCallback;

    move-result-object v22

    if-eqz v22, :cond_0

    .line 1039
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v22, v0

    #getter for: Landroid/hardware/Camera;->mRawImageCallback:Landroid/hardware/Camera$PictureCallback;
    invoke-static/range {v22 .. v22}, Landroid/hardware/Camera;->access$100(Landroid/hardware/Camera;)Landroid/hardware/Camera$PictureCallback;

    move-result-object v23

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v22, v0

    check-cast v22, [B

    check-cast v22, [B

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->mCamera:Landroid/hardware/Camera;

    move-object/from16 v24, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    move-object/from16 v2, v24

    invoke-interface {v0, v1, v2}, Landroid/hardware/Camera$PictureCallback;->onPictureTaken([BLandroid/hardware/Camera;)V

    goto :goto_0

    .line 1044
    :sswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v22, v0

    #getter for: Landroid/hardware/Camera;->mJpegCallback:Landroid/hardware/Camera$PictureCallback;
    invoke-static/range {v22 .. v22}, Landroid/hardware/Camera;->access$200(Landroid/hardware/Camera;)Landroid/hardware/Camera$PictureCallback;

    move-result-object v22

    if-eqz v22, :cond_0

    .line 1045
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v22, v0

    #getter for: Landroid/hardware/Camera;->mJpegCallback:Landroid/hardware/Camera$PictureCallback;
    invoke-static/range {v22 .. v22}, Landroid/hardware/Camera;->access$200(Landroid/hardware/Camera;)Landroid/hardware/Camera$PictureCallback;

    move-result-object v23

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v22, v0

    check-cast v22, [B

    check-cast v22, [B

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->mCamera:Landroid/hardware/Camera;

    move-object/from16 v24, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    move-object/from16 v2, v24

    invoke-interface {v0, v1, v2}, Landroid/hardware/Camera$PictureCallback;->onPictureTaken([BLandroid/hardware/Camera;)V

    goto :goto_0

    .line 1050
    :sswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v22, v0

    #getter for: Landroid/hardware/Camera;->mPreviewCallback:Landroid/hardware/Camera$PreviewCallback;
    invoke-static/range {v22 .. v22}, Landroid/hardware/Camera;->access$300(Landroid/hardware/Camera;)Landroid/hardware/Camera$PreviewCallback;

    move-result-object v16

    .line 1051
    .local v16, pCb:Landroid/hardware/Camera$PreviewCallback;
    if-eqz v16, :cond_0

    .line 1052
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v22, v0

    #getter for: Landroid/hardware/Camera;->mOneShot:Z
    invoke-static/range {v22 .. v22}, Landroid/hardware/Camera;->access$400(Landroid/hardware/Camera;)Z

    move-result v22

    if-eqz v22, :cond_2

    .line 1056
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    #setter for: Landroid/hardware/Camera;->mPreviewCallback:Landroid/hardware/Camera$PreviewCallback;
    invoke-static/range {v22 .. v23}, Landroid/hardware/Camera;->access$302(Landroid/hardware/Camera;Landroid/hardware/Camera$PreviewCallback;)Landroid/hardware/Camera$PreviewCallback;

    .line 1063
    :cond_1
    :goto_1
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v22, v0

    check-cast v22, [B

    check-cast v22, [B

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->mCamera:Landroid/hardware/Camera;

    move-object/from16 v23, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-interface {v0, v1, v2}, Landroid/hardware/Camera$PreviewCallback;->onPreviewFrame([BLandroid/hardware/Camera;)V

    goto/16 :goto_0

    .line 1057
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v22, v0

    #getter for: Landroid/hardware/Camera;->mWithBuffer:Z
    invoke-static/range {v22 .. v22}, Landroid/hardware/Camera;->access$500(Landroid/hardware/Camera;)Z

    move-result v22

    if-nez v22, :cond_1

    .line 1061
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    const/16 v24, 0x0

    #calls: Landroid/hardware/Camera;->setHasPreviewCallback(ZZ)V
    invoke-static/range {v22 .. v24}, Landroid/hardware/Camera;->access$600(Landroid/hardware/Camera;ZZ)V

    goto :goto_1

    .line 1068
    .end local v16           #pCb:Landroid/hardware/Camera$PreviewCallback;
    :sswitch_4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v22, v0

    #getter for: Landroid/hardware/Camera;->mPostviewCallback:Landroid/hardware/Camera$PictureCallback;
    invoke-static/range {v22 .. v22}, Landroid/hardware/Camera;->access$700(Landroid/hardware/Camera;)Landroid/hardware/Camera$PictureCallback;

    move-result-object v22

    if-eqz v22, :cond_0

    .line 1069
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v22, v0

    #getter for: Landroid/hardware/Camera;->mPostviewCallback:Landroid/hardware/Camera$PictureCallback;
    invoke-static/range {v22 .. v22}, Landroid/hardware/Camera;->access$700(Landroid/hardware/Camera;)Landroid/hardware/Camera$PictureCallback;

    move-result-object v23

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v22, v0

    check-cast v22, [B

    check-cast v22, [B

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->mCamera:Landroid/hardware/Camera;

    move-object/from16 v24, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    move-object/from16 v2, v24

    invoke-interface {v0, v1, v2}, Landroid/hardware/Camera$PictureCallback;->onPictureTaken([BLandroid/hardware/Camera;)V

    goto/16 :goto_0

    .line 1074
    :sswitch_5
    const/4 v7, 0x0

    .line 1075
    .local v7, cb:Landroid/hardware/Camera$AutoFocusCallback;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v22, v0

    #getter for: Landroid/hardware/Camera;->mAutoFocusCallbackLock:Ljava/lang/Object;
    invoke-static/range {v22 .. v22}, Landroid/hardware/Camera;->access$800(Landroid/hardware/Camera;)Ljava/lang/Object;

    move-result-object v23

    monitor-enter v23

    .line 1076
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v22, v0

    #getter for: Landroid/hardware/Camera;->mAutoFocusCallback:Landroid/hardware/Camera$AutoFocusCallback;
    invoke-static/range {v22 .. v22}, Landroid/hardware/Camera;->access$900(Landroid/hardware/Camera;)Landroid/hardware/Camera$AutoFocusCallback;

    move-result-object v7

    .line 1077
    monitor-exit v23
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1078
    if-eqz v7, :cond_0

    .line 1079
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v22, v0

    if-nez v22, :cond_3

    const/16 v17, 0x0

    .line 1080
    .local v17, success:Z
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->mCamera:Landroid/hardware/Camera;

    move-object/from16 v22, v0

    move/from16 v0, v17

    move-object/from16 v1, v22

    invoke-interface {v7, v0, v1}, Landroid/hardware/Camera$AutoFocusCallback;->onAutoFocus(ZLandroid/hardware/Camera;)V

    goto/16 :goto_0

    .line 1077
    .end local v17           #success:Z
    :catchall_0
    move-exception v22

    :try_start_1
    monitor-exit v23
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v22

    .line 1079
    :cond_3
    const/16 v17, 0x1

    goto :goto_2

    .line 1085
    .end local v7           #cb:Landroid/hardware/Camera$AutoFocusCallback;
    :sswitch_6
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v22, v0

    #getter for: Landroid/hardware/Camera;->mZoomListener:Landroid/hardware/Camera$OnZoomChangeListener;
    invoke-static/range {v22 .. v22}, Landroid/hardware/Camera;->access$1000(Landroid/hardware/Camera;)Landroid/hardware/Camera$OnZoomChangeListener;

    move-result-object v22

    if-eqz v22, :cond_0

    .line 1086
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v22, v0

    #getter for: Landroid/hardware/Camera;->mZoomListener:Landroid/hardware/Camera$OnZoomChangeListener;
    invoke-static/range {v22 .. v22}, Landroid/hardware/Camera;->access$1000(Landroid/hardware/Camera;)Landroid/hardware/Camera$OnZoomChangeListener;

    move-result-object v23

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v24, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v22, v0

    if-eqz v22, :cond_4

    const/16 v22, 0x1

    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->mCamera:Landroid/hardware/Camera;

    move-object/from16 v25, v0

    move-object/from16 v0, v23

    move/from16 v1, v24

    move/from16 v2, v22

    move-object/from16 v3, v25

    invoke-interface {v0, v1, v2, v3}, Landroid/hardware/Camera$OnZoomChangeListener;->onZoomChange(IZLandroid/hardware/Camera;)V

    goto/16 :goto_0

    :cond_4
    const/16 v22, 0x0

    goto :goto_3

    .line 1091
    :sswitch_7
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v22, v0

    #getter for: Landroid/hardware/Camera;->mFaceListener:Landroid/hardware/Camera$FaceDetectionListener;
    invoke-static/range {v22 .. v22}, Landroid/hardware/Camera;->access$1100(Landroid/hardware/Camera;)Landroid/hardware/Camera$FaceDetectionListener;

    move-result-object v22

    if-eqz v22, :cond_0

    .line 1092
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v22, v0

    #getter for: Landroid/hardware/Camera;->mFaceListener:Landroid/hardware/Camera$FaceDetectionListener;
    invoke-static/range {v22 .. v22}, Landroid/hardware/Camera;->access$1100(Landroid/hardware/Camera;)Landroid/hardware/Camera$FaceDetectionListener;

    move-result-object v23

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v22, v0

    check-cast v22, [Landroid/hardware/Camera$Face;

    check-cast v22, [Landroid/hardware/Camera$Face;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->mCamera:Landroid/hardware/Camera;

    move-object/from16 v24, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    move-object/from16 v2, v24

    invoke-interface {v0, v1, v2}, Landroid/hardware/Camera$FaceDetectionListener;->onFaceDetection([Landroid/hardware/Camera$Face;Landroid/hardware/Camera;)V

    goto/16 :goto_0

    .line 1097
    :sswitch_8
    const-string v22, "CameraFramework"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Error "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1098
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v22, v0

    #getter for: Landroid/hardware/Camera;->mErrorCallback:Landroid/hardware/Camera$ErrorCallback;
    invoke-static/range {v22 .. v22}, Landroid/hardware/Camera;->access$1200(Landroid/hardware/Camera;)Landroid/hardware/Camera$ErrorCallback;

    move-result-object v22

    if-eqz v22, :cond_0

    .line 1099
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v22, v0

    #getter for: Landroid/hardware/Camera;->mErrorCallback:Landroid/hardware/Camera$ErrorCallback;
    invoke-static/range {v22 .. v22}, Landroid/hardware/Camera;->access$1200(Landroid/hardware/Camera;)Landroid/hardware/Camera$ErrorCallback;

    move-result-object v22

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->mCamera:Landroid/hardware/Camera;

    move-object/from16 v24, v0

    invoke-interface/range {v22 .. v24}, Landroid/hardware/Camera$ErrorCallback;->onError(ILandroid/hardware/Camera;)V

    goto/16 :goto_0

    .line 1104
    :sswitch_9
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v22, v0

    #getter for: Landroid/hardware/Camera;->mAutoFocusMoveCallback:Landroid/hardware/Camera$AutoFocusMoveCallback;
    invoke-static/range {v22 .. v22}, Landroid/hardware/Camera;->access$1300(Landroid/hardware/Camera;)Landroid/hardware/Camera$AutoFocusMoveCallback;

    move-result-object v22

    if-eqz v22, :cond_0

    .line 1105
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v22, v0

    #getter for: Landroid/hardware/Camera;->mAutoFocusMoveCallback:Landroid/hardware/Camera$AutoFocusMoveCallback;
    invoke-static/range {v22 .. v22}, Landroid/hardware/Camera;->access$1300(Landroid/hardware/Camera;)Landroid/hardware/Camera$AutoFocusMoveCallback;

    move-result-object v23

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v22, v0

    if-nez v22, :cond_5

    const/16 v22, 0x0

    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->mCamera:Landroid/hardware/Camera;

    move-object/from16 v24, v0

    move-object/from16 v0, v23

    move/from16 v1, v22

    move-object/from16 v2, v24

    invoke-interface {v0, v1, v2}, Landroid/hardware/Camera$AutoFocusMoveCallback;->onAutoFocusMoving(ZLandroid/hardware/Camera;)V

    goto/16 :goto_0

    :cond_5
    const/16 v22, 0x1

    goto :goto_4

    .line 1110
    :sswitch_a
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v22, v0

    sparse-switch v22, :sswitch_data_1

    .line 1153
    :cond_6
    :goto_5
    const-string v22, "CameraFramework"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Unknown MTK-extended notify message type "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1113
    :sswitch_b
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v22, v0

    #getter for: Landroid/hardware/Camera;->mSmileCallback:Landroid/hardware/Camera$SmileCallback;
    invoke-static/range {v22 .. v22}, Landroid/hardware/Camera;->access$1400(Landroid/hardware/Camera;)Landroid/hardware/Camera$SmileCallback;

    move-result-object v22

    if-eqz v22, :cond_0

    .line 1114
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v22, v0

    #getter for: Landroid/hardware/Camera;->mSmileCallback:Landroid/hardware/Camera$SmileCallback;
    invoke-static/range {v22 .. v22}, Landroid/hardware/Camera;->access$1400(Landroid/hardware/Camera;)Landroid/hardware/Camera$SmileCallback;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Landroid/hardware/Camera$SmileCallback;->onSmile()V

    goto/16 :goto_0

    .line 1119
    :sswitch_c
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v22, v0

    #getter for: Landroid/hardware/Camera;->mGestureCallback:Landroid/hardware/Camera$GestureCallback;
    invoke-static/range {v22 .. v22}, Landroid/hardware/Camera;->access$1500(Landroid/hardware/Camera;)Landroid/hardware/Camera$GestureCallback;

    move-result-object v22

    if-eqz v22, :cond_0

    .line 1120
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v22, v0

    #getter for: Landroid/hardware/Camera;->mGestureCallback:Landroid/hardware/Camera$GestureCallback;
    invoke-static/range {v22 .. v22}, Landroid/hardware/Camera;->access$1500(Landroid/hardware/Camera;)Landroid/hardware/Camera$GestureCallback;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Landroid/hardware/Camera$GestureCallback;->onGesture()V

    goto/16 :goto_0

    .line 1125
    :sswitch_d
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v22, v0

    #getter for: Landroid/hardware/Camera;->mASDCallback:Landroid/hardware/Camera$ASDCallback;
    invoke-static/range {v22 .. v22}, Landroid/hardware/Camera;->access$1600(Landroid/hardware/Camera;)Landroid/hardware/Camera$ASDCallback;

    move-result-object v22

    if-eqz v22, :cond_0

    .line 1126
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v22, v0

    #getter for: Landroid/hardware/Camera;->mASDCallback:Landroid/hardware/Camera$ASDCallback;
    invoke-static/range {v22 .. v22}, Landroid/hardware/Camera;->access$1600(Landroid/hardware/Camera;)Landroid/hardware/Camera$ASDCallback;

    move-result-object v22

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v23, v0

    invoke-interface/range {v22 .. v23}, Landroid/hardware/Camera$ASDCallback;->onDetecte(I)V

    goto/16 :goto_0

    .line 1131
    :sswitch_e
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v22, v0

    #getter for: Landroid/hardware/Camera;->mMAVCallback:Landroid/hardware/Camera$MAVCallback;
    invoke-static/range {v22 .. v22}, Landroid/hardware/Camera;->access$1700(Landroid/hardware/Camera;)Landroid/hardware/Camera$MAVCallback;

    move-result-object v22

    if-eqz v22, :cond_0

    .line 1132
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v22, v0

    #getter for: Landroid/hardware/Camera;->mMAVCallback:Landroid/hardware/Camera$MAVCallback;
    invoke-static/range {v22 .. v22}, Landroid/hardware/Camera;->access$1700(Landroid/hardware/Camera;)Landroid/hardware/Camera$MAVCallback;

    move-result-object v22

    const/16 v23, 0x0

    invoke-interface/range {v22 .. v23}, Landroid/hardware/Camera$MAVCallback;->onFrame([B)V

    goto/16 :goto_0

    .line 1137
    :sswitch_f
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v22, v0

    #getter for: Landroid/hardware/Camera;->mCSDoneCallback:Landroid/hardware/Camera$ContinuousShotDone;
    invoke-static/range {v22 .. v22}, Landroid/hardware/Camera;->access$1800(Landroid/hardware/Camera;)Landroid/hardware/Camera$ContinuousShotDone;

    move-result-object v22

    if-eqz v22, :cond_0

    .line 1138
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v22, v0

    #getter for: Landroid/hardware/Camera;->mCSDoneCallback:Landroid/hardware/Camera$ContinuousShotDone;
    invoke-static/range {v22 .. v22}, Landroid/hardware/Camera;->access$1800(Landroid/hardware/Camera;)Landroid/hardware/Camera$ContinuousShotDone;

    move-result-object v22

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v23, v0

    invoke-interface/range {v22 .. v23}, Landroid/hardware/Camera$ContinuousShotDone;->onConinuousShotDone(I)V

    goto/16 :goto_0

    .line 1142
    :sswitch_10
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v22, v0

    #getter for: Landroid/hardware/Camera;->mPreviewDoneCallback:Landroid/hardware/Camera$ZSDPreviewDone;
    invoke-static/range {v22 .. v22}, Landroid/hardware/Camera;->access$1900(Landroid/hardware/Camera;)Landroid/hardware/Camera$ZSDPreviewDone;

    move-result-object v22

    if-eqz v22, :cond_0

    .line 1143
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v22, v0

    #getter for: Landroid/hardware/Camera;->mPreviewDoneCallback:Landroid/hardware/Camera$ZSDPreviewDone;
    invoke-static/range {v22 .. v22}, Landroid/hardware/Camera;->access$1900(Landroid/hardware/Camera;)Landroid/hardware/Camera$ZSDPreviewDone;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Landroid/hardware/Camera$ZSDPreviewDone;->onPreviewDone()V

    goto/16 :goto_0

    .line 1148
    :sswitch_11
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v22, v0

    #getter for: Landroid/hardware/Camera;->mPreviewRawDumpCallback:Landroid/hardware/Camera$PreviewRawDumpCallback;
    invoke-static/range {v22 .. v22}, Landroid/hardware/Camera;->access$2000(Landroid/hardware/Camera;)Landroid/hardware/Camera$PreviewRawDumpCallback;

    move-result-object v22

    if-eqz v22, :cond_6

    .line 1150
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v22, v0

    #getter for: Landroid/hardware/Camera;->mPreviewRawDumpCallback:Landroid/hardware/Camera$PreviewRawDumpCallback;
    invoke-static/range {v22 .. v22}, Landroid/hardware/Camera;->access$2000(Landroid/hardware/Camera;)Landroid/hardware/Camera$PreviewRawDumpCallback;

    move-result-object v22

    const/16 v23, 0x12

    invoke-interface/range {v22 .. v23}, Landroid/hardware/Camera$PreviewRawDumpCallback;->onNotify(I)V

    goto/16 :goto_5

    .line 1159
    :sswitch_12
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v22, v0

    packed-switch v22, :pswitch_data_0

    .line 1349
    :pswitch_0
    const-string v22, "CameraFramework"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Unknown MTK-extended data message type "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1163
    :pswitch_1
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v22, v0

    check-cast v22, [B

    move-object/from16 v5, v22

    check-cast v5, [B

    .line 1164
    .local v5, byteArray:[B
    const/16 v22, 0x10

    move/from16 v0, v22

    new-array v6, v0, [B

    .line 1165
    .local v6, byteHead:[B
    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x10

    move/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-static {v5, v0, v6, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1166
    const-string v22, "CameraFramework"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "MTK_CAMERA_MSG_EXT_DATA_AUTORAMA: byteArray.length = "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    array-length v0, v5

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1168
    invoke-static {v6}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v22

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v11

    .line 1169
    .local v11, intBuf:Ljava/nio/IntBuffer;
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v11, v0}, Ljava/nio/IntBuffer;->get(I)I

    move-result v22

    if-nez v22, :cond_7

    .line 1170
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v22, v0

    #getter for: Landroid/hardware/Camera;->mAUTORAMAMVCallback:Landroid/hardware/Camera$AUTORAMAMVCallback;
    invoke-static/range {v22 .. v22}, Landroid/hardware/Camera;->access$2100(Landroid/hardware/Camera;)Landroid/hardware/Camera$AUTORAMAMVCallback;

    move-result-object v22

    if-eqz v22, :cond_0

    .line 1171
    const/16 v22, 0x1

    move/from16 v0, v22

    invoke-virtual {v11, v0}, Ljava/nio/IntBuffer;->get(I)I

    move-result v19

    .line 1172
    .local v19, x:I
    const/16 v22, 0x2

    move/from16 v0, v22

    invoke-virtual {v11, v0}, Ljava/nio/IntBuffer;->get(I)I

    move-result v21

    .line 1173
    .local v21, y:I
    const/16 v22, 0x3

    move/from16 v0, v22

    invoke-virtual {v11, v0}, Ljava/nio/IntBuffer;->get(I)I

    move-result v9

    .line 1174
    .local v9, dir:I
    const v22, 0xffff

    and-int v22, v22, v19

    shl-int/lit8 v22, v22, 0x10

    const v23, 0xffff

    and-int v23, v23, v21

    add-int v20, v22, v23

    .line 1175
    .local v20, xy:I
    const-string v22, "CameraFramework"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "call mAUTORAMAMVCallback: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v24, v0

    #getter for: Landroid/hardware/Camera;->mAUTORAMACallback:Landroid/hardware/Camera$AUTORAMACallback;
    invoke-static/range {v24 .. v24}, Landroid/hardware/Camera;->access$2200(Landroid/hardware/Camera;)Landroid/hardware/Camera$AUTORAMACallback;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " dir:"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " x:"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " y:"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " xy:"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1176
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v22, v0

    #getter for: Landroid/hardware/Camera;->mAUTORAMAMVCallback:Landroid/hardware/Camera$AUTORAMAMVCallback;
    invoke-static/range {v22 .. v22}, Landroid/hardware/Camera;->access$2100(Landroid/hardware/Camera;)Landroid/hardware/Camera$AUTORAMAMVCallback;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v20

    invoke-interface {v0, v1, v9}, Landroid/hardware/Camera$AUTORAMAMVCallback;->onFrame(II)V

    goto/16 :goto_0

    .line 1179
    .end local v9           #dir:I
    .end local v19           #x:I
    .end local v20           #xy:I
    .end local v21           #y:I
    :cond_7
    const-string v22, "CameraFramework"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "call mAUTORAMACallback: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v24, v0

    #getter for: Landroid/hardware/Camera;->mAUTORAMACallback:Landroid/hardware/Camera$AUTORAMACallback;
    invoke-static/range {v24 .. v24}, Landroid/hardware/Camera;->access$2200(Landroid/hardware/Camera;)Landroid/hardware/Camera$AUTORAMACallback;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1180
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v22, v0

    #getter for: Landroid/hardware/Camera;->mAUTORAMACallback:Landroid/hardware/Camera$AUTORAMACallback;
    invoke-static/range {v22 .. v22}, Landroid/hardware/Camera;->access$2200(Landroid/hardware/Camera;)Landroid/hardware/Camera$AUTORAMACallback;

    move-result-object v22

    if-eqz v22, :cond_0

    .line 1181
    const/16 v22, 0x1

    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-virtual {v11, v0}, Ljava/nio/IntBuffer;->get(I)I

    move-result v23

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_8

    .line 1182
    const-string v22, "CameraFramework"

    const-string v23, "capturing frame"

    invoke-static/range {v22 .. v23}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1183
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v22, v0

    #getter for: Landroid/hardware/Camera;->mAUTORAMACallback:Landroid/hardware/Camera$AUTORAMACallback;
    invoke-static/range {v22 .. v22}, Landroid/hardware/Camera;->access$2200(Landroid/hardware/Camera;)Landroid/hardware/Camera$AUTORAMACallback;

    move-result-object v22

    const/16 v23, 0x0

    invoke-interface/range {v22 .. v23}, Landroid/hardware/Camera$AUTORAMACallback;->onCapture([B)V

    goto/16 :goto_0

    .line 1184
    :cond_8
    const/16 v22, 0x2

    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-virtual {v11, v0}, Ljava/nio/IntBuffer;->get(I)I

    move-result v23

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_0

    .line 1185
    const-string v22, "CameraFramework"

    const-string v23, "image is merged over"

    invoke-static/range {v22 .. v23}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1186
    array-length v0, v5

    move/from16 v22, v0

    add-int/lit8 v22, v22, -0x4

    move/from16 v0, v22

    new-array v13, v0, [B

    .line 1187
    .local v13, jpegData:[B
    const/16 v22, 0x4

    const/16 v23, 0x0

    array-length v0, v5

    move/from16 v24, v0

    add-int/lit8 v24, v24, -0x4

    move/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-static {v5, v0, v13, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1188
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v22, v0

    #getter for: Landroid/hardware/Camera;->mAUTORAMACallback:Landroid/hardware/Camera$AUTORAMACallback;
    invoke-static/range {v22 .. v22}, Landroid/hardware/Camera;->access$2200(Landroid/hardware/Camera;)Landroid/hardware/Camera$AUTORAMACallback;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-interface {v0, v13}, Landroid/hardware/Camera$AUTORAMACallback;->onCapture([B)V

    goto/16 :goto_0

    .line 1198
    .end local v5           #byteArray:[B
    .end local v6           #byteHead:[B
    .end local v11           #intBuf:Ljava/nio/IntBuffer;
    .end local v13           #jpegData:[B
    :pswitch_2
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v22, v0

    check-cast v22, [B

    move-object/from16 v5, v22

    check-cast v5, [B

    .line 1199
    .restart local v5       #byteArray:[B
    if-eqz v5, :cond_0

    .line 1202
    invoke-static {v5}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v22

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v11

    .line 1204
    .restart local v11       #intBuf:Ljava/nio/IntBuffer;
    array-length v0, v5

    move/from16 v22, v0

    add-int/lit8 v8, v22, -0x10

    .line 1205
    .local v8, dataLength:I
    array-length v0, v5

    move/from16 v22, v0

    add-int/lit8 v12, v22, -0x4

    .line 1206
    .local v12, intermeidaDataLength:I
    new-array v15, v8, [B

    .line 1207
    .local v15, motionTrackdata:[B
    const-string v22, "CameraFramework"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Camera framework intBuf.get(0) ="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const/16 v24, 0x0

    move/from16 v0, v24

    invoke-virtual {v11, v0}, Ljava/nio/IntBuffer;->get(I)I

    move-result v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ",byteArray =  "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ",dataLength= "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1208
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v11, v0}, Ljava/nio/IntBuffer;->get(I)I

    move-result v22

    packed-switch v22, :pswitch_data_1

    goto/16 :goto_0

    .line 1214
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v22, v0

    #getter for: Landroid/hardware/Camera;->mMotionTrackCallback:Landroid/hardware/Camera$MotionTrackCallback;
    invoke-static/range {v22 .. v22}, Landroid/hardware/Camera;->access$2300(Landroid/hardware/Camera;)Landroid/hardware/Camera$MotionTrackCallback;

    move-result-object v22

    if-eqz v22, :cond_0

    .line 1215
    const/16 v22, 0x1

    move/from16 v0, v22

    invoke-virtual {v11, v0}, Ljava/nio/IntBuffer;->get(I)I

    move-result v19

    .line 1216
    .restart local v19       #x:I
    const/16 v22, 0x2

    move/from16 v0, v22

    invoke-virtual {v11, v0}, Ljava/nio/IntBuffer;->get(I)I

    move-result v21

    .line 1217
    .restart local v21       #y:I
    const/4 v9, 0x0

    .line 1218
    .restart local v9       #dir:I
    const-string v22, "CameraFramework"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "onFrame,x = "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ",y = "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1219
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v22, v0

    #getter for: Landroid/hardware/Camera;->mMotionTrackCallback:Landroid/hardware/Camera$MotionTrackCallback;
    invoke-static/range {v22 .. v22}, Landroid/hardware/Camera;->access$2300(Landroid/hardware/Camera;)Landroid/hardware/Camera$MotionTrackCallback;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v19

    move/from16 v2, v21

    invoke-interface {v0, v1, v2, v9}, Landroid/hardware/Camera$MotionTrackCallback;->onFrame(III)V

    goto/16 :goto_0

    .line 1225
    .end local v9           #dir:I
    .end local v19           #x:I
    .end local v21           #y:I
    :pswitch_4
    const/16 v22, 0x10

    const/16 v23, 0x0

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-static {v5, v0, v15, v1, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1226
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v22, v0

    #getter for: Landroid/hardware/Camera;->mMotionTrackCallback:Landroid/hardware/Camera$MotionTrackCallback;
    invoke-static/range {v22 .. v22}, Landroid/hardware/Camera;->access$2300(Landroid/hardware/Camera;)Landroid/hardware/Camera$MotionTrackCallback;

    move-result-object v22

    if-eqz v22, :cond_0

    .line 1227
    const-string v22, "CameraFramework"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "onCapture,length of data = "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const/16 v24, 0x3

    move/from16 v0, v24

    invoke-virtual {v11, v0}, Ljava/nio/IntBuffer;->get(I)I

    move-result v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1228
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v22, v0

    #getter for: Landroid/hardware/Camera;->mMotionTrackCallback:Landroid/hardware/Camera$MotionTrackCallback;
    invoke-static/range {v22 .. v22}, Landroid/hardware/Camera;->access$2300(Landroid/hardware/Camera;)Landroid/hardware/Camera$MotionTrackCallback;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-interface {v0, v15}, Landroid/hardware/Camera$MotionTrackCallback;->onCapture([B)V

    goto/16 :goto_0

    .line 1238
    :pswitch_5
    const/16 v22, 0x1

    move/from16 v0, v22

    invoke-virtual {v11, v0}, Ljava/nio/IntBuffer;->get(I)I

    move-result v10

    .line 1239
    .local v10, imageIndex:I
    const/16 v22, 0x2

    move/from16 v0, v22

    invoke-virtual {v11, v0}, Ljava/nio/IntBuffer;->get(I)I

    move-result v18

    .line 1240
    .local v18, totalIndex:I
    const/16 v22, 0x10

    const/16 v23, 0x0

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-static {v5, v0, v15, v1, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1241
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v22, v0

    #getter for: Landroid/hardware/Camera;->mMotionTrackCallback:Landroid/hardware/Camera$MotionTrackCallback;
    invoke-static/range {v22 .. v22}, Landroid/hardware/Camera;->access$2300(Landroid/hardware/Camera;)Landroid/hardware/Camera$MotionTrackCallback;

    move-result-object v22

    if-eqz v22, :cond_0

    .line 1242
    const-string v22, "CameraFramework"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "onBlended,imageIndex = "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " / = "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1243
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v22, v0

    #getter for: Landroid/hardware/Camera;->mMotionTrackCallback:Landroid/hardware/Camera$MotionTrackCallback;
    invoke-static/range {v22 .. v22}, Landroid/hardware/Camera;->access$2300(Landroid/hardware/Camera;)Landroid/hardware/Camera$MotionTrackCallback;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v18

    invoke-interface {v0, v15, v10, v1}, Landroid/hardware/Camera$MotionTrackCallback;->onBlended([BII)V

    goto/16 :goto_0

    .line 1250
    .end local v10           #imageIndex:I
    .end local v18           #totalIndex:I
    :pswitch_6
    new-array v14, v12, [B

    .line 1251
    .local v14, motionTrackIntermeidaData:[B
    const/16 v22, 0x4

    const/16 v23, 0x0

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-static {v5, v0, v14, v1, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1252
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v22, v0

    #getter for: Landroid/hardware/Camera;->mMotionTrackCallback:Landroid/hardware/Camera$MotionTrackCallback;
    invoke-static/range {v22 .. v22}, Landroid/hardware/Camera;->access$2300(Landroid/hardware/Camera;)Landroid/hardware/Camera$MotionTrackCallback;

    move-result-object v22

    if-eqz v22, :cond_0

    .line 1253
    const-string v22, "CameraFramework"

    const-string/jumbo v23, "onIntermediate"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1254
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v22, v0

    #getter for: Landroid/hardware/Camera;->mMotionTrackCallback:Landroid/hardware/Camera$MotionTrackCallback;
    invoke-static/range {v22 .. v22}, Landroid/hardware/Camera;->access$2300(Landroid/hardware/Camera;)Landroid/hardware/Camera$MotionTrackCallback;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-interface {v0, v14}, Landroid/hardware/Camera$MotionTrackCallback;->onIntermediate([B)V

    goto/16 :goto_0

    .line 1262
    .end local v5           #byteArray:[B
    .end local v8           #dataLength:I
    .end local v11           #intBuf:Ljava/nio/IntBuffer;
    .end local v12           #intermeidaDataLength:I
    .end local v14           #motionTrackIntermeidaData:[B
    .end local v15           #motionTrackdata:[B
    :pswitch_7
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v22, v0

    check-cast v22, [B

    move-object/from16 v5, v22

    check-cast v5, [B

    .line 1264
    .restart local v5       #byteArray:[B
    const-string v22, "CameraFramework"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "MTK_CAMERA_MSG_EXT_DATA_AF: byteArray.length = "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    array-length v0, v5

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1273
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v22, v0

    #getter for: Landroid/hardware/Camera;->mAFDataCallback:Landroid/hardware/Camera$AFDataCallback;
    invoke-static/range {v22 .. v22}, Landroid/hardware/Camera;->access$2400(Landroid/hardware/Camera;)Landroid/hardware/Camera$AFDataCallback;

    move-result-object v22

    if-eqz v22, :cond_0

    .line 1274
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v22, v0

    #getter for: Landroid/hardware/Camera;->mAFDataCallback:Landroid/hardware/Camera$AFDataCallback;
    invoke-static/range {v22 .. v22}, Landroid/hardware/Camera;->access$2400(Landroid/hardware/Camera;)Landroid/hardware/Camera$AFDataCallback;

    move-result-object v4

    .line 1275
    .local v4, afDatacb:Landroid/hardware/Camera$AFDataCallback;
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v22, v0

    check-cast v22, [B

    check-cast v22, [B

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->mCamera:Landroid/hardware/Camera;

    move-object/from16 v23, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-interface {v4, v0, v1}, Landroid/hardware/Camera$AFDataCallback;->onAFData([BLandroid/hardware/Camera;)V

    goto/16 :goto_0

    .line 1280
    .end local v4           #afDatacb:Landroid/hardware/Camera$AFDataCallback;
    .end local v5           #byteArray:[B
    :pswitch_8
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v22, v0

    check-cast v22, [B

    move-object/from16 v5, v22

    check-cast v5, [B

    .line 1282
    .restart local v5       #byteArray:[B
    const-string v22, "CameraFramework"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "MTK_CAMERA_MSG_EXT_DATA_OT: byteArray.length = "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    array-length v0, v5

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1286
    invoke-static {v5}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v22

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v11

    .line 1288
    .restart local v11       #intBuf:Ljava/nio/IntBuffer;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v22, v0

    #getter for: Landroid/hardware/Camera;->mObjectListener:Landroid/hardware/Camera$ObjectTrackingListener;
    invoke-static/range {v22 .. v22}, Landroid/hardware/Camera;->access$2500(Landroid/hardware/Camera;)Landroid/hardware/Camera$ObjectTrackingListener;

    move-result-object v22

    if-eqz v22, :cond_0

    .line 1289
    const-string v22, "CameraFramework"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "OT callback0:"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const/16 v24, 0x0

    move/from16 v0, v24

    invoke-virtual {v11, v0}, Ljava/nio/IntBuffer;->get(I)I

    move-result v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1290
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v11, v0}, Ljava/nio/IntBuffer;->get(I)I

    move-result v22

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_9

    .line 1291
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v22, v0

    #getter for: Landroid/hardware/Camera;->mObjectRect:Landroid/graphics/Rect;
    invoke-static/range {v22 .. v22}, Landroid/hardware/Camera;->access$2600(Landroid/hardware/Camera;)Landroid/graphics/Rect;

    move-result-object v22

    const/16 v23, 0x1

    move/from16 v0, v23

    invoke-virtual {v11, v0}, Ljava/nio/IntBuffer;->get(I)I

    move-result v23

    move/from16 v0, v23

    move-object/from16 v1, v22

    iput v0, v1, Landroid/graphics/Rect;->left:I

    .line 1292
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v22, v0

    #getter for: Landroid/hardware/Camera;->mObjectRect:Landroid/graphics/Rect;
    invoke-static/range {v22 .. v22}, Landroid/hardware/Camera;->access$2600(Landroid/hardware/Camera;)Landroid/graphics/Rect;

    move-result-object v22

    const/16 v23, 0x2

    move/from16 v0, v23

    invoke-virtual {v11, v0}, Ljava/nio/IntBuffer;->get(I)I

    move-result v23

    move/from16 v0, v23

    move-object/from16 v1, v22

    iput v0, v1, Landroid/graphics/Rect;->top:I

    .line 1293
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v22, v0

    #getter for: Landroid/hardware/Camera;->mObjectRect:Landroid/graphics/Rect;
    invoke-static/range {v22 .. v22}, Landroid/hardware/Camera;->access$2600(Landroid/hardware/Camera;)Landroid/graphics/Rect;

    move-result-object v22

    const/16 v23, 0x3

    move/from16 v0, v23

    invoke-virtual {v11, v0}, Ljava/nio/IntBuffer;->get(I)I

    move-result v23

    move/from16 v0, v23

    move-object/from16 v1, v22

    iput v0, v1, Landroid/graphics/Rect;->right:I

    .line 1294
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v22, v0

    #getter for: Landroid/hardware/Camera;->mObjectRect:Landroid/graphics/Rect;
    invoke-static/range {v22 .. v22}, Landroid/hardware/Camera;->access$2600(Landroid/hardware/Camera;)Landroid/graphics/Rect;

    move-result-object v22

    const/16 v23, 0x4

    move/from16 v0, v23

    invoke-virtual {v11, v0}, Ljava/nio/IntBuffer;->get(I)I

    move-result v23

    move/from16 v0, v23

    move-object/from16 v1, v22

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 1295
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v22, v0

    #getter for: Landroid/hardware/Camera;->mObjectFace:Landroid/hardware/Camera$Face;
    invoke-static/range {v22 .. v22}, Landroid/hardware/Camera;->access$2700(Landroid/hardware/Camera;)Landroid/hardware/Camera$Face;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v23, v0

    #getter for: Landroid/hardware/Camera;->mObjectRect:Landroid/graphics/Rect;
    invoke-static/range {v23 .. v23}, Landroid/hardware/Camera;->access$2600(Landroid/hardware/Camera;)Landroid/graphics/Rect;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    iput-object v0, v1, Landroid/hardware/Camera$Face;->rect:Landroid/graphics/Rect;

    .line 1296
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v22, v0

    #getter for: Landroid/hardware/Camera;->mObjectFace:Landroid/hardware/Camera$Face;
    invoke-static/range {v22 .. v22}, Landroid/hardware/Camera;->access$2700(Landroid/hardware/Camera;)Landroid/hardware/Camera$Face;

    move-result-object v22

    const/16 v23, 0x5

    move/from16 v0, v23

    invoke-virtual {v11, v0}, Ljava/nio/IntBuffer;->get(I)I

    move-result v23

    move/from16 v0, v23

    move-object/from16 v1, v22

    iput v0, v1, Landroid/hardware/Camera$Face;->score:I

    .line 1297
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v22, v0

    #getter for: Landroid/hardware/Camera;->mObjectListener:Landroid/hardware/Camera$ObjectTrackingListener;
    invoke-static/range {v22 .. v22}, Landroid/hardware/Camera;->access$2500(Landroid/hardware/Camera;)Landroid/hardware/Camera$ObjectTrackingListener;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v23, v0

    #getter for: Landroid/hardware/Camera;->mObjectFace:Landroid/hardware/Camera$Face;
    invoke-static/range {v23 .. v23}, Landroid/hardware/Camera;->access$2700(Landroid/hardware/Camera;)Landroid/hardware/Camera$Face;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->mCamera:Landroid/hardware/Camera;

    move-object/from16 v24, v0

    invoke-interface/range {v22 .. v24}, Landroid/hardware/Camera$ObjectTrackingListener;->onObjectTracking(Landroid/hardware/Camera$Face;Landroid/hardware/Camera;)V

    goto/16 :goto_0

    .line 1300
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v22, v0

    #getter for: Landroid/hardware/Camera;->mObjectListener:Landroid/hardware/Camera$ObjectTrackingListener;
    invoke-static/range {v22 .. v22}, Landroid/hardware/Camera;->access$2500(Landroid/hardware/Camera;)Landroid/hardware/Camera$ObjectTrackingListener;

    move-result-object v22

    const/16 v23, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->mCamera:Landroid/hardware/Camera;

    move-object/from16 v24, v0

    invoke-interface/range {v22 .. v24}, Landroid/hardware/Camera$ObjectTrackingListener;->onObjectTracking(Landroid/hardware/Camera$Face;Landroid/hardware/Camera;)V

    goto/16 :goto_0

    .line 1307
    .end local v5           #byteArray:[B
    .end local v11           #intBuf:Ljava/nio/IntBuffer;
    :pswitch_9
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v22, v0

    #getter for: Landroid/hardware/Camera;->mHDROriginalCallback:Landroid/hardware/Camera$HDROriginalCallback;
    invoke-static/range {v22 .. v22}, Landroid/hardware/Camera;->access$2800(Landroid/hardware/Camera;)Landroid/hardware/Camera$HDROriginalCallback;

    move-result-object v22

    if-eqz v22, :cond_0

    .line 1308
    const-string v22, "CameraFramework"

    const-string v23, "HDR Original callback"

    invoke-static/range {v22 .. v23}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1309
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v22, v0

    check-cast v22, [B

    move-object/from16 v5, v22

    check-cast v5, [B

    .line 1310
    .restart local v5       #byteArray:[B
    array-length v0, v5

    move/from16 v22, v0

    add-int/lit8 v22, v22, -0x4

    move/from16 v0, v22

    new-array v13, v0, [B

    .line 1311
    .restart local v13       #jpegData:[B
    const/16 v22, 0x4

    const/16 v23, 0x0

    array-length v0, v5

    move/from16 v24, v0

    add-int/lit8 v24, v24, -0x4

    move/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-static {v5, v0, v13, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1312
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v22, v0

    #getter for: Landroid/hardware/Camera;->mHDROriginalCallback:Landroid/hardware/Camera$HDROriginalCallback;
    invoke-static/range {v22 .. v22}, Landroid/hardware/Camera;->access$2800(Landroid/hardware/Camera;)Landroid/hardware/Camera$HDROriginalCallback;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-interface {v0, v13}, Landroid/hardware/Camera$HDROriginalCallback;->onCapture([B)V

    goto/16 :goto_0

    .line 1316
    .end local v5           #byteArray:[B
    .end local v13           #jpegData:[B
    :pswitch_a
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v22, v0

    #getter for: Landroid/hardware/Camera;->mFBOriginalCallback:Landroid/hardware/Camera$FBOriginalCallback;
    invoke-static/range {v22 .. v22}, Landroid/hardware/Camera;->access$2900(Landroid/hardware/Camera;)Landroid/hardware/Camera$FBOriginalCallback;

    move-result-object v22

    if-eqz v22, :cond_0

    .line 1317
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v22, v0

    check-cast v22, [B

    move-object/from16 v5, v22

    check-cast v5, [B

    .line 1318
    .restart local v5       #byteArray:[B
    array-length v0, v5

    move/from16 v22, v0

    add-int/lit8 v22, v22, -0x4

    move/from16 v0, v22

    new-array v13, v0, [B

    .line 1319
    .restart local v13       #jpegData:[B
    const/16 v22, 0x4

    const/16 v23, 0x0

    array-length v0, v5

    move/from16 v24, v0

    add-int/lit8 v24, v24, -0x4

    move/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-static {v5, v0, v13, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1320
    const-string v22, "CameraFramework"

    const-string v23, "FB Original callback, VFB enable : true"

    invoke-static/range {v22 .. v23}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1322
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v22, v0

    #getter for: Landroid/hardware/Camera;->mJpegCallback:Landroid/hardware/Camera$PictureCallback;
    invoke-static/range {v22 .. v22}, Landroid/hardware/Camera;->access$200(Landroid/hardware/Camera;)Landroid/hardware/Camera$PictureCallback;

    move-result-object v22

    if-eqz v22, :cond_a

    .line 1323
    const-string v22, "CameraFramework"

    const-string v23, "FB Original callback,will call mJpegCallback.onPictureTaken"

    invoke-static/range {v22 .. v23}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1324
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v22, v0

    #getter for: Landroid/hardware/Camera;->mJpegCallback:Landroid/hardware/Camera$PictureCallback;
    invoke-static/range {v22 .. v22}, Landroid/hardware/Camera;->access$200(Landroid/hardware/Camera;)Landroid/hardware/Camera$PictureCallback;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->mCamera:Landroid/hardware/Camera;

    move-object/from16 v23, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-interface {v0, v13, v1}, Landroid/hardware/Camera$PictureCallback;->onPictureTaken([BLandroid/hardware/Camera;)V

    goto/16 :goto_0

    .line 1326
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v22, v0

    #getter for: Landroid/hardware/Camera;->mFBOriginalCallback:Landroid/hardware/Camera$FBOriginalCallback;
    invoke-static/range {v22 .. v22}, Landroid/hardware/Camera;->access$2900(Landroid/hardware/Camera;)Landroid/hardware/Camera$FBOriginalCallback;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-interface {v0, v13}, Landroid/hardware/Camera$FBOriginalCallback;->onCapture([B)V

    goto/16 :goto_0

    .line 1331
    .end local v5           #byteArray:[B
    .end local v13           #jpegData:[B
    :pswitch_b
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v22, v0

    #getter for: Landroid/hardware/Camera;->mMAVCallback:Landroid/hardware/Camera$MAVCallback;
    invoke-static/range {v22 .. v22}, Landroid/hardware/Camera;->access$1700(Landroid/hardware/Camera;)Landroid/hardware/Camera$MAVCallback;

    move-result-object v22

    if-eqz v22, :cond_0

    .line 1332
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v22, v0

    check-cast v22, [B

    move-object/from16 v5, v22

    check-cast v5, [B

    .line 1333
    .restart local v5       #byteArray:[B
    array-length v0, v5

    move/from16 v22, v0

    add-int/lit8 v22, v22, -0x4

    move/from16 v0, v22

    new-array v13, v0, [B

    .line 1334
    .restart local v13       #jpegData:[B
    const-string v22, "CameraFramework"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "MTK_CAMERA_MSG_EXT_DATA_MAV: byteArray.length = "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    array-length v0, v5

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1335
    const/16 v22, 0x4

    const/16 v23, 0x0

    array-length v0, v5

    move/from16 v24, v0

    add-int/lit8 v24, v24, -0x4

    move/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-static {v5, v0, v13, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1336
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v22, v0

    #getter for: Landroid/hardware/Camera;->mMAVCallback:Landroid/hardware/Camera$MAVCallback;
    invoke-static/range {v22 .. v22}, Landroid/hardware/Camera;->access$1700(Landroid/hardware/Camera;)Landroid/hardware/Camera$MAVCallback;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-interface {v0, v13}, Landroid/hardware/Camera$MAVCallback;->onFrame([B)V

    goto/16 :goto_0

    .line 1340
    .end local v5           #byteArray:[B
    .end local v13           #jpegData:[B
    :pswitch_c
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v22, v0

    #getter for: Landroid/hardware/Camera;->mStereo3dJPSCallback:Landroid/hardware/Camera$Stereo3dJPSCallback;
    invoke-static/range {v22 .. v22}, Landroid/hardware/Camera;->access$3000(Landroid/hardware/Camera;)Landroid/hardware/Camera$Stereo3dJPSCallback;

    move-result-object v22

    if-eqz v22, :cond_0

    .line 1341
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v22, v0

    check-cast v22, [B

    move-object/from16 v5, v22

    check-cast v5, [B

    .line 1342
    .restart local v5       #byteArray:[B
    array-length v0, v5

    move/from16 v22, v0

    add-int/lit8 v22, v22, -0x4

    move/from16 v0, v22

    new-array v13, v0, [B

    .line 1343
    .restart local v13       #jpegData:[B
    const-string v22, "CameraFramework"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "MTK_CAMERA_MSG_EXT_DATA_JPS: byteArray.length = "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    array-length v0, v5

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1344
    const/16 v22, 0x4

    const/16 v23, 0x0

    array-length v0, v5

    move/from16 v24, v0

    add-int/lit8 v24, v24, -0x4

    move/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-static {v5, v0, v13, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1345
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v22, v0

    #getter for: Landroid/hardware/Camera;->mStereo3dJPSCallback:Landroid/hardware/Camera$Stereo3dJPSCallback;
    invoke-static/range {v22 .. v22}, Landroid/hardware/Camera;->access$3000(Landroid/hardware/Camera;)Landroid/hardware/Camera$Stereo3dJPSCallback;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-interface {v0, v13}, Landroid/hardware/Camera$Stereo3dJPSCallback;->onCapture([B)V

    goto/16 :goto_0

    .line 1030
    nop

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_12
        0x1 -> :sswitch_8
        0x2 -> :sswitch_0
        0x4 -> :sswitch_5
        0x8 -> :sswitch_6
        0x10 -> :sswitch_3
        0x40 -> :sswitch_4
        0x80 -> :sswitch_1
        0x100 -> :sswitch_2
        0x400 -> :sswitch_7
        0x800 -> :sswitch_9
        0x40000000 -> :sswitch_a
    .end sparse-switch

    .line 1110
    :sswitch_data_1
    .sparse-switch
        0x1 -> :sswitch_b
        0x2 -> :sswitch_d
        0x3 -> :sswitch_e
        0x6 -> :sswitch_f
        0x7 -> :sswitch_10
        0x12 -> :sswitch_11
        0x13 -> :sswitch_c
    .end sparse-switch

    .line 1159
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_8
        :pswitch_a
        :pswitch_b
        :pswitch_9
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_c
    .end packed-switch

    .line 1208
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
