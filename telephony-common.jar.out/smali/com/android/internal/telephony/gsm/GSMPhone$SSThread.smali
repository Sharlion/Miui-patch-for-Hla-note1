.class public Lcom/android/internal/telephony/gsm/GSMPhone$SSThread;
.super Ljava/lang/Thread;
.source "GSMPhone.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/gsm/GSMPhone;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SSThread"
.end annotation


# instance fields
.field public mSSThreadParmList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/internal/telephony/gsm/GSMPhone;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/gsm/GSMPhone;Ljava/util/ArrayList;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 537
    .local p2, SSParmList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/GSMPhone$SSThread;->this$0:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 536
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone$SSThread;->mSSThreadParmList:Ljava/util/ArrayList;

    .line 538
    iput-object p2, p0, Lcom/android/internal/telephony/gsm/GSMPhone$SSThread;->mSSThreadParmList:Ljava/util/ArrayList;

    .line 539
    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    .prologue
    .line 542
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone$SSThread;->mSSThreadParmList:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 543
    .local v14, type:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone$SSThread;->this$0:Lcom/android/internal/telephony/gsm/GSMPhone;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SS Thread check domain and execution with type="

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/gsm/GSMPhone;->LOGD(Ljava/lang/String;)V

    .line 544
    const-string v0, "GET_CLIR"

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 546
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone$SSThread;->mSSThreadParmList:Ljava/util/ArrayList;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/os/Message;

    .line 547
    .local v12, onComplete:Landroid/os/Message;
    invoke-static {}, Lcom/android/internal/telephony/MMTelSSUtils;->isSupportXcap()Z

    move-result v0

    if-nez v0, :cond_1

    .line 548
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone$SSThread;->this$0:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, v12}, Lcom/android/internal/telephony/CommandsInterface;->getCLIR(Landroid/os/Message;)V

    .line 713
    .end local v12           #onComplete:Landroid/os/Message;
    :cond_0
    :goto_0
    return-void

    .line 550
    .restart local v12       #onComplete:Landroid/os/Message;
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone$SSThread;->this$0:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mMMTelSSTSL:Lcom/android/internal/telephony/MMTelSSTransport;

    invoke-virtual {v0, v12}, Lcom/android/internal/telephony/MMTelSSTransport;->getCLIR(Landroid/os/Message;)V

    goto :goto_0

    .line 552
    .end local v12           #onComplete:Landroid/os/Message;
    :cond_2
    const-string v0, "SET_CLIR"

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 554
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone$SSThread;->mSSThreadParmList:Ljava/util/ArrayList;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v13

    .line 555
    .local v13, commandInterfaceCLIRMode:I
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone$SSThread;->mSSThreadParmList:Ljava/util/ArrayList;

    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/os/Message;

    .line 556
    .restart local v12       #onComplete:Landroid/os/Message;
    invoke-static {}, Lcom/android/internal/telephony/MMTelSSUtils;->isSupportXcap()Z

    move-result v0

    if-nez v0, :cond_3

    .line 557
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone$SSThread;->this$0:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GSMPhone$SSThread;->this$0:Lcom/android/internal/telephony/gsm/GSMPhone;

    const/16 v7, 0x12

    const/4 v11, 0x0

    invoke-virtual {v3, v7, v13, v11, v12}, Lcom/android/internal/telephony/gsm/GSMPhone;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v0, v13, v3}, Lcom/android/internal/telephony/CommandsInterface;->setCLIR(ILandroid/os/Message;)V

    goto :goto_0

    .line 560
    :cond_3
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone$SSThread;->this$0:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mMMTelSSTSL:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GSMPhone$SSThread;->this$0:Lcom/android/internal/telephony/gsm/GSMPhone;

    const/16 v7, 0x12

    const/4 v11, 0x0

    invoke-virtual {v3, v7, v13, v11, v12}, Lcom/android/internal/telephony/gsm/GSMPhone;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v0, v13, v3}, Lcom/android/internal/telephony/MMTelSSTransport;->setCLIR(ILandroid/os/Message;)V

    goto :goto_0

    .line 564
    .end local v12           #onComplete:Landroid/os/Message;
    .end local v13           #commandInterfaceCLIRMode:I
    :cond_4
    const-string v0, "GET_CW"

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 566
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone$SSThread;->mSSThreadParmList:Ljava/util/ArrayList;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/os/Message;

    .line 567
    .restart local v12       #onComplete:Landroid/os/Message;
    invoke-static {}, Lcom/android/internal/telephony/MMTelSSUtils;->isSupportXcap()Z

    move-result v0

    if-nez v0, :cond_5

    .line 568
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone$SSThread;->this$0:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v3, 0x1

    invoke-interface {v0, v3, v12}, Lcom/android/internal/telephony/CommandsInterface;->queryCallWaiting(ILandroid/os/Message;)V

    goto :goto_0

    .line 570
    :cond_5
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone$SSThread;->this$0:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mMMTelSSTSL:Lcom/android/internal/telephony/MMTelSSTransport;

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v12}, Lcom/android/internal/telephony/MMTelSSTransport;->queryCallWaiting(ILandroid/os/Message;)V

    goto :goto_0

    .line 573
    .end local v12           #onComplete:Landroid/os/Message;
    :cond_6
    const-string v0, "GET_CW_VT"

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 575
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone$SSThread;->mSSThreadParmList:Ljava/util/ArrayList;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/os/Message;

    .line 577
    .restart local v12       #onComplete:Landroid/os/Message;
    invoke-static {}, Lcom/android/internal/telephony/MMTelSSUtils;->isSupportXcap()Z

    move-result v0

    if-nez v0, :cond_7

    .line 578
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone$SSThread;->this$0:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v3, 0x200

    invoke-interface {v0, v3, v12}, Lcom/android/internal/telephony/CommandsInterface;->queryCallWaiting(ILandroid/os/Message;)V

    goto/16 :goto_0

    .line 580
    :cond_7
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone$SSThread;->this$0:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mMMTelSSTSL:Lcom/android/internal/telephony/MMTelSSTransport;

    const/16 v3, 0x200

    invoke-virtual {v0, v3, v12}, Lcom/android/internal/telephony/MMTelSSTransport;->queryCallWaiting(ILandroid/os/Message;)V

    goto/16 :goto_0

    .line 582
    .end local v12           #onComplete:Landroid/os/Message;
    :cond_8
    const-string v0, "SET_CW"

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 584
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone$SSThread;->mSSThreadParmList:Ljava/util/ArrayList;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    .line 585
    .local v9, enable:Z
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone$SSThread;->mSSThreadParmList:Ljava/util/ArrayList;

    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/os/Message;

    .line 586
    .restart local v12       #onComplete:Landroid/os/Message;
    invoke-static {}, Lcom/android/internal/telephony/MMTelSSUtils;->isSupportXcap()Z

    move-result v0

    if-nez v0, :cond_9

    .line 587
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone$SSThread;->this$0:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v3, 0x1

    invoke-interface {v0, v9, v3, v12}, Lcom/android/internal/telephony/CommandsInterface;->setCallWaiting(ZILandroid/os/Message;)V

    goto/16 :goto_0

    .line 589
    :cond_9
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone$SSThread;->this$0:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mMMTelSSTSL:Lcom/android/internal/telephony/MMTelSSTransport;

    const/4 v3, 0x1

    invoke-virtual {v0, v9, v3, v12}, Lcom/android/internal/telephony/MMTelSSTransport;->setCallWaiting(ZILandroid/os/Message;)V

    goto/16 :goto_0

    .line 591
    .end local v9           #enable:Z
    .end local v12           #onComplete:Landroid/os/Message;
    :cond_a
    const-string v0, "SET_CW_VT"

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 593
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone$SSThread;->mSSThreadParmList:Ljava/util/ArrayList;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    .line 594
    .restart local v9       #enable:Z
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone$SSThread;->mSSThreadParmList:Ljava/util/ArrayList;

    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/os/Message;

    .line 596
    .restart local v12       #onComplete:Landroid/os/Message;
    invoke-static {}, Lcom/android/internal/telephony/MMTelSSUtils;->isSupportXcap()Z

    move-result v0

    if-nez v0, :cond_b

    .line 597
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone$SSThread;->this$0:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v3, 0x200

    invoke-interface {v0, v9, v3, v12}, Lcom/android/internal/telephony/CommandsInterface;->setCallWaiting(ZILandroid/os/Message;)V

    goto/16 :goto_0

    .line 599
    :cond_b
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone$SSThread;->this$0:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mMMTelSSTSL:Lcom/android/internal/telephony/MMTelSSTransport;

    const/16 v3, 0x200

    invoke-virtual {v0, v9, v3, v12}, Lcom/android/internal/telephony/MMTelSSTransport;->setCallWaiting(ZILandroid/os/Message;)V

    goto/16 :goto_0

    .line 602
    .end local v9           #enable:Z
    .end local v12           #onComplete:Landroid/os/Message;
    :cond_c
    const-string v0, "GET_CF"

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 604
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone$SSThread;->mSSThreadParmList:Ljava/util/ArrayList;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 605
    .local v2, commandInterfaceCFReason:I
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone$SSThread;->mSSThreadParmList:Ljava/util/ArrayList;

    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Message;

    .line 606
    .local v6, resp:Landroid/os/Message;
    invoke-static {}, Lcom/android/internal/telephony/MMTelSSUtils;->isSupportXcap()Z

    move-result v0

    if-nez v0, :cond_d

    .line 607
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone$SSThread;->this$0:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v3, 0x0

    const/4 v7, 0x0

    invoke-interface {v0, v2, v3, v7, v6}, Lcom/android/internal/telephony/CommandsInterface;->queryCallForwardStatus(IILjava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 609
    :cond_d
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone$SSThread;->this$0:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mMMTelSSTSL:Lcom/android/internal/telephony/MMTelSSTransport;

    const/4 v3, 0x1

    const/4 v7, 0x0

    invoke-virtual {v0, v2, v3, v7, v6}, Lcom/android/internal/telephony/MMTelSSTransport;->queryCallForwardStatus(IILjava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 611
    .end local v2           #commandInterfaceCFReason:I
    .end local v6           #resp:Landroid/os/Message;
    :cond_e
    const-string v0, "GET_CF_VT"

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 613
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone$SSThread;->mSSThreadParmList:Ljava/util/ArrayList;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 614
    .restart local v2       #commandInterfaceCFReason:I
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone$SSThread;->mSSThreadParmList:Ljava/util/ArrayList;

    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Message;

    .line 615
    .restart local v6       #resp:Landroid/os/Message;
    invoke-static {}, Lcom/android/internal/telephony/MMTelSSUtils;->isSupportXcap()Z

    move-result v0

    if-nez v0, :cond_f

    .line 616
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone$SSThread;->this$0:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v3, 0x0

    const/4 v7, 0x0

    invoke-interface {v0, v2, v3, v7, v6}, Lcom/android/internal/telephony/CommandsInterface;->queryCallForwardStatus(IILjava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 618
    :cond_f
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone$SSThread;->this$0:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mMMTelSSTSL:Lcom/android/internal/telephony/MMTelSSTransport;

    const/16 v3, 0x200

    const/4 v7, 0x0

    invoke-virtual {v0, v2, v3, v7, v6}, Lcom/android/internal/telephony/MMTelSSTransport;->queryCallForwardStatus(IILjava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 621
    .end local v2           #commandInterfaceCFReason:I
    .end local v6           #resp:Landroid/os/Message;
    :cond_10
    const-string v0, "SET_CF"

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 623
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone$SSThread;->mSSThreadParmList:Ljava/util/ArrayList;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 624
    .local v1, commandInterfaceCFAction:I
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone$SSThread;->mSSThreadParmList:Ljava/util/ArrayList;

    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 625
    .restart local v2       #commandInterfaceCFReason:I
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone$SSThread;->mSSThreadParmList:Ljava/util/ArrayList;

    const/4 v3, 0x3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 626
    .local v4, dialingNumber:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone$SSThread;->mSSThreadParmList:Ljava/util/ArrayList;

    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 627
    .local v5, timerSeconds:I
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone$SSThread;->mSSThreadParmList:Ljava/util/ArrayList;

    const/4 v3, 0x5

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Message;

    .line 628
    .restart local v6       #resp:Landroid/os/Message;
    invoke-static {}, Lcom/android/internal/telephony/MMTelSSUtils;->isSupportXcap()Z

    move-result v0

    if-nez v0, :cond_11

    .line 629
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone$SSThread;->this$0:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v3, 0x1

    invoke-interface/range {v0 .. v6}, Lcom/android/internal/telephony/CommandsInterface;->setCallForward(IIILjava/lang/String;ILandroid/os/Message;)V

    goto/16 :goto_0

    .line 636
    :cond_11
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone$SSThread;->this$0:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mMMTelSSTSL:Lcom/android/internal/telephony/MMTelSSTransport;

    const/4 v3, 0x1

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/MMTelSSTransport;->setCallForward(IIILjava/lang/String;ILandroid/os/Message;)V

    goto/16 :goto_0

    .line 644
    .end local v1           #commandInterfaceCFAction:I
    .end local v2           #commandInterfaceCFReason:I
    .end local v4           #dialingNumber:Ljava/lang/String;
    .end local v5           #timerSeconds:I
    .end local v6           #resp:Landroid/os/Message;
    :cond_12
    const-string v0, "SET_CF_VT"

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 646
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone$SSThread;->mSSThreadParmList:Ljava/util/ArrayList;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 647
    .restart local v1       #commandInterfaceCFAction:I
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone$SSThread;->mSSThreadParmList:Ljava/util/ArrayList;

    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 648
    .restart local v2       #commandInterfaceCFReason:I
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone$SSThread;->mSSThreadParmList:Ljava/util/ArrayList;

    const/4 v3, 0x3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 649
    .restart local v4       #dialingNumber:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone$SSThread;->mSSThreadParmList:Ljava/util/ArrayList;

    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 650
    .restart local v5       #timerSeconds:I
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone$SSThread;->mSSThreadParmList:Ljava/util/ArrayList;

    const/4 v3, 0x5

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Message;

    .line 651
    .restart local v6       #resp:Landroid/os/Message;
    invoke-static {}, Lcom/android/internal/telephony/MMTelSSUtils;->isSupportXcap()Z

    move-result v0

    if-nez v0, :cond_13

    .line 652
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone$SSThread;->this$0:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v3, 0x200

    invoke-interface/range {v0 .. v6}, Lcom/android/internal/telephony/CommandsInterface;->setCallForward(IIILjava/lang/String;ILandroid/os/Message;)V

    goto/16 :goto_0

    .line 659
    :cond_13
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone$SSThread;->this$0:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mMMTelSSTSL:Lcom/android/internal/telephony/MMTelSSTransport;

    const/16 v3, 0x200

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/MMTelSSTransport;->setCallForward(IIILjava/lang/String;ILandroid/os/Message;)V

    goto/16 :goto_0

    .line 667
    .end local v1           #commandInterfaceCFAction:I
    .end local v2           #commandInterfaceCFReason:I
    .end local v4           #dialingNumber:Ljava/lang/String;
    .end local v5           #timerSeconds:I
    .end local v6           #resp:Landroid/os/Message;
    :cond_14
    const-string v0, "GET_CB"

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 669
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone$SSThread;->mSSThreadParmList:Ljava/util/ArrayList;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 670
    .local v8, facility:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone$SSThread;->mSSThreadParmList:Ljava/util/ArrayList;

    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 671
    .local v10, password:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone$SSThread;->mSSThreadParmList:Ljava/util/ArrayList;

    const/4 v3, 0x3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/os/Message;

    .line 672
    .restart local v12       #onComplete:Landroid/os/Message;
    invoke-static {}, Lcom/android/internal/telephony/MMTelSSUtils;->isSupportXcap()Z

    move-result v0

    if-nez v0, :cond_15

    .line 673
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone$SSThread;->this$0:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v3, 0x1

    invoke-interface {v0, v8, v10, v3, v12}, Lcom/android/internal/telephony/CommandsInterface;->queryFacilityLock(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Message;)V

    goto/16 :goto_0

    .line 675
    :cond_15
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone$SSThread;->this$0:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mMMTelSSTSL:Lcom/android/internal/telephony/MMTelSSTransport;

    const/4 v3, 0x1

    invoke-virtual {v0, v8, v10, v3, v12}, Lcom/android/internal/telephony/MMTelSSTransport;->queryFacilityLock(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Message;)V

    goto/16 :goto_0

    .line 678
    .end local v8           #facility:Ljava/lang/String;
    .end local v10           #password:Ljava/lang/String;
    .end local v12           #onComplete:Landroid/os/Message;
    :cond_16
    const-string v0, "GET_CB_VT"

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 680
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone$SSThread;->mSSThreadParmList:Ljava/util/ArrayList;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 681
    .restart local v8       #facility:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone$SSThread;->mSSThreadParmList:Ljava/util/ArrayList;

    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 682
    .restart local v10       #password:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone$SSThread;->mSSThreadParmList:Ljava/util/ArrayList;

    const/4 v3, 0x3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/os/Message;

    .line 683
    .restart local v12       #onComplete:Landroid/os/Message;
    invoke-static {}, Lcom/android/internal/telephony/MMTelSSUtils;->isSupportXcap()Z

    move-result v0

    if-nez v0, :cond_17

    .line 684
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone$SSThread;->this$0:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v3, 0x200

    invoke-interface {v0, v8, v10, v3, v12}, Lcom/android/internal/telephony/CommandsInterface;->queryFacilityLock(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Message;)V

    goto/16 :goto_0

    .line 686
    :cond_17
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone$SSThread;->this$0:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mMMTelSSTSL:Lcom/android/internal/telephony/MMTelSSTransport;

    const/16 v3, 0x200

    invoke-virtual {v0, v8, v10, v3, v12}, Lcom/android/internal/telephony/MMTelSSTransport;->queryFacilityLock(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Message;)V

    goto/16 :goto_0

    .line 689
    .end local v8           #facility:Ljava/lang/String;
    .end local v10           #password:Ljava/lang/String;
    .end local v12           #onComplete:Landroid/os/Message;
    :cond_18
    const-string v0, "SET_CB"

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 691
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone$SSThread;->mSSThreadParmList:Ljava/util/ArrayList;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 692
    .restart local v8       #facility:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone$SSThread;->mSSThreadParmList:Ljava/util/ArrayList;

    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    .line 693
    .restart local v9       #enable:Z
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone$SSThread;->mSSThreadParmList:Ljava/util/ArrayList;

    const/4 v3, 0x3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 694
    .restart local v10       #password:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone$SSThread;->mSSThreadParmList:Ljava/util/ArrayList;

    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/os/Message;

    .line 695
    .restart local v12       #onComplete:Landroid/os/Message;
    invoke-static {}, Lcom/android/internal/telephony/MMTelSSUtils;->isSupportXcap()Z

    move-result v0

    if-nez v0, :cond_19

    .line 696
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone$SSThread;->this$0:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v7, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v11, 0x1

    invoke-interface/range {v7 .. v12}, Lcom/android/internal/telephony/CommandsInterface;->setFacilityLock(Ljava/lang/String;ZLjava/lang/String;ILandroid/os/Message;)V

    goto/16 :goto_0

    .line 698
    :cond_19
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone$SSThread;->this$0:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v7, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mMMTelSSTSL:Lcom/android/internal/telephony/MMTelSSTransport;

    const/4 v11, 0x1

    invoke-virtual/range {v7 .. v12}, Lcom/android/internal/telephony/MMTelSSTransport;->setFacilityLock(Ljava/lang/String;ZLjava/lang/String;ILandroid/os/Message;)V

    goto/16 :goto_0

    .line 701
    .end local v8           #facility:Ljava/lang/String;
    .end local v9           #enable:Z
    .end local v10           #password:Ljava/lang/String;
    .end local v12           #onComplete:Landroid/os/Message;
    :cond_1a
    const-string v0, "SET_CB_VT"

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 703
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone$SSThread;->mSSThreadParmList:Ljava/util/ArrayList;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 704
    .restart local v8       #facility:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone$SSThread;->mSSThreadParmList:Ljava/util/ArrayList;

    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    .line 705
    .restart local v9       #enable:Z
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone$SSThread;->mSSThreadParmList:Ljava/util/ArrayList;

    const/4 v3, 0x3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 706
    .restart local v10       #password:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone$SSThread;->mSSThreadParmList:Ljava/util/ArrayList;

    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/os/Message;

    .line 707
    .restart local v12       #onComplete:Landroid/os/Message;
    invoke-static {}, Lcom/android/internal/telephony/MMTelSSUtils;->isSupportXcap()Z

    move-result v0

    if-nez v0, :cond_1b

    .line 708
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone$SSThread;->this$0:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v7, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v11, 0x200

    invoke-interface/range {v7 .. v12}, Lcom/android/internal/telephony/CommandsInterface;->setFacilityLock(Ljava/lang/String;ZLjava/lang/String;ILandroid/os/Message;)V

    goto/16 :goto_0

    .line 710
    :cond_1b
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone$SSThread;->this$0:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v7, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mMMTelSSTSL:Lcom/android/internal/telephony/MMTelSSTransport;

    const/16 v11, 0x200

    invoke-virtual/range {v7 .. v12}, Lcom/android/internal/telephony/MMTelSSTransport;->setFacilityLock(Ljava/lang/String;ZLjava/lang/String;ILandroid/os/Message;)V

    goto/16 :goto_0
.end method
