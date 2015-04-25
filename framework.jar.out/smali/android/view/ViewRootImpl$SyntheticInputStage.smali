.class final Landroid/view/ViewRootImpl$SyntheticInputStage;
.super Landroid/view/ViewRootImpl$InputStage;
.source "ViewRootImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewRootImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "SyntheticInputStage"
.end annotation


# instance fields
.field private final mJoystick:Landroid/view/ViewRootImpl$SyntheticJoystickHandler;

.field private final mTouchNavigation:Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;

.field private final mTrackball:Landroid/view/ViewRootImpl$SyntheticTrackballHandler;

.field final synthetic this$0:Landroid/view/ViewRootImpl;


# direct methods
.method public constructor <init>(Landroid/view/ViewRootImpl;)V
    .locals 2
    .parameter

    .prologue
    .line 4614
    iput-object p1, p0, Landroid/view/ViewRootImpl$SyntheticInputStage;->this$0:Landroid/view/ViewRootImpl;

    .line 4615
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/view/ViewRootImpl$InputStage;-><init>(Landroid/view/ViewRootImpl;Landroid/view/ViewRootImpl$InputStage;)V

    .line 4609
    new-instance v0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;

    iget-object v1, p0, Landroid/view/ViewRootImpl$SyntheticInputStage;->this$0:Landroid/view/ViewRootImpl;

    invoke-direct {v0, v1}, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;-><init>(Landroid/view/ViewRootImpl;)V

    iput-object v0, p0, Landroid/view/ViewRootImpl$SyntheticInputStage;->mTrackball:Landroid/view/ViewRootImpl$SyntheticTrackballHandler;

    .line 4610
    new-instance v0, Landroid/view/ViewRootImpl$SyntheticJoystickHandler;

    iget-object v1, p0, Landroid/view/ViewRootImpl$SyntheticInputStage;->this$0:Landroid/view/ViewRootImpl;

    invoke-direct {v0, v1}, Landroid/view/ViewRootImpl$SyntheticJoystickHandler;-><init>(Landroid/view/ViewRootImpl;)V

    iput-object v0, p0, Landroid/view/ViewRootImpl$SyntheticInputStage;->mJoystick:Landroid/view/ViewRootImpl$SyntheticJoystickHandler;

    .line 4611
    new-instance v0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;

    iget-object v1, p0, Landroid/view/ViewRootImpl$SyntheticInputStage;->this$0:Landroid/view/ViewRootImpl;

    invoke-direct {v0, v1}, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;-><init>(Landroid/view/ViewRootImpl;)V

    iput-object v0, p0, Landroid/view/ViewRootImpl$SyntheticInputStage;->mTouchNavigation:Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;

    .line 4616
    return-void
.end method


