.class Lcom/android/internal/telephony/IccSmsInterfaceManager$1;
.super Landroid/os/Handler;
.source "IccSmsInterfaceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/IccSmsInterfaceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/IccSmsInterfaceManager;)V
    .locals 0
    .parameter

    .prologue
    .line 160
    iput-object p1, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 15
    .parameter "msg"

    .prologue
    .line 165
    move-object/from16 v0, p1

    iget v11, v0, Landroid/os/Message;->what:I

    sparse-switch v11, :sswitch_data_0

    .line 437
    :cond_0
    :goto_0
    return-void

    .line 167
    :sswitch_0
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 168
    .local v1, ar:Landroid/os/AsyncResult;
    iget-object v11, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    iget-object v12, v11, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mLock:Ljava/lang/Object;

    monitor-enter v12

    .line 169
    :try_start_0
    iget-object v13, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    iget-object v11, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v11, :cond_1

    const/4 v11, 0x1

    :goto_1
    iput-boolean v11, v13, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mSuccess:Z

    .line 171
    iget-object v11, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    iget-boolean v11, v11, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mSuccess:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v13, 0x1

    if-ne v11, v13, :cond_2

    .line 173
    :try_start_1
    iget-object v11, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v11, [I

    check-cast v11, [I

    const/4 v13, 0x0

    aget v5, v11, v13

    .line 174
    .local v5, index:I
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v13, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    #getter for: Lcom/android/internal/telephony/IccSmsInterfaceManager;->smsInsertRet2:Landroid/telephony/SimSmsInsertStatus;
    invoke-static {v13}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->access$000(Lcom/android/internal/telephony/IccSmsInterfaceManager;)Landroid/telephony/SimSmsInsertStatus;

    move-result-object v13

    iget-object v14, v13, Landroid/telephony/SimSmsInsertStatus;->indexInIcc:Ljava/lang/String;

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v14, ","

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    iput-object v11, v13, Landroid/telephony/SimSmsInsertStatus;->indexInIcc:Ljava/lang/String;

    .line 175
    iget-object v11, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "[insertRaw save one pdu in index "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->log(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 186
    .end local v5           #index:I
    :goto_2
    :try_start_2
    iget-object v11, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    iget-object v11, v11, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v11}, Ljava/lang/Object;->notifyAll()V

    .line 187
    monitor-exit v12
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 190
    iget-object v11, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v11, :cond_0

    .line 191
    iget-object v3, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v3, Lcom/android/internal/telephony/CommandException;

    .line 193
    .local v3, e:Lcom/android/internal/telephony/CommandException;
    iget-object v11, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Cannot update SMS "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v3}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 196
    invoke-virtual {v3}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v11

    sget-object v12, Lcom/android/internal/telephony/CommandException$Error;->SIM_MEM_FULL:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v11, v12, :cond_0

    .line 197
    iget-object v11, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    iget-object v11, v11, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    invoke-virtual {v11}, Lcom/android/internal/telephony/SMSDispatcher;->handleIccFull()V

    goto/16 :goto_0

    .line 169
    .end local v3           #e:Lcom/android/internal/telephony/CommandException;
    :cond_1
    const/4 v11, 0x0

    goto/16 :goto_1

    .line 176
    :catch_0
    move-exception v3

    .line 177
    .local v3, e:Ljava/lang/ClassCastException;
    :try_start_3
    invoke-virtual {v3}, Ljava/lang/ClassCastException;->printStackTrace()V

    goto :goto_2

    .line 187
    .end local v3           #e:Ljava/lang/ClassCastException;
    :catchall_0
    move-exception v11

    monitor-exit v12
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v11

    .line 178
    :catch_1
    move-exception v4

    .line 179
    .local v4, ex:Ljava/lang/Exception;
    :try_start_4
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 182
    .end local v4           #ex:Ljava/lang/Exception;
    :cond_2
    iget-object v11, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    const-string v13, "[insertRaw fail to insert raw into ICC"

    invoke-virtual {v11, v13}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 183
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v13, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    #getter for: Lcom/android/internal/telephony/IccSmsInterfaceManager;->smsInsertRet2:Landroid/telephony/SimSmsInsertStatus;
    invoke-static {v13}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->access$000(Lcom/android/internal/telephony/IccSmsInterfaceManager;)Landroid/telephony/SimSmsInsertStatus;

    move-result-object v13

    iget-object v14, v13, Landroid/telephony/SimSmsInsertStatus;->indexInIcc:Ljava/lang/String;

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v14, "-1,"

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    iput-object v11, v13, Landroid/telephony/SimSmsInsertStatus;->indexInIcc:Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    .line 203
    .end local v1           #ar:Landroid/os/AsyncResult;
    :sswitch_1
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 205
    .restart local v1       #ar:Landroid/os/AsyncResult;
    iget-object v11, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    iget-object v12, v11, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mLoadLock:Ljava/lang/Object;

    monitor-enter v12

    .line 207
    :try_start_5
    iget-object v11, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v11, :cond_4

    .line 208
    iget-object v13, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    iget-object v14, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    iget-object v11, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v11, Ljava/util/ArrayList;

    invoke-virtual {v14, v11}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->buildValidRawData(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v11

    #setter for: Lcom/android/internal/telephony/IccSmsInterfaceManager;->mSms:Ljava/util/List;
    invoke-static {v13, v11}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->access$102(Lcom/android/internal/telephony/IccSmsInterfaceManager;Ljava/util/List;)Ljava/util/List;

    .line 210
    iget-object v13, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    iget-object v11, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v11, Ljava/util/ArrayList;

    invoke-virtual {v13, v11}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->markMessagesAsRead(Ljava/util/ArrayList;)V

    .line 219
    :cond_3
    :goto_3
    iget-object v11, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    iget-object v11, v11, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mLoadLock:Ljava/lang/Object;

    invoke-virtual {v11}, Ljava/lang/Object;->notifyAll()V

    .line 221
    monitor-exit v12

    goto/16 :goto_0

    :catchall_1
    move-exception v11

    monitor-exit v12
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v11

    .line 212
    :cond_4
    :try_start_6
    const-string v11, "SMS"

    const/4 v13, 0x3

    invoke-static {v11, v13}, Landroid/telephony/Rlog;->isLoggable(Ljava/lang/String;I)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 213
    iget-object v11, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    const-string v13, "Cannot load Sms records"

    invoke-virtual {v11, v13}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 215
    :cond_5
    iget-object v11, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    #getter for: Lcom/android/internal/telephony/IccSmsInterfaceManager;->mSms:Ljava/util/List;
    invoke-static {v11}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->access$100(Lcom/android/internal/telephony/IccSmsInterfaceManager;)Ljava/util/List;

    move-result-object v11

    if-eqz v11, :cond_3

    .line 216
    iget-object v11, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    #getter for: Lcom/android/internal/telephony/IccSmsInterfaceManager;->mSms:Ljava/util/List;
    invoke-static {v11}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->access$100(Lcom/android/internal/telephony/IccSmsInterfaceManager;)Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->clear()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_3

    .line 228
    .end local v1           #ar:Landroid/os/AsyncResult;
    :sswitch_2
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 229
    .restart local v1       #ar:Landroid/os/AsyncResult;
    iget-object v11, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    iget-object v12, v11, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mLock:Ljava/lang/Object;

    monitor-enter v12

    .line 230
    :try_start_7
    iget-object v13, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    iget-object v11, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v11, :cond_6

    const/4 v11, 0x1

    :goto_4
    iput-boolean v11, v13, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mSuccess:Z

    .line 231
    iget-object v11, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    iget-object v11, v11, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v11}, Ljava/lang/Object;->notifyAll()V

    .line 232
    monitor-exit v12

    goto/16 :goto_0

    :catchall_2
    move-exception v11

    monitor-exit v12
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    throw v11

    .line 230
    :cond_6
    const/4 v11, 0x0

    goto :goto_4

    .line 236
    .end local v1           #ar:Landroid/os/AsyncResult;
    :sswitch_3
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 238
    .restart local v1       #ar:Landroid/os/AsyncResult;
    iget-object v11, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    iget-object v12, v11, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mLock:Ljava/lang/Object;

    monitor-enter v12

    .line 239
    :try_start_8
    iget-object v11, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v11, :cond_8

    .line 240
    iget-object v11, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    const/4 v13, 0x1

    iput-boolean v13, v11, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mSuccess:Z

    .line 242
    iget-object v11, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    #getter for: Lcom/android/internal/telephony/IccSmsInterfaceManager;->mSimMemStatus:Lcom/mediatek/common/telephony/IccSmsStorageStatus;
    invoke-static {v11}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->access$200(Lcom/android/internal/telephony/IccSmsInterfaceManager;)Lcom/mediatek/common/telephony/IccSmsStorageStatus;

    move-result-object v11

    if-nez v11, :cond_7

    .line 243
    iget-object v11, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    new-instance v13, Lcom/mediatek/common/telephony/IccSmsStorageStatus;

    invoke-direct {v13}, Lcom/mediatek/common/telephony/IccSmsStorageStatus;-><init>()V

    #setter for: Lcom/android/internal/telephony/IccSmsInterfaceManager;->mSimMemStatus:Lcom/mediatek/common/telephony/IccSmsStorageStatus;
    invoke-static {v11, v13}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->access$202(Lcom/android/internal/telephony/IccSmsInterfaceManager;Lcom/mediatek/common/telephony/IccSmsStorageStatus;)Lcom/mediatek/common/telephony/IccSmsStorageStatus;

    .line 246
    :cond_7
    iget-object v10, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v10, Lcom/mediatek/common/telephony/IccSmsStorageStatus;

    .line 248
    .local v10, tmpStatus:Lcom/mediatek/common/telephony/IccSmsStorageStatus;
    iget-object v11, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    #getter for: Lcom/android/internal/telephony/IccSmsInterfaceManager;->mSimMemStatus:Lcom/mediatek/common/telephony/IccSmsStorageStatus;
    invoke-static {v11}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->access$200(Lcom/android/internal/telephony/IccSmsInterfaceManager;)Lcom/mediatek/common/telephony/IccSmsStorageStatus;

    move-result-object v11

    iget v13, v10, Lcom/mediatek/common/telephony/IccSmsStorageStatus;->mUsed:I

    iput v13, v11, Lcom/mediatek/common/telephony/IccSmsStorageStatus;->mUsed:I

    .line 249
    iget-object v11, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    #getter for: Lcom/android/internal/telephony/IccSmsInterfaceManager;->mSimMemStatus:Lcom/mediatek/common/telephony/IccSmsStorageStatus;
    invoke-static {v11}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->access$200(Lcom/android/internal/telephony/IccSmsInterfaceManager;)Lcom/mediatek/common/telephony/IccSmsStorageStatus;

    move-result-object v11

    iget v13, v10, Lcom/mediatek/common/telephony/IccSmsStorageStatus;->mTotal:I

    iput v13, v11, Lcom/mediatek/common/telephony/IccSmsStorageStatus;->mTotal:I

    .line 254
    .end local v10           #tmpStatus:Lcom/mediatek/common/telephony/IccSmsStorageStatus;
    :goto_5
    iget-object v11, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    iget-object v11, v11, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v11}, Ljava/lang/Object;->notifyAll()V

    .line 255
    monitor-exit v12

    goto/16 :goto_0

    :catchall_3
    move-exception v11

    monitor-exit v12
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    throw v11

    .line 252
    :cond_8
    :try_start_9
    iget-object v11, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    const-string v13, "Cannot Get Sms SIM Memory Status from SIM"

    invoke-virtual {v11, v13}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->log(Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    goto :goto_5

    .line 258
    .end local v1           #ar:Landroid/os/AsyncResult;
    :sswitch_4
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 259
    .restart local v1       #ar:Landroid/os/AsyncResult;
    iget-object v11, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    #getter for: Lcom/android/internal/telephony/IccSmsInterfaceManager;->mSimInsertLock:Ljava/lang/Object;
    invoke-static {v11}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->access$300(Lcom/android/internal/telephony/IccSmsInterfaceManager;)Ljava/lang/Object;

    move-result-object v12

    monitor-enter v12

    .line 260
    :try_start_a
    iget-object v13, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    iget-object v11, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v11, :cond_9

    const/4 v11, 0x1

    :goto_6
    #setter for: Lcom/android/internal/telephony/IccSmsInterfaceManager;->mInsertMessageSuccess:Z
    invoke-static {v13, v11}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->access$402(Lcom/android/internal/telephony/IccSmsInterfaceManager;Z)Z

    .line 261
    iget-object v11, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    #getter for: Lcom/android/internal/telephony/IccSmsInterfaceManager;->mInsertMessageSuccess:Z
    invoke-static {v11}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->access$400(Lcom/android/internal/telephony/IccSmsInterfaceManager;)Z
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    move-result v11

    const/4 v13, 0x1

    if-ne v11, v13, :cond_a

    .line 263
    :try_start_b
    iget-object v11, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v11, [I

    check-cast v11, [I

    const/4 v13, 0x0

    aget v5, v11, v13

    .line 264
    .restart local v5       #index:I
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v13, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    #getter for: Lcom/android/internal/telephony/IccSmsInterfaceManager;->smsInsertRet:Landroid/telephony/SimSmsInsertStatus;
    invoke-static {v13}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->access$500(Lcom/android/internal/telephony/IccSmsInterfaceManager;)Landroid/telephony/SimSmsInsertStatus;

    move-result-object v13

    iget-object v14, v13, Landroid/telephony/SimSmsInsertStatus;->indexInIcc:Ljava/lang/String;

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v14, ","

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    iput-object v11, v13, Landroid/telephony/SimSmsInsertStatus;->indexInIcc:Ljava/lang/String;

    .line 265
    iget-object v11, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "[insertText save one pdu in index "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->log(Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4
    .catch Ljava/lang/ClassCastException; {:try_start_b .. :try_end_b} :catch_2
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_3

    .line 276
    .end local v5           #index:I
    :goto_7
    :try_start_c
    iget-object v11, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    #getter for: Lcom/android/internal/telephony/IccSmsInterfaceManager;->mSimInsertLock:Ljava/lang/Object;
    invoke-static {v11}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->access$300(Lcom/android/internal/telephony/IccSmsInterfaceManager;)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->notifyAll()V

    .line 277
    monitor-exit v12

    goto/16 :goto_0

    :catchall_4
    move-exception v11

    monitor-exit v12
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    throw v11

    .line 260
    :cond_9
    const/4 v11, 0x0

    goto :goto_6

    .line 266
    :catch_2
    move-exception v3

    .line 267
    .restart local v3       #e:Ljava/lang/ClassCastException;
    :try_start_d
    invoke-virtual {v3}, Ljava/lang/ClassCastException;->printStackTrace()V

    goto :goto_7

    .line 268
    .end local v3           #e:Ljava/lang/ClassCastException;
    :catch_3
    move-exception v4

    .line 269
    .restart local v4       #ex:Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_7

    .line 272
    .end local v4           #ex:Ljava/lang/Exception;
    :cond_a
    iget-object v11, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    const-string v13, "[insertText fail to insert sms into ICC"

    invoke-virtual {v11, v13}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 273
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v13, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    #getter for: Lcom/android/internal/telephony/IccSmsInterfaceManager;->smsInsertRet:Landroid/telephony/SimSmsInsertStatus;
    invoke-static {v13}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->access$500(Lcom/android/internal/telephony/IccSmsInterfaceManager;)Landroid/telephony/SimSmsInsertStatus;

    move-result-object v13

    iget-object v14, v13, Landroid/telephony/SimSmsInsertStatus;->indexInIcc:Ljava/lang/String;

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v14, "-1,"

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    iput-object v11, v13, Landroid/telephony/SimSmsInsertStatus;->indexInIcc:Ljava/lang/String;
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    goto :goto_7

    .line 280
    .end local v1           #ar:Landroid/os/AsyncResult;
    :sswitch_5
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 281
    .restart local v1       #ar:Landroid/os/AsyncResult;
    iget-object v11, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    iget-object v12, v11, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mLock:Ljava/lang/Object;

    monitor-enter v12

    .line 282
    :try_start_e
    iget-object v11, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    if-nez v11, :cond_b

    .line 284
    :try_start_f
    iget-object v13, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    iget-object v11, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v11, Landroid/telephony/SmsParameters;

    #setter for: Lcom/android/internal/telephony/IccSmsInterfaceManager;->mSmsParams:Landroid/telephony/SmsParameters;
    invoke-static {v13, v11}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->access$602(Lcom/android/internal/telephony/IccSmsInterfaceManager;Landroid/telephony/SmsParameters;)Landroid/telephony/SmsParameters;
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_5
    .catch Ljava/lang/ClassCastException; {:try_start_f .. :try_end_f} :catch_4
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_5

    .line 297
    :goto_8
    :try_start_10
    iget-object v11, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    iget-object v11, v11, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v11}, Ljava/lang/Object;->notifyAll()V

    .line 298
    monitor-exit v12

    goto/16 :goto_0

    :catchall_5
    move-exception v11

    monitor-exit v12
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_5

    throw v11

    .line 285
    :catch_4
    move-exception v3

    .line 286
    .restart local v3       #e:Ljava/lang/ClassCastException;
    :try_start_11
    iget-object v11, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    const-string v13, "[EFsmsp fail to get sms params ClassCastException"

    invoke-virtual {v11, v13}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 287
    invoke-virtual {v3}, Ljava/lang/ClassCastException;->printStackTrace()V

    goto :goto_8

    .line 288
    .end local v3           #e:Ljava/lang/ClassCastException;
    :catch_5
    move-exception v4

    .line 289
    .restart local v4       #ex:Ljava/lang/Exception;
    iget-object v11, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    const-string v13, "[EFsmsp fail to get sms params Exception"

    invoke-virtual {v11, v13}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 290
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_8

    .line 293
    .end local v4           #ex:Ljava/lang/Exception;
    :cond_b
    iget-object v11, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    const-string v13, "[EFsmsp fail to get sms params"

    invoke-virtual {v11, v13}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 294
    iget-object v11, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    const/4 v13, 0x0

    #setter for: Lcom/android/internal/telephony/IccSmsInterfaceManager;->mSmsParams:Landroid/telephony/SmsParameters;
    invoke-static {v11, v13}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->access$602(Lcom/android/internal/telephony/IccSmsInterfaceManager;Landroid/telephony/SmsParameters;)Landroid/telephony/SmsParameters;
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_5

    goto :goto_8

    .line 301
    .end local v1           #ar:Landroid/os/AsyncResult;
    :sswitch_6
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 302
    .restart local v1       #ar:Landroid/os/AsyncResult;
    iget-object v11, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    iget-object v12, v11, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mLock:Ljava/lang/Object;

    monitor-enter v12

    .line 303
    :try_start_12
    iget-object v11, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v11, :cond_c

    .line 304
    iget-object v11, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    const/4 v13, 0x1

    #setter for: Lcom/android/internal/telephony/IccSmsInterfaceManager;->mSmsParamsSuccess:Z
    invoke-static {v11, v13}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->access$702(Lcom/android/internal/telephony/IccSmsInterfaceManager;Z)Z

    .line 310
    :goto_9
    iget-object v11, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    iget-object v11, v11, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v11}, Ljava/lang/Object;->notifyAll()V

    .line 311
    monitor-exit v12

    goto/16 :goto_0

    :catchall_6
    move-exception v11

    monitor-exit v12
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_6

    throw v11

    .line 306
    :cond_c
    :try_start_13
    iget-object v11, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    const-string v13, "[EFsmsp fail to set sms params"

    invoke-virtual {v11, v13}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 307
    iget-object v11, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    const/4 v13, 0x0

    #setter for: Lcom/android/internal/telephony/IccSmsInterfaceManager;->mSmsParamsSuccess:Z
    invoke-static {v11, v13}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->access$702(Lcom/android/internal/telephony/IccSmsInterfaceManager;Z)Z
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_6

    goto :goto_9

    .line 314
    .end local v1           #ar:Landroid/os/AsyncResult;
    :sswitch_7
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 315
    .restart local v1       #ar:Landroid/os/AsyncResult;
    iget-object v11, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    iget-object v12, v11, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mLock:Ljava/lang/Object;

    monitor-enter v12

    .line 316
    :try_start_14
    iget-object v11, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_7

    if-nez v11, :cond_e

    .line 319
    :try_start_15
    iget-object v11, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v11, [B

    move-object v0, v11

    check-cast v0, [B

    move-object v8, v0

    .line 320
    .local v8, rawData:[B
    const/4 v11, 0x0

    aget-byte v11, v8, v11

    if-nez v11, :cond_d

    .line 321
    iget-object v11, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    const-string v13, "sms raw data status is FREE"

    invoke-virtual {v11, v13}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 322
    iget-object v11, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    const/4 v13, 0x0

    #setter for: Lcom/android/internal/telephony/IccSmsInterfaceManager;->mSmsRawData:Lcom/android/internal/telephony/SmsRawData;
    invoke-static {v11, v13}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->access$802(Lcom/android/internal/telephony/IccSmsInterfaceManager;Lcom/android/internal/telephony/SmsRawData;)Lcom/android/internal/telephony/SmsRawData;
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_7
    .catch Ljava/lang/ClassCastException; {:try_start_15 .. :try_end_15} :catch_6

    .line 335
    .end local v8           #rawData:[B
    :goto_a
    :try_start_16
    iget-object v11, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    iget-object v11, v11, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v11}, Ljava/lang/Object;->notifyAll()V

    .line 336
    monitor-exit v12

    goto/16 :goto_0

    :catchall_7
    move-exception v11

    monitor-exit v12
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_7

    throw v11

    .line 324
    .restart local v8       #rawData:[B
    :cond_d
    :try_start_17
    iget-object v11, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    new-instance v13, Lcom/android/internal/telephony/SmsRawData;

    invoke-direct {v13, v8}, Lcom/android/internal/telephony/SmsRawData;-><init>([B)V

    #setter for: Lcom/android/internal/telephony/IccSmsInterfaceManager;->mSmsRawData:Lcom/android/internal/telephony/SmsRawData;
    invoke-static {v11, v13}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->access$802(Lcom/android/internal/telephony/IccSmsInterfaceManager;Lcom/android/internal/telephony/SmsRawData;)Lcom/android/internal/telephony/SmsRawData;
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_7
    .catch Ljava/lang/ClassCastException; {:try_start_17 .. :try_end_17} :catch_6

    goto :goto_a

    .line 326
    .end local v8           #rawData:[B
    :catch_6
    move-exception v3

    .line 327
    .restart local v3       #e:Ljava/lang/ClassCastException;
    :try_start_18
    iget-object v11, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    const-string v13, "fail to get sms raw data ClassCastException"

    invoke-virtual {v11, v13}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 328
    invoke-virtual {v3}, Ljava/lang/ClassCastException;->printStackTrace()V

    .line 329
    iget-object v11, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    const/4 v13, 0x0

    #setter for: Lcom/android/internal/telephony/IccSmsInterfaceManager;->mSmsRawData:Lcom/android/internal/telephony/SmsRawData;
    invoke-static {v11, v13}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->access$802(Lcom/android/internal/telephony/IccSmsInterfaceManager;Lcom/android/internal/telephony/SmsRawData;)Lcom/android/internal/telephony/SmsRawData;

    goto :goto_a

    .line 332
    .end local v3           #e:Ljava/lang/ClassCastException;
    :cond_e
    iget-object v11, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    const-string v13, "fail to get sms raw data rild"

    invoke-virtual {v11, v13}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 333
    iget-object v11, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    const/4 v13, 0x0

    #setter for: Lcom/android/internal/telephony/IccSmsInterfaceManager;->mSmsRawData:Lcom/android/internal/telephony/SmsRawData;
    invoke-static {v11, v13}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->access$802(Lcom/android/internal/telephony/IccSmsInterfaceManager;Lcom/android/internal/telephony/SmsRawData;)Lcom/android/internal/telephony/SmsRawData;
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_7

    goto :goto_a

    .line 339
    .end local v1           #ar:Landroid/os/AsyncResult;
    :sswitch_8
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 340
    .restart local v1       #ar:Landroid/os/AsyncResult;
    iget-object v11, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    iget-object v12, v11, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mLock:Ljava/lang/Object;

    monitor-enter v12

    .line 341
    :try_start_19
    iget-object v11, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v11, :cond_f

    .line 342
    iget-object v6, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v6, Ljava/util/ArrayList;

    .line 345
    .local v6, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;>;"
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-nez v11, :cond_10

    .line 346
    iget-object v11, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    const/4 v13, 0x0

    iput-boolean v13, v11, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mSuccess:Z

    .line 364
    .end local v6           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;>;"
    :cond_f
    :goto_b
    iget-object v11, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "queryCbActivation: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    iget-boolean v14, v14, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mSuccess:Z

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 365
    iget-object v11, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    iget-object v11, v11, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v11}, Ljava/lang/Object;->notifyAll()V

    .line 366
    monitor-exit v12

    goto/16 :goto_0

    :catchall_8
    move-exception v11

    monitor-exit v12
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_8

    throw v11

    .line 348
    .restart local v6       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;>;"
    :cond_10
    const/4 v11, 0x0

    :try_start_1a
    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;

    .line 349
    .local v2, cbConfig:Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;
    iget-object v11, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "cbConfig: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 351
    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;->getFromCodeScheme()I

    move-result v11

    const/4 v13, -0x1

    if-ne v11, v13, :cond_11

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;->getToCodeScheme()I

    move-result v11

    const/4 v13, -0x1

    if-ne v11, v13, :cond_11

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;->getFromServiceId()I

    move-result v11

    const/4 v13, -0x1

    if-ne v11, v13, :cond_11

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;->getToServiceId()I

    move-result v11

    const/4 v13, -0x1

    if-ne v11, v13, :cond_11

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;->isSelected()Z

    move-result v11

    if-nez v11, :cond_11

    .line 357
    iget-object v11, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    const/4 v13, 0x0

    iput-boolean v13, v11, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mSuccess:Z

    goto :goto_b

    .line 359
    :cond_11
    iget-object v11, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    const/4 v13, 0x1

    iput-boolean v13, v11, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mSuccess:Z
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_8

    goto :goto_b

    .line 369
    .end local v1           #ar:Landroid/os/AsyncResult;
    .end local v2           #cbConfig:Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;
    .end local v6           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;>;"
    :sswitch_9
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 370
    .restart local v1       #ar:Landroid/os/AsyncResult;
    iget-object v11, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    iget-object v12, v11, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mLock:Ljava/lang/Object;

    monitor-enter v12

    .line 371
    :try_start_1b
    iget-object v11, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v11, :cond_12

    .line 372
    iget-object v7, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v7, Ljava/util/ArrayList;

    .line 374
    .local v7, mList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;>;"
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-eqz v11, :cond_13

    .line 375
    iget-object v11, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v13

    new-array v13, v13, [Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;

    #setter for: Lcom/android/internal/telephony/IccSmsInterfaceManager;->mSmsCBConfig:[Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;
    invoke-static {v11, v13}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->access$902(Lcom/android/internal/telephony/IccSmsInterfaceManager;[Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;)[Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;

    .line 376
    iget-object v11, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    #getter for: Lcom/android/internal/telephony/IccSmsInterfaceManager;->mSmsCBConfig:[Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;
    invoke-static {v11}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->access$900(Lcom/android/internal/telephony/IccSmsInterfaceManager;)[Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 378
    iget-object v11, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    #getter for: Lcom/android/internal/telephony/IccSmsInterfaceManager;->mSmsCBConfig:[Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;
    invoke-static {v11}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->access$900(Lcom/android/internal/telephony/IccSmsInterfaceManager;)[Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;

    move-result-object v11

    if-eqz v11, :cond_13

    .line 379
    const/4 v5, 0x0

    .line 380
    .restart local v5       #index:I
    iget-object v11, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "config size="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    #getter for: Lcom/android/internal/telephony/IccSmsInterfaceManager;->mSmsCBConfig:[Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;
    invoke-static {v14}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->access$900(Lcom/android/internal/telephony/IccSmsInterfaceManager;)[Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;

    move-result-object v14

    array-length v14, v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 382
    const/4 v5, 0x0

    :goto_c
    iget-object v11, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    #getter for: Lcom/android/internal/telephony/IccSmsInterfaceManager;->mSmsCBConfig:[Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;
    invoke-static {v11}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->access$900(Lcom/android/internal/telephony/IccSmsInterfaceManager;)[Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;

    move-result-object v11

    array-length v11, v11

    if-ge v5, v11, :cond_13

    .line 383
    iget-object v11, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "mSmsCBConfig["

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "] = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "Channel id: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    #getter for: Lcom/android/internal/telephony/IccSmsInterfaceManager;->mSmsCBConfig:[Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;
    invoke-static {v14}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->access$900(Lcom/android/internal/telephony/IccSmsInterfaceManager;)[Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;

    move-result-object v14

    aget-object v14, v14, v5

    invoke-virtual {v14}, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;->getFromServiceId()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "-"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    #getter for: Lcom/android/internal/telephony/IccSmsInterfaceManager;->mSmsCBConfig:[Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;
    invoke-static {v14}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->access$900(Lcom/android/internal/telephony/IccSmsInterfaceManager;)[Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;

    move-result-object v14

    aget-object v14, v14, v5

    invoke-virtual {v14}, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;->getToServiceId()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "Language: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    #getter for: Lcom/android/internal/telephony/IccSmsInterfaceManager;->mSmsCBConfig:[Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;
    invoke-static {v14}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->access$900(Lcom/android/internal/telephony/IccSmsInterfaceManager;)[Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;

    move-result-object v14

    aget-object v14, v14, v5

    invoke-virtual {v14}, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;->getFromCodeScheme()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "-"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    #getter for: Lcom/android/internal/telephony/IccSmsInterfaceManager;->mSmsCBConfig:[Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;
    invoke-static {v14}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->access$900(Lcom/android/internal/telephony/IccSmsInterfaceManager;)[Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;

    move-result-object v14

    aget-object v14, v14, v5

    invoke-virtual {v14}, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;->getToCodeScheme()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "Selected: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    #getter for: Lcom/android/internal/telephony/IccSmsInterfaceManager;->mSmsCBConfig:[Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;
    invoke-static {v14}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->access$900(Lcom/android/internal/telephony/IccSmsInterfaceManager;)[Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;

    move-result-object v14

    aget-object v14, v14, v5

    invoke-virtual {v14}, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;->isSelected()Z

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 382
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_c

    .line 393
    .end local v5           #index:I
    .end local v7           #mList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;>;"
    :cond_12
    iget-object v11, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    const-string v13, "Cannot Get CB configs"

    invoke-virtual {v11, v13}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 395
    :cond_13
    iget-object v11, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    iget-object v11, v11, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v11}, Ljava/lang/Object;->notifyAll()V

    .line 396
    monitor-exit v12

    goto/16 :goto_0

    :catchall_9
    move-exception v11

    monitor-exit v12
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_9

    throw v11

    .line 399
    .end local v1           #ar:Landroid/os/AsyncResult;
    :sswitch_a
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 400
    .restart local v1       #ar:Landroid/os/AsyncResult;
    iget-object v11, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    iget-object v12, v11, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mLock:Ljava/lang/Object;

    monitor-enter v12

    .line 401
    :try_start_1c
    iget-object v13, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    iget-object v11, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v11, :cond_14

    const/4 v11, 0x1

    :goto_d
    iput-boolean v11, v13, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mSuccess:Z

    .line 402
    iget-object v11, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    iget-object v11, v11, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v11}, Ljava/lang/Object;->notifyAll()V

    .line 403
    monitor-exit v12

    goto/16 :goto_0

    :catchall_a
    move-exception v11

    monitor-exit v12
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_a

    throw v11

    .line 401
    :cond_14
    const/4 v11, 0x0

    goto :goto_d

    .line 408
    .end local v1           #ar:Landroid/os/AsyncResult;
    :sswitch_b
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 409
    .restart local v1       #ar:Landroid/os/AsyncResult;
    iget-object v11, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    iget-object v12, v11, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mLock:Ljava/lang/Object;

    monitor-enter v12

    .line 410
    :try_start_1d
    iget-object v13, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    if-eqz v1, :cond_16

    iget-object v11, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v11, :cond_16

    const/4 v11, 0x1

    :goto_e
    iput-boolean v11, v13, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mSuccess:Z

    .line 411
    iget-object v11, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    iget-boolean v11, v11, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mSuccess:Z

    if-eqz v11, :cond_19

    .line 412
    iget-object v11, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v11, [Ljava/lang/String;

    move-object v0, v11

    check-cast v0, [Ljava/lang/String;

    move-object v9, v0

    .line 413
    .local v9, result:[Ljava/lang/String;
    if-eqz v9, :cond_15

    array-length v11, v9

    const/4 v13, 0x2

    if-ne v11, v13, :cond_15

    .line 414
    const/4 v11, 0x0

    aget-object v11, v9, v11

    if-eqz v11, :cond_17

    const/4 v11, 0x0

    aget-object v11, v9, v11

    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_17

    .line 415
    iget-object v11, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    const/4 v13, 0x0

    aget-object v13, v9, v13

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    #setter for: Lcom/android/internal/telephony/IccSmsInterfaceManager;->mUpdateIndex:I
    invoke-static {v11, v13}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->access$1002(Lcom/android/internal/telephony/IccSmsInterfaceManager;I)I

    .line 421
    :goto_f
    const/4 v11, 0x1

    aget-object v11, v9, v11

    if-eqz v11, :cond_18

    const/4 v11, 0x1

    aget-object v11, v9, v11

    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_18

    .line 422
    iget-object v11, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    const/4 v13, 0x1

    aget-object v13, v9, v13

    #setter for: Lcom/android/internal/telephony/IccSmsInterfaceManager;->mFeedbackRawPdu:Ljava/lang/String;
    invoke-static {v11, v13}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->access$1102(Lcom/android/internal/telephony/IccSmsInterfaceManager;Ljava/lang/String;)Ljava/lang/String;

    .line 432
    .end local v9           #result:[Ljava/lang/String;
    :cond_15
    :goto_10
    iget-object v11, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    iget-object v11, v11, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v11}, Ljava/lang/Object;->notifyAll()V

    .line 433
    monitor-exit v12

    goto/16 :goto_0

    :catchall_b
    move-exception v11

    monitor-exit v12
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_b

    throw v11

    .line 410
    :cond_16
    const/4 v11, 0x0

    goto :goto_e

    .line 417
    .restart local v9       #result:[Ljava/lang/String;
    :cond_17
    :try_start_1e
    iget-object v11, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    const-string v13, "Dont get one avalible index after writeSMSToRuim."

    invoke-virtual {v11, v13}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 418
    iget-object v11, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    const/4 v13, -0x1

    #setter for: Lcom/android/internal/telephony/IccSmsInterfaceManager;->mUpdateIndex:I
    invoke-static {v11, v13}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->access$1002(Lcom/android/internal/telephony/IccSmsInterfaceManager;I)I

    goto :goto_f

    .line 424
    :cond_18
    iget-object v11, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    const-string v13, "Dont get one avalible feedbackRawPdu after writeSMSToRuim."

    invoke-virtual {v11, v13}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 425
    iget-object v11, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    const-string v13, ""

    #setter for: Lcom/android/internal/telephony/IccSmsInterfaceManager;->mFeedbackRawPdu:Ljava/lang/String;
    invoke-static {v11, v13}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->access$1102(Lcom/android/internal/telephony/IccSmsInterfaceManager;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_10

    .line 429
    .end local v9           #result:[Ljava/lang/String;
    :cond_19
    iget-object v11, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    const/4 v13, -0x1

    #setter for: Lcom/android/internal/telephony/IccSmsInterfaceManager;->mUpdateIndex:I
    invoke-static {v11, v13}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->access$1002(Lcom/android/internal/telephony/IccSmsInterfaceManager;I)I

    .line 430
    iget-object v11, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    const/4 v13, 0x0

    #setter for: Lcom/android/internal/telephony/IccSmsInterfaceManager;->mFeedbackRawPdu:Ljava/lang/String;
    invoke-static {v11, v13}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->access$1102(Lcom/android/internal/telephony/IccSmsInterfaceManager;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_b

    goto :goto_10

    .line 165
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_0
        0x3 -> :sswitch_2
        0x4 -> :sswitch_2
        0x65 -> :sswitch_2
        0x66 -> :sswitch_3
        0x67 -> :sswitch_4
        0x68 -> :sswitch_5
        0x69 -> :sswitch_6
        0x6a -> :sswitch_7
        0x6b -> :sswitch_9
        0x6c -> :sswitch_8
        0x6d -> :sswitch_a
        0xc8 -> :sswitch_b
    .end sparse-switch
.end method
