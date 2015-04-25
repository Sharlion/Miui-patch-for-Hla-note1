.class Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;
.super Landroid/os/Handler;
.source "MMTelSSTransport.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/MMTelSSTransport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MMTelSSTransmitter"
.end annotation


# instance fields
.field dataLength:[B

.field final synthetic this$0:Lcom/android/internal/telephony/MMTelSSTransport;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/MMTelSSTransport;Landroid/os/Looper;)V
    .locals 1
    .parameter
    .parameter "looper"

    .prologue
    .line 470
    iput-object p1, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    .line 471
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 475
    const/4 v0, 0x4

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->dataLength:[B

    .line 472
    return-void
.end method


# virtual methods
.method public containSpecificMedia(Ljava/util/List;I)Z
    .locals 6
    .parameter
    .parameter "serviceClass"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I)Z"
        }
    .end annotation

    .prologue
    .local p1, mediaList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v2, 0x1

    .line 486
    if-nez p1, :cond_1

    .line 500
    :cond_0
    :goto_0
    return v2

    .line 487
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-eqz v3, :cond_0

    .line 491
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_4

    .line 492
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 493
    .local v1, mediaType:Ljava/lang/String;
    const-string v3, "MMTelSS"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mediaType="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",serviceClass="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    const-string v3, "audio"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    if-eq p2, v2, :cond_0

    if-eqz p2, :cond_0

    .line 496
    :cond_2
    const-string v3, "video"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/16 v3, 0x200

    if-eq p2, v3, :cond_0

    if-eqz p2, :cond_0

    .line 491
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 500
    .end local v1           #mediaType:Ljava/lang/String;
    :cond_4
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public copyOldRuleToNewRuleSet(Lcom/mediatek/simservs/client/policy/Rule;Lcom/mediatek/simservs/client/policy/RuleSet;)Lcom/mediatek/simservs/client/policy/Rule;
    .locals 10
    .parameter "oldRule"
    .parameter "newRuleSet"

    .prologue
    .line 1507
    invoke-virtual {p1}, Lcom/mediatek/simservs/client/policy/Rule;->getConditions()Lcom/mediatek/simservs/client/policy/Conditions;

    move-result-object v5

    .line 1508
    .local v5, oldCond:Lcom/mediatek/simservs/client/policy/Conditions;
    invoke-virtual {p1}, Lcom/mediatek/simservs/client/policy/Rule;->getActions()Lcom/mediatek/simservs/client/policy/Actions;

    move-result-object v4

    .line 1510
    .local v4, oldAction:Lcom/mediatek/simservs/client/policy/Actions;
    iget-object v8, p1, Lcom/mediatek/simservs/client/policy/Rule;->mId:Ljava/lang/String;

    invoke-virtual {p2, v8}, Lcom/mediatek/simservs/client/policy/RuleSet;->createNewRule(Ljava/lang/String;)Lcom/mediatek/simservs/client/policy/Rule;

    move-result-object v3

    .line 1511
    .local v3, newRule:Lcom/mediatek/simservs/client/policy/Rule;
    invoke-virtual {v3}, Lcom/mediatek/simservs/client/policy/Rule;->createConditions()Lcom/mediatek/simservs/client/policy/Conditions;

    move-result-object v2

    .line 1512
    .local v2, newCond:Lcom/mediatek/simservs/client/policy/Conditions;
    invoke-virtual {v3}, Lcom/mediatek/simservs/client/policy/Rule;->createActions()Lcom/mediatek/simservs/client/policy/Actions;

    move-result-object v1

    .line 1514
    .local v1, newAction:Lcom/mediatek/simservs/client/policy/Actions;
    if-eqz v5, :cond_a

    .line 1515
    invoke-virtual {v5}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendBusy()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1516
    invoke-virtual {v2}, Lcom/mediatek/simservs/client/policy/Conditions;->addBusy()V

    .line 1518
    :cond_0
    invoke-virtual {v5}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendCommunicationDiverted()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1519
    invoke-virtual {v2}, Lcom/mediatek/simservs/client/policy/Conditions;->addCommunicationDiverted()V

    .line 1521
    :cond_1
    invoke-virtual {v5}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendInternational()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1522
    invoke-virtual {v2}, Lcom/mediatek/simservs/client/policy/Conditions;->addInternational()V

    .line 1524
    :cond_2
    invoke-virtual {v5}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendInternationalExHc()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1525
    invoke-virtual {v2}, Lcom/mediatek/simservs/client/policy/Conditions;->addInternationalExHc()V

    .line 1527
    :cond_3
    invoke-virtual {v5}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendNoAnswer()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 1528
    invoke-virtual {v2}, Lcom/mediatek/simservs/client/policy/Conditions;->addNoAnswer()V

    .line 1530
    :cond_4
    invoke-virtual {v5}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendNotReachable()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 1531
    invoke-virtual {v2}, Lcom/mediatek/simservs/client/policy/Conditions;->addNotReachable()V

    .line 1533
    :cond_5
    invoke-virtual {v5}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendNotRegistered()Z

    move-result v8

    if-eqz v8, :cond_6

    .line 1534
    invoke-virtual {v2}, Lcom/mediatek/simservs/client/policy/Conditions;->addNotRegistered()V

    .line 1536
    :cond_6
    invoke-virtual {v5}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendPresenceStatus()Z

    move-result v8

    if-eqz v8, :cond_7

    .line 1537
    invoke-virtual {v2}, Lcom/mediatek/simservs/client/policy/Conditions;->addPresenceStatus()V

    .line 1539
    :cond_7
    invoke-virtual {v5}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendRoaming()Z

    move-result v8

    if-eqz v8, :cond_8

    .line 1540
    invoke-virtual {v2}, Lcom/mediatek/simservs/client/policy/Conditions;->addRoaming()V

    .line 1542
    :cond_8
    invoke-virtual {v5}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendRuleDeactivated()Z

    move-result v8

    if-eqz v8, :cond_9

    .line 1543
    invoke-virtual {v2}, Lcom/mediatek/simservs/client/policy/Conditions;->addRuleDeactivated()V

    .line 1546
    :cond_9
    invoke-virtual {v5}, Lcom/mediatek/simservs/client/policy/Conditions;->getMedias()Ljava/util/List;

    move-result-object v7

    .line 1547
    .local v7, oldMediaList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    if-ge v0, v8, :cond_a

    .line 1548
    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v2, v8}, Lcom/mediatek/simservs/client/policy/Conditions;->addMedia(Ljava/lang/String;)V

    .line 1547
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1552
    .end local v0           #i:I
    .end local v7           #oldMediaList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_a
    invoke-virtual {v4}, Lcom/mediatek/simservs/client/policy/Actions;->getFowardTo()Lcom/mediatek/simservs/client/policy/ForwardTo;

    move-result-object v6

    .line 1553
    .local v6, oldForward:Lcom/mediatek/simservs/client/policy/ForwardTo;
    if-eqz v6, :cond_b

    .line 1554
    invoke-virtual {v6}, Lcom/mediatek/simservs/client/policy/ForwardTo;->getTarget()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6}, Lcom/mediatek/simservs/client/policy/ForwardTo;->isNotifyCaller()Z

    move-result v9

    invoke-virtual {v1, v8, v9}, Lcom/mediatek/simservs/client/policy/Actions;->setFowardTo(Ljava/lang/String;Z)V

    .line 1557
    :cond_b
    invoke-virtual {v4}, Lcom/mediatek/simservs/client/policy/Actions;->isAllow()Z

    move-result v8

    invoke-virtual {v1, v8}, Lcom/mediatek/simservs/client/policy/Actions;->setAllow(Z)V

    .line 1558
    return-object v3
.end method

.method public copyOldRuleToNewRuleSetExceptSpecificMedia(Lcom/mediatek/simservs/client/policy/Rule;Lcom/mediatek/simservs/client/policy/RuleSet;I)V
    .locals 10
    .parameter "oldRule"
    .parameter "newRuleSet"
    .parameter "requestedServiceClass"

    .prologue
    .line 1572
    invoke-virtual {p1}, Lcom/mediatek/simservs/client/policy/Rule;->getConditions()Lcom/mediatek/simservs/client/policy/Conditions;

    move-result-object v5

    .line 1573
    .local v5, oldCond:Lcom/mediatek/simservs/client/policy/Conditions;
    invoke-virtual {p1}, Lcom/mediatek/simservs/client/policy/Rule;->getActions()Lcom/mediatek/simservs/client/policy/Actions;

    move-result-object v4

    .line 1623
    .local v4, oldAction:Lcom/mediatek/simservs/client/policy/Actions;
    if-eqz v5, :cond_0

    invoke-virtual {v5}, Lcom/mediatek/simservs/client/policy/Conditions;->getMedias()Ljava/util/List;

    move-result-object v8

    invoke-virtual {p0, v8, p3}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->hasExtraMedia(Ljava/util/List;I)Z

    move-result v8

    if-nez v8, :cond_0

    .line 1689
    :goto_0
    return-void

    .line 1629
    :cond_0
    iget-object v8, p1, Lcom/mediatek/simservs/client/policy/Rule;->mId:Ljava/lang/String;

    invoke-virtual {p2, v8}, Lcom/mediatek/simservs/client/policy/RuleSet;->createNewRule(Ljava/lang/String;)Lcom/mediatek/simservs/client/policy/Rule;

    move-result-object v3

    .line 1630
    .local v3, newRule:Lcom/mediatek/simservs/client/policy/Rule;
    invoke-virtual {v3}, Lcom/mediatek/simservs/client/policy/Rule;->createConditions()Lcom/mediatek/simservs/client/policy/Conditions;

    move-result-object v2

    .line 1631
    .local v2, newCond:Lcom/mediatek/simservs/client/policy/Conditions;
    invoke-virtual {v3}, Lcom/mediatek/simservs/client/policy/Rule;->createActions()Lcom/mediatek/simservs/client/policy/Actions;

    move-result-object v1

    .line 1633
    .local v1, newAction:Lcom/mediatek/simservs/client/policy/Actions;
    if-eqz v5, :cond_c

    .line 1634
    invoke-virtual {v5}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendBusy()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1635
    invoke-virtual {v2}, Lcom/mediatek/simservs/client/policy/Conditions;->addBusy()V

    .line 1637
    :cond_1
    invoke-virtual {v5}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendCommunicationDiverted()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1638
    invoke-virtual {v2}, Lcom/mediatek/simservs/client/policy/Conditions;->addCommunicationDiverted()V

    .line 1640
    :cond_2
    invoke-virtual {v5}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendInternational()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1641
    invoke-virtual {v2}, Lcom/mediatek/simservs/client/policy/Conditions;->addInternational()V

    .line 1643
    :cond_3
    invoke-virtual {v5}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendInternationalExHc()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 1644
    invoke-virtual {v2}, Lcom/mediatek/simservs/client/policy/Conditions;->addInternationalExHc()V

    .line 1646
    :cond_4
    invoke-virtual {v5}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendNoAnswer()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 1647
    invoke-virtual {v2}, Lcom/mediatek/simservs/client/policy/Conditions;->addNoAnswer()V

    .line 1649
    :cond_5
    invoke-virtual {v5}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendNotReachable()Z

    move-result v8

    if-eqz v8, :cond_6

    .line 1650
    invoke-virtual {v2}, Lcom/mediatek/simservs/client/policy/Conditions;->addNotReachable()V

    .line 1652
    :cond_6
    invoke-virtual {v5}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendNotRegistered()Z

    move-result v8

    if-eqz v8, :cond_7

    .line 1653
    invoke-virtual {v2}, Lcom/mediatek/simservs/client/policy/Conditions;->addNotRegistered()V

    .line 1655
    :cond_7
    invoke-virtual {v5}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendPresenceStatus()Z

    move-result v8

    if-eqz v8, :cond_8

    .line 1656
    invoke-virtual {v2}, Lcom/mediatek/simservs/client/policy/Conditions;->addPresenceStatus()V

    .line 1658
    :cond_8
    invoke-virtual {v5}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendRoaming()Z

    move-result v8

    if-eqz v8, :cond_9

    .line 1659
    invoke-virtual {v2}, Lcom/mediatek/simservs/client/policy/Conditions;->addRoaming()V

    .line 1661
    :cond_9
    invoke-virtual {v5}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendRuleDeactivated()Z

    move-result v8

    if-eqz v8, :cond_a

    .line 1662
    invoke-virtual {v2}, Lcom/mediatek/simservs/client/policy/Conditions;->addRuleDeactivated()V

    .line 1665
    :cond_a
    invoke-virtual {v5}, Lcom/mediatek/simservs/client/policy/Conditions;->getMedias()Ljava/util/List;

    move-result-object v7

    .line 1666
    .local v7, oldMediaList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    if-ge v0, v8, :cond_e

    .line 1667
    invoke-virtual {p0, p3}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->getMediaType(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_b

    .line 1668
    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v2, v8}, Lcom/mediatek/simservs/client/policy/Conditions;->addMedia(Ljava/lang/String;)V

    .line 1666
    :cond_b
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1674
    .end local v0           #i:I
    .end local v7           #oldMediaList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_c
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1675
    .restart local v7       #oldMediaList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-string v8, "audio"

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1676
    const-string v8, "video"

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1677
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_2
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    if-ge v0, v8, :cond_e

    .line 1678
    invoke-virtual {p0, p3}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->getMediaType(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_d

    .line 1679
    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v2, v8}, Lcom/mediatek/simservs/client/policy/Conditions;->addMedia(Ljava/lang/String;)V

    .line 1677
    :cond_d
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1684
    :cond_e
    invoke-virtual {v4}, Lcom/mediatek/simservs/client/policy/Actions;->getFowardTo()Lcom/mediatek/simservs/client/policy/ForwardTo;

    move-result-object v6

    .line 1685
    .local v6, oldForward:Lcom/mediatek/simservs/client/policy/ForwardTo;
    if-eqz v6, :cond_f

    .line 1686
    invoke-virtual {v6}, Lcom/mediatek/simservs/client/policy/ForwardTo;->getTarget()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6}, Lcom/mediatek/simservs/client/policy/ForwardTo;->isNotifyCaller()Z

    move-result v9

    invoke-virtual {v1, v8, v9}, Lcom/mediatek/simservs/client/policy/Actions;->setFowardTo(Ljava/lang/String;Z)V

    .line 1688
    :cond_f
    invoke-virtual {v4}, Lcom/mediatek/simservs/client/policy/Actions;->isAllow()Z

    move-result v8

    invoke-virtual {v1, v8}, Lcom/mediatek/simservs/client/policy/Actions;->setAllow(Z)V

    goto/16 :goto_0
.end method

.method public copyOldRuleToNewRuleSetWithAllow(Lcom/mediatek/simservs/client/policy/Rule;Lcom/mediatek/simservs/client/policy/RuleSet;Z)V
    .locals 2
    .parameter "oldRule"
    .parameter "newRuleSet"
    .parameter "allow"

    .prologue
    .line 1562
    const/4 v0, 0x0

    .line 1563
    .local v0, newAction:Lcom/mediatek/simservs/client/policy/Actions;
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->copyOldRuleToNewRuleSet(Lcom/mediatek/simservs/client/policy/Rule;Lcom/mediatek/simservs/client/policy/RuleSet;)Lcom/mediatek/simservs/client/policy/Rule;

    move-result-object v1

    .line 1564
    .local v1, newRule:Lcom/mediatek/simservs/client/policy/Rule;
    if-eqz v1, :cond_0

    .line 1565
    invoke-virtual {v1}, Lcom/mediatek/simservs/client/policy/Rule;->createActions()Lcom/mediatek/simservs/client/policy/Actions;

    move-result-object v0

    .line 1566
    invoke-virtual {v0, p3}, Lcom/mediatek/simservs/client/policy/Actions;->setAllow(Z)V

    .line 1568
    :cond_0
    return-void
.end method

.method public getMediaType(I)Ljava/lang/String;
    .locals 1
    .parameter "serviceClass"

    .prologue
    .line 514
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 515
    const-string v0, "audio"

    .line 519
    :goto_0
    return-object v0

    .line 516
    :cond_0
    const/16 v0, 0x200

    if-ne p1, v0, :cond_1

    .line 517
    const-string v0, "video"

    goto :goto_0

    .line 519
    :cond_1
    const-string v0, ""

    goto :goto_0
.end method

