.class public Lcom/android/internal/telephony/gsm/GSMPhone$SSRequestDecisionMaker;
.super Landroid/os/Handler;
.source "GSMPhone.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/gsm/GSMPhone;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SSRequestDecisionMaker"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/gsm/GSMPhone;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/gsm/GSMPhone;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 329
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/GSMPhone$SSRequestDecisionMaker;->this$0:Lcom/android/internal/telephony/gsm/GSMPhone;

    .line 330
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 331
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 17
    .parameter "msg"

    .prologue
    .line 341
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/gsm/GSMPhone$SSRequestDecisionMaker;->this$0:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-boolean v1, v1, Lcom/android/internal/telephony/gsm/GSMPhone;->mIsTheCurrentActivePhone:Z

    if-nez v1, :cond_1

    .line 342
    const-string v1, "GSMPhone"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SSRequestDecisionMaker-Received message "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, "["

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    iget v8, v0, Landroid/os/Message;->what:I

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, "] while being destroyed. Ignoring."

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    :cond_0
    :goto_0
    return-void

    .line 347
    :cond_1
    move-object/from16 v0, p1

    iget v1, v0, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 527
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/gsm/GSMPhone$SSRequestDecisionMaker;->this$0:Lcom/android/internal/telephony/gsm/GSMPhone;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SSRequestDecisionMaker:msg.what="

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    iget v8, v0, Landroid/os/Message;->what:I

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/android/internal/telephony/gsm/GSMPhone;->LOGD(Ljava/lang/String;)V

    goto :goto_0

    .line 349
    :pswitch_0
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    move-object v15, v1

    check-cast v15, Ljava/util/ArrayList;

    .line 350
    .local v15, mSSThreadParmList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    const/4 v1, 0x0

    invoke-virtual {v15, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    .line 351
    .local v16, type:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/gsm/GSMPhone$SSRequestDecisionMaker;->this$0:Lcom/android/internal/telephony/gsm/GSMPhone;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SSRequestDecisionMaker check domain and execution with type="

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/android/internal/telephony/gsm/GSMPhone;->LOGD(Ljava/lang/String;)V

    .line 352
    const-string v1, "GET_CLIR"

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 354
    const/4 v1, 0x1

    invoke-virtual {v15, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/os/Message;

    .line 355
    .local v13, onComplete:Landroid/os/Message;
    invoke-static {}, Lcom/android/internal/telephony/MMTelSSUtils;->isSupportXcap()Z

    move-result v1

    if-nez v1, :cond_2

    .line 356
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/gsm/GSMPhone$SSRequestDecisionMaker;->this$0:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v1, v1, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, v13}, Lcom/android/internal/telephony/CommandsInterface;->getCLIR(Landroid/os/Message;)V

    goto :goto_0

    .line 358
    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/gsm/GSMPhone$SSRequestDecisionMaker;->this$0:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v1, v1, Lcom/android/internal/telephony/gsm/GSMPhone;->mMMTelSSTSL:Lcom/android/internal/telephony/MMTelSSTransport;

    invoke-virtual {v1, v13}, Lcom/android/internal/telephony/MMTelSSTransport;->getCLIR(Landroid/os/Message;)V

    goto :goto_0

    .line 360
    .end local v13           #onComplete:Landroid/os/Message;
    :cond_3
    const-string v1, "SET_CLIR"

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 362
    const/4 v1, 0x1

    invoke-virtual {v15, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v14

    .line 363
    .local v14, commandInterfaceCLIRMode:I
    const/4 v1, 0x2

    invoke-virtual {v15, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/os/Message;

    .line 364
    .restart local v13       #onComplete:Landroid/os/Message;
    invoke-static {}, Lcom/android/internal/telephony/MMTelSSUtils;->isSupportXcap()Z

    move-result v1

    if-nez v1, :cond_4

    .line 367
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/gsm/GSMPhone$SSRequestDecisionMaker;->this$0:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v1, v1, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/GSMPhone$SSRequestDecisionMaker;->this$0:Lcom/android/internal/telephony/gsm/GSMPhone;

    const/16 v8, 0x12

    const/4 v12, 0x0

    invoke-virtual {v4, v8, v14, v12, v13}, Lcom/android/internal/telephony/gsm/GSMPhone;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v1, v14, v4}, Lcom/android/internal/telephony/CommandsInterface;->setCLIR(ILandroid/os/Message;)V

    goto/16 :goto_0

    .line 372
    :cond_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/gsm/GSMPhone$SSRequestDecisionMaker;->this$0:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v1, v1, Lcom/android/internal/telephony/gsm/GSMPhone;->mMMTelSSTSL:Lcom/android/internal/telephony/MMTelSSTransport;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/GSMPhone$SSRequestDecisionMaker;->this$0:Lcom/android/internal/telephony/gsm/GSMPhone;

    const/16 v8, 0x12

    const/4 v12, 0x0

    invoke-virtual {v4, v8, v14, v12, v13}, Lcom/android/internal/telephony/gsm/GSMPhone;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v1, v14, v4}, Lcom/android/internal/telephony/MMTelSSTransport;->setCLIR(ILandroid/os/Message;)V

    goto/16 :goto_0

    .line 376
    .end local v13           #onComplete:Landroid/os/Message;
    .end local v14           #commandInterfaceCLIRMode:I
    :cond_5
    const-string v1, "GET_CW"

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 378
    const/4 v1, 0x1

    invoke-virtual {v15, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/os/Message;

    .line 379
    .restart local v13       #onComplete:Landroid/os/Message;
    invoke-static {}, Lcom/android/internal/telephony/MMTelSSUtils;->isSupportXcap()Z

    move-result v1

    if-nez v1, :cond_6

    .line 380
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/gsm/GSMPhone$SSRequestDecisionMaker;->this$0:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v1, v1, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v4, 0x1

    invoke-interface {v1, v4, v13}, Lcom/android/internal/telephony/CommandsInterface;->queryCallWaiting(ILandroid/os/Message;)V

    goto/16 :goto_0

    .line 382
    :cond_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/gsm/GSMPhone$SSRequestDecisionMaker;->this$0:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v1, v1, Lcom/android/internal/telephony/gsm/GSMPhone;->mMMTelSSTSL:Lcom/android/internal/telephony/MMTelSSTransport;

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v13}, Lcom/android/internal/telephony/MMTelSSTransport;->queryCallWaiting(ILandroid/os/Message;)V

    goto/16 :goto_0

    .line 385
    .end local v13           #onComplete:Landroid/os/Message;
    :cond_7
    const-string v1, "GET_CW_VT"

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 387
    const/4 v1, 0x1

    invoke-virtual {v15, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/os/Message;

    .line 389
    .restart local v13       #onComplete:Landroid/os/Message;
    invoke-static {}, Lcom/android/internal/telephony/MMTelSSUtils;->isSupportXcap()Z

    move-result v1

    if-nez v1, :cond_8

    .line 390
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/gsm/GSMPhone$SSRequestDecisionMaker;->this$0:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v1, v1, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v4, 0x200

    invoke-interface {v1, v4, v13}, Lcom/android/internal/telephony/CommandsInterface;->queryCallWaiting(ILandroid/os/Message;)V

    goto/16 :goto_0

    .line 392
    :cond_8
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/gsm/GSMPhone$SSRequestDecisionMaker;->this$0:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v1, v1, Lcom/android/internal/telephony/gsm/GSMPhone;->mMMTelSSTSL:Lcom/android/internal/telephony/MMTelSSTransport;

    const/16 v4, 0x200

    invoke-virtual {v1, v4, v13}, Lcom/android/internal/telephony/MMTelSSTransport;->queryCallWaiting(ILandroid/os/Message;)V

    goto/16 :goto_0

    .line 394
    .end local v13           #onComplete:Landroid/os/Message;
    :cond_9
    const-string v1, "SET_CW"

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 396
    const/4 v1, 0x1

    invoke-virtual {v15, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    .line 397
    .local v10, enable:Z
    const/4 v1, 0x2

    invoke-virtual {v15, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/os/Message;

    .line 398
    .restart local v13       #onComplete:Landroid/os/Message;
    invoke-static {}, Lcom/android/internal/telephony/MMTelSSUtils;->isSupportXcap()Z

    move-result v1

    if-nez v1, :cond_a

    .line 399
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/gsm/GSMPhone$SSRequestDecisionMaker;->this$0:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v1, v1, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v4, 0x1

    invoke-interface {v1, v10, v4, v13}, Lcom/android/internal/telephony/CommandsInterface;->setCallWaiting(ZILandroid/os/Message;)V

    goto/16 :goto_0

    .line 401
    :cond_a
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/gsm/GSMPhone$SSRequestDecisionMaker;->this$0:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v1, v1, Lcom/android/internal/telephony/gsm/GSMPhone;->mMMTelSSTSL:Lcom/android/internal/telephony/MMTelSSTransport;

    const/4 v4, 0x1

    invoke-virtual {v1, v10, v4, v13}, Lcom/android/internal/telephony/MMTelSSTransport;->setCallWaiting(ZILandroid/os/Message;)V

    goto/16 :goto_0

    .line 403
    .end local v10           #enable:Z
    .end local v13           #onComplete:Landroid/os/Message;
    :cond_b
    const-string v1, "SET_CW_VT"

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 405
    const/4 v1, 0x1

    invoke-virtual {v15, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    .line 406
    .restart local v10       #enable:Z
    const/4 v1, 0x2

    invoke-virtual {v15, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/os/Message;

    .line 408
    .restart local v13       #onComplete:Landroid/os/Message;
    invoke-static {}, Lcom/android/internal/telephony/MMTelSSUtils;->isSupportXcap()Z

    move-result v1

    if-nez v1, :cond_c

    .line 409
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/gsm/GSMPhone$SSRequestDecisionMaker;->this$0:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v1, v1, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v4, 0x200

    invoke-interface {v1, v10, v4, v13}, Lcom/android/internal/telephony/CommandsInterface;->setCallWaiting(ZILandroid/os/Message;)V

    goto/16 :goto_0

    .line 411
    :cond_c
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/gsm/GSMPhone$SSRequestDecisionMaker;->this$0:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v1, v1, Lcom/android/internal/telephony/gsm/GSMPhone;->mMMTelSSTSL:Lcom/android/internal/telephony/MMTelSSTransport;

    const/16 v4, 0x200

    invoke-virtual {v1, v10, v4, v13}, Lcom/android/internal/telephony/MMTelSSTransport;->setCallWaiting(ZILandroid/os/Message;)V

    goto/16 :goto_0

    .line 414
    .end local v10           #enable:Z
    .end local v13           #onComplete:Landroid/os/Message;
    :cond_d
    const-string v1, "GET_CF"

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 416
    const/4 v1, 0x1

    invoke-virtual {v15, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 417
    .local v3, commandInterfaceCFReason:I
    const/4 v1, 0x2

    invoke-virtual {v15, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/Message;

    .line 418
    .local v7, resp:Landroid/os/Message;
    invoke-static {}, Lcom/android/internal/telephony/MMTelSSUtils;->isSupportXcap()Z

    move-result v1

    if-nez v1, :cond_e

    .line 419
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/gsm/GSMPhone$SSRequestDecisionMaker;->this$0:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v1, v1, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v4, 0x0

    const/4 v8, 0x0

    invoke-interface {v1, v3, v4, v8, v7}, Lcom/android/internal/telephony/CommandsInterface;->queryCallForwardStatus(IILjava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 421
    :cond_e
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/gsm/GSMPhone$SSRequestDecisionMaker;->this$0:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v1, v1, Lcom/android/internal/telephony/gsm/GSMPhone;->mMMTelSSTSL:Lcom/android/internal/telephony/MMTelSSTransport;

    const/4 v4, 0x1

    const/4 v8, 0x0

    invoke-virtual {v1, v3, v4, v8, v7}, Lcom/android/internal/telephony/MMTelSSTransport;->queryCallForwardStatus(IILjava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 423
    .end local v3           #commandInterfaceCFReason:I
    .end local v7           #resp:Landroid/os/Message;
    :cond_f
    const-string v1, "GET_CF_VT"

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 425
    const/4 v1, 0x1

    invoke-virtual {v15, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 426
    .restart local v3       #commandInterfaceCFReason:I
    const/4 v1, 0x2

    invoke-virtual {v15, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/Message;

    .line 427
    .restart local v7       #resp:Landroid/os/Message;
    invoke-static {}, Lcom/android/internal/telephony/MMTelSSUtils;->isSupportXcap()Z

    move-result v1

    if-nez v1, :cond_10

    .line 428
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/gsm/GSMPhone$SSRequestDecisionMaker;->this$0:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v1, v1, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v4, 0x0

    const/4 v8, 0x0

    invoke-interface {v1, v3, v4, v8, v7}, Lcom/android/internal/telephony/CommandsInterface;->queryCallForwardStatus(IILjava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 430
    :cond_10
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/gsm/GSMPhone$SSRequestDecisionMaker;->this$0:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v1, v1, Lcom/android/internal/telephony/gsm/GSMPhone;->mMMTelSSTSL:Lcom/android/internal/telephony/MMTelSSTransport;

    const/16 v4, 0x200

    const/4 v8, 0x0

    invoke-virtual {v1, v3, v4, v8, v7}, Lcom/android/internal/telephony/MMTelSSTransport;->queryCallForwardStatus(IILjava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 433
    .end local v3           #commandInterfaceCFReason:I
    .end local v7           #resp:Landroid/os/Message;
    :cond_11
    const-string v1, "SET_CF"

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 435
    const/4 v1, 0x1

    invoke-virtual {v15, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 436
    .local v2, commandInterfaceCFAction:I
    const/4 v1, 0x2

    invoke-virtual {v15, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 437
    .restart local v3       #commandInterfaceCFReason:I
    const/4 v1, 0x3

    invoke-virtual {v15, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 438
    .local v5, dialingNumber:Ljava/lang/String;
    const/4 v1, 0x4

    invoke-virtual {v15, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 439
    .local v6, timerSeconds:I
    const/4 v1, 0x5

    invoke-virtual {v15, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/Message;

    .line 440
    .restart local v7       #resp:Landroid/os/Message;
    invoke-static {}, Lcom/android/internal/telephony/MMTelSSUtils;->isSupportXcap()Z

    move-result v1

    if-nez v1, :cond_12

    .line 441
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/gsm/GSMPhone$SSRequestDecisionMaker;->this$0:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v1, v1, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v4, 0x1

    invoke-interface/range {v1 .. v7}, Lcom/android/internal/telephony/CommandsInterface;->setCallForward(IIILjava/lang/String;ILandroid/os/Message;)V

    goto/16 :goto_0

    .line 448
    :cond_12
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/gsm/GSMPhone$SSRequestDecisionMaker;->this$0:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v1, v1, Lcom/android/internal/telephony/gsm/GSMPhone;->mMMTelSSTSL:Lcom/android/internal/telephony/MMTelSSTransport;

    const/4 v4, 0x1

    invoke-virtual/range {v1 .. v7}, Lcom/android/internal/telephony/MMTelSSTransport;->setCallForward(IIILjava/lang/String;ILandroid/os/Message;)V

    goto/16 :goto_0

    .line 456
    .end local v2           #commandInterfaceCFAction:I
    .end local v3           #commandInterfaceCFReason:I
    .end local v5           #dialingNumber:Ljava/lang/String;
    .end local v6           #timerSeconds:I
    .end local v7           #resp:Landroid/os/Message;
    :cond_13
    const-string v1, "SET_CF_VT"

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 458
    const/4 v1, 0x1

    invoke-virtual {v15, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 459
    .restart local v2       #commandInterfaceCFAction:I
    const/4 v1, 0x2

    invoke-virtual {v15, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 460
    .restart local v3       #commandInterfaceCFReason:I
    const/4 v1, 0x3

    invoke-virtual {v15, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 461
    .restart local v5       #dialingNumber:Ljava/lang/String;
    const/4 v1, 0x4

    invoke-virtual {v15, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 462
    .restart local v6       #timerSeconds:I
    const/4 v1, 0x5

    invoke-virtual {v15, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/Message;

    .line 463
    .restart local v7       #resp:Landroid/os/Message;
    invoke-static {}, Lcom/android/internal/telephony/MMTelSSUtils;->isSupportXcap()Z

    move-result v1

    if-nez v1, :cond_14

    .line 464
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/gsm/GSMPhone$SSRequestDecisionMaker;->this$0:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v1, v1, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v4, 0x200

    invoke-interface/range {v1 .. v7}, Lcom/android/internal/telephony/CommandsInterface;->setCallForward(IIILjava/lang/String;ILandroid/os/Message;)V

    goto/16 :goto_0

    .line 471
    :cond_14
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/gsm/GSMPhone$SSRequestDecisionMaker;->this$0:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v1, v1, Lcom/android/internal/telephony/gsm/GSMPhone;->mMMTelSSTSL:Lcom/android/internal/telephony/MMTelSSTransport;

    const/16 v4, 0x200

    invoke-virtual/range {v1 .. v7}, Lcom/android/internal/telephony/MMTelSSTransport;->setCallForward(IIILjava/lang/String;ILandroid/os/Message;)V

    goto/16 :goto_0

    .line 479
    .end local v2           #commandInterfaceCFAction:I
    .end local v3           #commandInterfaceCFReason:I
    .end local v5           #dialingNumber:Ljava/lang/String;
    .end local v6           #timerSeconds:I
    .end local v7           #resp:Landroid/os/Message;
    :cond_15
    const-string v1, "GET_CB"

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 481
    const/4 v1, 0x1

    invoke-virtual {v15, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 482
    .local v9, facility:Ljava/lang/String;
    const/4 v1, 0x2

    invoke-virtual {v15, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 483
    .local v11, password:Ljava/lang/String;
    const/4 v1, 0x3

    invoke-virtual {v15, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/os/Message;

    .line 484
    .restart local v13       #onComplete:Landroid/os/Message;
    invoke-static {}, Lcom/android/internal/telephony/MMTelSSUtils;->isSupportXcap()Z

    move-result v1

    if-nez v1, :cond_16

    .line 485
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/gsm/GSMPhone$SSRequestDecisionMaker;->this$0:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v1, v1, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v4, 0x1

    invoke-interface {v1, v9, v11, v4, v13}, Lcom/android/internal/telephony/CommandsInterface;->queryFacilityLock(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Message;)V

    goto/16 :goto_0

    .line 487
    :cond_16
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/gsm/GSMPhone$SSRequestDecisionMaker;->this$0:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v1, v1, Lcom/android/internal/telephony/gsm/GSMPhone;->mMMTelSSTSL:Lcom/android/internal/telephony/MMTelSSTransport;

    const/4 v4, 0x1

    invoke-virtual {v1, v9, v11, v4, v13}, Lcom/android/internal/telephony/MMTelSSTransport;->queryFacilityLock(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Message;)V

    goto/16 :goto_0

    .line 490
    .end local v9           #facility:Ljava/lang/String;
    .end local v11           #password:Ljava/lang/String;
    .end local v13           #onComplete:Landroid/os/Message;
    :cond_17
    const-string v1, "GET_CB_VT"

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 492
    const/4 v1, 0x1

    invoke-virtual {v15, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 493
    .restart local v9       #facility:Ljava/lang/String;
    const/4 v1, 0x2

    invoke-virtual {v15, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 494
    .restart local v11       #password:Ljava/lang/String;
    const/4 v1, 0x3

    invoke-virtual {v15, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/os/Message;

    .line 495
    .restart local v13       #onComplete:Landroid/os/Message;
    invoke-static {}, Lcom/android/internal/telephony/MMTelSSUtils;->isSupportXcap()Z

    move-result v1

    if-nez v1, :cond_18

    .line 496
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/gsm/GSMPhone$SSRequestDecisionMaker;->this$0:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v1, v1, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v4, 0x200

    invoke-interface {v1, v9, v11, v4, v13}, Lcom/android/internal/telephony/CommandsInterface;->queryFacilityLock(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Message;)V

    goto/16 :goto_0

    .line 498
    :cond_18
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/gsm/GSMPhone$SSRequestDecisionMaker;->this$0:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v1, v1, Lcom/android/internal/telephony/gsm/GSMPhone;->mMMTelSSTSL:Lcom/android/internal/telephony/MMTelSSTransport;

    const/16 v4, 0x200

    invoke-virtual {v1, v9, v11, v4, v13}, Lcom/android/internal/telephony/MMTelSSTransport;->queryFacilityLock(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Message;)V

    goto/16 :goto_0

    .line 501
    .end local v9           #facility:Ljava/lang/String;
    .end local v11           #password:Ljava/lang/String;
    .end local v13           #onComplete:Landroid/os/Message;
    :cond_19
    const-string v1, "SET_CB"

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 503
    const/4 v1, 0x1

    invoke-virtual {v15, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 504
    .restart local v9       #facility:Ljava/lang/String;
    const/4 v1, 0x2

    invoke-virtual {v15, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    .line 505
    .restart local v10       #enable:Z
    const/4 v1, 0x3

    invoke-virtual {v15, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 506
    .restart local v11       #password:Ljava/lang/String;
    const/4 v1, 0x4

    invoke-virtual {v15, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/os/Message;

    .line 507
    .restart local v13       #onComplete:Landroid/os/Message;
    invoke-static {}, Lcom/android/internal/telephony/MMTelSSUtils;->isSupportXcap()Z

    move-result v1

    if-nez v1, :cond_1a

    .line 508
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/gsm/GSMPhone$SSRequestDecisionMaker;->this$0:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v8, v1, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v12, 0x1

    invoke-interface/range {v8 .. v13}, Lcom/android/internal/telephony/CommandsInterface;->setFacilityLock(Ljava/lang/String;ZLjava/lang/String;ILandroid/os/Message;)V

    goto/16 :goto_0

    .line 510
    :cond_1a
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/gsm/GSMPhone$SSRequestDecisionMaker;->this$0:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v8, v1, Lcom/android/internal/telephony/gsm/GSMPhone;->mMMTelSSTSL:Lcom/android/internal/telephony/MMTelSSTransport;

    const/4 v12, 0x1

    invoke-virtual/range {v8 .. v13}, Lcom/android/internal/telephony/MMTelSSTransport;->setFacilityLock(Ljava/lang/String;ZLjava/lang/String;ILandroid/os/Message;)V

    goto/16 :goto_0

    .line 513
    .end local v9           #facility:Ljava/lang/String;
    .end local v10           #enable:Z
    .end local v11           #password:Ljava/lang/String;
    .end local v13           #onComplete:Landroid/os/Message;
    :cond_1b
    const-string v1, "SET_CB_VT"

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 515
    const/4 v1, 0x1

    invoke-virtual {v15, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 516
    .restart local v9       #facility:Ljava/lang/String;
    const/4 v1, 0x2

    invoke-virtual {v15, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    .line 517
    .restart local v10       #enable:Z
    const/4 v1, 0x3

    invoke-virtual {v15, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 518
    .restart local v11       #password:Ljava/lang/String;
    const/4 v1, 0x4

    invoke-virtual {v15, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/os/Message;

    .line 519
    .restart local v13       #onComplete:Landroid/os/Message;
    invoke-static {}, Lcom/android/internal/telephony/MMTelSSUtils;->isSupportXcap()Z

    move-result v1

    if-nez v1, :cond_1c

    .line 520
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/gsm/GSMPhone$SSRequestDecisionMaker;->this$0:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v8, v1, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v12, 0x200

    invoke-interface/range {v8 .. v13}, Lcom/android/internal/telephony/CommandsInterface;->setFacilityLock(Ljava/lang/String;ZLjava/lang/String;ILandroid/os/Message;)V

    goto/16 :goto_0

    .line 522
    :cond_1c
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/gsm/GSMPhone$SSRequestDecisionMaker;->this$0:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v8, v1, Lcom/android/internal/telephony/gsm/GSMPhone;->mMMTelSSTSL:Lcom/android/internal/telephony/MMTelSSTransport;

    const/16 v12, 0x200

    invoke-virtual/range {v8 .. v13}, Lcom/android/internal/telephony/MMTelSSTransport;->setFacilityLock(Ljava/lang/String;ZLjava/lang/String;ILandroid/os/Message;)V

    goto/16 :goto_0

    .line 347
    nop

    :pswitch_data_0
    .packed-switch 0xca
        :pswitch_0
    .end packed-switch
.end method

.method public run()V
    .locals 0

    .prologue
    .line 337
    return-void
.end method
