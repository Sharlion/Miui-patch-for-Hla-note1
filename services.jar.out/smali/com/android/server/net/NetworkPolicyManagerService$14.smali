.class Lcom/android/server/net/NetworkPolicyManagerService$14;
.super Ljava/lang/Object;
.source "NetworkPolicyManagerService.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/net/NetworkPolicyManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/net/NetworkPolicyManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/net/NetworkPolicyManagerService;)V
    .locals 0
    .parameter

    .prologue
    .line 2327
    iput-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService$14;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 20
    .parameter "msg"

    .prologue
    .line 2330
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v17, v0

    packed-switch v17, :pswitch_data_0

    .line 2471
    const/16 v17, 0x0

    :goto_0
    return v17

    .line 2332
    :pswitch_0
    move-object/from16 v0, p1

    iget v15, v0, Landroid/os/Message;->arg1:I

    .line 2333
    .local v15, uid:I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v16, v0

    .line 2334
    .local v16, uidRules:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$14;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v17, v0

    #getter for: Lcom/android/server/net/NetworkPolicyManagerService;->mListeners:Landroid/os/RemoteCallbackList;
    invoke-static/range {v17 .. v17}, Lcom/android/server/net/NetworkPolicyManagerService;->access$1900(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v5

    .line 2335
    .local v5, length:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-ge v3, v5, :cond_1

    .line 2336
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$14;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v17, v0

    #getter for: Lcom/android/server/net/NetworkPolicyManagerService;->mListeners:Landroid/os/RemoteCallbackList;
    invoke-static/range {v17 .. v17}, Lcom/android/server/net/NetworkPolicyManagerService;->access$1900(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v6

    check-cast v6, Landroid/net/INetworkPolicyListener;

    .line 2337
    .local v6, listener:Landroid/net/INetworkPolicyListener;
    if-eqz v6, :cond_0

    .line 2339
    :try_start_0
    move/from16 v0, v16

    invoke-interface {v6, v15, v0}, Landroid/net/INetworkPolicyListener;->onUidRulesChanged(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2335
    :cond_0
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 2344
    .end local v6           #listener:Landroid/net/INetworkPolicyListener;
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$14;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v17, v0

    #getter for: Lcom/android/server/net/NetworkPolicyManagerService;->mListeners:Landroid/os/RemoteCallbackList;
    invoke-static/range {v17 .. v17}, Lcom/android/server/net/NetworkPolicyManagerService;->access$1900(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 2345
    const/16 v17, 0x1

    goto :goto_0

    .line 2348
    .end local v3           #i:I
    .end local v5           #length:I
    .end local v15           #uid:I
    .end local v16           #uidRules:I
    :pswitch_1
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v17, v0

    check-cast v17, [Ljava/lang/String;

    move-object/from16 v9, v17

    check-cast v9, [Ljava/lang/String;

    .line 2349
    .local v9, meteredIfaces:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$14;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v17, v0

    #getter for: Lcom/android/server/net/NetworkPolicyManagerService;->mListeners:Landroid/os/RemoteCallbackList;
    invoke-static/range {v17 .. v17}, Lcom/android/server/net/NetworkPolicyManagerService;->access$1900(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v5

    .line 2350
    .restart local v5       #length:I
    const/4 v3, 0x0

    .restart local v3       #i:I
    :goto_3
    if-ge v3, v5, :cond_3

    .line 2351
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$14;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v17, v0

    #getter for: Lcom/android/server/net/NetworkPolicyManagerService;->mListeners:Landroid/os/RemoteCallbackList;
    invoke-static/range {v17 .. v17}, Lcom/android/server/net/NetworkPolicyManagerService;->access$1900(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v6

    check-cast v6, Landroid/net/INetworkPolicyListener;

    .line 2352
    .restart local v6       #listener:Landroid/net/INetworkPolicyListener;
    if-eqz v6, :cond_2

    .line 2354
    :try_start_1
    invoke-interface {v6, v9}, Landroid/net/INetworkPolicyListener;->onMeteredIfacesChanged([Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 2350
    :cond_2
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 2359
    .end local v6           #listener:Landroid/net/INetworkPolicyListener;
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$14;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v17, v0

    #getter for: Lcom/android/server/net/NetworkPolicyManagerService;->mListeners:Landroid/os/RemoteCallbackList;
    invoke-static/range {v17 .. v17}, Lcom/android/server/net/NetworkPolicyManagerService;->access$1900(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 2360
    const/16 v17, 0x1

    goto/16 :goto_0

    .line 2363
    .end local v3           #i:I
    .end local v5           #length:I
    .end local v9           #meteredIfaces:[Ljava/lang/String;
    :pswitch_2
    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->arg1:I

    .line 2364
    .local v12, pid:I
    move-object/from16 v0, p1

    iget v15, v0, Landroid/os/Message;->arg2:I

    .line 2365
    .restart local v15       #uid:I
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v17, v0

    check-cast v17, Ljava/lang/Boolean;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 2366
    .local v2, foregroundActivities:Z
    const-string v17, "NetworkPolicy"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "onRecv: MSG_FOREGROUND_ACTIVITIES_CHANGED pid:uid:act="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ":"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ":"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2367
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$14;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v17, v0

    #getter for: Lcom/android/server/net/NetworkPolicyManagerService;->mRulesLock:Ljava/lang/Object;
    invoke-static/range {v17 .. v17}, Lcom/android/server/net/NetworkPolicyManagerService;->access$400(Lcom/android/server/net/NetworkPolicyManagerService;)Ljava/lang/Object;

    move-result-object v18

    monitor-enter v18

    .line 2372
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$14;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v17, v0

    #getter for: Lcom/android/server/net/NetworkPolicyManagerService;->mUidPidForeground:Landroid/util/SparseArray;
    invoke-static/range {v17 .. v17}, Lcom/android/server/net/NetworkPolicyManagerService;->access$2000(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/util/SparseArray;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/util/SparseBooleanArray;

    .line 2373
    .local v13, pidForeground:Landroid/util/SparseBooleanArray;
    if-nez v13, :cond_4

    .line 2374
    new-instance v13, Landroid/util/SparseBooleanArray;

    .end local v13           #pidForeground:Landroid/util/SparseBooleanArray;
    const/16 v17, 0x2

    move/from16 v0, v17

    invoke-direct {v13, v0}, Landroid/util/SparseBooleanArray;-><init>(I)V

    .line 2375
    .restart local v13       #pidForeground:Landroid/util/SparseBooleanArray;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$14;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v17, v0

    #getter for: Lcom/android/server/net/NetworkPolicyManagerService;->mUidPidForeground:Landroid/util/SparseArray;
    invoke-static/range {v17 .. v17}, Lcom/android/server/net/NetworkPolicyManagerService;->access$2000(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/util/SparseArray;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v15, v13}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2377
    :cond_4
    invoke-virtual {v13, v12, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 2378
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$14;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    #calls: Lcom/android/server/net/NetworkPolicyManagerService;->computeUidForegroundLocked(I)V
    invoke-static {v0, v15}, Lcom/android/server/net/NetworkPolicyManagerService;->access$2100(Lcom/android/server/net/NetworkPolicyManagerService;I)V

    .line 2379
    monitor-exit v18

    .line 2380
    const/16 v17, 0x1

    goto/16 :goto_0

    .line 2379
    .end local v13           #pidForeground:Landroid/util/SparseBooleanArray;
    :catchall_0
    move-exception v17

    monitor-exit v18
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v17

    .line 2383
    .end local v2           #foregroundActivities:Z
    .end local v12           #pid:I
    .end local v15           #uid:I
    :pswitch_3
    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->arg1:I

    .line 2384
    .restart local v12       #pid:I
    move-object/from16 v0, p1

    iget v15, v0, Landroid/os/Message;->arg2:I

    .line 2386
    .restart local v15       #uid:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$14;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v17, v0

    #getter for: Lcom/android/server/net/NetworkPolicyManagerService;->mRulesLock:Ljava/lang/Object;
    invoke-static/range {v17 .. v17}, Lcom/android/server/net/NetworkPolicyManagerService;->access$400(Lcom/android/server/net/NetworkPolicyManagerService;)Ljava/lang/Object;

    move-result-object v18

    monitor-enter v18

    .line 2388
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$14;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v17, v0

    #getter for: Lcom/android/server/net/NetworkPolicyManagerService;->mUidPidForeground:Landroid/util/SparseArray;
    invoke-static/range {v17 .. v17}, Lcom/android/server/net/NetworkPolicyManagerService;->access$2000(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/util/SparseArray;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/util/SparseBooleanArray;

    .line 2389
    .restart local v13       #pidForeground:Landroid/util/SparseBooleanArray;
    if-eqz v13, :cond_5

    .line 2390
    invoke-virtual {v13, v12}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 2391
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$14;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    #calls: Lcom/android/server/net/NetworkPolicyManagerService;->computeUidForegroundLocked(I)V
    invoke-static {v0, v15}, Lcom/android/server/net/NetworkPolicyManagerService;->access$2100(Lcom/android/server/net/NetworkPolicyManagerService;I)V

    .line 2393
    :cond_5
    monitor-exit v18

    .line 2394
    const/16 v17, 0x1

    goto/16 :goto_0

    .line 2393
    .end local v13           #pidForeground:Landroid/util/SparseBooleanArray;
    :catchall_1
    move-exception v17

    monitor-exit v18
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v17

    .line 2397
    .end local v12           #pid:I
    .end local v15           #uid:I
    :pswitch_4
    const-string v17, "NetworkPolicy"

    const-string v18, "onRecv: MSG_LIMIT_REACHED"

    invoke-static/range {v17 .. v18}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2398
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    .line 2400
    .local v4, iface:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$14;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v17, v0

    #calls: Lcom/android/server/net/NetworkPolicyManagerService;->maybeRefreshTrustedTime()V
    invoke-static/range {v17 .. v17}, Lcom/android/server/net/NetworkPolicyManagerService;->access$300(Lcom/android/server/net/NetworkPolicyManagerService;)V

    .line 2401
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$14;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v17, v0

    #getter for: Lcom/android/server/net/NetworkPolicyManagerService;->mRulesLock:Ljava/lang/Object;
    invoke-static/range {v17 .. v17}, Lcom/android/server/net/NetworkPolicyManagerService;->access$400(Lcom/android/server/net/NetworkPolicyManagerService;)Ljava/lang/Object;

    move-result-object v18

    monitor-enter v18

    .line 2402
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$14;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v17, v0

    #getter for: Lcom/android/server/net/NetworkPolicyManagerService;->mMeteredIfaces:Ljava/util/HashSet;
    invoke-static/range {v17 .. v17}, Lcom/android/server/net/NetworkPolicyManagerService;->access$2200(Lcom/android/server/net/NetworkPolicyManagerService;)Ljava/util/HashSet;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-result v17

    if-eqz v17, :cond_6

    .line 2406
    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$14;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v17, v0

    #getter for: Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkStats:Landroid/net/INetworkStatsService;
    invoke-static/range {v17 .. v17}, Lcom/android/server/net/NetworkPolicyManagerService;->access$2300(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/net/INetworkStatsService;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Landroid/net/INetworkStatsService;->forceUpdate()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_4

    .line 2411
    :goto_5
    :try_start_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$14;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v17, v0

    const/16 v19, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v19

    #setter for: Lcom/android/server/net/NetworkPolicyManagerService;->mShouldCheckNetworkEnable:Z
    invoke-static {v0, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->access$2402(Lcom/android/server/net/NetworkPolicyManagerService;Z)Z

    .line 2412
    const-string v17, "NetworkPolicy"

    const-string v19, " MSG_LIMIT_REACHED call updateNetworkEnabledLocked false"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2413
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$14;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v17, v0

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v19

    #calls: Lcom/android/server/net/NetworkPolicyManagerService;->updateNetworkEnabledLocked(Z)V
    invoke-static {v0, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->access$600(Lcom/android/server/net/NetworkPolicyManagerService;Z)V

    .line 2416
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$14;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v17, v0

    #calls: Lcom/android/server/net/NetworkPolicyManagerService;->updateNetworkRulesLocked()V
    invoke-static/range {v17 .. v17}, Lcom/android/server/net/NetworkPolicyManagerService;->access$1700(Lcom/android/server/net/NetworkPolicyManagerService;)V

    .line 2418
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$14;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v17, v0

    #calls: Lcom/android/server/net/NetworkPolicyManagerService;->updateNotificationsLocked()V
    invoke-static/range {v17 .. v17}, Lcom/android/server/net/NetworkPolicyManagerService;->access$700(Lcom/android/server/net/NetworkPolicyManagerService;)V

    .line 2420
    :cond_6
    monitor-exit v18

    .line 2421
    const/16 v17, 0x1

    goto/16 :goto_0

    .line 2420
    :catchall_2
    move-exception v17

    monitor-exit v18
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v17

    .line 2424
    .end local v4           #iface:Ljava/lang/String;
    :pswitch_5
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v17, v0

    if-eqz v17, :cond_8

    const/4 v14, 0x1

    .line 2425
    .local v14, restrictBackground:Z
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$14;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v17, v0

    #getter for: Lcom/android/server/net/NetworkPolicyManagerService;->mListeners:Landroid/os/RemoteCallbackList;
    invoke-static/range {v17 .. v17}, Lcom/android/server/net/NetworkPolicyManagerService;->access$1900(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v5

    .line 2426
    .restart local v5       #length:I
    const/4 v3, 0x0

    .restart local v3       #i:I
    :goto_7
    if-ge v3, v5, :cond_9

    .line 2427
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$14;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v17, v0

    #getter for: Lcom/android/server/net/NetworkPolicyManagerService;->mListeners:Landroid/os/RemoteCallbackList;
    invoke-static/range {v17 .. v17}, Lcom/android/server/net/NetworkPolicyManagerService;->access$1900(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v6

    check-cast v6, Landroid/net/INetworkPolicyListener;

    .line 2428
    .restart local v6       #listener:Landroid/net/INetworkPolicyListener;
    if-eqz v6, :cond_7

    .line 2430
    :try_start_7
    invoke-interface {v6, v14}, Landroid/net/INetworkPolicyListener;->onRestrictBackgroundChanged(Z)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_2

    .line 2426
    :cond_7
    :goto_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 2424
    .end local v3           #i:I
    .end local v5           #length:I
    .end local v6           #listener:Landroid/net/INetworkPolicyListener;
    .end local v14           #restrictBackground:Z
    :cond_8
    const/4 v14, 0x0

    goto :goto_6

    .line 2435
    .restart local v3       #i:I
    .restart local v5       #length:I
    .restart local v14       #restrictBackground:Z
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$14;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v17, v0

    #getter for: Lcom/android/server/net/NetworkPolicyManagerService;->mListeners:Landroid/os/RemoteCallbackList;
    invoke-static/range {v17 .. v17}, Lcom/android/server/net/NetworkPolicyManagerService;->access$1900(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 2436
    const/16 v17, 0x1

    goto/16 :goto_0

    .line 2439
    .end local v3           #i:I
    .end local v5           #length:I
    .end local v14           #restrictBackground:Z
    :pswitch_6
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v17, v0

    check-cast v17, Ljava/lang/Long;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    .line 2443
    .local v7, lowestRule:J
    const-wide/16 v17, 0x3e8

    :try_start_8
    div-long v10, v7, v17

    .line 2444
    .local v10, persistThreshold:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$14;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v17, v0

    #getter for: Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkStats:Landroid/net/INetworkStatsService;
    invoke-static/range {v17 .. v17}, Lcom/android/server/net/NetworkPolicyManagerService;->access$2300(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/net/INetworkStatsService;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-interface {v0, v10, v11}, Landroid/net/INetworkStatsService;->advisePersistThreshold(J)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_3

    .line 2448
    .end local v10           #persistThreshold:J
    :goto_9
    const/16 v17, 0x1

    goto/16 :goto_0

    .line 2451
    .end local v7           #lowestRule:J
    :pswitch_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$14;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v17, v0

    #calls: Lcom/android/server/net/NetworkPolicyManagerService;->updateScreenOn()V
    invoke-static/range {v17 .. v17}, Lcom/android/server/net/NetworkPolicyManagerService;->access$2500(Lcom/android/server/net/NetworkPolicyManagerService;)V

    .line 2452
    const/16 v17, 0x1

    goto/16 :goto_0

    .line 2456
    :pswitch_8
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    .line 2457
    .restart local v4       #iface:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$14;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v17, v0

    #calls: Lcom/android/server/net/NetworkPolicyManagerService;->maybeRefreshTrustedTime()V
    invoke-static/range {v17 .. v17}, Lcom/android/server/net/NetworkPolicyManagerService;->access$300(Lcom/android/server/net/NetworkPolicyManagerService;)V

    .line 2458
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$14;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v17, v0

    #getter for: Lcom/android/server/net/NetworkPolicyManagerService;->mRulesLock:Ljava/lang/Object;
    invoke-static/range {v17 .. v17}, Lcom/android/server/net/NetworkPolicyManagerService;->access$400(Lcom/android/server/net/NetworkPolicyManagerService;)Ljava/lang/Object;

    move-result-object v18

    monitor-enter v18

    .line 2460
    :try_start_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$14;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v17, v0

    #calls: Lcom/android/server/net/NetworkPolicyManagerService;->updateMobileDataEnableStatus()V
    invoke-static/range {v17 .. v17}, Lcom/android/server/net/NetworkPolicyManagerService;->access$200(Lcom/android/server/net/NetworkPolicyManagerService;)V

    .line 2461
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$14;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v17, v0

    #calls: Lcom/android/server/net/NetworkPolicyManagerService;->ensureActiveMobilePolicyLocked()V
    invoke-static/range {v17 .. v17}, Lcom/android/server/net/NetworkPolicyManagerService;->access$500(Lcom/android/server/net/NetworkPolicyManagerService;)V

    .line 2462
    const-string v17, "NetworkPolicy"

    const-string v19, " MSG_INTERFACE_DOWN call updateNetworkEnabledLocked false"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2463
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$14;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v17, v0

    const/16 v19, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v19

    #calls: Lcom/android/server/net/NetworkPolicyManagerService;->updateNetworkEnabledLocked(Z)V
    invoke-static {v0, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->access$600(Lcom/android/server/net/NetworkPolicyManagerService;Z)V

    .line 2464
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$14;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v17, v0

    #calls: Lcom/android/server/net/NetworkPolicyManagerService;->updateNetworkRulesLocked()V
    invoke-static/range {v17 .. v17}, Lcom/android/server/net/NetworkPolicyManagerService;->access$1700(Lcom/android/server/net/NetworkPolicyManagerService;)V

    .line 2465
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$14;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v17, v0

    #calls: Lcom/android/server/net/NetworkPolicyManagerService;->updateNotificationsLocked()V
    invoke-static/range {v17 .. v17}, Lcom/android/server/net/NetworkPolicyManagerService;->access$700(Lcom/android/server/net/NetworkPolicyManagerService;)V

    .line 2466
    monitor-exit v18

    .line 2467
    const/16 v17, 0x1

    goto/16 :goto_0

    .line 2466
    :catchall_3
    move-exception v17

    monitor-exit v18
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    throw v17

    .line 2340
    .end local v4           #iface:Ljava/lang/String;
    .restart local v3       #i:I
    .restart local v5       #length:I
    .restart local v6       #listener:Landroid/net/INetworkPolicyListener;
    .restart local v15       #uid:I
    .restart local v16       #uidRules:I
    :catch_0
    move-exception v17

    goto/16 :goto_2

    .line 2355
    .end local v15           #uid:I
    .end local v16           #uidRules:I
    .restart local v9       #meteredIfaces:[Ljava/lang/String;
    :catch_1
    move-exception v17

    goto/16 :goto_4

    .line 2431
    .end local v9           #meteredIfaces:[Ljava/lang/String;
    .restart local v14       #restrictBackground:Z
    :catch_2
    move-exception v17

    goto/16 :goto_8

    .line 2445
    .end local v3           #i:I
    .end local v5           #length:I
    .end local v6           #listener:Landroid/net/INetworkPolicyListener;
    .end local v14           #restrictBackground:Z
    .restart local v7       #lowestRule:J
    :catch_3
    move-exception v17

    goto :goto_9

    .line 2407
    .end local v7           #lowestRule:J
    .restart local v4       #iface:Ljava/lang/String;
    :catch_4
    move-exception v17

    goto/16 :goto_5

    .line 2330
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method