# virtual methods
.method protected onDeliverToNext(Landroid/view/ViewRootImpl$QueuedInputEvent;)V
    .locals 4
    .parameter "q"

    .prologue
    const/high16 v3, 0x20

    .line 4642
    iget v2, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mFlags:I

    and-int/lit8 v2, v2, 0x10

    if-nez v2, :cond_0

    .line 4644
    iget-object v2, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    instance-of v2, v2, Landroid/view/MotionEvent;

    if-eqz v2, :cond_0

    .line 4645
    iget-object v0, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    check-cast v0, Landroid/view/MotionEvent;

    .line 4646
    .local v0, event:Landroid/view/MotionEvent;
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getSource()I

    move-result v1

    .line 4647
    .local v1, source:I
    and-int/lit8 v2, v1, 0x4

    if-eqz v2, :cond_1

    .line 4648
    iget-object v2, p0, Landroid/view/ViewRootImpl$SyntheticInputStage;->mTrackball:Landroid/view/ViewRootImpl$SyntheticTrackballHandler;

    invoke-virtual {v2, v0}, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->cancel(Landroid/view/MotionEvent;)V

    .line 4657
    .end local v0           #event:Landroid/view/MotionEvent;
    .end local v1           #source:I
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/view/ViewRootImpl$InputStage;->onDeliverToNext(Landroid/view/ViewRootImpl$QueuedInputEvent;)V

    .line 4658
    return-void

    .line 4649
    .restart local v0       #event:Landroid/view/MotionEvent;
    .restart local v1       #source:I
    :cond_1
    and-int/lit8 v2, v1, 0x10

    if-eqz v2, :cond_2

    .line 4650
    iget-object v2, p0, Landroid/view/ViewRootImpl$SyntheticInputStage;->mJoystick:Landroid/view/ViewRootImpl$SyntheticJoystickHandler;

    invoke-virtual {v2, v0}, Landroid/view/ViewRootImpl$SyntheticJoystickHandler;->cancel(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 4651
    :cond_2
    and-int v2, v1, v3

    if-ne v2, v3, :cond_0

    .line 4653
    iget-object v2, p0, Landroid/view/ViewRootImpl$SyntheticInputStage;->mTouchNavigation:Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;

    invoke-virtual {v2, v0}, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->cancel(Landroid/view/MotionEvent;)V

    goto :goto_0
.end method

.method protected onProcess(Landroid/view/ViewRootImpl$QueuedInputEvent;)I
    .locals 6
    .parameter "q"

    .prologue
    const/high16 v5, 0x20

    const/4 v2, 0x1

    .line 4620
    iget v3, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mFlags:I

    or-int/lit8 v3, v3, 0x10

    iput v3, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mFlags:I

    .line 4621
    iget-object v3, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    instance-of v3, v3, Landroid/view/MotionEvent;

    if-eqz v3, :cond_2

    .line 4622
    iget-object v3, p0, Landroid/view/ViewRootImpl$SyntheticInputStage;->this$0:Landroid/view/ViewRootImpl;

    const-string v4, "11: Synthetic input stage"

    #setter for: Landroid/view/ViewRootImpl;->mMotionEventStatus:Ljava/lang/String;
    invoke-static {v3, v4}, Landroid/view/ViewRootImpl;->access$1902(Landroid/view/ViewRootImpl;Ljava/lang/String;)Ljava/lang/String;

    .line 4623
    iget-object v0, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    check-cast v0, Landroid/view/MotionEvent;

    .line 4624
    .local v0, event:Landroid/view/MotionEvent;
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getSource()I

    move-result v1

    .line 4625
    .local v1, source:I
    and-int/lit8 v3, v1, 0x4

    if-eqz v3, :cond_0

    .line 4626
    iget-object v3, p0, Landroid/view/ViewRootImpl$SyntheticInputStage;->mTrackball:Landroid/view/ViewRootImpl$SyntheticTrackballHandler;

    invoke-virtual {v3, v0}, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->process(Landroid/view/MotionEvent;)V

    .line 4637
    .end local v0           #event:Landroid/view/MotionEvent;
    .end local v1           #source:I
    :goto_0
    return v2

    .line 4628
    .restart local v0       #event:Landroid/view/MotionEvent;
    .restart local v1       #source:I
    :cond_0
    and-int/lit8 v3, v1, 0x10

    if-eqz v3, :cond_1

    .line 4629
    iget-object v3, p0, Landroid/view/ViewRootImpl$SyntheticInputStage;->mJoystick:Landroid/view/ViewRootImpl$SyntheticJoystickHandler;

    invoke-virtual {v3, v0}, Landroid/view/ViewRootImpl$SyntheticJoystickHandler;->process(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 4631
    :cond_1
    and-int v3, v1, v5

    if-ne v3, v5, :cond_2

    .line 4633
    iget-object v3, p0, Landroid/view/ViewRootImpl$SyntheticInputStage;->mTouchNavigation:Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;

    invoke-virtual {v3, v0}, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->process(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 4637
    .end local v0           #event:Landroid/view/MotionEvent;
    .end local v1           #source:I
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method