.method public handleCreateNewRuleForExistingCB(Lcom/mediatek/simservs/client/policy/RuleSet;Lcom/mediatek/simservs/client/policy/Rule;Ljava/lang/String;IILjava/lang/String;)Z
    .locals 12
    .parameter "newRuleSet"
    .parameter "r"
    .parameter "facility"
    .parameter "lockState"
    .parameter "setCBServiceClass"
    .parameter "RuleID"

    .prologue
    .line 1388
    invoke-virtual {p2}, Lcom/mediatek/simservs/client/policy/Rule;->getConditions()Lcom/mediatek/simservs/client/policy/Conditions;

    move-result-object v7

    .line 1389
    .local v7, cond:Lcom/mediatek/simservs/client/policy/Conditions;
    invoke-virtual {p2}, Lcom/mediatek/simservs/client/policy/Rule;->getActions()Lcom/mediatek/simservs/client/policy/Actions;

    move-result-object v1

    .line 1390
    .local v1, action:Lcom/mediatek/simservs/client/policy/Actions;
    const/4 v4, 0x1

    .line 1391
    .local v4, cbAllow:Z
    const/4 v2, 0x0

    .line 1394
    .local v2, addRuleDeactivatedNode:Z
    const-string v9, "ril.ss.disrulemode"

    const-string v10, "1"

    invoke-static {v9, v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1395
    .local v8, sDisableRuleMode:Ljava/lang/String;
    const-string v9, "MMTelSS"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "handleCreateNewRuleForExistingCB():sDisableRuleMode="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1396
    iget-object v9, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    iput v10, v9, Lcom/android/internal/telephony/MMTelSSTransport;->mDisableRuleMode:I

    .line 1398
    const/4 v9, 0x1

    move/from16 v0, p4

    if-ne v0, v9, :cond_4

    .line 1400
    const/4 v4, 0x0

    .line 1415
    :cond_0
    :goto_0
    move-object/from16 v0, p6

    invoke-virtual {p1, v0}, Lcom/mediatek/simservs/client/policy/RuleSet;->createNewRule(Ljava/lang/String;)Lcom/mediatek/simservs/client/policy/Rule;

    move-result-object v6

    .line 1416
    .local v6, cbRule:Lcom/mediatek/simservs/client/policy/Rule;
    invoke-virtual {v6}, Lcom/mediatek/simservs/client/policy/Rule;->createConditions()Lcom/mediatek/simservs/client/policy/Conditions;

    move-result-object v5

    .line 1417
    .local v5, cbCond:Lcom/mediatek/simservs/client/policy/Conditions;
    invoke-virtual {v6}, Lcom/mediatek/simservs/client/policy/Rule;->createActions()Lcom/mediatek/simservs/client/policy/Actions;

    move-result-object v3

    .line 1420
    .local v3, cbAction:Lcom/mediatek/simservs/client/policy/Actions;
    const/4 v9, 0x1

    move/from16 v0, p5

    if-ne v0, v9, :cond_7

    .line 1421
    const-string v9, "audio"

    invoke-virtual {v5, v9}, Lcom/mediatek/simservs/client/policy/Conditions;->addMedia(Ljava/lang/String;)V

    .line 1430
    :cond_1
    :goto_1
    iget-object v9, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget v9, v9, Lcom/android/internal/telephony/MMTelSSTransport;->mDisableRuleMode:I

    const/4 v10, 0x2

    if-ne v9, v10, :cond_2

    const/4 v9, 0x1

    if-ne v2, v9, :cond_2

    .line 1431
    invoke-virtual {v5}, Lcom/mediatek/simservs/client/policy/Conditions;->addRuleDeactivated()V

    .line 1434
    :cond_2
    const-string v9, "IR"

    invoke-virtual {p3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 1435
    invoke-virtual {v5}, Lcom/mediatek/simservs/client/policy/Conditions;->addRoaming()V

    .line 1436
    invoke-virtual {v3, v4}, Lcom/mediatek/simservs/client/policy/Actions;->setAllow(Z)V

    .line 1451
    :cond_3
    :goto_2
    const/4 v9, 0x1

    .end local v3           #cbAction:Lcom/mediatek/simservs/client/policy/Actions;
    .end local v5           #cbCond:Lcom/mediatek/simservs/client/policy/Conditions;
    .end local v6           #cbRule:Lcom/mediatek/simservs/client/policy/Rule;
    :goto_3
    return v9

    .line 1403
    :cond_4
    iget-object v9, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget v9, v9, Lcom/android/internal/telephony/MMTelSSTransport;->mDisableRuleMode:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_5

    .line 1404
    const-string v9, "MMTelSS"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Disable CB for serviceClass="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, p5

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " ,not create new rule for it to put in the new rule set"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1405
    const/4 v9, 0x0

    goto :goto_3

    .line 1406
    :cond_5
    iget-object v9, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget v9, v9, Lcom/android/internal/telephony/MMTelSSTransport;->mDisableRuleMode:I

    const/4 v10, 0x2

    if-ne v9, v10, :cond_6

    .line 1408
    const/4 v2, 0x1

    .line 1409
    const/4 v4, 0x0

    goto :goto_0

    .line 1410
    :cond_6
    iget-object v9, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget v9, v9, Lcom/android/internal/telephony/MMTelSSTransport;->mDisableRuleMode:I

    const/4 v10, 0x3

    if-ne v9, v10, :cond_0

    .line 1411
    const/4 v4, 0x1

    goto :goto_0

    .line 1422
    .restart local v3       #cbAction:Lcom/mediatek/simservs/client/policy/Actions;
    .restart local v5       #cbCond:Lcom/mediatek/simservs/client/policy/Conditions;
    .restart local v6       #cbRule:Lcom/mediatek/simservs/client/policy/Rule;
    :cond_7
    const/16 v9, 0x200

    move/from16 v0, p5

    if-ne v0, v9, :cond_8

    .line 1423
    const-string v9, "video"

    invoke-virtual {v5, v9}, Lcom/mediatek/simservs/client/policy/Conditions;->addMedia(Ljava/lang/String;)V

    goto :goto_1

    .line 1424
    :cond_8
    if-nez p5, :cond_1

    .line 1425
    const-string v9, "audio"

    invoke-virtual {v5, v9}, Lcom/mediatek/simservs/client/policy/Conditions;->addMedia(Ljava/lang/String;)V

    .line 1426
    const-string v9, "video"

    invoke-virtual {v5, v9}, Lcom/mediatek/simservs/client/policy/Conditions;->addMedia(Ljava/lang/String;)V

    goto :goto_1

    .line 1437
    :cond_9
    const-string v9, "AI"

    invoke-virtual {p3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    .line 1439
    invoke-virtual {v3, v4}, Lcom/mediatek/simservs/client/policy/Actions;->setAllow(Z)V

    goto :goto_2

    .line 1440
    :cond_a
    const-string v9, "OI"

    invoke-virtual {p3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b

    .line 1441
    invoke-virtual {v5}, Lcom/mediatek/simservs/client/policy/Conditions;->addInternational()V

    .line 1442
    invoke-virtual {v3, v4}, Lcom/mediatek/simservs/client/policy/Actions;->setAllow(Z)V

    goto :goto_2

    .line 1443
    :cond_b
    const-string v9, "OX"

    invoke-virtual {p3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_c

    .line 1444
    invoke-virtual {v5}, Lcom/mediatek/simservs/client/policy/Conditions;->addInternationalExHc()V

    .line 1445
    invoke-virtual {v3, v4}, Lcom/mediatek/simservs/client/policy/Actions;->setAllow(Z)V

    goto :goto_2

    .line 1446
    :cond_c
    const-string v9, "AO"

    invoke-virtual {p3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 1448
    invoke-virtual {v3, v4}, Lcom/mediatek/simservs/client/policy/Actions;->setAllow(Z)V

    goto/16 :goto_2
.end method

.method public handleCreateNewRuleForExistingCF(Lcom/mediatek/simservs/client/policy/RuleSet;Lcom/mediatek/simservs/client/policy/Rule;IIILjava/lang/String;ILjava/lang/String;)Z
    .locals 11
    .parameter "newRuleSet"
    .parameter "r"
    .parameter "setCFReason"
    .parameter "setCFAction"
    .parameter "setCFServiceClass"
    .parameter "setCFNumber"
    .parameter "setCFTimeSeconds"
    .parameter "RuleID"

    .prologue
    .line 1306
    invoke-virtual {p2}, Lcom/mediatek/simservs/client/policy/Rule;->getConditions()Lcom/mediatek/simservs/client/policy/Conditions;

    move-result-object v5

    .line 1307
    .local v5, cond:Lcom/mediatek/simservs/client/policy/Conditions;
    invoke-virtual {p2}, Lcom/mediatek/simservs/client/policy/Rule;->getActions()Lcom/mediatek/simservs/client/policy/Actions;

    move-result-object v1

    .line 1310
    .local v1, action:Lcom/mediatek/simservs/client/policy/Actions;
    const-string v8, "ril.ss.disrulemode"

    const-string v9, "1"

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1311
    .local v7, sDisableRuleMode:Ljava/lang/String;
    const-string v8, "MMTelSS"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "handleCreateNewRuleForExistingCF():sDisableRuleMode="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1312
    iget-object v8, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    iput v9, v8, Lcom/android/internal/telephony/MMTelSSTransport;->mDisableRuleMode:I

    .line 1315
    const/4 v8, 0x1

    if-eq p4, v8, :cond_0

    const/4 v8, 0x3

    if-ne p4, v8, :cond_9

    .line 1317
    :cond_0
    move-object/from16 v0, p8

    invoke-virtual {p1, v0}, Lcom/mediatek/simservs/client/policy/RuleSet;->createNewRule(Ljava/lang/String;)Lcom/mediatek/simservs/client/policy/Rule;

    move-result-object v4

    .line 1318
    .local v4, cfRule:Lcom/mediatek/simservs/client/policy/Rule;
    invoke-virtual {v4}, Lcom/mediatek/simservs/client/policy/Rule;->createConditions()Lcom/mediatek/simservs/client/policy/Conditions;

    move-result-object v3

    .line 1319
    .local v3, cfCond:Lcom/mediatek/simservs/client/policy/Conditions;
    invoke-virtual {v4}, Lcom/mediatek/simservs/client/policy/Rule;->createActions()Lcom/mediatek/simservs/client/policy/Actions;

    move-result-object v2

    .line 1320
    .local v2, cfAction:Lcom/mediatek/simservs/client/policy/Actions;
    const-string v8, "MMTelSS"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "handleCreateNewRuleForExistingCF():Enable CF with reason="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ",serviceClass="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move/from16 v0, p5

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ",number="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, p6

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ",cfTime="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move/from16 v0, p7

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1322
    const/4 v8, 0x1

    move/from16 v0, p5

    if-ne v0, v8, :cond_3

    .line 1323
    const-string v8, "audio"

    invoke-virtual {v3, v8}, Lcom/mediatek/simservs/client/policy/Conditions;->addMedia(Ljava/lang/String;)V

    .line 1331
    :cond_1
    :goto_0
    const/4 v8, 0x1

    if-ne p3, v8, :cond_5

    .line 1332
    invoke-virtual {v3}, Lcom/mediatek/simservs/client/policy/Conditions;->addBusy()V

    .line 1342
    :cond_2
    :goto_1
    const/4 v8, 0x1

    move-object/from16 v0, p6

    invoke-virtual {v2, v0, v8}, Lcom/mediatek/simservs/client/policy/Actions;->setFowardTo(Ljava/lang/String;Z)V

    .line 1343
    const/4 v8, 0x1

    .line 1379
    .end local v2           #cfAction:Lcom/mediatek/simservs/client/policy/Actions;
    .end local v3           #cfCond:Lcom/mediatek/simservs/client/policy/Conditions;
    .end local v4           #cfRule:Lcom/mediatek/simservs/client/policy/Rule;
    :goto_2
    return v8

    .line 1324
    .restart local v2       #cfAction:Lcom/mediatek/simservs/client/policy/Actions;
    .restart local v3       #cfCond:Lcom/mediatek/simservs/client/policy/Conditions;
    .restart local v4       #cfRule:Lcom/mediatek/simservs/client/policy/Rule;
    :cond_3
    const/16 v8, 0x200

    move/from16 v0, p5

    if-ne v0, v8, :cond_4

    .line 1325
    const-string v8, "video"

    invoke-virtual {v3, v8}, Lcom/mediatek/simservs/client/policy/Conditions;->addMedia(Ljava/lang/String;)V

    goto :goto_0

    .line 1326
    :cond_4
    if-nez p5, :cond_1

    .line 1327
    const-string v8, "audio"

    invoke-virtual {v3, v8}, Lcom/mediatek/simservs/client/policy/Conditions;->addMedia(Ljava/lang/String;)V

    .line 1328
    const-string v8, "video"

    invoke-virtual {v3, v8}, Lcom/mediatek/simservs/client/policy/Conditions;->addMedia(Ljava/lang/String;)V

    goto :goto_0

    .line 1333
    :cond_5
    const/4 v8, 0x2

    if-ne p3, v8, :cond_6

    .line 1334
    invoke-virtual {v3}, Lcom/mediatek/simservs/client/policy/Conditions;->addNoAnswer()V

    goto :goto_1

    .line 1335
    :cond_6
    const/4 v8, 0x3

    if-ne p3, v8, :cond_7

    .line 1336
    invoke-virtual {v3}, Lcom/mediatek/simservs/client/policy/Conditions;->addNotReachable()V

    goto :goto_1

    .line 1337
    :cond_7
    const/4 v8, 0x6

    if-ne p3, v8, :cond_8

    .line 1338
    invoke-virtual {v3}, Lcom/mediatek/simservs/client/policy/Conditions;->addNotRegistered()V

    goto :goto_1

    .line 1339
    :cond_8
    if-nez p3, :cond_2

    goto :goto_1

    .line 1346
    .end local v2           #cfAction:Lcom/mediatek/simservs/client/policy/Actions;
    .end local v3           #cfCond:Lcom/mediatek/simservs/client/policy/Conditions;
    .end local v4           #cfRule:Lcom/mediatek/simservs/client/policy/Rule;
    :cond_9
    if-nez p5, :cond_b

    .line 1347
    iget-object v8, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget v8, v8, Lcom/android/internal/telephony/MMTelSSTransport;->mDisableRuleMode:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_a

    .line 1348
    const-string v8, "MMTelSS"

    const-string v9, "Disable CF for serviceClass=0 (all media types):neither create new rule nor copy old rule to new rule set"

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1349
    const/4 v8, 0x0

    goto :goto_2

    .line 1350
    :cond_a
    iget-object v8, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget v8, v8, Lcom/android/internal/telephony/MMTelSSTransport;->mDisableRuleMode:I

    const/4 v9, 0x2

    if-ne v8, v9, :cond_f

    .line 1351
    const-string v8, "MMTelSS"

    const-string v9, "Disable CF for serviceClass=0 (all media types):copy old rule with <rule-deactivated> into new rule set"

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1352
    invoke-virtual {p0, p2, p1}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->copyOldRuleToNewRuleSet(Lcom/mediatek/simservs/client/policy/Rule;Lcom/mediatek/simservs/client/policy/RuleSet;)Lcom/mediatek/simservs/client/policy/Rule;

    move-result-object v6

    .line 1353
    .local v6, nr:Lcom/mediatek/simservs/client/policy/Rule;
    invoke-virtual {v6}, Lcom/mediatek/simservs/client/policy/Rule;->getConditions()Lcom/mediatek/simservs/client/policy/Conditions;

    move-result-object v8

    invoke-virtual {v8}, Lcom/mediatek/simservs/client/policy/Conditions;->addRuleDeactivated()V

    .line 1354
    const/4 v8, 0x1

    goto :goto_2

    .line 1356
    .end local v6           #nr:Lcom/mediatek/simservs/client/policy/Rule;
    :cond_b
    invoke-virtual {v5}, Lcom/mediatek/simservs/client/policy/Conditions;->getMedias()Ljava/util/List;

    move-result-object v8

    move/from16 v0, p5

    invoke-virtual {p0, v8, v0}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->hasExtraMedia(Ljava/util/List;I)Z

    move-result v8

    if-eqz v8, :cond_d

    .line 1357
    iget-object v8, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget v8, v8, Lcom/android/internal/telephony/MMTelSSTransport;->mDisableRuleMode:I

    const/4 v9, 0x2

    if-ne v8, v9, :cond_c

    .line 1358
    const-string v8, "MMTelSS"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Disable "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, p8

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ":copy old rule with <rule-deactivated> for this media types to new rule set"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1359
    invoke-virtual {p0, p2, p1}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->copyOldRuleToNewRuleSet(Lcom/mediatek/simservs/client/policy/Rule;Lcom/mediatek/simservs/client/policy/RuleSet;)Lcom/mediatek/simservs/client/policy/Rule;

    move-result-object v6

    .line 1360
    .restart local v6       #nr:Lcom/mediatek/simservs/client/policy/Rule;
    invoke-virtual {v6}, Lcom/mediatek/simservs/client/policy/Rule;->getConditions()Lcom/mediatek/simservs/client/policy/Conditions;

    move-result-object v8

    invoke-virtual {v8}, Lcom/mediatek/simservs/client/policy/Conditions;->addRuleDeactivated()V

    .line 1363
    .end local v6           #nr:Lcom/mediatek/simservs/client/policy/Rule;
    :cond_c
    const-string v8, "MMTelSS"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Disable "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, p8

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ":copy old rule for remaining media types to new rule set"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1365
    move/from16 v0, p5

    invoke-virtual {p0, p2, p1, v0}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->copyOldRuleToNewRuleSetExceptSpecificMedia(Lcom/mediatek/simservs/client/policy/Rule;Lcom/mediatek/simservs/client/policy/RuleSet;I)V

    .line 1366
    const/4 v8, 0x1

    goto/16 :goto_2

    .line 1369
    :cond_d
    iget-object v8, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget v8, v8, Lcom/android/internal/telephony/MMTelSSTransport;->mDisableRuleMode:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_e

    .line 1370
    const-string v8, "MMTelSS"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Disable "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, p8

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ":not copy old rule to new rule set"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1371
    const/4 v8, 0x0

    goto/16 :goto_2

    .line 1372
    :cond_e
    iget-object v8, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget v8, v8, Lcom/android/internal/telephony/MMTelSSTransport;->mDisableRuleMode:I

    const/4 v9, 0x2

    if-ne v8, v9, :cond_f

    .line 1373
    const-string v8, "MMTelSS"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Disable "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, p8

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ":copy old rule with <rule-deactivated> to new rule set"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1374
    invoke-virtual {p0, p2, p1}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->copyOldRuleToNewRuleSet(Lcom/mediatek/simservs/client/policy/Rule;Lcom/mediatek/simservs/client/policy/RuleSet;)Lcom/mediatek/simservs/client/policy/Rule;

    move-result-object v6

    .line 1375
    .restart local v6       #nr:Lcom/mediatek/simservs/client/policy/Rule;
    invoke-virtual {v6}, Lcom/mediatek/simservs/client/policy/Rule;->getConditions()Lcom/mediatek/simservs/client/policy/Conditions;

    move-result-object v8

    invoke-virtual {v8}, Lcom/mediatek/simservs/client/policy/Conditions;->addRuleDeactivated()V

    .line 1376
    const/4 v8, 0x1

    goto/16 :goto_2

    .line 1379
    .end local v6           #nr:Lcom/mediatek/simservs/client/policy/Rule;
    :cond_f
    const/4 v8, 0x0

    goto/16 :goto_2
.end method

.method public handleCreateNewRuleForReqCB(Lcom/mediatek/simservs/client/policy/RuleSet;Ljava/lang/String;IILjava/lang/String;)Z
    .locals 6
    .parameter "newRuleSet"
    .parameter "facility"
    .parameter "lockState"
    .parameter "setCBServiceClass"
    .parameter "RuleID"

    .prologue
    const/4 v4, 0x1

    .line 1457
    const/4 v1, 0x1

    .line 1459
    .local v1, cbAllow:Z
    if-ne p3, v4, :cond_2

    .line 1461
    const/4 v1, 0x0

    .line 1471
    invoke-virtual {p1, p5}, Lcom/mediatek/simservs/client/policy/RuleSet;->createNewRule(Ljava/lang/String;)Lcom/mediatek/simservs/client/policy/Rule;

    move-result-object v3

    .line 1472
    .local v3, cbRule:Lcom/mediatek/simservs/client/policy/Rule;
    invoke-virtual {v3}, Lcom/mediatek/simservs/client/policy/Rule;->createConditions()Lcom/mediatek/simservs/client/policy/Conditions;

    move-result-object v2

    .line 1473
    .local v2, cbCond:Lcom/mediatek/simservs/client/policy/Conditions;
    invoke-virtual {v3}, Lcom/mediatek/simservs/client/policy/Rule;->createActions()Lcom/mediatek/simservs/client/policy/Actions;

    move-result-object v0

    .line 1476
    .local v0, cbAction:Lcom/mediatek/simservs/client/policy/Actions;
    if-ne p4, v4, :cond_3

    .line 1477
    const-string v5, "audio"

    invoke-virtual {v2, v5}, Lcom/mediatek/simservs/client/policy/Conditions;->addMedia(Ljava/lang/String;)V

    .line 1485
    :cond_0
    :goto_0
    const-string v5, "IR"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1486
    invoke-virtual {v2}, Lcom/mediatek/simservs/client/policy/Conditions;->addRoaming()V

    .line 1487
    invoke-virtual {v0, v1}, Lcom/mediatek/simservs/client/policy/Actions;->setAllow(Z)V

    .line 1502
    .end local v0           #cbAction:Lcom/mediatek/simservs/client/policy/Actions;
    .end local v2           #cbCond:Lcom/mediatek/simservs/client/policy/Conditions;
    .end local v3           #cbRule:Lcom/mediatek/simservs/client/policy/Rule;
    :cond_1
    :goto_1
    return v4

    .line 1466
    :cond_2
    const/4 v1, 0x1

    .line 1467
    const-string v4, "MMTelSS"

    const-string v5, "Disable one non-existed rule!Return from handleCreateNewRuleForReqCB() directly!"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1468
    const/4 v4, 0x0

    goto :goto_1

    .line 1478
    .restart local v0       #cbAction:Lcom/mediatek/simservs/client/policy/Actions;
    .restart local v2       #cbCond:Lcom/mediatek/simservs/client/policy/Conditions;
    .restart local v3       #cbRule:Lcom/mediatek/simservs/client/policy/Rule;
    :cond_3
    const/16 v5, 0x200

    if-ne p4, v5, :cond_4

    .line 1479
    const-string v5, "video"

    invoke-virtual {v2, v5}, Lcom/mediatek/simservs/client/policy/Conditions;->addMedia(Ljava/lang/String;)V

    goto :goto_0

    .line 1480
    :cond_4
    if-nez p4, :cond_0

    .line 1481
    const-string v5, "audio"

    invoke-virtual {v2, v5}, Lcom/mediatek/simservs/client/policy/Conditions;->addMedia(Ljava/lang/String;)V

    .line 1482
    const-string v5, "video"

    invoke-virtual {v2, v5}, Lcom/mediatek/simservs/client/policy/Conditions;->addMedia(Ljava/lang/String;)V

    goto :goto_0

    .line 1488
    :cond_5
    const-string v5, "AI"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 1490
    invoke-virtual {v0, v1}, Lcom/mediatek/simservs/client/policy/Actions;->setAllow(Z)V

    goto :goto_1

    .line 1491
    :cond_6
    const-string v5, "OI"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 1492
    invoke-virtual {v2}, Lcom/mediatek/simservs/client/policy/Conditions;->addInternational()V

    .line 1493
    invoke-virtual {v0, v1}, Lcom/mediatek/simservs/client/policy/Actions;->setAllow(Z)V

    goto :goto_1

    .line 1494
    :cond_7
    const-string v5, "OX"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 1495
    invoke-virtual {v2}, Lcom/mediatek/simservs/client/policy/Conditions;->addInternationalExHc()V

    .line 1496
    invoke-virtual {v0, v1}, Lcom/mediatek/simservs/client/policy/Actions;->setAllow(Z)V

    goto :goto_1

    .line 1497
    :cond_8
    const-string v5, "AO"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1499
    invoke-virtual {v0, v1}, Lcom/mediatek/simservs/client/policy/Actions;->setAllow(Z)V

    goto :goto_1
.end method

.method public handleGetCB(Lcom/android/internal/telephony/MMTelSSRequest;)V
    .locals 25
    .parameter "rr"

    .prologue
    .line 821
    const/16 v21, -0x1

    .line 822
    .local v21, reqNo:I
    const/16 v24, -0x1

    .line 823
    .local v24, serialNo:I
    const/4 v10, -0x1

    .line 824
    .local v10, cbServiceClass:I
    const-string v9, ""

    .line 825
    .local v9, cBFacility:Ljava/lang/String;
    const/4 v2, 0x1

    new-array v13, v2, [I

    .line 827
    .local v13, get_cb_response:[I
    const/4 v2, 0x0

    const/4 v3, 0x0

    aput v3, v13, v2

    .line 830
    :try_start_0
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 831
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v21

    .line 832
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v24

    .line 833
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 834
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 835
    const-string v2, "MMTelSS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Read GET_CB Facility="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",serviceClass="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 837
    const/16 v18, 0x0

    .line 840
    .local v18, num_of_comparision:I
    const/16 v2, 0x210

    if-ne v10, v2, :cond_0

    .line 841
    const/16 v10, 0x200

    .line 844
    :cond_0
    if-nez v10, :cond_4

    .line 845
    const/4 v10, 0x1

    .line 847
    const/16 v18, 0x2

    .line 848
    const-string v2, "MMTelSS"

    const-string v3, "cbServiceClass==0, try to 1st match by using SERVICE_CLASS_VOICE"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 856
    :goto_0
    const-string v2, "AO"

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "OI"

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "OX"

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 860
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    invoke-static {}, Lcom/android/internal/telephony/MMTelSSUtils;->getXui()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/telephony/MMTelSSTransport;->mXui:Ljava/lang/String;

    .line 861
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    invoke-static {}, Lcom/android/internal/telephony/MMTelSSUtils;->getXcapRootUri()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/telephony/MMTelSSTransport;->mXcapRoot:Ljava/lang/String;

    .line 862
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    invoke-static {}, Lcom/android/internal/telephony/MMTelSSUtils;->getXIntendedId()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/telephony/MMTelSSTransport;->mXIntendedId:Ljava/lang/String;

    .line 864
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v3, v3, Lcom/android/internal/telephony/MMTelSSTransport;->mXui:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v4, v4, Lcom/android/internal/telephony/MMTelSSTransport;->mXcapRoot:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v5, v5, Lcom/android/internal/telephony/MMTelSSTransport;->mXIntendedId:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v6, v6, Lcom/android/internal/telephony/MMTelSSTransport;->mUserName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v7, v7, Lcom/android/internal/telephony/MMTelSSTransport;->mPassword:Ljava/lang/String;

    invoke-virtual/range {v2 .. v7}, Lcom/android/internal/telephony/MMTelSSTransport;->setSimservsInitParameters(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 865
    invoke-static {}, Lcom/android/internal/telephony/MMTelSSTransport;->access$000()Lcom/mediatek/simservs/client/SimServs;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/mediatek/simservs/client/SimServs;->getOutgoingCommunicationBarring(Z)Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;

    move-result-object v19

    .line 866
    .local v19, ocb:Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;
    invoke-virtual/range {v19 .. v19}, Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;->getRuleSet()Lcom/mediatek/simservs/client/policy/RuleSet;

    move-result-object v23

    .line 867
    .local v23, ruleSet:Lcom/mediatek/simservs/client/policy/RuleSet;
    const/16 v22, 0x0

    .line 869
    .local v22, ruleList:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    if-eqz v23, :cond_8

    .line 870
    invoke-virtual/range {v23 .. v23}, Lcom/mediatek/simservs/client/policy/RuleSet;->getRules()Ljava/util/List;

    move-result-object v22

    .line 871
    if-nez v22, :cond_5

    .line 872
    const-string v2, "MMTelSS"

    const-string v3, "Dump Get MO CB XML: ruleset with empty rules"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 881
    :goto_1
    if-eqz v22, :cond_11

    .line 882
    const/16 v16, 0x0

    .local v16, it:I
    :goto_2
    move/from16 v0, v16

    move/from16 v1, v18

    if-ge v0, v1, :cond_6

    .line 883
    const/4 v2, 0x1

    move/from16 v0, v16

    if-ne v0, v2, :cond_2

    const/4 v2, 0x1

    if-ne v10, v2, :cond_2

    .line 885
    const/16 v10, 0x200

    .line 886
    const-string v2, "MMTelSS"

    const-string v3, "cbServiceClass==0, try to 2nd match by using SERVICE_CLASS_VIDEO"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 889
    :cond_2
    const/4 v14, 0x0

    .local v14, i:I
    :goto_3
    invoke-interface/range {v22 .. v22}, Ljava/util/List;->size()I

    move-result v2

    if-ge v14, v2, :cond_3

    .line 890
    move-object/from16 v0, v22

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/mediatek/simservs/client/policy/Rule;

    .line 891
    .local v20, r:Lcom/mediatek/simservs/client/policy/Rule;
    invoke-virtual/range {v20 .. v20}, Lcom/mediatek/simservs/client/policy/Rule;->getConditions()Lcom/mediatek/simservs/client/policy/Conditions;

    move-result-object v11

    .line 892
    .local v11, cond:Lcom/mediatek/simservs/client/policy/Conditions;
    invoke-virtual/range {v20 .. v20}, Lcom/mediatek/simservs/client/policy/Rule;->getActions()Lcom/mediatek/simservs/client/policy/Actions;

    move-result-object v8

    .line 893
    .local v8, action:Lcom/mediatek/simservs/client/policy/Actions;
    const/16 v17, 0x0

    .line 895
    .local v17, mediaList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-string v2, "MMTelSS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleGetCB():MO-facility="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",action="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v8}, Lcom/mediatek/simservs/client/policy/Actions;->isAllow()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 896
    if-eqz v11, :cond_9

    .line 897
    const-string v2, "MMTelSS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleGetCB():MO-international="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v11}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendInternational()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",roaming="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v11}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendRoaming()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 898
    invoke-virtual {v11}, Lcom/mediatek/simservs/client/policy/Conditions;->getMedias()Ljava/util/List;

    move-result-object v17

    .line 903
    :goto_4
    if-eqz v11, :cond_b

    invoke-virtual {v11}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendInternational()Z

    move-result v2

    if-eqz v2, :cond_b

    const-string v2, "OI"

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v10}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->containSpecificMedia(Ljava/util/List;I)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 906
    invoke-virtual {v8}, Lcom/mediatek/simservs/client/policy/Actions;->isAllow()Z

    move-result v2

    if-nez v2, :cond_a

    if-eqz v11, :cond_a

    invoke-virtual {v11}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendRuleDeactivated()Z

    move-result v2

    if-nez v2, :cond_a

    .line 908
    const/4 v2, 0x0

    aget v3, v13, v2

    or-int/2addr v3, v10

    aput v3, v13, v2

    .line 882
    .end local v8           #action:Lcom/mediatek/simservs/client/policy/Actions;
    .end local v11           #cond:Lcom/mediatek/simservs/client/policy/Conditions;
    .end local v17           #mediaList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v20           #r:Lcom/mediatek/simservs/client/policy/Rule;
    :cond_3
    :goto_5
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_2

    .line 851
    .end local v14           #i:I
    .end local v16           #it:I
    .end local v19           #ocb:Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;
    .end local v22           #ruleList:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    .end local v23           #ruleSet:Lcom/mediatek/simservs/client/policy/RuleSet;
    :cond_4
    const/16 v18, 0x1

    goto/16 :goto_0

    .line 874
    .restart local v19       #ocb:Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;
    .restart local v22       #ruleList:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    .restart local v23       #ruleSet:Lcom/mediatek/simservs/client/policy/RuleSet;
    :cond_5
    const-string v2, "MMTelSS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Dump Get MO CB XML:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v23 .. v23}, Lcom/mediatek/simservs/client/policy/RuleSet;->toXmlString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 1017
    .end local v18           #num_of_comparision:I
    .end local v19           #ocb:Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;
    .end local v22           #ruleList:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    .end local v23           #ruleSet:Lcom/mediatek/simservs/client/policy/RuleSet;
    :catch_0
    move-exception v12

    .line 1018
    .local v12, e:Ljava/lang/Exception;
    const-string v2, "MMTelSS"

    const-string v3, "handleGetCB():Start to Print Stack Trace"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1019
    const/4 v2, 0x0

    const/4 v3, 0x0

    aput v3, v13, v2

    .line 1020
    invoke-virtual {v12}, Ljava/lang/Exception;->printStackTrace()V

    .line 1033
    .end local v12           #e:Ljava/lang/Exception;
    :cond_6
    :goto_6
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v2, :cond_7

    .line 1051
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v3, 0x0

    invoke-static {v2, v13, v3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 1052
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 1055
    :cond_7
    return-void

    .line 877
    .restart local v18       #num_of_comparision:I
    .restart local v19       #ocb:Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;
    .restart local v22       #ruleList:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    .restart local v23       #ruleSet:Lcom/mediatek/simservs/client/policy/RuleSet;
    :cond_8
    :try_start_1
    const-string v2, "MMTelSS"

    const-string v3, "No MO related CB rules in remote server"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 900
    .restart local v8       #action:Lcom/mediatek/simservs/client/policy/Actions;
    .restart local v11       #cond:Lcom/mediatek/simservs/client/policy/Conditions;
    .restart local v14       #i:I
    .restart local v16       #it:I
    .restart local v17       #mediaList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .restart local v20       #r:Lcom/mediatek/simservs/client/policy/Rule;
    :cond_9
    const-string v2, "MMTelSS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleGetCB():Empty MO cond (cond==null) for this rule="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 910
    :cond_a
    const/4 v2, 0x0

    const/4 v3, 0x0

    aput v3, v13, v2

    goto :goto_5

    .line 913
    :cond_b
    if-eqz v11, :cond_e

    invoke-virtual {v11}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendInternationalExHc()Z

    move-result v2

    if-eqz v2, :cond_e

    const-string v2, "OX"

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v10}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->containSpecificMedia(Ljava/util/List;I)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 916
    invoke-virtual {v8}, Lcom/mediatek/simservs/client/policy/Actions;->isAllow()Z

    move-result v2

    if-nez v2, :cond_d

    if-eqz v11, :cond_d

    invoke-virtual {v11}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendRuleDeactivated()Z

    move-result v2

    if-nez v2, :cond_d

    .line 918
    const/4 v2, 0x0

    aget v3, v13, v2

    or-int/2addr v3, v10

    aput v3, v13, v2

    .line 889
    :cond_c
    :goto_7
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_3

    .line 920
    :cond_d
    const/4 v2, 0x0

    const/4 v3, 0x0

    aput v3, v13, v2

    goto :goto_7

    .line 922
    :cond_e
    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v10}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->isBAOC(Lcom/mediatek/simservs/client/policy/Conditions;I)Z

    move-result v2

    if-eqz v2, :cond_c

    const-string v2, "AO"

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 926
    invoke-virtual {v8}, Lcom/mediatek/simservs/client/policy/Actions;->isAllow()Z

    move-result v2

    if-nez v2, :cond_10

    if-eqz v11, :cond_f

    if-eqz v11, :cond_10

    invoke-virtual {v11}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendRuleDeactivated()Z

    move-result v2

    if-nez v2, :cond_10

    .line 928
    :cond_f
    const/4 v2, 0x0

    aget v3, v13, v2

    or-int/2addr v3, v10

    aput v3, v13, v2

    goto/16 :goto_5

    .line 930
    :cond_10
    const/4 v2, 0x0

    const/4 v3, 0x0

    aput v3, v13, v2

    goto/16 :goto_5

    .line 938
    .end local v8           #action:Lcom/mediatek/simservs/client/policy/Actions;
    .end local v11           #cond:Lcom/mediatek/simservs/client/policy/Conditions;
    .end local v14           #i:I
    .end local v16           #it:I
    .end local v17           #mediaList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v20           #r:Lcom/mediatek/simservs/client/policy/Rule;
    :cond_11
    const-string v2, "MMTelSS"

    const-string v3, "ruleList is null, MO CB is disabled"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 939
    const/4 v2, 0x0

    const/4 v3, 0x0

    aput v3, v13, v2

    goto/16 :goto_6

    .line 942
    .end local v19           #ocb:Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;
    .end local v22           #ruleList:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    .end local v23           #ruleSet:Lcom/mediatek/simservs/client/policy/RuleSet;
    :cond_12
    const-string v2, "AI"

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_13

    const-string v2, "IR"

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 945
    :cond_13
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    invoke-static {}, Lcom/android/internal/telephony/MMTelSSUtils;->getXui()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/telephony/MMTelSSTransport;->mXui:Ljava/lang/String;

    .line 946
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    invoke-static {}, Lcom/android/internal/telephony/MMTelSSUtils;->getXcapRootUri()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/telephony/MMTelSSTransport;->mXcapRoot:Ljava/lang/String;

    .line 947
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    invoke-static {}, Lcom/android/internal/telephony/MMTelSSUtils;->getXIntendedId()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/telephony/MMTelSSTransport;->mXIntendedId:Ljava/lang/String;

    .line 949
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v3, v3, Lcom/android/internal/telephony/MMTelSSTransport;->mXui:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v4, v4, Lcom/android/internal/telephony/MMTelSSTransport;->mXcapRoot:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v5, v5, Lcom/android/internal/telephony/MMTelSSTransport;->mXIntendedId:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v6, v6, Lcom/android/internal/telephony/MMTelSSTransport;->mUserName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v7, v7, Lcom/android/internal/telephony/MMTelSSTransport;->mPassword:Ljava/lang/String;

    invoke-virtual/range {v2 .. v7}, Lcom/android/internal/telephony/MMTelSSTransport;->setSimservsInitParameters(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 950
    invoke-static {}, Lcom/android/internal/telephony/MMTelSSTransport;->access$000()Lcom/mediatek/simservs/client/SimServs;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/mediatek/simservs/client/SimServs;->getIncomingCommunicationBarring(Z)Lcom/mediatek/simservs/client/IncomingCommunicationBarring;

    move-result-object v15

    .line 951
    .local v15, icb:Lcom/mediatek/simservs/client/IncomingCommunicationBarring;
    invoke-virtual {v15}, Lcom/mediatek/simservs/client/IncomingCommunicationBarring;->getRuleSet()Lcom/mediatek/simservs/client/policy/RuleSet;

    move-result-object v23

    .line 952
    .restart local v23       #ruleSet:Lcom/mediatek/simservs/client/policy/RuleSet;
    const/16 v22, 0x0

    .line 954
    .restart local v22       #ruleList:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    if-eqz v23, :cond_17

    .line 955
    invoke-virtual/range {v23 .. v23}, Lcom/mediatek/simservs/client/policy/RuleSet;->getRules()Ljava/util/List;

    move-result-object v22

    .line 956
    if-nez v22, :cond_16

    .line 957
    const-string v2, "MMTelSS"

    const-string v3, "Dump Get MT CB XML: ruleset with empty rules"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 966
    :goto_8
    if-eqz v22, :cond_1e

    .line 967
    const/16 v16, 0x0

    .restart local v16       #it:I
    :goto_9
    move/from16 v0, v16

    move/from16 v1, v18

    if-ge v0, v1, :cond_6

    .line 968
    const/4 v2, 0x1

    move/from16 v0, v16

    if-ne v0, v2, :cond_14

    const/4 v2, 0x1

    if-ne v10, v2, :cond_14

    .line 970
    const/16 v10, 0x200

    .line 971
    const-string v2, "MMTelSS"

    const-string v3, "cbServiceClass==0, try to 2nd match by using SERVICE_CLASS_VIDEO"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 973
    :cond_14
    const/4 v14, 0x0

    .restart local v14       #i:I
    :goto_a
    invoke-interface/range {v22 .. v22}, Ljava/util/List;->size()I

    move-result v2

    if-ge v14, v2, :cond_1d

    .line 974
    move-object/from16 v0, v22

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/mediatek/simservs/client/policy/Rule;

    .line 975
    .restart local v20       #r:Lcom/mediatek/simservs/client/policy/Rule;
    invoke-virtual/range {v20 .. v20}, Lcom/mediatek/simservs/client/policy/Rule;->getConditions()Lcom/mediatek/simservs/client/policy/Conditions;

    move-result-object v11

    .line 976
    .restart local v11       #cond:Lcom/mediatek/simservs/client/policy/Conditions;
    invoke-virtual/range {v20 .. v20}, Lcom/mediatek/simservs/client/policy/Rule;->getActions()Lcom/mediatek/simservs/client/policy/Actions;

    move-result-object v8

    .line 977
    .restart local v8       #action:Lcom/mediatek/simservs/client/policy/Actions;
    const/16 v17, 0x0

    .line 979
    .restart local v17       #mediaList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-string v2, "MMTelSS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleGetCB():MT-facility="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",action="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v8}, Lcom/mediatek/simservs/client/policy/Actions;->isAllow()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 980
    if-eqz v11, :cond_18

    .line 981
    const-string v2, "MMTelSS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleGetCB():MT-international="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v11}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendInternational()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",roaming="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v11}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendRoaming()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 982
    invoke-virtual {v11}, Lcom/mediatek/simservs/client/policy/Conditions;->getMedias()Ljava/util/List;

    move-result-object v17

    .line 987
    :goto_b
    if-eqz v11, :cond_1a

    invoke-virtual {v11}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendRoaming()Z

    move-result v2

    if-eqz v2, :cond_1a

    const-string v2, "IR"

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v10}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->containSpecificMedia(Ljava/util/List;I)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 990
    invoke-virtual {v8}, Lcom/mediatek/simservs/client/policy/Actions;->isAllow()Z

    move-result v2

    if-nez v2, :cond_19

    if-eqz v11, :cond_19

    invoke-virtual {v11}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendRuleDeactivated()Z

    move-result v2

    if-nez v2, :cond_19

    .line 992
    const/4 v2, 0x0

    aget v3, v13, v2

    or-int/2addr v3, v10

    aput v3, v13, v2

    .line 973
    :cond_15
    :goto_c
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_a

    .line 959
    .end local v8           #action:Lcom/mediatek/simservs/client/policy/Actions;
    .end local v11           #cond:Lcom/mediatek/simservs/client/policy/Conditions;
    .end local v14           #i:I
    .end local v16           #it:I
    .end local v17           #mediaList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v20           #r:Lcom/mediatek/simservs/client/policy/Rule;
    :cond_16
    const-string v2, "MMTelSS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Dump Get MT CB XML:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v23 .. v23}, Lcom/mediatek/simservs/client/policy/RuleSet;->toXmlString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    .line 962
    :cond_17
    const-string v2, "MMTelSS"

    const-string v3, "No MT related CB rules in remote server"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    .line 984
    .restart local v8       #action:Lcom/mediatek/simservs/client/policy/Actions;
    .restart local v11       #cond:Lcom/mediatek/simservs/client/policy/Conditions;
    .restart local v14       #i:I
    .restart local v16       #it:I
    .restart local v17       #mediaList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .restart local v20       #r:Lcom/mediatek/simservs/client/policy/Rule;
    :cond_18
    const-string v2, "MMTelSS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleGetCB():Empty MT cond (cond==null) for this rule="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    .line 994
    :cond_19
    const/4 v2, 0x0

    const/4 v3, 0x0

    aput v3, v13, v2

    goto :goto_c

    .line 996
    :cond_1a
    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v10}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->isBAIC(Lcom/mediatek/simservs/client/policy/Conditions;I)Z

    move-result v2

    if-eqz v2, :cond_15

    const-string v2, "AI"

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 1000
    invoke-virtual {v8}, Lcom/mediatek/simservs/client/policy/Actions;->isAllow()Z

    move-result v2

    if-nez v2, :cond_1c

    if-eqz v11, :cond_1b

    if-eqz v11, :cond_1c

    invoke-virtual {v11}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendRuleDeactivated()Z

    move-result v2

    if-nez v2, :cond_1c

    .line 1002
    :cond_1b
    const/4 v2, 0x0

    aget v3, v13, v2

    or-int/2addr v3, v10

    aput v3, v13, v2

    goto :goto_c

    .line 1004
    :cond_1c
    const/4 v2, 0x0

    const/4 v3, 0x0

    aput v3, v13, v2

    goto :goto_c

    .line 967
    .end local v8           #action:Lcom/mediatek/simservs/client/policy/Actions;
    .end local v11           #cond:Lcom/mediatek/simservs/client/policy/Conditions;
    .end local v17           #mediaList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v20           #r:Lcom/mediatek/simservs/client/policy/Rule;
    :cond_1d
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_9

    .line 1012
    .end local v14           #i:I
    .end local v16           #it:I
    :cond_1e
    const-string v2, "MMTelSS"

    const-string v3, "ruleList is null, MT CB is disabled"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1013
    const/4 v2, 0x0

    const/4 v3, 0x0

    aput v3, v13, v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_6
.end method

.method public handleGetCF(Lcom/android/internal/telephony/MMTelSSRequest;)V
    .locals 33
    .parameter "rr"

    .prologue
    .line 1058
    const/16 v28, -0x1

    .line 1059
    .local v28, reqNo:I
    const/16 v31, -0x1

    .line 1060
    .local v31, serialNo:I
    const/16 v22, 0x1

    .line 1061
    .local v22, numInfos:I
    const/16 v18, 0x0

    .line 1063
    .local v18, infos:[Lcom/android/internal/telephony/CallForwardInfo;
    const/4 v13, -0x1

    .line 1064
    .local v13, cfAction:I
    const/16 v26, -0x1

    .line 1065
    .local v26, reason:I
    const/16 v32, -0x1

    .line 1066
    .local v32, serviceClass:I
    const-string v14, ""

    .line 1067
    .local v14, cfNumber:Ljava/lang/String;
    const-string v9, "+886936010888"

    .line 1068
    .local v9, CFPhoneNum:Ljava/lang/String;
    const/16 v24, 0x0

    .line 1069
    .local v24, queryStatus:I
    const/16 v21, 0x14

    .line 1087
    .local v21, noReplyTimer:I
    :try_start_0
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 1088
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    move-result v28

    .line 1089
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    move-result v31

    .line 1090
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 1091
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    move-result v26

    .line 1092
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    move-result v32

    .line 1093
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v3}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 1096
    const/4 v3, 0x1

    move/from16 v0, v26

    if-ne v0, v3, :cond_0

    .line 1097
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/telephony/MMTelSSRequest;->requestParm:Ljava/lang/Object;

    move-object/from16 v27, v0

    check-cast v27, Lcom/mediatek/simservs/client/policy/Rule;

    .line 1098
    .local v27, recvRule:Lcom/mediatek/simservs/client/policy/Rule;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    move-object/from16 v0, v27

    invoke-virtual {v3, v0}, Lcom/android/internal/telephony/MMTelSSTransport;->dumpCFRule(Lcom/mediatek/simservs/client/policy/Rule;)V

    .line 1101
    .end local v27           #recvRule:Lcom/mediatek/simservs/client/policy/Rule;
    :cond_0
    const-string v3, "MMTelSS"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Read from CF parcel:req="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static/range {v28 .. v28}, Lcom/android/internal/telephony/MMTelSSTransport;->requestToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",cfAction="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",reason="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v26

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",serviceClass="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v32

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",number="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1104
    const/16 v3, 0x210

    move/from16 v0, v32

    if-ne v0, v3, :cond_1

    .line 1105
    const/16 v32, 0x200

    .line 1110
    :cond_1
    const/16 v23, 0x0

    .line 1112
    .local v23, num_of_comparision:I
    if-nez v32, :cond_5

    .line 1113
    const/16 v32, 0x1

    .line 1115
    const/16 v23, 0x2

    .line 1116
    const-string v3, "MMTelSS"

    const-string v4, "serviceClass==0, try to 1st match by using SERVICE_CLASS_VOICE"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1122
    :goto_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    invoke-static {}, Lcom/android/internal/telephony/MMTelSSUtils;->getXui()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/android/internal/telephony/MMTelSSTransport;->mXui:Ljava/lang/String;

    .line 1123
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    invoke-static {}, Lcom/android/internal/telephony/MMTelSSUtils;->getXcapRootUri()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/android/internal/telephony/MMTelSSTransport;->mXcapRoot:Ljava/lang/String;

    .line 1124
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    invoke-static {}, Lcom/android/internal/telephony/MMTelSSUtils;->getXIntendedId()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/android/internal/telephony/MMTelSSTransport;->mXIntendedId:Ljava/lang/String;

    .line 1126
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v4, v4, Lcom/android/internal/telephony/MMTelSSTransport;->mXui:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v5, v5, Lcom/android/internal/telephony/MMTelSSTransport;->mXcapRoot:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v6, v6, Lcom/android/internal/telephony/MMTelSSTransport;->mXIntendedId:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v7, v7, Lcom/android/internal/telephony/MMTelSSTransport;->mUserName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v8, v8, Lcom/android/internal/telephony/MMTelSSTransport;->mPassword:Ljava/lang/String;

    invoke-virtual/range {v3 .. v8}, Lcom/android/internal/telephony/MMTelSSTransport;->setSimservsInitParameters(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1129
    invoke-static {}, Lcom/android/internal/telephony/MMTelSSTransport;->access$000()Lcom/mediatek/simservs/client/SimServs;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/mediatek/simservs/client/SimServs;->getCommunicationDiversion(Z)Lcom/mediatek/simservs/client/CommunicationDiversion;

    move-result-object v11

    .line 1138
    .local v11, cd:Lcom/mediatek/simservs/client/CommunicationDiversion;
    const-string v3, "MMTelSS"

    const-string v4, "handleGetCF():GetRuleSet from cd"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1140
    invoke-virtual {v11}, Lcom/mediatek/simservs/client/CommunicationDiversion;->getRuleSet()Lcom/mediatek/simservs/client/policy/RuleSet;

    move-result-object v30

    .line 1142
    .local v30, ruleSet:Lcom/mediatek/simservs/client/policy/RuleSet;
    const/16 v29, 0x0

    .line 1144
    .local v29, ruleList:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    if-eqz v30, :cond_6

    .line 1145
    invoke-virtual/range {v30 .. v30}, Lcom/mediatek/simservs/client/policy/RuleSet;->getRules()Ljava/util/List;

    move-result-object v29

    .line 1151
    :goto_1
    if-eqz v29, :cond_f

    .line 1152
    move/from16 v0, v23

    new-array v0, v0, [Lcom/android/internal/telephony/CallForwardInfo;

    move-object/from16 v18, v0

    .line 1153
    const/16 v19, 0x0

    .local v19, it:I
    :goto_2
    move/from16 v0, v19

    move/from16 v1, v23

    if-ge v0, v1, :cond_10

    .line 1154
    const/4 v3, 0x1

    move/from16 v0, v19

    if-ne v0, v3, :cond_2

    const/4 v3, 0x1

    move/from16 v0, v32

    if-ne v0, v3, :cond_2

    .line 1156
    const/16 v32, 0x200

    .line 1157
    const-string v3, "MMTelSS"

    const-string v4, "serviceClass==0, try to 2nd match by using SERVICE_CLASS_VIDEO"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1161
    :cond_2
    const/16 v17, 0x0

    .local v17, i:I
    :goto_3
    invoke-interface/range {v29 .. v29}, Ljava/util/List;->size()I

    move-result v3

    move/from16 v0, v17

    if-ge v0, v3, :cond_e

    .line 1162
    move-object/from16 v0, v29

    move/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/mediatek/simservs/client/policy/Rule;

    .line 1163
    .local v25, r:Lcom/mediatek/simservs/client/policy/Rule;
    invoke-virtual/range {v25 .. v25}, Lcom/mediatek/simservs/client/policy/Rule;->getConditions()Lcom/mediatek/simservs/client/policy/Conditions;

    move-result-object v15

    .line 1164
    .local v15, cond:Lcom/mediatek/simservs/client/policy/Conditions;
    invoke-virtual/range {v25 .. v25}, Lcom/mediatek/simservs/client/policy/Rule;->getActions()Lcom/mediatek/simservs/client/policy/Actions;

    move-result-object v10

    .line 1165
    .local v10, action:Lcom/mediatek/simservs/client/policy/Actions;
    const/16 v20, 0x0

    .line 1167
    .local v20, mediaList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v15, :cond_8

    .line 1168
    const-string v3, "MMTelSS"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleGetCF():busy="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v15}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendBusy()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",NoAnswer="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v15}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendNoAnswer()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",NoReachable="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v15}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendNotReachable()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",NotRegistered="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v15}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendNotRegistered()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1169
    invoke-virtual {v15}, Lcom/mediatek/simservs/client/policy/Conditions;->getMedias()Ljava/util/List;

    move-result-object v20

    .line 1175
    :goto_4
    const/4 v3, 0x2

    if-ne v13, v3, :cond_9

    if-nez v26, :cond_9

    if-eqz v15, :cond_3

    invoke-virtual {v15}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendBusy()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {v15}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendNoAnswer()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {v15}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendNotReachable()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {v15}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendRuleDeactivated()Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_3
    if-nez v15, :cond_9

    :cond_4
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->containSpecificMedia(Ljava/util/List;I)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 1181
    const-string v3, "MMTelSS"

    const-string v4, "handleGetCF():CFU is enabled on server"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1183
    const/16 v24, 0x1

    .line 1184
    invoke-virtual {v10}, Lcom/mediatek/simservs/client/policy/Actions;->getFowardTo()Lcom/mediatek/simservs/client/policy/ForwardTo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mediatek/simservs/client/policy/ForwardTo;->getTarget()Ljava/lang/String;

    move-result-object v9

    .line 1186
    invoke-virtual {v11}, Lcom/mediatek/simservs/client/CommunicationDiversion;->getNoReplyTimer()I

    move-result v21

    .line 1161
    :goto_5
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_3

    .line 1119
    .end local v10           #action:Lcom/mediatek/simservs/client/policy/Actions;
    .end local v11           #cd:Lcom/mediatek/simservs/client/CommunicationDiversion;
    .end local v15           #cond:Lcom/mediatek/simservs/client/policy/Conditions;
    .end local v17           #i:I
    .end local v19           #it:I
    .end local v20           #mediaList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v25           #r:Lcom/mediatek/simservs/client/policy/Rule;
    .end local v29           #ruleList:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    .end local v30           #ruleSet:Lcom/mediatek/simservs/client/policy/RuleSet;
    :cond_5
    const/16 v23, 0x1

    goto/16 :goto_0

    .line 1147
    .restart local v11       #cd:Lcom/mediatek/simservs/client/CommunicationDiversion;
    .restart local v29       #ruleList:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    .restart local v30       #ruleSet:Lcom/mediatek/simservs/client/policy/RuleSet;
    :cond_6
    const-string v3, "MMTelSS"

    const-string v4, "No CF related rules in remote server"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 1253
    .end local v11           #cd:Lcom/mediatek/simservs/client/CommunicationDiversion;
    .end local v23           #num_of_comparision:I
    .end local v29           #ruleList:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    .end local v30           #ruleSet:Lcom/mediatek/simservs/client/policy/RuleSet;
    :catch_0
    move-exception v16

    .line 1254
    .local v16, e:Ljava/lang/Exception;
    const-string v3, "MMTelSS"

    const-string v4, "handleGetCF():Start to Print Stack Trace"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1255
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Exception;->printStackTrace()V

    .line 1259
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v3, :cond_10

    .line 1260
    const/4 v3, 0x2

    invoke-static {v3}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object v12

    .line 1261
    .local v12, ce:Lcom/android/internal/telephony/CommandException;
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v4, 0x0

    invoke-static {v3, v4, v12}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 1262
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    .line 1299
    .end local v12           #ce:Lcom/android/internal/telephony/CommandException;
    .end local v16           #e:Ljava/lang/Exception;
    :cond_7
    :goto_6
    return-void

    .line 1171
    .restart local v10       #action:Lcom/mediatek/simservs/client/policy/Actions;
    .restart local v11       #cd:Lcom/mediatek/simservs/client/CommunicationDiversion;
    .restart local v15       #cond:Lcom/mediatek/simservs/client/policy/Conditions;
    .restart local v17       #i:I
    .restart local v19       #it:I
    .restart local v20       #mediaList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .restart local v23       #num_of_comparision:I
    .restart local v25       #r:Lcom/mediatek/simservs/client/policy/Rule;
    .restart local v29       #ruleList:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    .restart local v30       #ruleSet:Lcom/mediatek/simservs/client/policy/RuleSet;
    :cond_8
    :try_start_1
    const-string v3, "MMTelSS"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleGetCF():Empty cond (cond==null) for this rule="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v25

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 1188
    :cond_9
    const/4 v3, 0x2

    if-ne v13, v3, :cond_a

    const/4 v3, 0x1

    move/from16 v0, v26

    if-ne v0, v3, :cond_a

    if-eqz v15, :cond_a

    invoke-virtual {v15}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendBusy()Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_a

    invoke-virtual {v15}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendRuleDeactivated()Z

    move-result v3

    if-nez v3, :cond_a

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->containSpecificMedia(Ljava/util/List;I)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 1191
    const-string v3, "MMTelSS"

    const-string v4, "handleGetCF():CFB is enabled on server"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1193
    const/16 v24, 0x1

    .line 1194
    invoke-virtual {v10}, Lcom/mediatek/simservs/client/policy/Actions;->getFowardTo()Lcom/mediatek/simservs/client/policy/ForwardTo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mediatek/simservs/client/policy/ForwardTo;->getTarget()Ljava/lang/String;

    move-result-object v9

    .line 1195
    invoke-virtual {v11}, Lcom/mediatek/simservs/client/CommunicationDiversion;->getNoReplyTimer()I

    move-result v21

    goto/16 :goto_5

    .line 1196
    :cond_a
    const/4 v3, 0x2

    if-ne v13, v3, :cond_b

    const/4 v3, 0x2

    move/from16 v0, v26

    if-ne v0, v3, :cond_b

    if-eqz v15, :cond_b

    invoke-virtual {v15}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendNoAnswer()Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_b

    invoke-virtual {v15}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendRuleDeactivated()Z

    move-result v3

    if-nez v3, :cond_b

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->containSpecificMedia(Ljava/util/List;I)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 1199
    const-string v3, "MMTelSS"

    const-string v4, "handleGetCF():CFNoAnswer is enabled on server"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1201
    const/16 v24, 0x1

    .line 1202
    invoke-virtual {v10}, Lcom/mediatek/simservs/client/policy/Actions;->getFowardTo()Lcom/mediatek/simservs/client/policy/ForwardTo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mediatek/simservs/client/policy/ForwardTo;->getTarget()Ljava/lang/String;

    move-result-object v9

    .line 1203
    invoke-virtual {v11}, Lcom/mediatek/simservs/client/CommunicationDiversion;->getNoReplyTimer()I

    move-result v21

    goto/16 :goto_5

    .line 1204
    :cond_b
    const/4 v3, 0x2

    if-ne v13, v3, :cond_c

    const/4 v3, 0x3

    move/from16 v0, v26

    if-ne v0, v3, :cond_c

    if-eqz v15, :cond_c

    invoke-virtual {v15}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendNotReachable()Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_c

    invoke-virtual {v15}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendRuleDeactivated()Z

    move-result v3

    if-nez v3, :cond_c

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->containSpecificMedia(Ljava/util/List;I)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 1207
    const-string v3, "MMTelSS"

    const-string v4, "handleGetCF():CFNotReachable is enabled on server"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1209
    const/16 v24, 0x1

    .line 1210
    invoke-virtual {v10}, Lcom/mediatek/simservs/client/policy/Actions;->getFowardTo()Lcom/mediatek/simservs/client/policy/ForwardTo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mediatek/simservs/client/policy/ForwardTo;->getTarget()Ljava/lang/String;

    move-result-object v9

    .line 1211
    invoke-virtual {v11}, Lcom/mediatek/simservs/client/CommunicationDiversion;->getNoReplyTimer()I

    move-result v21

    goto/16 :goto_5

    .line 1213
    :cond_c
    const/4 v3, 0x2

    if-ne v13, v3, :cond_d

    const/4 v3, 0x6

    move/from16 v0, v26

    if-ne v0, v3, :cond_d

    if-eqz v15, :cond_d

    invoke-virtual {v15}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendNotRegistered()Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_d

    invoke-virtual {v15}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendRuleDeactivated()Z

    move-result v3

    if-nez v3, :cond_d

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->containSpecificMedia(Ljava/util/List;I)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 1216
    const-string v3, "MMTelSS"

    const-string v4, "handleGetCF():CFNotRegistered is enabled on server"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1218
    const/16 v24, 0x1

    .line 1219
    invoke-virtual {v10}, Lcom/mediatek/simservs/client/policy/Actions;->getFowardTo()Lcom/mediatek/simservs/client/policy/ForwardTo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mediatek/simservs/client/policy/ForwardTo;->getTarget()Ljava/lang/String;

    move-result-object v9

    .line 1220
    invoke-virtual {v11}, Lcom/mediatek/simservs/client/CommunicationDiversion;->getNoReplyTimer()I

    move-result v21

    goto/16 :goto_5

    .line 1224
    :cond_d
    const-string v3, "MMTelSS"

    const-string v4, "handleGetCF()from xcap:Not matched this rule!"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 1232
    .end local v10           #action:Lcom/mediatek/simservs/client/policy/Actions;
    .end local v15           #cond:Lcom/mediatek/simservs/client/policy/Conditions;
    .end local v20           #mediaList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v25           #r:Lcom/mediatek/simservs/client/policy/Rule;
    :cond_e
    new-instance v3, Lcom/android/internal/telephony/CallForwardInfo;

    invoke-direct {v3}, Lcom/android/internal/telephony/CallForwardInfo;-><init>()V

    aput-object v3, v18, v19

    .line 1233
    aget-object v3, v18, v19

    move/from16 v0, v24

    iput v0, v3, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    .line 1234
    aget-object v3, v18, v19

    move/from16 v0, v26

    iput v0, v3, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    .line 1235
    aget-object v3, v18, v19

    move/from16 v0, v32

    iput v0, v3, Lcom/android/internal/telephony/CallForwardInfo;->serviceClass:I

    .line 1236
    aget-object v3, v18, v19

    const/4 v4, 0x0

    iput v4, v3, Lcom/android/internal/telephony/CallForwardInfo;->toa:I

    .line 1237
    aget-object v3, v18, v19

    iput-object v9, v3, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    .line 1238
    aget-object v3, v18, v19

    move/from16 v0, v21

    iput v0, v3, Lcom/android/internal/telephony/CallForwardInfo;->timeSeconds:I

    .line 1241
    const/16 v24, 0x0

    .line 1242
    const-string v9, "+886936010888"

    .line 1243
    const/16 v21, 0x14

    .line 1153
    add-int/lit8 v19, v19, 0x1

    goto/16 :goto_2

    .line 1248
    .end local v17           #i:I
    .end local v19           #it:I
    :cond_f
    const-string v3, "MMTelSS"

    const-string v4, "handleGetCF():get null ruleList"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1249
    const/4 v3, 0x0

    new-array v0, v3, [Lcom/android/internal/telephony/CallForwardInfo;

    move-object/from16 v18, v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1250
    const/16 v24, 0x0

    .line 1284
    .end local v11           #cd:Lcom/mediatek/simservs/client/CommunicationDiversion;
    .end local v23           #num_of_comparision:I
    .end local v29           #ruleList:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    .end local v30           #ruleSet:Lcom/mediatek/simservs/client/policy/RuleSet;
    :cond_10
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v3, :cond_7

    .line 1295
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v4, 0x0

    move-object/from16 v0, v18

    invoke-static {v3, v0, v4}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 1296
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_6
.end method

.method public handleGetCLIP(Lcom/android/internal/telephony/MMTelSSRequest;)V
    .locals 13
    .parameter "rr"

    .prologue
    .line 605
    const/4 v11, -0x1

    .line 606
    .local v11, reqNo:I
    const/4 v12, -0x1

    .line 607
    .local v12, serialNo:I
    const/4 v9, 0x0

    .line 610
    .local v9, get_clip_result:I
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    invoke-static {}, Lcom/android/internal/telephony/MMTelSSUtils;->getXui()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/telephony/MMTelSSTransport;->mXui:Ljava/lang/String;

    .line 611
    iget-object v0, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    invoke-static {}, Lcom/android/internal/telephony/MMTelSSUtils;->getXcapRootUri()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/telephony/MMTelSSTransport;->mXcapRoot:Ljava/lang/String;

    .line 612
    iget-object v0, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    invoke-static {}, Lcom/android/internal/telephony/MMTelSSUtils;->getXIntendedId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/telephony/MMTelSSTransport;->mXIntendedId:Ljava/lang/String;

    .line 614
    iget-object v0, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v1, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v1, v1, Lcom/android/internal/telephony/MMTelSSTransport;->mXui:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v2, v2, Lcom/android/internal/telephony/MMTelSSTransport;->mXcapRoot:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v3, v3, Lcom/android/internal/telephony/MMTelSSTransport;->mXIntendedId:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v4, v4, Lcom/android/internal/telephony/MMTelSSTransport;->mUserName:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v5, v5, Lcom/android/internal/telephony/MMTelSSTransport;->mPassword:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/MMTelSSTransport;->setSimservsInitParameters(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 615
    invoke-static {}, Lcom/android/internal/telephony/MMTelSSTransport;->access$000()Lcom/mediatek/simservs/client/SimServs;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/mediatek/simservs/client/SimServs;->getOriginatingIdentityPresentation(Z)Lcom/mediatek/simservs/client/OriginatingIdentityPresentation;

    move-result-object v10

    .line 616
    .local v10, oip:Lcom/mediatek/simservs/client/OriginatingIdentityPresentation;
    const-string v0, "MMTelSS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleGetCLIP():active="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v10}, Lcom/mediatek/simservs/client/OriginatingIdentityPresentation;->isActive()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 617
    invoke-virtual {v10}, Lcom/mediatek/simservs/client/OriginatingIdentityPresentation;->isActive()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_2

    .line 618
    const/4 v9, 0x1

    .line 635
    .end local v10           #oip:Lcom/mediatek/simservs/client/OriginatingIdentityPresentation;
    :cond_0
    :goto_0
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v0, :cond_1

    .line 636
    const/4 v0, 0x1

    new-array v8, v0, [I

    .line 637
    .local v8, get_clip_response:[I
    const/4 v0, 0x0

    aput v9, v8, v0

    .line 638
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v1, 0x0

    invoke-static {v0, v8, v1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 639
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 642
    .end local v8           #get_clip_response:[I
    :cond_1
    :goto_1
    return-void

    .line 620
    .restart local v10       #oip:Lcom/mediatek/simservs/client/OriginatingIdentityPresentation;
    :cond_2
    const/4 v9, 0x0

    goto :goto_0

    .line 623
    .end local v10           #oip:Lcom/mediatek/simservs/client/OriginatingIdentityPresentation;
    :catch_0
    move-exception v7

    .line 624
    .local v7, e:Ljava/lang/Exception;
    const-string v0, "MMTelSS"

    const-string v1, "handleGetCLIP():Start to Print Stack Trace"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 625
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    .line 626
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v0, :cond_0

    .line 627
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object v6

    .line 628
    .local v6, ce:Lcom/android/internal/telephony/CommandException;
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v1, 0x0

    invoke-static {v0, v1, v6}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 629
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_1
.end method

.method public handleGetCLIR(Lcom/android/internal/telephony/MMTelSSRequest;)V
    .locals 13
    .parameter "rr"

    .prologue
    const/4 v12, 0x1

    .line 552
    const/4 v10, 0x1

    .line 553
    .local v10, presentation_mode:I
    const/4 v8, 0x0

    .line 557
    .local v8, get_clir_result:I
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    invoke-static {}, Lcom/android/internal/telephony/MMTelSSUtils;->getXui()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/telephony/MMTelSSTransport;->mXui:Ljava/lang/String;

    .line 558
    iget-object v0, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    invoke-static {}, Lcom/android/internal/telephony/MMTelSSUtils;->getXcapRootUri()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/telephony/MMTelSSTransport;->mXcapRoot:Ljava/lang/String;

    .line 559
    iget-object v0, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    invoke-static {}, Lcom/android/internal/telephony/MMTelSSUtils;->getXIntendedId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/telephony/MMTelSSTransport;->mXIntendedId:Ljava/lang/String;

    .line 561
    iget-object v0, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v1, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v1, v1, Lcom/android/internal/telephony/MMTelSSTransport;->mXui:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v2, v2, Lcom/android/internal/telephony/MMTelSSTransport;->mXcapRoot:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v3, v3, Lcom/android/internal/telephony/MMTelSSTransport;->mXIntendedId:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v4, v4, Lcom/android/internal/telephony/MMTelSSTransport;->mUserName:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v5, v5, Lcom/android/internal/telephony/MMTelSSTransport;->mPassword:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/MMTelSSTransport;->setSimservsInitParameters(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 562
    invoke-static {}, Lcom/android/internal/telephony/MMTelSSTransport;->access$000()Lcom/mediatek/simservs/client/SimServs;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/mediatek/simservs/client/SimServs;->getOriginatingIdentityPresentationRestriction(Z)Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;

    move-result-object v9

    .line 563
    .local v9, oir:Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;
    invoke-virtual {v9}, Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;->isDefaultPresentationRestricted()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v11

    .line 564
    .local v11, restricted:Z
    if-ne v11, v12, :cond_1

    .line 566
    const/4 v10, 0x3

    .line 567
    const/4 v8, 0x1

    .line 594
    .end local v9           #oir:Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;
    .end local v11           #restricted:Z
    :goto_0
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v0, :cond_0

    .line 595
    const/4 v0, 0x2

    new-array v7, v0, [I

    .line 596
    .local v7, get_clir_response:[I
    const/4 v0, 0x0

    aput v8, v7, v0

    .line 597
    aput v10, v7, v12

    .line 598
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v1, 0x0

    invoke-static {v0, v7, v1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 599
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 601
    .end local v7           #get_clir_response:[I
    :cond_0
    return-void

    .line 570
    .restart local v9       #oir:Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;
    .restart local v11       #restricted:Z
    :cond_1
    const/4 v10, 0x4

    .line 571
    const/4 v8, 0x2

    goto :goto_0

    .line 574
    .end local v9           #oir:Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;
    .end local v11           #restricted:Z
    :catch_0
    move-exception v6

    .line 576
    .local v6, e:Ljava/lang/Exception;
    const-string v0, "MMTelSS"

    const-string v1, "handleGetCLIR():Start to Print Stack Trace"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 577
    const/4 v10, 0x2

    .line 578
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public handleGetCOLP(Lcom/android/internal/telephony/MMTelSSRequest;)V
    .locals 14
    .parameter "rr"

    .prologue
    const/4 v13, 0x0

    const/4 v12, 0x2

    .line 650
    const/4 v9, -0x1

    .line 651
    .local v9, reqNo:I
    const/4 v10, -0x1

    .line 652
    .local v10, serialNo:I
    new-array v8, v12, [I

    .line 655
    .local v8, get_colp_response:[I
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    invoke-static {}, Lcom/android/internal/telephony/MMTelSSUtils;->getXui()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/telephony/MMTelSSTransport;->mXui:Ljava/lang/String;

    .line 656
    iget-object v0, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    invoke-static {}, Lcom/android/internal/telephony/MMTelSSUtils;->getXcapRootUri()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/telephony/MMTelSSTransport;->mXcapRoot:Ljava/lang/String;

    .line 657
    iget-object v0, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    invoke-static {}, Lcom/android/internal/telephony/MMTelSSUtils;->getXIntendedId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/telephony/MMTelSSTransport;->mXIntendedId:Ljava/lang/String;

    .line 659
    iget-object v0, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v1, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v1, v1, Lcom/android/internal/telephony/MMTelSSTransport;->mXui:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v2, v2, Lcom/android/internal/telephony/MMTelSSTransport;->mXcapRoot:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v3, v3, Lcom/android/internal/telephony/MMTelSSTransport;->mXIntendedId:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v4, v4, Lcom/android/internal/telephony/MMTelSSTransport;->mUserName:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v5, v5, Lcom/android/internal/telephony/MMTelSSTransport;->mPassword:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/MMTelSSTransport;->setSimservsInitParameters(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 660
    invoke-static {}, Lcom/android/internal/telephony/MMTelSSTransport;->access$000()Lcom/mediatek/simservs/client/SimServs;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/mediatek/simservs/client/SimServs;->getTerminatingIdentityPresentation(Z)Lcom/mediatek/simservs/client/TerminatingIdentityPresentation;

    move-result-object v11

    .line 661
    .local v11, tip:Lcom/mediatek/simservs/client/TerminatingIdentityPresentation;
    const-string v0, "MMTelSS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleGetCOLP():active="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v11}, Lcom/mediatek/simservs/client/TerminatingIdentityPresentation;->isActive()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 662
    invoke-virtual {v11}, Lcom/mediatek/simservs/client/TerminatingIdentityPresentation;->isActive()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 664
    const/4 v0, 0x0

    const/4 v1, 0x1

    aput v1, v8, v0

    .line 665
    const/4 v0, 0x1

    const/4 v1, 0x1

    aput v1, v8, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 682
    .end local v11           #tip:Lcom/mediatek/simservs/client/TerminatingIdentityPresentation;
    :cond_0
    :goto_0
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v0, :cond_1

    .line 686
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-static {v0, v8, v13}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 687
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 690
    :cond_1
    :goto_1
    return-void

    .line 667
    .restart local v11       #tip:Lcom/mediatek/simservs/client/TerminatingIdentityPresentation;
    :cond_2
    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_1
    aput v1, v8, v0

    .line 668
    const/4 v0, 0x1

    const/4 v1, 0x0

    aput v1, v8, v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 671
    .end local v11           #tip:Lcom/mediatek/simservs/client/TerminatingIdentityPresentation;
    :catch_0
    move-exception v7

    .line 672
    .local v7, e:Ljava/lang/Exception;
    const-string v0, "MMTelSS"

    const-string v1, "handleGetCOLP():Start to Print Stack Trace"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 673
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    .line 674
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v0, :cond_0

    .line 675
    invoke-static {v12}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object v6

    .line 676
    .local v6, ce:Lcom/android/internal/telephony/CommandException;
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-static {v0, v13, v6}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 677
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_1
.end method

.method public handleGetCOLR(Lcom/android/internal/telephony/MMTelSSRequest;)V
    .locals 13
    .parameter "rr"

    .prologue
    const/4 v12, 0x0

    const/4 v0, 0x1

    .line 695
    const/4 v9, -0x1

    .line 696
    .local v9, reqNo:I
    const/4 v10, -0x1

    .line 697
    .local v10, serialNo:I
    new-array v8, v0, [I

    .line 700
    .local v8, get_colr_response:[I
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    invoke-static {}, Lcom/android/internal/telephony/MMTelSSUtils;->getXui()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/telephony/MMTelSSTransport;->mXui:Ljava/lang/String;

    .line 701
    iget-object v0, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    invoke-static {}, Lcom/android/internal/telephony/MMTelSSUtils;->getXcapRootUri()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/telephony/MMTelSSTransport;->mXcapRoot:Ljava/lang/String;

    .line 702
    iget-object v0, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    invoke-static {}, Lcom/android/internal/telephony/MMTelSSUtils;->getXIntendedId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/telephony/MMTelSSTransport;->mXIntendedId:Ljava/lang/String;

    .line 704
    iget-object v0, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v1, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v1, v1, Lcom/android/internal/telephony/MMTelSSTransport;->mXui:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v2, v2, Lcom/android/internal/telephony/MMTelSSTransport;->mXcapRoot:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v3, v3, Lcom/android/internal/telephony/MMTelSSTransport;->mXIntendedId:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v4, v4, Lcom/android/internal/telephony/MMTelSSTransport;->mUserName:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v5, v5, Lcom/android/internal/telephony/MMTelSSTransport;->mPassword:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/MMTelSSTransport;->setSimservsInitParameters(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 705
    invoke-static {}, Lcom/android/internal/telephony/MMTelSSTransport;->access$000()Lcom/mediatek/simservs/client/SimServs;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/mediatek/simservs/client/SimServs;->getTerminatingIdentityPresentationRestriction(Z)Lcom/mediatek/simservs/client/TerminatingIdentityPresentationRestriction;

    move-result-object v11

    .line 706
    .local v11, tir:Lcom/mediatek/simservs/client/TerminatingIdentityPresentationRestriction;
    const-string v0, "MMTelSS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleGetCOLR():active="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v11}, Lcom/mediatek/simservs/client/TerminatingIdentityPresentationRestriction;->isActive()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 707
    invoke-virtual {v11}, Lcom/mediatek/simservs/client/TerminatingIdentityPresentationRestriction;->isActive()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 709
    const/4 v0, 0x0

    const/4 v1, 0x1

    aput v1, v8, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 727
    .end local v11           #tir:Lcom/mediatek/simservs/client/TerminatingIdentityPresentationRestriction;
    :cond_0
    :goto_0
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v0, :cond_1

    .line 730
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-static {v0, v8, v12}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 731
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 734
    :cond_1
    :goto_1
    return-void

    .line 712
    .restart local v11       #tir:Lcom/mediatek/simservs/client/TerminatingIdentityPresentationRestriction;
    :cond_2
    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_1
    aput v1, v8, v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 715
    .end local v11           #tir:Lcom/mediatek/simservs/client/TerminatingIdentityPresentationRestriction;
    :catch_0
    move-exception v7

    .line 716
    .local v7, e:Ljava/lang/Exception;
    const-string v0, "MMTelSS"

    const-string v1, "handleGetCOLR():Start to Print Stack Trace"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 717
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    .line 718
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v0, :cond_0

    .line 719
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object v6

    .line 720
    .local v6, ce:Lcom/android/internal/telephony/CommandException;
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-static {v0, v12, v6}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 721
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_1
.end method

.method public handleGetCW(Lcom/android/internal/telephony/MMTelSSRequest;)V
    .locals 14
    .parameter "rr"

    .prologue
    const/4 v13, 0x0

    const/4 v12, 0x1

    .line 738
    const/4 v10, -0x1

    .line 739
    .local v10, reqNo:I
    const/4 v11, -0x1

    .line 740
    .local v11, serialNo:I
    const/4 v7, -0x1

    .line 741
    .local v7, cwServiceClass:I
    const/4 v0, 0x2

    new-array v9, v0, [I

    .line 747
    .local v9, get_cw_response:[I
    :try_start_0
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 748
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 749
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 750
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 751
    const-string v0, "MMTelSS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Read GET_CW serviceClass="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 754
    const/16 v0, 0x210

    if-ne v7, v0, :cond_0

    .line 755
    const/16 v7, 0x200

    .line 758
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    invoke-static {}, Lcom/android/internal/telephony/MMTelSSUtils;->getXui()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/telephony/MMTelSSTransport;->mXui:Ljava/lang/String;

    .line 759
    iget-object v0, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    invoke-static {}, Lcom/android/internal/telephony/MMTelSSUtils;->getXcapRootUri()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/telephony/MMTelSSTransport;->mXcapRoot:Ljava/lang/String;

    .line 760
    iget-object v0, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    invoke-static {}, Lcom/android/internal/telephony/MMTelSSUtils;->getXIntendedId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/telephony/MMTelSSTransport;->mXIntendedId:Ljava/lang/String;

    .line 762
    iget-object v0, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v1, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v1, v1, Lcom/android/internal/telephony/MMTelSSTransport;->mXui:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v2, v2, Lcom/android/internal/telephony/MMTelSSTransport;->mXcapRoot:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v3, v3, Lcom/android/internal/telephony/MMTelSSTransport;->mXIntendedId:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v4, v4, Lcom/android/internal/telephony/MMTelSSTransport;->mUserName:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v5, v5, Lcom/android/internal/telephony/MMTelSSTransport;->mPassword:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/MMTelSSTransport;->setSimservsInitParameters(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 763
    invoke-static {}, Lcom/android/internal/telephony/MMTelSSTransport;->access$000()Lcom/mediatek/simservs/client/SimServs;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/mediatek/simservs/client/SimServs;->getCommunicationWaiting(Z)Lcom/mediatek/simservs/client/CommunicationWaiting;

    move-result-object v6

    .line 765
    .local v6, cw:Lcom/mediatek/simservs/client/CommunicationWaiting;
    invoke-virtual {v6}, Lcom/mediatek/simservs/client/CommunicationWaiting;->isActive()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 766
    const/4 v0, 0x0

    const/4 v1, 0x1

    aput v1, v9, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 788
    .end local v6           #cw:Lcom/mediatek/simservs/client/CommunicationWaiting;
    :goto_0
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v0, :cond_2

    .line 791
    aget v0, v9, v13

    if-ne v0, v12, :cond_1

    .line 801
    if-nez v7, :cond_4

    .line 804
    aget v0, v9, v12

    or-int/lit8 v0, v0, 0x1

    aput v0, v9, v12

    .line 805
    aget v0, v9, v12

    or-int/lit16 v0, v0, 0x200

    aput v0, v9, v12

    .line 815
    :cond_1
    :goto_1
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v1, 0x0

    invoke-static {v0, v9, v1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 816
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 818
    :cond_2
    return-void

    .line 769
    .restart local v6       #cw:Lcom/mediatek/simservs/client/CommunicationWaiting;
    :cond_3
    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_1
    aput v1, v9, v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 772
    .end local v6           #cw:Lcom/mediatek/simservs/client/CommunicationWaiting;
    :catch_0
    move-exception v8

    .line 773
    .local v8, e:Ljava/lang/Exception;
    const-string v0, "MMTelSS"

    const-string v1, "handleGetCW():Start to Print Stack Trace"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 774
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 807
    .end local v8           #e:Ljava/lang/Exception;
    :cond_4
    aget v0, v9, v12

    or-int/2addr v0, v7

    aput v0, v9, v12

    .line 808
    const/16 v0, 0x200

    if-ne v7, v0, :cond_1

    .line 811
    aget v0, v9, v12

    or-int/lit8 v0, v0, 0x1

    aput v0, v9, v12

    goto :goto_1
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 14
    .parameter "msg"

    .prologue
    const/4 v12, 0x0

    .line 2462
    iget-object v9, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Lcom/android/internal/telephony/MMTelSSRequest;

    move-object v7, v9

    check-cast v7, Lcom/android/internal/telephony/MMTelSSRequest;

    .line 2463
    .local v7, rr:Lcom/android/internal/telephony/MMTelSSRequest;
    const/4 v5, 0x0

    .line 2465
    .local v5, req:Lcom/android/internal/telephony/MMTelSSRequest;
    iget v9, p1, Landroid/os/Message;->what:I

    packed-switch v9, :pswitch_data_0

    .line 2606
    :goto_0
    return-void

    .line 2472
    :pswitch_0
    const/4 v1, 0x0

    .line 2473
    .local v1, alreadySubtracted:Z
    const/4 v6, -0x1

    .line 2474
    .local v6, reqNo:I
    const/4 v8, -0x1

    .line 2479
    .local v8, serialNo:I
    :try_start_0
    iget-object v9, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    #getter for: Lcom/android/internal/telephony/MMTelSSTransport;->radioTemporarilyUnavailable:I
    invoke-static {v9}, Lcom/android/internal/telephony/MMTelSSTransport;->access$100(Lcom/android/internal/telephony/MMTelSSTransport;)I

    move-result v9

    if-eqz v9, :cond_0

    .line 2480
    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-virtual {v7, v9, v10}, Lcom/android/internal/telephony/MMTelSSRequest;->onError(ILjava/lang/Object;)V

    .line 2481
    invoke-virtual {v7}, Lcom/android/internal/telephony/MMTelSSRequest;->release()V

    .line 2482
    iget-object v9, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget v10, v9, Lcom/android/internal/telephony/MMTelSSTransport;->mRequestMessagesPending:I

    add-int/lit8 v10, v10, -0x1

    iput v10, v9, Lcom/android/internal/telephony/MMTelSSTransport;->mRequestMessagesPending:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2483
    const/4 v1, 0x1

    .line 2565
    iget-object v9, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    #calls: Lcom/android/internal/telephony/MMTelSSTransport;->releaseWakeLockIfDone()V
    invoke-static {v9}, Lcom/android/internal/telephony/MMTelSSTransport;->access$300(Lcom/android/internal/telephony/MMTelSSTransport;)V

    goto :goto_0

    .line 2487
    :cond_0
    :try_start_1
    iget-object v9, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v10, v9, Lcom/android/internal/telephony/MMTelSSTransport;->mRequestsList:Ljava/util/ArrayList;

    monitor-enter v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2488
    :try_start_2
    iget-object v9, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v9, v9, Lcom/android/internal/telephony/MMTelSSTransport;->mRequestsList:Ljava/util/ArrayList;

    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2489
    monitor-exit v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2491
    :try_start_3
    iget-object v9, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget v10, v9, Lcom/android/internal/telephony/MMTelSSTransport;->mRequestMessagesPending:I

    add-int/lit8 v10, v10, -0x1

    iput v10, v9, Lcom/android/internal/telephony/MMTelSSTransport;->mRequestMessagesPending:I

    .line 2492
    const/4 v1, 0x1

    .line 2497
    iget-object v9, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget v10, v7, Lcom/android/internal/telephony/MMTelSSRequest;->mSerial:I

    #calls: Lcom/android/internal/telephony/MMTelSSTransport;->findAndRemoveRequestFromList(I)Lcom/android/internal/telephony/MMTelSSRequest;
    invoke-static {v9, v10}, Lcom/android/internal/telephony/MMTelSSTransport;->access$200(Lcom/android/internal/telephony/MMTelSSTransport;I)Lcom/android/internal/telephony/MMTelSSRequest;

    .line 2500
    const-string v9, "MMTelSS"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Receive MMTelSS Request:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v7, Lcom/android/internal/telephony/MMTelSSRequest;->mRequest:I

    invoke-static {v11}, Lcom/android/internal/telephony/MMTelSSTransport;->requestToString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2502
    iget v9, v7, Lcom/android/internal/telephony/MMTelSSRequest;->mRequest:I

    packed-switch v9, :pswitch_data_1

    .line 2546
    const-string v9, "MMTelSS"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Invalid MMTelSS Request:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v7, Lcom/android/internal/telephony/MMTelSSRequest;->mRequest:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2547
    new-instance v9, Ljava/lang/RuntimeException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unrecognized MMTelSS Request: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v7, Lcom/android/internal/telephony/MMTelSSRequest;->mRequest:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0

    .line 2552
    :catch_0
    move-exception v3

    .line 2553
    .local v3, exc:Ljava/lang/RuntimeException;
    :try_start_4
    const-string v9, "MMTelSS"

    const-string v10, "Uncaught exception "

    invoke-static {v9, v10, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2554
    iget-object v9, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget v10, v7, Lcom/android/internal/telephony/MMTelSSRequest;->mSerial:I

    #calls: Lcom/android/internal/telephony/MMTelSSTransport;->findAndRemoveRequestFromList(I)Lcom/android/internal/telephony/MMTelSSRequest;
    invoke-static {v9, v10}, Lcom/android/internal/telephony/MMTelSSTransport;->access$200(Lcom/android/internal/telephony/MMTelSSTransport;I)Lcom/android/internal/telephony/MMTelSSRequest;

    move-result-object v5

    .line 2557
    if-nez v5, :cond_1

    if-nez v1, :cond_2

    .line 2558
    :cond_1
    const/4 v9, 0x2

    const/4 v10, 0x0

    invoke-virtual {v7, v9, v10}, Lcom/android/internal/telephony/MMTelSSRequest;->onError(ILjava/lang/Object;)V

    .line 2559
    invoke-virtual {v7}, Lcom/android/internal/telephony/MMTelSSRequest;->release()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 2565
    :cond_2
    iget-object v9, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    .end local v3           #exc:Ljava/lang/RuntimeException;
    :goto_1
    #calls: Lcom/android/internal/telephony/MMTelSSTransport;->releaseWakeLockIfDone()V
    invoke-static {v9}, Lcom/android/internal/telephony/MMTelSSTransport;->access$300(Lcom/android/internal/telephony/MMTelSSTransport;)V

    .line 2569
    if-nez v1, :cond_3

    .line 2570
    iget-object v9, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget v10, v9, Lcom/android/internal/telephony/MMTelSSTransport;->mRequestMessagesPending:I

    add-int/lit8 v10, v10, -0x1

    iput v10, v9, Lcom/android/internal/telephony/MMTelSSTransport;->mRequestMessagesPending:I

    .line 2575
    :cond_3
    iget-object v9, v7, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v9}, Landroid/os/Parcel;->recycle()V

    .line 2576
    iput-object v12, v7, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    goto/16 :goto_0

    .line 2489
    :catchall_0
    move-exception v9

    :try_start_5
    monitor-exit v10
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v9
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_0

    .line 2565
    :catchall_1
    move-exception v9

    iget-object v10, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    #calls: Lcom/android/internal/telephony/MMTelSSTransport;->releaseWakeLockIfDone()V
    invoke-static {v10}, Lcom/android/internal/telephony/MMTelSSTransport;->access$300(Lcom/android/internal/telephony/MMTelSSTransport;)V

    throw v9

    .line 2504
    :pswitch_1
    :try_start_7
    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->handleSetCLIR(Lcom/android/internal/telephony/MMTelSSRequest;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_0

    .line 2565
    :goto_2
    iget-object v9, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    goto :goto_1

    .line 2507
    :pswitch_2
    :try_start_8
    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->handleGetCLIR(Lcom/android/internal/telephony/MMTelSSRequest;)V

    goto :goto_2

    .line 2510
    :pswitch_3
    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->handleGetCLIP(Lcom/android/internal/telephony/MMTelSSRequest;)V

    goto :goto_2

    .line 2513
    :pswitch_4
    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->handleGetCOLP(Lcom/android/internal/telephony/MMTelSSRequest;)V

    goto :goto_2

    .line 2516
    :pswitch_5
    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->handleGetCOLR(Lcom/android/internal/telephony/MMTelSSRequest;)V

    goto :goto_2

    .line 2519
    :pswitch_6
    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->handleSetCW(Lcom/android/internal/telephony/MMTelSSRequest;)V

    goto :goto_2

    .line 2522
    :pswitch_7
    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->handleGetCW(Lcom/android/internal/telephony/MMTelSSRequest;)V

    goto :goto_2

    .line 2525
    :pswitch_8
    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->handleSetCB(Lcom/android/internal/telephony/MMTelSSRequest;)V

    goto :goto_2

    .line 2528
    :pswitch_9
    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->handleGetCB(Lcom/android/internal/telephony/MMTelSSRequest;)V

    goto :goto_2

    .line 2531
    :pswitch_a
    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->handleSetCF(Lcom/android/internal/telephony/MMTelSSRequest;)V

    goto :goto_2

    .line 2534
    :pswitch_b
    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->handleGetCF(Lcom/android/internal/telephony/MMTelSSRequest;)V

    goto :goto_2

    .line 2537
    :pswitch_c
    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->handleSetCLIP(Lcom/android/internal/telephony/MMTelSSRequest;)V

    goto :goto_2

    .line 2540
    :pswitch_d
    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->handleSetCOLP(Lcom/android/internal/telephony/MMTelSSRequest;)V

    goto :goto_2

    .line 2543
    :pswitch_e
    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->handleSetCOLR(Lcom/android/internal/telephony/MMTelSSRequest;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_0

    goto :goto_2

    .line 2584
    .end local v1           #alreadySubtracted:Z
    .end local v6           #reqNo:I
    .end local v8           #serialNo:I
    :pswitch_f
    iget-object v9, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v10, v9, Lcom/android/internal/telephony/MMTelSSTransport;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v10

    .line 2585
    :try_start_9
    iget-object v9, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v9, v9, Lcom/android/internal/telephony/MMTelSSTransport;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v9}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 2587
    iget-object v9, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v11, v9, Lcom/android/internal/telephony/MMTelSSTransport;->mRequestsList:Ljava/util/ArrayList;

    monitor-enter v11
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 2588
    :try_start_a
    iget-object v9, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v9, v9, Lcom/android/internal/telephony/MMTelSSTransport;->mRequestsList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 2589
    .local v2, count:I
    const-string v9, "MMTelSS"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "WAKE_LOCK_TIMEOUT  mReqPending="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget v13, v13, Lcom/android/internal/telephony/MMTelSSTransport;->mRequestMessagesPending:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " mRequestList="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v9, v12}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2593
    const/4 v4, 0x0

    .local v4, i:I
    :goto_3
    if-ge v4, v2, :cond_4

    .line 2594
    iget-object v9, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v9, v9, Lcom/android/internal/telephony/MMTelSSTransport;->mRequestsList:Ljava/util/ArrayList;

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    move-object v0, v9

    check-cast v0, Lcom/android/internal/telephony/MMTelSSRequest;

    move-object v7, v0

    .line 2595
    const-string v9, "MMTelSS"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ": ["

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, v7, Lcom/android/internal/telephony/MMTelSSRequest;->mSerial:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "] "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, v7, Lcom/android/internal/telephony/MMTelSSRequest;->mRequest:I

    invoke-static {v13}, Lcom/android/internal/telephony/MMTelSSTransport;->requestToString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v9, v12}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2593
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 2599
    :cond_4
    monitor-exit v11
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 2601
    :try_start_b
    iget-object v9, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v9, v9, Lcom/android/internal/telephony/MMTelSSTransport;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v9}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 2603
    .end local v2           #count:I
    .end local v4           #i:I
    :cond_5
    monitor-exit v10

    goto/16 :goto_0

    :catchall_2
    move-exception v9

    monitor-exit v10
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    throw v9

    .line 2599
    :catchall_3
    move-exception v9

    :try_start_c
    monitor-exit v11
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    :try_start_d
    throw v9
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    .line 2465
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_f
    .end packed-switch

    .line 2502
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_6
        :pswitch_7
        :pswitch_c
        :pswitch_d
        :pswitch_e
    .end packed-switch
.end method

.method public handleSetCB(Lcom/android/internal/telephony/MMTelSSRequest;)V
    .locals 40
    .parameter "rr"

    .prologue
    .line 2109
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 2110
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v37

    .line 2111
    .local v37, reqNo:I
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v39

    .line 2112
    .local v39, serialNo:I
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v26

    .line 2113
    .local v26, facility:Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v31

    .line 2114
    .local v31, lockState:I
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 2116
    .local v9, setCBServiceClass:I
    const/16 v18, 0x0

    .line 2117
    .local v18, AddRuleForBAOCWithAllMediaType:Z
    const/16 v19, 0x0

    .line 2118
    .local v19, AddRuleForBAOICWithAllMediaType:Z
    const/16 v20, 0x0

    .line 2119
    .local v20, AddRuleForBAOICxHWithAllMediaType:Z
    const/16 v16, 0x0

    .line 2120
    .local v16, AddRuleForBAICWithAllMediaType:Z
    const/16 v17, 0x0

    .line 2122
    .local v17, AddRuleForBAICrWithAllMediaType:Z
    const-string v2, "MMTelSS"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Read from CB parcel:req="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static/range {v37 .. v37}, Lcom/android/internal/telephony/MMTelSSTransport;->requestToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",facility="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v26

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",serviceClass="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",lockState(enabled)="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v31

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2125
    const/16 v2, 0x210

    if-ne v9, v2, :cond_0

    .line 2126
    const/16 v9, 0x200

    .line 2131
    :cond_0
    :try_start_0
    const-string v2, "AO"

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "OI"

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "OX"

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 2136
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    invoke-static {}, Lcom/android/internal/telephony/MMTelSSUtils;->getXui()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lcom/android/internal/telephony/MMTelSSTransport;->mXui:Ljava/lang/String;

    .line 2137
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    invoke-static {}, Lcom/android/internal/telephony/MMTelSSUtils;->getXcapRootUri()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lcom/android/internal/telephony/MMTelSSTransport;->mXcapRoot:Ljava/lang/String;

    .line 2138
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    invoke-static {}, Lcom/android/internal/telephony/MMTelSSUtils;->getXIntendedId()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lcom/android/internal/telephony/MMTelSSTransport;->mXIntendedId:Ljava/lang/String;

    .line 2140
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v3, v5, Lcom/android/internal/telephony/MMTelSSTransport;->mXui:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v4, v5, Lcom/android/internal/telephony/MMTelSSTransport;->mXcapRoot:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v5, v5, Lcom/android/internal/telephony/MMTelSSTransport;->mXIntendedId:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v6, v6, Lcom/android/internal/telephony/MMTelSSTransport;->mUserName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v7, v7, Lcom/android/internal/telephony/MMTelSSTransport;->mPassword:Ljava/lang/String;

    invoke-virtual/range {v2 .. v7}, Lcom/android/internal/telephony/MMTelSSTransport;->setSimservsInitParameters(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2141
    invoke-static {}, Lcom/android/internal/telephony/MMTelSSTransport;->access$000()Lcom/mediatek/simservs/client/SimServs;

    move-result-object v2

    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Lcom/mediatek/simservs/client/SimServs;->getOutgoingCommunicationBarring(Z)Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;

    move-result-object v35

    .line 2143
    .local v35, ocb:Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;
    invoke-virtual/range {v35 .. v35}, Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;->getRuleSet()Lcom/mediatek/simservs/client/policy/RuleSet;

    move-result-object v34

    .line 2144
    .local v34, oRuleSet:Lcom/mediatek/simservs/client/policy/RuleSet;
    const/16 v38, 0x0

    .line 2145
    .local v38, ruleList:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    invoke-virtual/range {v35 .. v35}, Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;->createNewRuleSet()Lcom/mediatek/simservs/client/policy/RuleSet;

    move-result-object v3

    .line 2146
    .local v3, newRuleSet:Lcom/mediatek/simservs/client/policy/RuleSet;
    const/16 v22, 0x0

    .line 2148
    .local v22, addedNewRule:Z
    if-eqz v34, :cond_4

    .line 2149
    invoke-virtual/range {v34 .. v34}, Lcom/mediatek/simservs/client/policy/RuleSet;->getRules()Ljava/util/List;

    move-result-object v38

    .line 2155
    :goto_0
    if-eqz v38, :cond_13

    .line 2156
    const/16 v27, 0x0

    .local v27, i:I
    :goto_1
    invoke-interface/range {v38 .. v38}, Ljava/util/List;->size()I

    move-result v2

    move/from16 v0, v27

    if-ge v0, v2, :cond_13

    .line 2157
    move-object/from16 v0, v38

    move/from16 v1, v27

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mediatek/simservs/client/policy/Rule;

    .line 2158
    .local v4, r:Lcom/mediatek/simservs/client/policy/Rule;
    invoke-virtual {v4}, Lcom/mediatek/simservs/client/policy/Rule;->getConditions()Lcom/mediatek/simservs/client/policy/Conditions;

    move-result-object v24

    .line 2159
    .local v24, cond:Lcom/mediatek/simservs/client/policy/Conditions;
    invoke-virtual {v4}, Lcom/mediatek/simservs/client/policy/Rule;->getActions()Lcom/mediatek/simservs/client/policy/Actions;

    move-result-object v21

    .line 2160
    .local v21, action:Lcom/mediatek/simservs/client/policy/Actions;
    const/16 v32, 0x0

    .line 2162
    .local v32, mediaList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v24, :cond_6

    .line 2163
    const-string v2, "MMTelSS"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleSetCB():MO-facility="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v26

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",action="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v21 .. v21}, Lcom/mediatek/simservs/client/policy/Actions;->isAllow()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",international="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v24 .. v24}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendInternational()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",roaming="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v24 .. v24}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendRoaming()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2164
    invoke-virtual/range {v24 .. v24}, Lcom/mediatek/simservs/client/policy/Conditions;->getMedias()Ljava/util/List;

    move-result-object v32

    .line 2175
    :goto_2
    const-string v2, "OI"

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    if-eqz v24, :cond_a

    invoke-virtual/range {v24 .. v24}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendInternational()Z

    move-result v2

    if-eqz v2, :cond_a

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1, v9}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->containSpecificMedia(Ljava/util/List;I)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 2179
    if-nez v9, :cond_2

    if-nez v9, :cond_9

    if-nez v19, :cond_9

    .line 2180
    :cond_2
    const-string v8, "OI"

    move-object/from16 v2, p0

    move-object/from16 v5, v26

    move/from16 v6, v31

    move v7, v9

    invoke-virtual/range {v2 .. v8}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->handleCreateNewRuleForExistingCB(Lcom/mediatek/simservs/client/policy/RuleSet;Lcom/mediatek/simservs/client/policy/Rule;Ljava/lang/String;IILjava/lang/String;)Z

    move-result v22

    .line 2181
    const-string v2, "MMTelSS"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleSetCB():OI-addedNewRule="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2183
    if-eqz v9, :cond_8

    .line 2184
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v3, v9}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->copyOldRuleToNewRuleSetExceptSpecificMedia(Lcom/mediatek/simservs/client/policy/Rule;Lcom/mediatek/simservs/client/policy/RuleSet;I)V

    .line 2156
    :cond_3
    :goto_3
    add-int/lit8 v27, v27, 0x1

    goto/16 :goto_1

    .line 2151
    .end local v4           #r:Lcom/mediatek/simservs/client/policy/Rule;
    .end local v21           #action:Lcom/mediatek/simservs/client/policy/Actions;
    .end local v24           #cond:Lcom/mediatek/simservs/client/policy/Conditions;
    .end local v27           #i:I
    .end local v32           #mediaList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_4
    const-string v2, "MMTelSS"

    const-string v5, "No MO related CB rules in remote server"

    invoke-static {v2, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 2432
    .end local v3           #newRuleSet:Lcom/mediatek/simservs/client/policy/RuleSet;
    .end local v22           #addedNewRule:Z
    .end local v34           #oRuleSet:Lcom/mediatek/simservs/client/policy/RuleSet;
    .end local v35           #ocb:Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;
    .end local v38           #ruleList:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    :catch_0
    move-exception v25

    .line 2436
    .local v25, e:Ljava/lang/Exception;
    const-string v2, "MMTelSS"

    const-string v5, "handleSetCB():Start to Print Stack Trace"

    invoke-static {v2, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2437
    invoke-virtual/range {v25 .. v25}, Ljava/lang/Exception;->printStackTrace()V

    .line 2442
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v2, :cond_15

    .line 2443
    const/4 v2, 0x2

    invoke-static {v2}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object v23

    .line 2444
    .local v23, ce:Lcom/android/internal/telephony/CommandException;
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v5, 0x0

    move-object/from16 v0, v23

    invoke-static {v2, v5, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 2445
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 2457
    .end local v23           #ce:Lcom/android/internal/telephony/CommandException;
    .end local v25           #e:Ljava/lang/Exception;
    :cond_5
    :goto_4
    return-void

    .line 2167
    .restart local v3       #newRuleSet:Lcom/mediatek/simservs/client/policy/RuleSet;
    .restart local v4       #r:Lcom/mediatek/simservs/client/policy/Rule;
    .restart local v21       #action:Lcom/mediatek/simservs/client/policy/Actions;
    .restart local v22       #addedNewRule:Z
    .restart local v24       #cond:Lcom/mediatek/simservs/client/policy/Conditions;
    .restart local v27       #i:I
    .restart local v32       #mediaList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .restart local v34       #oRuleSet:Lcom/mediatek/simservs/client/policy/RuleSet;
    .restart local v35       #ocb:Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;
    .restart local v38       #ruleList:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    :cond_6
    if-nez v24, :cond_7

    :try_start_1
    const-string v2, "AO"

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 2168
    const-string v2, "MMTelSS"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleSetCB():cond=null but AO case!MO-facility="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v26

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",action="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v21 .. v21}, Lcom/mediatek/simservs/client/policy/Actions;->isAllow()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2169
    const/16 v32, 0x0

    goto/16 :goto_2

    .line 2171
    :cond_7
    const-string v2, "MMTelSS"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleSetCB():Empty MO cond (cond==null) for this rule="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 2186
    :cond_8
    const/16 v19, 0x1

    goto/16 :goto_3

    .line 2188
    :cond_9
    if-nez v9, :cond_3

    const/4 v2, 0x1

    move/from16 v0, v19

    if-ne v0, v2, :cond_3

    .line 2189
    const-string v2, "MMTelSS"

    const-string v5, "Already add rule for BAOIC with serviceClass=0 case previously"

    invoke-static {v2, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 2192
    :cond_a
    const-string v2, "OX"

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    if-eqz v24, :cond_e

    invoke-virtual/range {v24 .. v24}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendInternationalExHc()Z

    move-result v2

    if-eqz v2, :cond_e

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1, v9}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->containSpecificMedia(Ljava/util/List;I)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 2196
    if-nez v9, :cond_b

    if-nez v9, :cond_d

    if-nez v20, :cond_d

    .line 2197
    :cond_b
    const-string v8, "OX"

    move-object/from16 v2, p0

    move-object/from16 v5, v26

    move/from16 v6, v31

    move v7, v9

    invoke-virtual/range {v2 .. v8}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->handleCreateNewRuleForExistingCB(Lcom/mediatek/simservs/client/policy/RuleSet;Lcom/mediatek/simservs/client/policy/Rule;Ljava/lang/String;IILjava/lang/String;)Z

    move-result v22

    .line 2198
    const-string v2, "MMTelSS"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleSetCB():OX-addedNewRule="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2200
    if-eqz v9, :cond_c

    .line 2201
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v3, v9}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->copyOldRuleToNewRuleSetExceptSpecificMedia(Lcom/mediatek/simservs/client/policy/Rule;Lcom/mediatek/simservs/client/policy/RuleSet;I)V

    goto/16 :goto_3

    .line 2204
    :cond_c
    const/16 v20, 0x1

    goto/16 :goto_3

    .line 2206
    :cond_d
    if-nez v9, :cond_3

    const/4 v2, 0x1

    move/from16 v0, v20

    if-ne v0, v2, :cond_3

    .line 2207
    const-string v2, "MMTelSS"

    const-string v5, "Already add rule for BAOICxH with serviceClass=0 case previously"

    invoke-static {v2, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 2210
    :cond_e
    const-string v2, "AO"

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1, v9}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->isBAOC(Lcom/mediatek/simservs/client/policy/Conditions;I)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 2213
    if-nez v9, :cond_f

    if-nez v9, :cond_11

    if-nez v18, :cond_11

    .line 2214
    :cond_f
    const-string v8, "AO"

    move-object/from16 v2, p0

    move-object/from16 v5, v26

    move/from16 v6, v31

    move v7, v9

    invoke-virtual/range {v2 .. v8}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->handleCreateNewRuleForExistingCB(Lcom/mediatek/simservs/client/policy/RuleSet;Lcom/mediatek/simservs/client/policy/Rule;Ljava/lang/String;IILjava/lang/String;)Z

    move-result v22

    .line 2215
    const-string v2, "MMTelSS"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleSetCB():AO-addedNewRule="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2217
    if-eqz v9, :cond_10

    .line 2218
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v3, v9}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->copyOldRuleToNewRuleSetExceptSpecificMedia(Lcom/mediatek/simservs/client/policy/Rule;Lcom/mediatek/simservs/client/policy/RuleSet;I)V

    goto/16 :goto_3

    .line 2220
    :cond_10
    const/16 v18, 0x1

    goto/16 :goto_3

    .line 2222
    :cond_11
    if-nez v9, :cond_3

    const/4 v2, 0x1

    move/from16 v0, v18

    if-ne v0, v2, :cond_3

    .line 2223
    const-string v2, "MMTelSS"

    const-string v5, "Already add rule for BAOC with serviceClass=0 case previously"

    invoke-static {v2, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 2228
    :cond_12
    const-string v2, "MMTelSS"

    const-string v5, "handleSetCB():MO Copy old rule inot newRuleSet"

    invoke-static {v2, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2229
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v3}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->copyOldRuleToNewRuleSet(Lcom/mediatek/simservs/client/policy/Rule;Lcom/mediatek/simservs/client/policy/RuleSet;)Lcom/mediatek/simservs/client/policy/Rule;

    goto/16 :goto_3

    .line 2238
    .end local v4           #r:Lcom/mediatek/simservs/client/policy/Rule;
    .end local v21           #action:Lcom/mediatek/simservs/client/policy/Actions;
    .end local v24           #cond:Lcom/mediatek/simservs/client/policy/Conditions;
    .end local v27           #i:I
    .end local v32           #mediaList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_13
    if-nez v22, :cond_14

    .line 2242
    const-string v2, "MMTelSS"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleSetCB():MO add new rule for this time\'s request-facility="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v26

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",lockState="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v31

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",serviceClass="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v5, p0

    move-object v6, v3

    move-object/from16 v7, v26

    move/from16 v8, v31

    move-object/from16 v10, v26

    .line 2243
    invoke-virtual/range {v5 .. v10}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->handleCreateNewRuleForReqCB(Lcom/mediatek/simservs/client/policy/RuleSet;Ljava/lang/String;IILjava/lang/String;)Z

    move-result v22

    .line 2248
    :cond_14
    invoke-virtual {v3}, Lcom/mediatek/simservs/client/policy/RuleSet;->getRules()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_16

    .line 2249
    const-string v2, "MMTelSS"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Dump MO SetCB  XML:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Lcom/mediatek/simservs/client/policy/RuleSet;->toXmlString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2253
    :goto_5
    invoke-virtual/range {v35 .. v35}, Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;->saveRuleSet()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 2452
    .end local v3           #newRuleSet:Lcom/mediatek/simservs/client/policy/RuleSet;
    .end local v22           #addedNewRule:Z
    .end local v34           #oRuleSet:Lcom/mediatek/simservs/client/policy/RuleSet;
    .end local v35           #ocb:Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;
    .end local v38           #ruleList:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    :cond_15
    :goto_6
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v2, :cond_5

    .line 2453
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v2, v5, v6}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 2454
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_4

    .line 2251
    .restart local v3       #newRuleSet:Lcom/mediatek/simservs/client/policy/RuleSet;
    .restart local v22       #addedNewRule:Z
    .restart local v34       #oRuleSet:Lcom/mediatek/simservs/client/policy/RuleSet;
    .restart local v35       #ocb:Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;
    .restart local v38       #ruleList:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    :cond_16
    :try_start_2
    const-string v2, "MMTelSS"

    const-string v5, "Dump MO SetCB XML: ruleset with empty rules"

    invoke-static {v2, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 2255
    .end local v3           #newRuleSet:Lcom/mediatek/simservs/client/policy/RuleSet;
    .end local v22           #addedNewRule:Z
    .end local v34           #oRuleSet:Lcom/mediatek/simservs/client/policy/RuleSet;
    .end local v35           #ocb:Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;
    .end local v38           #ruleList:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    :cond_17
    const-string v2, "AI"

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_18

    const-string v2, "IR"

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_27

    .line 2259
    :cond_18
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    invoke-static {}, Lcom/android/internal/telephony/MMTelSSUtils;->getXui()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lcom/android/internal/telephony/MMTelSSTransport;->mXui:Ljava/lang/String;

    .line 2260
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    invoke-static {}, Lcom/android/internal/telephony/MMTelSSUtils;->getXcapRootUri()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lcom/android/internal/telephony/MMTelSSTransport;->mXcapRoot:Ljava/lang/String;

    .line 2261
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    invoke-static {}, Lcom/android/internal/telephony/MMTelSSUtils;->getXIntendedId()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lcom/android/internal/telephony/MMTelSSTransport;->mXIntendedId:Ljava/lang/String;

    .line 2263
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v11, v2, Lcom/android/internal/telephony/MMTelSSTransport;->mXui:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v12, v2, Lcom/android/internal/telephony/MMTelSSTransport;->mXcapRoot:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v13, v2, Lcom/android/internal/telephony/MMTelSSTransport;->mXIntendedId:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v14, v2, Lcom/android/internal/telephony/MMTelSSTransport;->mUserName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v15, v2, Lcom/android/internal/telephony/MMTelSSTransport;->mPassword:Ljava/lang/String;

    invoke-virtual/range {v10 .. v15}, Lcom/android/internal/telephony/MMTelSSTransport;->setSimservsInitParameters(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2264
    invoke-static {}, Lcom/android/internal/telephony/MMTelSSTransport;->access$000()Lcom/mediatek/simservs/client/SimServs;

    move-result-object v2

    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Lcom/mediatek/simservs/client/SimServs;->getIncomingCommunicationBarring(Z)Lcom/mediatek/simservs/client/IncomingCommunicationBarring;

    move-result-object v30

    .line 2266
    .local v30, icb:Lcom/mediatek/simservs/client/IncomingCommunicationBarring;
    invoke-virtual/range {v30 .. v30}, Lcom/mediatek/simservs/client/IncomingCommunicationBarring;->getRuleSet()Lcom/mediatek/simservs/client/policy/RuleSet;

    move-result-object v29

    .line 2267
    .local v29, iRuleSet:Lcom/mediatek/simservs/client/policy/RuleSet;
    const/16 v38, 0x0

    .line 2268
    .restart local v38       #ruleList:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    invoke-virtual/range {v30 .. v30}, Lcom/mediatek/simservs/client/IncomingCommunicationBarring;->createNewRuleSet()Lcom/mediatek/simservs/client/policy/RuleSet;

    move-result-object v3

    .line 2269
    .restart local v3       #newRuleSet:Lcom/mediatek/simservs/client/policy/RuleSet;
    const/16 v22, 0x0

    .line 2271
    .restart local v22       #addedNewRule:Z
    if-eqz v29, :cond_1b

    .line 2272
    invoke-virtual/range {v29 .. v29}, Lcom/mediatek/simservs/client/policy/RuleSet;->getRules()Ljava/util/List;

    move-result-object v38

    .line 2278
    :goto_7
    if-eqz v38, :cond_24

    .line 2279
    const/16 v27, 0x0

    .restart local v27       #i:I
    :goto_8
    invoke-interface/range {v38 .. v38}, Ljava/util/List;->size()I

    move-result v2

    move/from16 v0, v27

    if-ge v0, v2, :cond_24

    .line 2280
    move-object/from16 v0, v38

    move/from16 v1, v27

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mediatek/simservs/client/policy/Rule;

    .line 2281
    .restart local v4       #r:Lcom/mediatek/simservs/client/policy/Rule;
    invoke-virtual {v4}, Lcom/mediatek/simservs/client/policy/Rule;->getConditions()Lcom/mediatek/simservs/client/policy/Conditions;

    move-result-object v24

    .line 2282
    .restart local v24       #cond:Lcom/mediatek/simservs/client/policy/Conditions;
    invoke-virtual {v4}, Lcom/mediatek/simservs/client/policy/Rule;->getActions()Lcom/mediatek/simservs/client/policy/Actions;

    move-result-object v21

    .line 2283
    .restart local v21       #action:Lcom/mediatek/simservs/client/policy/Actions;
    const/16 v32, 0x0

    .line 2285
    .restart local v32       #mediaList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v24, :cond_1c

    .line 2286
    const-string v2, "MMTelSS"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleSetCB():MT-facility="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v26

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",action="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v21 .. v21}, Lcom/mediatek/simservs/client/policy/Actions;->isAllow()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",international="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v24 .. v24}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendInternational()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",roaming="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v24 .. v24}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendRoaming()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2287
    invoke-virtual/range {v24 .. v24}, Lcom/mediatek/simservs/client/policy/Conditions;->getMedias()Ljava/util/List;

    move-result-object v32

    .line 2292
    :goto_9
    const-string v2, "IR"

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    if-eqz v24, :cond_1f

    invoke-virtual/range {v24 .. v24}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendRoaming()Z

    move-result v2

    const/4 v5, 0x1

    if-ne v2, v5, :cond_1f

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1, v9}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->containSpecificMedia(Ljava/util/List;I)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 2296
    if-nez v9, :cond_19

    if-nez v9, :cond_1e

    if-nez v17, :cond_1e

    .line 2298
    :cond_19
    const-string v8, "IR"

    move-object/from16 v2, p0

    move-object/from16 v5, v26

    move/from16 v6, v31

    move v7, v9

    invoke-virtual/range {v2 .. v8}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->handleCreateNewRuleForExistingCB(Lcom/mediatek/simservs/client/policy/RuleSet;Lcom/mediatek/simservs/client/policy/Rule;Ljava/lang/String;IILjava/lang/String;)Z

    move-result v22

    .line 2299
    const-string v2, "MMTelSS"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleSetCB():IR-addedNewRule="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2301
    if-eqz v9, :cond_1d

    .line 2302
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v3, v9}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->copyOldRuleToNewRuleSetExceptSpecificMedia(Lcom/mediatek/simservs/client/policy/Rule;Lcom/mediatek/simservs/client/policy/RuleSet;I)V

    .line 2279
    :cond_1a
    :goto_a
    add-int/lit8 v27, v27, 0x1

    goto/16 :goto_8

    .line 2274
    .end local v4           #r:Lcom/mediatek/simservs/client/policy/Rule;
    .end local v21           #action:Lcom/mediatek/simservs/client/policy/Actions;
    .end local v24           #cond:Lcom/mediatek/simservs/client/policy/Conditions;
    .end local v27           #i:I
    .end local v32           #mediaList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_1b
    const-string v2, "MMTelSS"

    const-string v5, "No MT related CB rules in remote server"

    invoke-static {v2, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    .line 2289
    .restart local v4       #r:Lcom/mediatek/simservs/client/policy/Rule;
    .restart local v21       #action:Lcom/mediatek/simservs/client/policy/Actions;
    .restart local v24       #cond:Lcom/mediatek/simservs/client/policy/Conditions;
    .restart local v27       #i:I
    .restart local v32       #mediaList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_1c
    const-string v2, "MMTelSS"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleSetCB():Empty MT cond (cond==null) for this rule="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    .line 2304
    :cond_1d
    const/16 v17, 0x1

    goto :goto_a

    .line 2306
    :cond_1e
    if-nez v9, :cond_1a

    const/4 v2, 0x1

    move/from16 v0, v17

    if-ne v0, v2, :cond_1a

    .line 2307
    const-string v2, "MMTelSS"

    const-string v5, "Already add rule for BAICr with serviceClass=0 case previously"

    invoke-static {v2, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    .line 2310
    :cond_1f
    const-string v2, "AI"

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_23

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1, v9}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->isBAIC(Lcom/mediatek/simservs/client/policy/Conditions;I)Z

    move-result v2

    if-eqz v2, :cond_23

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1, v9}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->containSpecificMedia(Ljava/util/List;I)Z

    move-result v2

    if-eqz v2, :cond_23

    .line 2314
    if-nez v9, :cond_20

    if-nez v9, :cond_22

    if-nez v16, :cond_22

    .line 2315
    :cond_20
    const-string v8, "AI"

    move-object/from16 v2, p0

    move-object/from16 v5, v26

    move/from16 v6, v31

    move v7, v9

    invoke-virtual/range {v2 .. v8}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->handleCreateNewRuleForExistingCB(Lcom/mediatek/simservs/client/policy/RuleSet;Lcom/mediatek/simservs/client/policy/Rule;Ljava/lang/String;IILjava/lang/String;)Z

    move-result v22

    .line 2316
    const-string v2, "MMTelSS"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleSetCB():AI-addedNewRule="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2318
    if-eqz v9, :cond_21

    .line 2319
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v3, v9}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->copyOldRuleToNewRuleSetExceptSpecificMedia(Lcom/mediatek/simservs/client/policy/Rule;Lcom/mediatek/simservs/client/policy/RuleSet;I)V

    goto/16 :goto_a

    .line 2321
    :cond_21
    const/16 v16, 0x1

    goto/16 :goto_a

    .line 2323
    :cond_22
    if-nez v9, :cond_1a

    const/4 v2, 0x1

    move/from16 v0, v16

    if-ne v0, v2, :cond_1a

    .line 2324
    const-string v2, "MMTelSS"

    const-string v5, "Already add rule for BAIC with serviceClass=0 case previously"

    invoke-static {v2, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a

    .line 2329
    :cond_23
    const-string v2, "MMTelSS"

    const-string v5, "handleSetCB():MT Copy old rule inot newRuleSet"

    invoke-static {v2, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2330
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v3}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->copyOldRuleToNewRuleSet(Lcom/mediatek/simservs/client/policy/Rule;Lcom/mediatek/simservs/client/policy/RuleSet;)Lcom/mediatek/simservs/client/policy/Rule;

    goto/16 :goto_a

    .line 2337
    .end local v4           #r:Lcom/mediatek/simservs/client/policy/Rule;
    .end local v21           #action:Lcom/mediatek/simservs/client/policy/Actions;
    .end local v24           #cond:Lcom/mediatek/simservs/client/policy/Conditions;
    .end local v27           #i:I
    .end local v32           #mediaList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_24
    if-nez v22, :cond_25

    .line 2341
    const-string v2, "MMTelSS"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleSetCB():MT add new rule for this time\'s request-facility="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v26

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",lockState="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v31

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",serviceClass="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v5, p0

    move-object v6, v3

    move-object/from16 v7, v26

    move/from16 v8, v31

    move-object/from16 v10, v26

    .line 2342
    invoke-virtual/range {v5 .. v10}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->handleCreateNewRuleForReqCB(Lcom/mediatek/simservs/client/policy/RuleSet;Ljava/lang/String;IILjava/lang/String;)Z

    move-result v22

    .line 2347
    :cond_25
    invoke-virtual {v3}, Lcom/mediatek/simservs/client/policy/RuleSet;->getRules()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_26

    .line 2348
    const-string v2, "MMTelSS"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Dump MT SetCB XML:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Lcom/mediatek/simservs/client/policy/RuleSet;->toXmlString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2352
    :goto_b
    invoke-virtual/range {v30 .. v30}, Lcom/mediatek/simservs/client/IncomingCommunicationBarring;->saveRuleSet()V

    goto/16 :goto_6

    .line 2350
    :cond_26
    const-string v2, "MMTelSS"

    const-string v5, "Dump MT SetCB XML: ruleset with empty rules"

    invoke-static {v2, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    .line 2354
    .end local v3           #newRuleSet:Lcom/mediatek/simservs/client/policy/RuleSet;
    .end local v22           #addedNewRule:Z
    .end local v29           #iRuleSet:Lcom/mediatek/simservs/client/policy/RuleSet;
    .end local v30           #icb:Lcom/mediatek/simservs/client/IncomingCommunicationBarring;
    .end local v38           #ruleList:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    :cond_27
    const-string v2, "AB"

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_30

    if-nez v31, :cond_30

    .line 2358
    const/16 v28, 0x0

    .line 2359
    .local v28, iNewRuleSet:Lcom/mediatek/simservs/client/policy/RuleSet;
    const/16 v33, 0x0

    .line 2360
    .local v33, oNewRuleSet:Lcom/mediatek/simservs/client/policy/RuleSet;
    const/16 v36, 0x0

    .line 2361
    .local v36, oldRuleSet:Lcom/mediatek/simservs/client/policy/RuleSet;
    const/16 v38, 0x0

    .line 2363
    .restart local v38       #ruleList:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    invoke-static {}, Lcom/android/internal/telephony/MMTelSSUtils;->getXui()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lcom/android/internal/telephony/MMTelSSTransport;->mXui:Ljava/lang/String;

    .line 2364
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    invoke-static {}, Lcom/android/internal/telephony/MMTelSSUtils;->getXcapRootUri()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lcom/android/internal/telephony/MMTelSSTransport;->mXcapRoot:Ljava/lang/String;

    .line 2365
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    invoke-static {}, Lcom/android/internal/telephony/MMTelSSUtils;->getXIntendedId()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lcom/android/internal/telephony/MMTelSSTransport;->mXIntendedId:Ljava/lang/String;

    .line 2367
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v11, v2, Lcom/android/internal/telephony/MMTelSSTransport;->mXui:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v12, v2, Lcom/android/internal/telephony/MMTelSSTransport;->mXcapRoot:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v13, v2, Lcom/android/internal/telephony/MMTelSSTransport;->mXIntendedId:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v14, v2, Lcom/android/internal/telephony/MMTelSSTransport;->mUserName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v15, v2, Lcom/android/internal/telephony/MMTelSSTransport;->mPassword:Ljava/lang/String;

    invoke-virtual/range {v10 .. v15}, Lcom/android/internal/telephony/MMTelSSTransport;->setSimservsInitParameters(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2368
    invoke-static {}, Lcom/android/internal/telephony/MMTelSSTransport;->access$000()Lcom/mediatek/simservs/client/SimServs;

    move-result-object v2

    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Lcom/mediatek/simservs/client/SimServs;->getOutgoingCommunicationBarring(Z)Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;

    move-result-object v35

    .line 2372
    .restart local v35       #ocb:Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;
    invoke-virtual/range {v35 .. v35}, Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;->getRuleSet()Lcom/mediatek/simservs/client/policy/RuleSet;

    move-result-object v36

    .line 2373
    if-eqz v36, :cond_28

    .line 2374
    invoke-virtual/range {v36 .. v36}, Lcom/mediatek/simservs/client/policy/RuleSet;->getRules()Ljava/util/List;

    move-result-object v38

    .line 2379
    :goto_c
    if-eqz v38, :cond_2b

    .line 2380
    invoke-virtual/range {v35 .. v35}, Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;->createNewRuleSet()Lcom/mediatek/simservs/client/policy/RuleSet;

    move-result-object v33

    .line 2381
    const/16 v27, 0x0

    .restart local v27       #i:I
    :goto_d
    invoke-interface/range {v38 .. v38}, Ljava/util/List;->size()I

    move-result v2

    move/from16 v0, v27

    if-ge v0, v2, :cond_29

    .line 2382
    move-object/from16 v0, v38

    move/from16 v1, v27

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mediatek/simservs/client/policy/Rule;

    .line 2383
    .restart local v4       #r:Lcom/mediatek/simservs/client/policy/Rule;
    const/4 v2, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v4, v1, v2}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->copyOldRuleToNewRuleSetWithAllow(Lcom/mediatek/simservs/client/policy/Rule;Lcom/mediatek/simservs/client/policy/RuleSet;Z)V

    .line 2381
    add-int/lit8 v27, v27, 0x1

    goto :goto_d

    .line 2376
    .end local v4           #r:Lcom/mediatek/simservs/client/policy/Rule;
    .end local v27           #i:I
    :cond_28
    const-string v2, "MMTelSS"

    const-string v5, "No MO related CB rules in remote server"

    invoke-static {v2, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c

    .line 2386
    .restart local v27       #i:I
    :cond_29
    invoke-virtual/range {v33 .. v33}, Lcom/mediatek/simservs/client/policy/RuleSet;->getRules()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_2a

    .line 2387
    const-string v2, "MMTelSS"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Dump MO Disable All CB XML:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v33 .. v33}, Lcom/mediatek/simservs/client/policy/RuleSet;->toXmlString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2391
    :goto_e
    invoke-virtual/range {v35 .. v35}, Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;->saveRuleSet()V

    .line 2396
    .end local v27           #i:I
    :goto_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    invoke-static {}, Lcom/android/internal/telephony/MMTelSSUtils;->getXui()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lcom/android/internal/telephony/MMTelSSTransport;->mXui:Ljava/lang/String;

    .line 2397
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    invoke-static {}, Lcom/android/internal/telephony/MMTelSSUtils;->getXcapRootUri()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lcom/android/internal/telephony/MMTelSSTransport;->mXcapRoot:Ljava/lang/String;

    .line 2398
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    invoke-static {}, Lcom/android/internal/telephony/MMTelSSUtils;->getXIntendedId()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lcom/android/internal/telephony/MMTelSSTransport;->mXIntendedId:Ljava/lang/String;

    .line 2400
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v11, v2, Lcom/android/internal/telephony/MMTelSSTransport;->mXui:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v12, v2, Lcom/android/internal/telephony/MMTelSSTransport;->mXcapRoot:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v13, v2, Lcom/android/internal/telephony/MMTelSSTransport;->mXIntendedId:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v14, v2, Lcom/android/internal/telephony/MMTelSSTransport;->mUserName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v15, v2, Lcom/android/internal/telephony/MMTelSSTransport;->mPassword:Ljava/lang/String;

    invoke-virtual/range {v10 .. v15}, Lcom/android/internal/telephony/MMTelSSTransport;->setSimservsInitParameters(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2401
    invoke-static {}, Lcom/android/internal/telephony/MMTelSSTransport;->access$000()Lcom/mediatek/simservs/client/SimServs;

    move-result-object v2

    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Lcom/mediatek/simservs/client/SimServs;->getIncomingCommunicationBarring(Z)Lcom/mediatek/simservs/client/IncomingCommunicationBarring;

    move-result-object v30

    .line 2403
    .restart local v30       #icb:Lcom/mediatek/simservs/client/IncomingCommunicationBarring;
    invoke-virtual/range {v30 .. v30}, Lcom/mediatek/simservs/client/IncomingCommunicationBarring;->getRuleSet()Lcom/mediatek/simservs/client/policy/RuleSet;

    move-result-object v36

    .line 2404
    if-eqz v36, :cond_2c

    .line 2405
    invoke-virtual/range {v36 .. v36}, Lcom/mediatek/simservs/client/policy/RuleSet;->getRules()Ljava/util/List;

    move-result-object v38

    .line 2410
    :goto_10
    if-eqz v38, :cond_2f

    .line 2411
    invoke-virtual/range {v30 .. v30}, Lcom/mediatek/simservs/client/IncomingCommunicationBarring;->createNewRuleSet()Lcom/mediatek/simservs/client/policy/RuleSet;

    move-result-object v28

    .line 2412
    const/16 v27, 0x0

    .restart local v27       #i:I
    :goto_11
    invoke-interface/range {v38 .. v38}, Ljava/util/List;->size()I

    move-result v2

    move/from16 v0, v27

    if-ge v0, v2, :cond_2d

    .line 2413
    move-object/from16 v0, v38

    move/from16 v1, v27

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mediatek/simservs/client/policy/Rule;

    .line 2414
    .restart local v4       #r:Lcom/mediatek/simservs/client/policy/Rule;
    const/4 v2, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v4, v1, v2}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->copyOldRuleToNewRuleSetWithAllow(Lcom/mediatek/simservs/client/policy/Rule;Lcom/mediatek/simservs/client/policy/RuleSet;Z)V

    .line 2412
    add-int/lit8 v27, v27, 0x1

    goto :goto_11

    .line 2389
    .end local v4           #r:Lcom/mediatek/simservs/client/policy/Rule;
    .end local v30           #icb:Lcom/mediatek/simservs/client/IncomingCommunicationBarring;
    :cond_2a
    const-string v2, "MMTelSS"

    const-string v5, "Dump MO Disable All CB XML: ruleset with empty rules"

    invoke-static {v2, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_e

    .line 2393
    .end local v27           #i:I
    :cond_2b
    const-string v2, "MMTelSS"

    const-string v5, "No MO related CB rules in remote server"

    invoke-static {v2, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_f

    .line 2407
    .restart local v30       #icb:Lcom/mediatek/simservs/client/IncomingCommunicationBarring;
    :cond_2c
    const-string v2, "MMTelSS"

    const-string v5, "No MT related CB rules in remote server"

    invoke-static {v2, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10

    .line 2417
    .restart local v27       #i:I
    :cond_2d
    invoke-virtual/range {v28 .. v28}, Lcom/mediatek/simservs/client/policy/RuleSet;->getRules()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_2e

    .line 2418
    const-string v2, "MMTelSS"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Dump MT Disable All CB XML:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v28 .. v28}, Lcom/mediatek/simservs/client/policy/RuleSet;->toXmlString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2422
    :goto_12
    invoke-virtual/range {v30 .. v30}, Lcom/mediatek/simservs/client/IncomingCommunicationBarring;->saveRuleSet()V

    goto/16 :goto_6

    .line 2420
    :cond_2e
    const-string v2, "MMTelSS"

    const-string v5, "Dump MT Disable All CB XML: ruleset with empty rules"

    invoke-static {v2, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_12

    .line 2424
    .end local v27           #i:I
    :cond_2f
    const-string v2, "MMTelSS"

    const-string v5, "No MT related CB rules in remote server"

    invoke-static {v2, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 2429
    .end local v28           #iNewRuleSet:Lcom/mediatek/simservs/client/policy/RuleSet;
    .end local v30           #icb:Lcom/mediatek/simservs/client/IncomingCommunicationBarring;
    .end local v33           #oNewRuleSet:Lcom/mediatek/simservs/client/policy/RuleSet;
    .end local v35           #ocb:Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;
    .end local v36           #oldRuleSet:Lcom/mediatek/simservs/client/policy/RuleSet;
    .end local v38           #ruleList:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    :cond_30
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unrecognized SET_CB facility= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v26

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " and its parameters"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
.end method

.method public handleSetCF(Lcom/android/internal/telephony/MMTelSSRequest;)V
    .locals 34
    .parameter "rr"

    .prologue
    .line 1901
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 1902
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    move-result v25

    .line 1903
    .local v25, reqNo:I
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    move-result v29

    .line 1905
    .local v29, serialNo:I
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    move-result v30

    .line 1906
    .local v30, setCFAction:I
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    move-result v31

    .line 1907
    .local v31, setCFReason:I
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    move-result v33

    .line 1908
    .local v33, setCFServiceClass:I
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v3}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 1909
    .local v9, setCFNumber:Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 1911
    .local v10, setCFTimeSeconds:I
    const/16 v16, 0x0

    .line 1912
    .local v16, AddRuleForCFUWithAllMediaType:Z
    const/4 v12, 0x0

    .line 1913
    .local v12, AddRuleForCFBWithAllMediaType:Z
    const/4 v13, 0x0

    .line 1914
    .local v13, AddRuleForCFNoAnswerWithAllMediaType:Z
    const/4 v14, 0x0

    .line 1915
    .local v14, AddRuleForCFNotReachableWithAllMediaType:Z
    const/4 v15, 0x0

    .line 1917
    .local v15, AddRuleForCFNotRegisteredWithAllMediaType:Z
    const-string v3, "MMTelSS"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Read from CF parcel:req="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static/range {v25 .. v25}, Lcom/android/internal/telephony/MMTelSSTransport;->requestToString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",cfAction="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v30

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",reason="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v31

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",serviceClass="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v33

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",number="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",timeSec="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1920
    const/16 v3, 0x210

    move/from16 v0, v33

    if-ne v0, v3, :cond_0

    .line 1921
    const/16 v33, 0x200

    .line 1924
    :cond_0
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/telephony/MMTelSSRequest;->requestParm:Ljava/lang/Object;

    move-object/from16 v32, v0

    check-cast v32, Lcom/mediatek/simservs/client/policy/Rule;

    .line 1925
    .local v32, setCFRule:Lcom/mediatek/simservs/client/policy/Rule;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    move-object/from16 v0, v32

    invoke-virtual {v3, v0}, Lcom/android/internal/telephony/MMTelSSTransport;->dumpCFRule(Lcom/mediatek/simservs/client/policy/Rule;)V

    .line 1929
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    invoke-static {}, Lcom/android/internal/telephony/MMTelSSUtils;->getXui()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v3, Lcom/android/internal/telephony/MMTelSSTransport;->mXui:Ljava/lang/String;

    .line 1930
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    invoke-static {}, Lcom/android/internal/telephony/MMTelSSUtils;->getXcapRootUri()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v3, Lcom/android/internal/telephony/MMTelSSTransport;->mXcapRoot:Ljava/lang/String;

    .line 1931
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    invoke-static {}, Lcom/android/internal/telephony/MMTelSSUtils;->getXIntendedId()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v3, Lcom/android/internal/telephony/MMTelSSTransport;->mXIntendedId:Ljava/lang/String;

    .line 1933
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v4, v6, Lcom/android/internal/telephony/MMTelSSTransport;->mXui:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v5, v6, Lcom/android/internal/telephony/MMTelSSTransport;->mXcapRoot:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v6, v6, Lcom/android/internal/telephony/MMTelSSTransport;->mXIntendedId:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v7, v7, Lcom/android/internal/telephony/MMTelSSTransport;->mUserName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v8, v8, Lcom/android/internal/telephony/MMTelSSTransport;->mPassword:Ljava/lang/String;

    invoke-virtual/range {v3 .. v8}, Lcom/android/internal/telephony/MMTelSSTransport;->setSimservsInitParameters(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1934
    invoke-static {}, Lcom/android/internal/telephony/MMTelSSTransport;->access$000()Lcom/mediatek/simservs/client/SimServs;

    move-result-object v3

    const/4 v6, 0x1

    invoke-virtual {v3, v6}, Lcom/mediatek/simservs/client/SimServs;->getCommunicationDiversion(Z)Lcom/mediatek/simservs/client/CommunicationDiversion;

    move-result-object v19

    .line 1935
    .local v19, cd:Lcom/mediatek/simservs/client/CommunicationDiversion;
    invoke-virtual/range {v19 .. v19}, Lcom/mediatek/simservs/client/CommunicationDiversion;->getRuleSet()Lcom/mediatek/simservs/client/policy/RuleSet;

    move-result-object v28

    .line 1936
    .local v28, ruleSet:Lcom/mediatek/simservs/client/policy/RuleSet;
    const/16 v27, 0x0

    .line 1937
    .local v27, ruleList:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    invoke-virtual/range {v19 .. v19}, Lcom/mediatek/simservs/client/CommunicationDiversion;->createNewRuleSet()Lcom/mediatek/simservs/client/policy/RuleSet;

    move-result-object v4

    .line 1938
    .local v4, newRuleSet:Lcom/mediatek/simservs/client/policy/RuleSet;
    const/16 v18, 0x0

    .line 1940
    .local v18, addedNewRule:Z
    if-eqz v28, :cond_3

    .line 1941
    invoke-virtual/range {v28 .. v28}, Lcom/mediatek/simservs/client/policy/RuleSet;->getRules()Ljava/util/List;

    move-result-object v27

    .line 1947
    :goto_0
    if-eqz v27, :cond_16

    .line 1949
    const/16 v23, 0x0

    .local v23, i:I
    :goto_1
    invoke-interface/range {v27 .. v27}, Ljava/util/List;->size()I

    move-result v3

    move/from16 v0, v23

    if-ge v0, v3, :cond_16

    .line 1950
    move-object/from16 v0, v27

    move/from16 v1, v23

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mediatek/simservs/client/policy/Rule;

    .line 1951
    .local v5, r:Lcom/mediatek/simservs/client/policy/Rule;
    invoke-virtual {v5}, Lcom/mediatek/simservs/client/policy/Rule;->getConditions()Lcom/mediatek/simservs/client/policy/Conditions;

    move-result-object v21

    .line 1952
    .local v21, cond:Lcom/mediatek/simservs/client/policy/Conditions;
    invoke-virtual {v5}, Lcom/mediatek/simservs/client/policy/Rule;->getActions()Lcom/mediatek/simservs/client/policy/Actions;

    move-result-object v17

    .line 1953
    .local v17, action:Lcom/mediatek/simservs/client/policy/Actions;
    const/16 v24, 0x0

    .line 1955
    .local v24, mediaList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v21, :cond_5

    .line 1956
    invoke-virtual/range {v21 .. v21}, Lcom/mediatek/simservs/client/policy/Conditions;->getMedias()Ljava/util/List;

    move-result-object v24

    .line 1957
    const-string v3, "MMTelSS"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handleSetCF():busy="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {v21 .. v21}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendBusy()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",NoAnswer="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {v21 .. v21}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendNoAnswer()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",NoReachable="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {v21 .. v21}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendNotReachable()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",NotRegistered="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {v21 .. v21}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendNotRegistered()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1963
    :goto_2
    const/4 v3, 0x1

    move/from16 v0, v31

    if-ne v0, v3, :cond_7

    if-eqz v21, :cond_7

    invoke-virtual/range {v21 .. v21}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendBusy()Z

    move-result v3

    const/4 v6, 0x1

    if-ne v3, v6, :cond_7

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->containSpecificMedia(Ljava/util/List;I)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1967
    if-nez v33, :cond_1

    if-nez v33, :cond_6

    if-nez v12, :cond_6

    .line 1968
    :cond_1
    const-string v11, "CFB"

    move-object/from16 v3, p0

    move/from16 v6, v31

    move/from16 v7, v30

    move/from16 v8, v33

    invoke-virtual/range {v3 .. v11}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->handleCreateNewRuleForExistingCF(Lcom/mediatek/simservs/client/policy/RuleSet;Lcom/mediatek/simservs/client/policy/Rule;IIILjava/lang/String;ILjava/lang/String;)Z

    move-result v18

    .line 1969
    const-string v3, "MMTelSS"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handleSetCF():CFB-addedNewRule="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v18

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1970
    if-nez v33, :cond_2

    .line 1971
    const/4 v12, 0x1

    .line 1949
    :cond_2
    :goto_3
    add-int/lit8 v23, v23, 0x1

    goto/16 :goto_1

    .line 1943
    .end local v5           #r:Lcom/mediatek/simservs/client/policy/Rule;
    .end local v17           #action:Lcom/mediatek/simservs/client/policy/Actions;
    .end local v21           #cond:Lcom/mediatek/simservs/client/policy/Conditions;
    .end local v23           #i:I
    .end local v24           #mediaList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_3
    const-string v3, "MMTelSS"

    const-string v6, "No CF related rules in remote server"

    invoke-static {v3, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 2087
    .end local v4           #newRuleSet:Lcom/mediatek/simservs/client/policy/RuleSet;
    .end local v18           #addedNewRule:Z
    .end local v19           #cd:Lcom/mediatek/simservs/client/CommunicationDiversion;
    .end local v27           #ruleList:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    .end local v28           #ruleSet:Lcom/mediatek/simservs/client/policy/RuleSet;
    :catch_0
    move-exception v22

    .line 2090
    .local v22, e:Ljava/lang/Exception;
    const-string v3, "MMTelSS"

    const-string v6, "handleSetCF():Start to Print Stack Trace"

    invoke-static {v3, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2091
    invoke-virtual/range {v22 .. v22}, Ljava/lang/Exception;->printStackTrace()V

    .line 2092
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v3, :cond_1a

    .line 2093
    const/4 v3, 0x2

    invoke-static {v3}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object v20

    .line 2094
    .local v20, ce:Lcom/android/internal/telephony/CommandException;
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v6, 0x0

    move-object/from16 v0, v20

    invoke-static {v3, v6, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 2095
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    .line 2106
    .end local v20           #ce:Lcom/android/internal/telephony/CommandException;
    .end local v22           #e:Ljava/lang/Exception;
    :cond_4
    :goto_4
    return-void

    .line 1959
    .restart local v4       #newRuleSet:Lcom/mediatek/simservs/client/policy/RuleSet;
    .restart local v5       #r:Lcom/mediatek/simservs/client/policy/Rule;
    .restart local v17       #action:Lcom/mediatek/simservs/client/policy/Actions;
    .restart local v18       #addedNewRule:Z
    .restart local v19       #cd:Lcom/mediatek/simservs/client/CommunicationDiversion;
    .restart local v21       #cond:Lcom/mediatek/simservs/client/policy/Conditions;
    .restart local v23       #i:I
    .restart local v24       #mediaList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .restart local v27       #ruleList:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    .restart local v28       #ruleSet:Lcom/mediatek/simservs/client/policy/RuleSet;
    :cond_5
    :try_start_1
    const-string v3, "MMTelSS"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handleSetCF():Empty cond (cond==null) for this rule="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 1973
    :cond_6
    if-nez v33, :cond_2

    const/4 v3, 0x1

    if-ne v12, v3, :cond_2

    .line 1974
    const-string v3, "MMTelSS"

    const-string v6, "Already add rule for CFB with serviceClass=0 case previously"

    invoke-static {v3, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 1977
    :cond_7
    const/4 v3, 0x2

    move/from16 v0, v31

    if-ne v0, v3, :cond_a

    if-eqz v21, :cond_a

    invoke-virtual/range {v21 .. v21}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendNoAnswer()Z

    move-result v3

    const/4 v6, 0x1

    if-ne v3, v6, :cond_a

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->containSpecificMedia(Ljava/util/List;I)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 1981
    if-nez v33, :cond_8

    if-nez v33, :cond_9

    if-nez v13, :cond_9

    .line 1982
    :cond_8
    const-string v11, "CFNoAnswer"

    move-object/from16 v3, p0

    move/from16 v6, v31

    move/from16 v7, v30

    move/from16 v8, v33

    invoke-virtual/range {v3 .. v11}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->handleCreateNewRuleForExistingCF(Lcom/mediatek/simservs/client/policy/RuleSet;Lcom/mediatek/simservs/client/policy/Rule;IIILjava/lang/String;ILjava/lang/String;)Z

    move-result v18

    .line 1983
    const-string v3, "MMTelSS"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handleSetCF():CFNoAnswer-addedNewRule="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v18

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1984
    if-nez v33, :cond_2

    .line 1985
    const/4 v13, 0x1

    goto/16 :goto_3

    .line 1987
    :cond_9
    if-nez v33, :cond_2

    const/4 v3, 0x1

    if-ne v13, v3, :cond_2

    .line 1988
    const-string v3, "MMTelSS"

    const-string v6, "Already add rule for CFNoAnswer with serviceClass=0 case previously"

    invoke-static {v3, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 1991
    :cond_a
    const/4 v3, 0x3

    move/from16 v0, v31

    if-ne v0, v3, :cond_d

    if-eqz v21, :cond_d

    invoke-virtual/range {v21 .. v21}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendNotReachable()Z

    move-result v3

    const/4 v6, 0x1

    if-ne v3, v6, :cond_d

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->containSpecificMedia(Ljava/util/List;I)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 1995
    if-nez v33, :cond_b

    if-nez v33, :cond_c

    if-nez v14, :cond_c

    .line 1996
    :cond_b
    const-string v11, "CFNotReachable"

    move-object/from16 v3, p0

    move/from16 v6, v31

    move/from16 v7, v30

    move/from16 v8, v33

    invoke-virtual/range {v3 .. v11}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->handleCreateNewRuleForExistingCF(Lcom/mediatek/simservs/client/policy/RuleSet;Lcom/mediatek/simservs/client/policy/Rule;IIILjava/lang/String;ILjava/lang/String;)Z

    move-result v18

    .line 1997
    const-string v3, "MMTelSS"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handleSetCF():CFNoReachable-addedNewRule="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v18

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1998
    if-nez v33, :cond_2

    .line 1999
    const/4 v14, 0x1

    goto/16 :goto_3

    .line 2001
    :cond_c
    if-nez v33, :cond_2

    const/4 v3, 0x1

    if-ne v14, v3, :cond_2

    .line 2002
    const-string v3, "MMTelSS"

    const-string v6, "Already add rule for CFNoReachable with serviceClass=0 case previously"

    invoke-static {v3, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 2005
    :cond_d
    const/4 v3, 0x6

    move/from16 v0, v31

    if-ne v0, v3, :cond_10

    if-eqz v21, :cond_10

    invoke-virtual/range {v21 .. v21}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendNotRegistered()Z

    move-result v3

    const/4 v6, 0x1

    if-ne v3, v6, :cond_10

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->containSpecificMedia(Ljava/util/List;I)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 2009
    if-nez v33, :cond_e

    if-nez v33, :cond_f

    if-nez v15, :cond_f

    .line 2010
    :cond_e
    const-string v11, "CFNotRegistered"

    move-object/from16 v3, p0

    move/from16 v6, v31

    move/from16 v7, v30

    move/from16 v8, v33

    invoke-virtual/range {v3 .. v11}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->handleCreateNewRuleForExistingCF(Lcom/mediatek/simservs/client/policy/RuleSet;Lcom/mediatek/simservs/client/policy/Rule;IIILjava/lang/String;ILjava/lang/String;)Z

    move-result v18

    .line 2011
    const-string v3, "MMTelSS"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handleSetCF():CFNoRegistered-addedNewRule="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v18

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2012
    if-nez v33, :cond_2

    .line 2013
    const/4 v15, 0x1

    goto/16 :goto_3

    .line 2015
    :cond_f
    if-nez v33, :cond_2

    const/4 v3, 0x1

    if-ne v14, v3, :cond_2

    .line 2016
    const-string v3, "MMTelSS"

    const-string v6, "Already add rule for CFNoRegistered with serviceClass=0 case previously"

    invoke-static {v3, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 2019
    :cond_10
    if-nez v31, :cond_15

    if-eqz v21, :cond_11

    invoke-virtual/range {v21 .. v21}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendBusy()Z

    move-result v3

    if-nez v3, :cond_11

    invoke-virtual/range {v21 .. v21}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendNoAnswer()Z

    move-result v3

    if-nez v3, :cond_11

    invoke-virtual/range {v21 .. v21}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendNotReachable()Z

    move-result v3

    if-eqz v3, :cond_12

    :cond_11
    if-nez v21, :cond_15

    :cond_12
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->containSpecificMedia(Ljava/util/List;I)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 2025
    if-nez v33, :cond_13

    if-nez v33, :cond_14

    if-nez v16, :cond_14

    .line 2026
    :cond_13
    const-string v11, "CFU"

    move-object/from16 v3, p0

    move/from16 v6, v31

    move/from16 v7, v30

    move/from16 v8, v33

    invoke-virtual/range {v3 .. v11}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->handleCreateNewRuleForExistingCF(Lcom/mediatek/simservs/client/policy/RuleSet;Lcom/mediatek/simservs/client/policy/Rule;IIILjava/lang/String;ILjava/lang/String;)Z

    move-result v18

    .line 2027
    const-string v3, "MMTelSS"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handleSetCF():CFU-addedNewRule="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v18

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2028
    if-nez v33, :cond_2

    .line 2029
    const/16 v16, 0x1

    goto/16 :goto_3

    .line 2031
    :cond_14
    if-nez v33, :cond_2

    const/4 v3, 0x1

    move/from16 v0, v16

    if-ne v0, v3, :cond_2

    .line 2032
    const-string v3, "MMTelSS"

    const-string v6, "Already add rule for CFU with serviceClass=0 case previously"

    invoke-static {v3, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 2037
    :cond_15
    const-string v3, "MMTelSS"

    const-string v6, "handleSetCF():Copy old rule to newRuleSet"

    invoke-static {v3, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2038
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v4}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->copyOldRuleToNewRuleSet(Lcom/mediatek/simservs/client/policy/Rule;Lcom/mediatek/simservs/client/policy/RuleSet;)Lcom/mediatek/simservs/client/policy/Rule;

    goto/16 :goto_3

    .line 2046
    .end local v5           #r:Lcom/mediatek/simservs/client/policy/Rule;
    .end local v17           #action:Lcom/mediatek/simservs/client/policy/Actions;
    .end local v21           #cond:Lcom/mediatek/simservs/client/policy/Conditions;
    .end local v23           #i:I
    .end local v24           #mediaList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_16
    if-nez v18, :cond_19

    const/4 v3, 0x1

    move/from16 v0, v30

    if-eq v0, v3, :cond_17

    const/4 v3, 0x3

    move/from16 v0, v30

    if-ne v0, v3, :cond_19

    .line 2047
    :cond_17
    const/16 v18, 0x1

    .line 2048
    const-string v3, ""

    invoke-virtual {v4, v3}, Lcom/mediatek/simservs/client/policy/RuleSet;->createNewRule(Ljava/lang/String;)Lcom/mediatek/simservs/client/policy/Rule;

    move-result-object v26

    .line 2049
    .local v26, rule:Lcom/mediatek/simservs/client/policy/Rule;
    invoke-virtual/range {v26 .. v26}, Lcom/mediatek/simservs/client/policy/Rule;->createConditions()Lcom/mediatek/simservs/client/policy/Conditions;

    move-result-object v21

    .line 2050
    .restart local v21       #cond:Lcom/mediatek/simservs/client/policy/Conditions;
    invoke-virtual/range {v26 .. v26}, Lcom/mediatek/simservs/client/policy/Rule;->createActions()Lcom/mediatek/simservs/client/policy/Actions;

    move-result-object v17

    .line 2051
    .restart local v17       #action:Lcom/mediatek/simservs/client/policy/Actions;
    const/4 v3, 0x1

    move-object/from16 v0, v17

    invoke-virtual {v0, v9, v3}, Lcom/mediatek/simservs/client/policy/Actions;->setFowardTo(Ljava/lang/String;Z)V

    .line 2053
    const-string v3, "MMTelSS"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handleSetCF():Add rule for this time\'s enable reason="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v31

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",serviceClass="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v33

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2055
    const/4 v3, 0x1

    move/from16 v0, v31

    if-ne v0, v3, :cond_1b

    .line 2056
    const-string v3, "CFB"

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Lcom/mediatek/simservs/client/policy/Rule;->setId(Ljava/lang/String;)V

    .line 2057
    invoke-virtual/range {v21 .. v21}, Lcom/mediatek/simservs/client/policy/Conditions;->addBusy()V

    .line 2071
    :cond_18
    :goto_5
    const/4 v3, 0x1

    move/from16 v0, v33

    if-ne v0, v3, :cond_1f

    .line 2072
    const-string v3, "audio"

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Lcom/mediatek/simservs/client/policy/Conditions;->addMedia(Ljava/lang/String;)V

    .line 2080
    .end local v17           #action:Lcom/mediatek/simservs/client/policy/Actions;
    .end local v21           #cond:Lcom/mediatek/simservs/client/policy/Conditions;
    .end local v26           #rule:Lcom/mediatek/simservs/client/policy/Rule;
    :cond_19
    :goto_6
    invoke-virtual {v4}, Lcom/mediatek/simservs/client/policy/RuleSet;->getRules()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_20

    .line 2081
    const-string v3, "MMTelSS"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Dump SetCF XML:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Lcom/mediatek/simservs/client/policy/RuleSet;->toXmlString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2085
    :goto_7
    invoke-virtual/range {v19 .. v19}, Lcom/mediatek/simservs/client/CommunicationDiversion;->saveRuleSet()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 2101
    .end local v4           #newRuleSet:Lcom/mediatek/simservs/client/policy/RuleSet;
    .end local v18           #addedNewRule:Z
    .end local v19           #cd:Lcom/mediatek/simservs/client/CommunicationDiversion;
    .end local v27           #ruleList:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    .end local v28           #ruleSet:Lcom/mediatek/simservs/client/policy/RuleSet;
    :cond_1a
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v3, :cond_4

    .line 2102
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v3, v6, v7}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 2103
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_4

    .line 2058
    .restart local v4       #newRuleSet:Lcom/mediatek/simservs/client/policy/RuleSet;
    .restart local v17       #action:Lcom/mediatek/simservs/client/policy/Actions;
    .restart local v18       #addedNewRule:Z
    .restart local v19       #cd:Lcom/mediatek/simservs/client/CommunicationDiversion;
    .restart local v21       #cond:Lcom/mediatek/simservs/client/policy/Conditions;
    .restart local v26       #rule:Lcom/mediatek/simservs/client/policy/Rule;
    .restart local v27       #ruleList:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    .restart local v28       #ruleSet:Lcom/mediatek/simservs/client/policy/RuleSet;
    :cond_1b
    const/4 v3, 0x2

    move/from16 v0, v31

    if-ne v0, v3, :cond_1c

    .line 2059
    :try_start_2
    const-string v3, "CFNoAnswer"

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Lcom/mediatek/simservs/client/policy/Rule;->setId(Ljava/lang/String;)V

    .line 2060
    invoke-virtual/range {v21 .. v21}, Lcom/mediatek/simservs/client/policy/Conditions;->addNoAnswer()V

    goto :goto_5

    .line 2061
    :cond_1c
    const/4 v3, 0x3

    move/from16 v0, v31

    if-ne v0, v3, :cond_1d

    .line 2062
    const-string v3, "CFNotReachable"

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Lcom/mediatek/simservs/client/policy/Rule;->setId(Ljava/lang/String;)V

    .line 2063
    invoke-virtual/range {v21 .. v21}, Lcom/mediatek/simservs/client/policy/Conditions;->addNotReachable()V

    goto :goto_5

    .line 2064
    :cond_1d
    const/4 v3, 0x6

    move/from16 v0, v31

    if-ne v0, v3, :cond_1e

    .line 2065
    const-string v3, "CFNotRegistered"

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Lcom/mediatek/simservs/client/policy/Rule;->setId(Ljava/lang/String;)V

    .line 2066
    invoke-virtual/range {v21 .. v21}, Lcom/mediatek/simservs/client/policy/Conditions;->addNotRegistered()V

    goto :goto_5

    .line 2067
    :cond_1e
    if-nez v31, :cond_18

    .line 2068
    const-string v3, "CFU"

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Lcom/mediatek/simservs/client/policy/Rule;->setId(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 2073
    :cond_1f
    const/16 v3, 0x200

    move/from16 v0, v33

    if-ne v0, v3, :cond_19

    .line 2074
    const-string v3, "video"

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Lcom/mediatek/simservs/client/policy/Conditions;->addMedia(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 2083
    .end local v17           #action:Lcom/mediatek/simservs/client/policy/Actions;
    .end local v21           #cond:Lcom/mediatek/simservs/client/policy/Conditions;
    .end local v26           #rule:Lcom/mediatek/simservs/client/policy/Rule;
    :cond_20
    const-string v3, "MMTelSS"

    const-string v6, "Dump SetCF XML: ruleset with empty rules"

    invoke-static {v3, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_7
.end method

.method public handleSetCLIP(Lcom/android/internal/telephony/MMTelSSRequest;)V
    .locals 14
    .parameter "rr"

    .prologue
    const/4 v1, 0x0

    const/4 v13, 0x0

    const/4 v12, 0x1

    .line 1735
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 1736
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 1737
    .local v10, reqNo:I
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 1739
    .local v11, serialNo:I
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 1740
    .local v7, clipEnable:I
    const-string v0, "MMTelSS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Read from CLIP parcel:clipMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1743
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    invoke-static {}, Lcom/android/internal/telephony/MMTelSSUtils;->getXui()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/telephony/MMTelSSTransport;->mXui:Ljava/lang/String;

    .line 1744
    iget-object v0, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    invoke-static {}, Lcom/android/internal/telephony/MMTelSSUtils;->getXcapRootUri()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/telephony/MMTelSSTransport;->mXcapRoot:Ljava/lang/String;

    .line 1745
    iget-object v0, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    invoke-static {}, Lcom/android/internal/telephony/MMTelSSUtils;->getXIntendedId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/telephony/MMTelSSTransport;->mXIntendedId:Ljava/lang/String;

    .line 1747
    iget-object v0, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v1, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v1, v1, Lcom/android/internal/telephony/MMTelSSTransport;->mXui:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v2, v2, Lcom/android/internal/telephony/MMTelSSTransport;->mXcapRoot:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v3, v3, Lcom/android/internal/telephony/MMTelSSTransport;->mXIntendedId:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v4, v4, Lcom/android/internal/telephony/MMTelSSTransport;->mUserName:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v5, v5, Lcom/android/internal/telephony/MMTelSSTransport;->mPassword:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/MMTelSSTransport;->setSimservsInitParameters(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1748
    invoke-static {}, Lcom/android/internal/telephony/MMTelSSTransport;->access$000()Lcom/mediatek/simservs/client/SimServs;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/mediatek/simservs/client/SimServs;->getOriginatingIdentityPresentation(Z)Lcom/mediatek/simservs/client/OriginatingIdentityPresentation;

    move-result-object v9

    .line 1749
    .local v9, oip:Lcom/mediatek/simservs/client/OriginatingIdentityPresentation;
    if-ne v7, v12, :cond_2

    .line 1750
    const/4 v0, 0x1

    invoke-virtual {v9, v0}, Lcom/mediatek/simservs/client/OriginatingIdentityPresentation;->setActive(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1768
    .end local v9           #oip:Lcom/mediatek/simservs/client/OriginatingIdentityPresentation;
    :cond_0
    :goto_0
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v0, :cond_1

    .line 1769
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-static {v0, v13, v13}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 1770
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1772
    :cond_1
    :goto_1
    return-void

    .line 1752
    .restart local v9       #oip:Lcom/mediatek/simservs/client/OriginatingIdentityPresentation;
    :cond_2
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {v9, v0}, Lcom/mediatek/simservs/client/OriginatingIdentityPresentation;->setActive(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1754
    .end local v9           #oip:Lcom/mediatek/simservs/client/OriginatingIdentityPresentation;
    :catch_0
    move-exception v8

    .line 1757
    .local v8, e:Ljava/lang/Exception;
    const-string v0, "MMTelSS"

    const-string v1, "handleSetCLIP():Start to Print Stack Trace"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1758
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    .line 1759
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v0, :cond_0

    .line 1760
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object v6

    .line 1761
    .local v6, ce:Lcom/android/internal/telephony/CommandException;
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-static {v0, v13, v6}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 1762
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_1
.end method

.method public handleSetCLIR(Lcom/android/internal/telephony/MMTelSSRequest;)V
    .locals 12
    .parameter "rr"

    .prologue
    .line 1693
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 1694
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 1695
    .local v10, reqNo:I
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 1697
    .local v11, serialNo:I
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 1698
    .local v7, clirMode:I
    const-string v0, "MMTelSS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Read from CLIR parcel:clirMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1701
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    invoke-static {}, Lcom/android/internal/telephony/MMTelSSUtils;->getXui()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/telephony/MMTelSSTransport;->mXui:Ljava/lang/String;

    .line 1702
    iget-object v0, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    invoke-static {}, Lcom/android/internal/telephony/MMTelSSUtils;->getXcapRootUri()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/telephony/MMTelSSTransport;->mXcapRoot:Ljava/lang/String;

    .line 1703
    iget-object v0, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    invoke-static {}, Lcom/android/internal/telephony/MMTelSSUtils;->getXIntendedId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/telephony/MMTelSSTransport;->mXIntendedId:Ljava/lang/String;

    .line 1705
    iget-object v0, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v1, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v1, v1, Lcom/android/internal/telephony/MMTelSSTransport;->mXui:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v2, v2, Lcom/android/internal/telephony/MMTelSSTransport;->mXcapRoot:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v3, v3, Lcom/android/internal/telephony/MMTelSSTransport;->mXIntendedId:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v4, v4, Lcom/android/internal/telephony/MMTelSSTransport;->mUserName:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v5, v5, Lcom/android/internal/telephony/MMTelSSTransport;->mPassword:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/MMTelSSTransport;->setSimservsInitParameters(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1706
    invoke-static {}, Lcom/android/internal/telephony/MMTelSSTransport;->access$000()Lcom/mediatek/simservs/client/SimServs;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/mediatek/simservs/client/SimServs;->getOriginatingIdentityPresentationRestriction(Z)Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;

    move-result-object v9

    .line 1707
    .local v9, oir:Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;
    const/4 v0, 0x1

    if-ne v7, v0, :cond_2

    .line 1708
    const/4 v0, 0x1

    invoke-virtual {v9, v0}, Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;->setDefaultPresentationRestricted(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1728
    .end local v9           #oir:Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;
    :cond_0
    :goto_0
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v0, :cond_1

    .line 1729
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 1730
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1732
    :cond_1
    :goto_1
    return-void

    .line 1709
    .restart local v9       #oir:Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;
    :cond_2
    const/4 v0, 0x2

    if-ne v7, v0, :cond_3

    .line 1710
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {v9, v0}, Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;->setDefaultPresentationRestricted(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1714
    .end local v9           #oir:Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;
    :catch_0
    move-exception v8

    .line 1717
    .local v8, e:Ljava/lang/Exception;
    const-string v0, "MMTelSS"

    const-string v1, "handleSetCLIR():Start to Print Stack Trace"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1718
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    .line 1719
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v0, :cond_0

    .line 1720
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object v6

    .line 1721
    .local v6, ce:Lcom/android/internal/telephony/CommandException;
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v1, 0x0

    invoke-static {v0, v1, v6}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 1722
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_1

    .line 1712
    .end local v6           #ce:Lcom/android/internal/telephony/CommandException;
    .end local v8           #e:Ljava/lang/Exception;
    .restart local v9       #oir:Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;
    :cond_3
    const/4 v0, 0x0

    :try_start_2
    invoke-virtual {v9, v0}, Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;->setDefaultPresentationRestricted(Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0
.end method

.method public handleSetCOLP(Lcom/android/internal/telephony/MMTelSSRequest;)V
    .locals 14
    .parameter "rr"

    .prologue
    const/4 v1, 0x0

    const/4 v13, 0x0

    const/4 v12, 0x1

    .line 1818
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 1819
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 1820
    .local v9, reqNo:I
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 1822
    .local v10, serialNo:I
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 1823
    .local v7, colpEnable:I
    const-string v0, "MMTelSS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Read from COLP parcel:colpEnable="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1826
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    invoke-static {}, Lcom/android/internal/telephony/MMTelSSUtils;->getXui()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/telephony/MMTelSSTransport;->mXui:Ljava/lang/String;

    .line 1827
    iget-object v0, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    invoke-static {}, Lcom/android/internal/telephony/MMTelSSUtils;->getXcapRootUri()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/telephony/MMTelSSTransport;->mXcapRoot:Ljava/lang/String;

    .line 1828
    iget-object v0, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    invoke-static {}, Lcom/android/internal/telephony/MMTelSSUtils;->getXIntendedId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/telephony/MMTelSSTransport;->mXIntendedId:Ljava/lang/String;

    .line 1830
    iget-object v0, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v1, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v1, v1, Lcom/android/internal/telephony/MMTelSSTransport;->mXui:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v2, v2, Lcom/android/internal/telephony/MMTelSSTransport;->mXcapRoot:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v3, v3, Lcom/android/internal/telephony/MMTelSSTransport;->mXIntendedId:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v4, v4, Lcom/android/internal/telephony/MMTelSSTransport;->mUserName:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v5, v5, Lcom/android/internal/telephony/MMTelSSTransport;->mPassword:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/MMTelSSTransport;->setSimservsInitParameters(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1831
    invoke-static {}, Lcom/android/internal/telephony/MMTelSSTransport;->access$000()Lcom/mediatek/simservs/client/SimServs;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/mediatek/simservs/client/SimServs;->getTerminatingIdentityPresentation(Z)Lcom/mediatek/simservs/client/TerminatingIdentityPresentation;

    move-result-object v11

    .line 1832
    .local v11, tip:Lcom/mediatek/simservs/client/TerminatingIdentityPresentation;
    if-ne v7, v12, :cond_2

    .line 1833
    const/4 v0, 0x1

    invoke-virtual {v11, v0}, Lcom/mediatek/simservs/client/TerminatingIdentityPresentation;->setActive(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1851
    .end local v11           #tip:Lcom/mediatek/simservs/client/TerminatingIdentityPresentation;
    :cond_0
    :goto_0
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v0, :cond_1

    .line 1852
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-static {v0, v13, v13}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 1853
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1855
    :cond_1
    :goto_1
    return-void

    .line 1835
    .restart local v11       #tip:Lcom/mediatek/simservs/client/TerminatingIdentityPresentation;
    :cond_2
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {v11, v0}, Lcom/mediatek/simservs/client/TerminatingIdentityPresentation;->setActive(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1837
    .end local v11           #tip:Lcom/mediatek/simservs/client/TerminatingIdentityPresentation;
    :catch_0
    move-exception v8

    .line 1840
    .local v8, e:Ljava/lang/Exception;
    const-string v0, "MMTelSS"

    const-string v1, "handleSetCOLP():Start to Print Stack Trace"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1841
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    .line 1842
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v0, :cond_0

    .line 1843
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object v6

    .line 1844
    .local v6, ce:Lcom/android/internal/telephony/CommandException;
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-static {v0, v13, v6}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 1845
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_1
.end method

.method public handleSetCOLR(Lcom/android/internal/telephony/MMTelSSRequest;)V
    .locals 12
    .parameter "rr"

    .prologue
    .line 1776
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 1777
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 1778
    .local v9, reqNo:I
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 1780
    .local v10, serialNo:I
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 1781
    .local v7, colrMode:I
    const-string v0, "MMTelSS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Read from COLR parcel:clirMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1784
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    invoke-static {}, Lcom/android/internal/telephony/MMTelSSUtils;->getXui()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/telephony/MMTelSSTransport;->mXui:Ljava/lang/String;

    .line 1785
    iget-object v0, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    invoke-static {}, Lcom/android/internal/telephony/MMTelSSUtils;->getXcapRootUri()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/telephony/MMTelSSTransport;->mXcapRoot:Ljava/lang/String;

    .line 1786
    iget-object v0, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    invoke-static {}, Lcom/android/internal/telephony/MMTelSSUtils;->getXIntendedId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/telephony/MMTelSSTransport;->mXIntendedId:Ljava/lang/String;

    .line 1788
    iget-object v0, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v1, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v1, v1, Lcom/android/internal/telephony/MMTelSSTransport;->mXui:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v2, v2, Lcom/android/internal/telephony/MMTelSSTransport;->mXcapRoot:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v3, v3, Lcom/android/internal/telephony/MMTelSSTransport;->mXIntendedId:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v4, v4, Lcom/android/internal/telephony/MMTelSSTransport;->mUserName:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v5, v5, Lcom/android/internal/telephony/MMTelSSTransport;->mPassword:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/MMTelSSTransport;->setSimservsInitParameters(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1789
    invoke-static {}, Lcom/android/internal/telephony/MMTelSSTransport;->access$000()Lcom/mediatek/simservs/client/SimServs;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/mediatek/simservs/client/SimServs;->getTerminatingIdentityPresentationRestriction(Z)Lcom/mediatek/simservs/client/TerminatingIdentityPresentationRestriction;

    move-result-object v11

    .line 1790
    .local v11, tir:Lcom/mediatek/simservs/client/TerminatingIdentityPresentationRestriction;
    const/4 v0, 0x1

    if-ne v7, v0, :cond_2

    .line 1791
    const/4 v0, 0x1

    invoke-virtual {v11, v0}, Lcom/mediatek/simservs/client/TerminatingIdentityPresentationRestriction;->setDefaultPresentationRestricted(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1811
    .end local v11           #tir:Lcom/mediatek/simservs/client/TerminatingIdentityPresentationRestriction;
    :cond_0
    :goto_0
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v0, :cond_1

    .line 1812
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 1813
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1815
    :cond_1
    :goto_1
    return-void

    .line 1792
    .restart local v11       #tir:Lcom/mediatek/simservs/client/TerminatingIdentityPresentationRestriction;
    :cond_2
    const/4 v0, 0x2

    if-ne v7, v0, :cond_3

    .line 1793
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {v11, v0}, Lcom/mediatek/simservs/client/TerminatingIdentityPresentationRestriction;->setDefaultPresentationRestricted(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1797
    .end local v11           #tir:Lcom/mediatek/simservs/client/TerminatingIdentityPresentationRestriction;
    :catch_0
    move-exception v8

    .line 1800
    .local v8, e:Ljava/lang/Exception;
    const-string v0, "MMTelSS"

    const-string v1, "handleSetCOLR():Start to Print Stack Trace"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1801
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    .line 1802
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v0, :cond_0

    .line 1803
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object v6

    .line 1804
    .local v6, ce:Lcom/android/internal/telephony/CommandException;
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v1, 0x0

    invoke-static {v0, v1, v6}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 1805
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_1

    .line 1795
    .end local v6           #ce:Lcom/android/internal/telephony/CommandException;
    .end local v8           #e:Ljava/lang/Exception;
    .restart local v11       #tir:Lcom/mediatek/simservs/client/TerminatingIdentityPresentationRestriction;
    :cond_3
    const/4 v0, 0x0

    :try_start_2
    invoke-virtual {v11, v0}, Lcom/mediatek/simservs/client/TerminatingIdentityPresentationRestriction;->setDefaultPresentationRestricted(Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0
.end method

.method public handleSetCW(Lcom/android/internal/telephony/MMTelSSRequest;)V
    .locals 13
    .parameter "rr"

    .prologue
    .line 1860
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 1861
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 1862
    .local v10, reqNo:I
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 1863
    .local v11, serialNo:I
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 1864
    .local v9, enabled:I
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 1868
    .local v12, serviceClass:I
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    invoke-static {}, Lcom/android/internal/telephony/MMTelSSUtils;->getXui()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/telephony/MMTelSSTransport;->mXui:Ljava/lang/String;

    .line 1869
    iget-object v0, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    invoke-static {}, Lcom/android/internal/telephony/MMTelSSUtils;->getXcapRootUri()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/telephony/MMTelSSTransport;->mXcapRoot:Ljava/lang/String;

    .line 1870
    iget-object v0, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    invoke-static {}, Lcom/android/internal/telephony/MMTelSSUtils;->getXIntendedId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/telephony/MMTelSSTransport;->mXIntendedId:Ljava/lang/String;

    .line 1872
    iget-object v0, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v1, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v1, v1, Lcom/android/internal/telephony/MMTelSSTransport;->mXui:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v2, v2, Lcom/android/internal/telephony/MMTelSSTransport;->mXcapRoot:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v3, v3, Lcom/android/internal/telephony/MMTelSSTransport;->mXIntendedId:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v4, v4, Lcom/android/internal/telephony/MMTelSSTransport;->mUserName:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v5, v5, Lcom/android/internal/telephony/MMTelSSTransport;->mPassword:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/MMTelSSTransport;->setSimservsInitParameters(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1873
    invoke-static {}, Lcom/android/internal/telephony/MMTelSSTransport;->access$000()Lcom/mediatek/simservs/client/SimServs;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/mediatek/simservs/client/SimServs;->getCommunicationWaiting(Z)Lcom/mediatek/simservs/client/CommunicationWaiting;

    move-result-object v7

    .line 1874
    .local v7, cw:Lcom/mediatek/simservs/client/CommunicationWaiting;
    const/4 v0, 0x1

    if-ne v9, v0, :cond_2

    .line 1875
    const/4 v0, 0x1

    invoke-virtual {v7, v0}, Lcom/mediatek/simservs/client/CommunicationWaiting;->setActive(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1893
    .end local v7           #cw:Lcom/mediatek/simservs/client/CommunicationWaiting;
    :cond_0
    :goto_0
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v0, :cond_1

    .line 1894
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 1895
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1898
    :cond_1
    :goto_1
    return-void

    .line 1877
    .restart local v7       #cw:Lcom/mediatek/simservs/client/CommunicationWaiting;
    :cond_2
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {v7, v0}, Lcom/mediatek/simservs/client/CommunicationWaiting;->setActive(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1879
    .end local v7           #cw:Lcom/mediatek/simservs/client/CommunicationWaiting;
    :catch_0
    move-exception v8

    .line 1882
    .local v8, e:Ljava/lang/Exception;
    const-string v0, "MMTelSS"

    const-string v1, "handleSetCW():Start to Print Stack Trace"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1883
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    .line 1884
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v0, :cond_0

    .line 1885
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object v6

    .line 1886
    .local v6, ce:Lcom/android/internal/telephony/CommandException;
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v1, 0x0

    invoke-static {v0, v1, v6}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 1887
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_1
.end method

.method public hasExtraMedia(Ljava/util/List;I)Z
    .locals 3
    .parameter
    .parameter "serviceClass"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I)Z"
        }
    .end annotation

    .prologue
    .local p1, mediaList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x1

    .line 504
    const/4 v0, 0x0

    .line 505
    .local v0, found:Z
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->containSpecificMedia(Ljava/util/List;I)Z

    move-result v0

    .line 506
    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-le v2, v1, :cond_0

    .line 509
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isBAIC(Lcom/mediatek/simservs/client/policy/Conditions;I)Z
    .locals 2
    .parameter "cond"
    .parameter "serviceClass"

    .prologue
    const/4 v0, 0x1

    .line 537
    if-nez p1, :cond_1

    .line 544
    :cond_0
    :goto_0
    return v0

    .line 539
    :cond_1
    invoke-virtual {p1}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendInternational()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p1}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendRoaming()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p1}, Lcom/mediatek/simservs/client/policy/Conditions;->getMedias()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->containSpecificMedia(Ljava/util/List;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 544
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isBAOC(Lcom/mediatek/simservs/client/policy/Conditions;I)Z
    .locals 2
    .parameter "cond"
    .parameter "serviceClass"

    .prologue
    const/4 v0, 0x1

    .line 524
    if-nez p1, :cond_1

    .line 531
    :cond_0
    :goto_0
    return v0

    .line 526
    :cond_1
    invoke-virtual {p1}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendInternational()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p1}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendRoaming()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p1}, Lcom/mediatek/simservs/client/policy/Conditions;->getMedias()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->containSpecificMedia(Ljava/util/List;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 531
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public run()V
    .locals 0

    .prologue
    .line 481
    return-void
.end method
