.class final Landroid/view/ViewRootImpl$ImeInputStage;
.super Landroid/view/ViewRootImpl$AsyncInputStage;
.source "ViewRootImpl.java"

# interfaces
.implements Landroid/view/inputmethod/InputMethodManager$FinishedInputEventCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewRootImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ImeInputStage"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/view/ViewRootImpl;


# direct methods
.method public constructor <init>(Landroid/view/ViewRootImpl;Landroid/view/ViewRootImpl$InputStage;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "next"
    .parameter "traceCounter"

    .prologue
    .line 4283
    iput-object p1, p0, Landroid/view/ViewRootImpl$ImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    .line 4284
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewRootImpl$AsyncInputStage;-><init>(Landroid/view/ViewRootImpl;Landroid/view/ViewRootImpl$InputStage;Ljava/lang/String;)V

    .line 4285
    return-void
.end method


# virtual methods
.method public onFinishedInputEvent(Ljava/lang/Object;Z)V
    .locals 4
    .parameter "token"
    .parameter "handled"

    .prologue
    .line 4313
    move-object v0, p1

    check-cast v0, Landroid/view/ViewRootImpl$QueuedInputEvent;

    .line 4314
    .local v0, q:Landroid/view/ViewRootImpl$QueuedInputEvent;
    invoke-static {}, Landroid/view/ViewRootImpl;->access$1200()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Landroid/view/ViewRootImpl;->access$1800()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Landroid/view/ViewRootImpl;->access$1400()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4315
    :cond_0
    const-string v1, "ViewRootImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IME finishedEvent: handled = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", event = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",viewAncestor = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4317
    :cond_1
    if-eqz p2, :cond_2

    .line 4318
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/view/ViewRootImpl$ImeInputStage;->finish(Landroid/view/ViewRootImpl$QueuedInputEvent;Z)V

    .line 4322
    :goto_0
    return-void

    .line 4321
    :cond_2
    invoke-virtual {p0, v0}, Landroid/view/ViewRootImpl$ImeInputStage;->forward(Landroid/view/ViewRootImpl$QueuedInputEvent;)V

    goto :goto_0
.end method

.method protected onProcess(Landroid/view/ViewRootImpl$QueuedInputEvent;)I
    .locals 8
    .parameter "q"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 4289
    iget-object v5, p0, Landroid/view/ViewRootImpl$ImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-boolean v5, v5, Landroid/view/ViewRootImpl;->mLastWasImTarget:Z

    if-eqz v5, :cond_4

    iget-object v5, p0, Landroid/view/ViewRootImpl$ImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    #calls: Landroid/view/ViewRootImpl;->isInLocalFocusMode()Z
    invoke-static {v5}, Landroid/view/ViewRootImpl;->access$1100(Landroid/view/ViewRootImpl;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 4290
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v1

    .line 4291
    .local v1, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v1, :cond_4

    .line 4292
    iget-object v5, p0, Landroid/view/ViewRootImpl$ImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    const-string v6, "7: IME stage"

    #setter for: Landroid/view/ViewRootImpl;->mKeyEventStatus:Ljava/lang/String;
    invoke-static {v5, v6}, Landroid/view/ViewRootImpl;->access$1702(Landroid/view/ViewRootImpl;Ljava/lang/String;)Ljava/lang/String;

    .line 4293
    iget-object v0, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    .line 4294
    .local v0, event:Landroid/view/InputEvent;
    invoke-static {}, Landroid/view/ViewRootImpl;->access$1200()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {}, Landroid/view/ViewRootImpl;->access$1800()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {}, Landroid/view/ViewRootImpl;->access$1400()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 4295
    :cond_0
    const-string v5, "ViewRootImpl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Sending input event to IME: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", this = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4297
    :cond_1
    iget-object v5, p0, Landroid/view/ViewRootImpl$ImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-object v5, v5, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v1, v0, p1, p0, v5}, Landroid/view/inputmethod/InputMethodManager;->dispatchInputEvent(Landroid/view/InputEvent;Ljava/lang/Object;Landroid/view/inputmethod/InputMethodManager$FinishedInputEventCallback;Landroid/os/Handler;)I

    move-result v2

    .line 4298
    .local v2, result:I

    const/16 v5, 0x63

    if-ne v2, v5, :cond_miui

    const/4 v3, 0x0

    return v3

    :cond_miui

    if-ne v2, v3, :cond_2

    .line 4308
    .end local v0           #event:Landroid/view/InputEvent;
    .end local v1           #imm:Landroid/view/inputmethod/InputMethodManager;
    .end local v2           #result:I
    :goto_0
    return v3

    .line 4300
    .restart local v0       #event:Landroid/view/InputEvent;
    .restart local v1       #imm:Landroid/view/inputmethod/InputMethodManager;
    .restart local v2       #result:I
    :cond_2
    if-nez v2, :cond_3

    move v3, v4

    .line 4302
    goto :goto_0

    .line 4304
    :cond_3
    const/4 v3, 0x3

    goto :goto_0

    .end local v0           #event:Landroid/view/InputEvent;
    .end local v1           #imm:Landroid/view/inputmethod/InputMethodManager;
    .end local v2           #result:I
    :cond_4
    move v3, v4

    .line 4308
    goto :goto_0
.end method
