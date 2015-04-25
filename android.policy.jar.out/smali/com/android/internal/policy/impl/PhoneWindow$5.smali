.class Lcom/android/internal/policy/impl/PhoneWindow$5;
.super Ljava/lang/Object;
.source "PhoneWindow.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/PhoneWindow;->prepareMultiWindow(Landroid/content/Context;Landroid/view/View;)Landroid/view/ViewGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/PhoneWindow;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/PhoneWindow;)V
    .locals 0
    .parameter

    .prologue
    .line 4076
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindow$5;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 4081
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$5;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    #getter for: Lcom/android/internal/policy/impl/PhoneWindow;->mMultiWindowContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/internal/policy/impl/PhoneWindow;->access$2700(Lcom/android/internal/policy/impl/PhoneWindow;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->getMultiWindowSticked()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$5;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    #getter for: Lcom/android/internal/policy/impl/PhoneWindow;->mSticked:Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/PhoneWindow;->access$2800(Lcom/android/internal/policy/impl/PhoneWindow;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4082
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$5;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    #getter for: Lcom/android/internal/policy/impl/PhoneWindow;->mMultiWindowListener:Landroid/app/MultiWindowListener;
    invoke-static {v0}, Lcom/android/internal/policy/impl/PhoneWindow;->access$2600(Lcom/android/internal/policy/impl/PhoneWindow;)Landroid/app/MultiWindowListener;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/MultiWindowListener;->onStickFloatingWindow()V

    .line 4084
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$5;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    #getter for: Lcom/android/internal/policy/impl/PhoneWindow;->mSticked:Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/PhoneWindow;->access$2800(Lcom/android/internal/policy/impl/PhoneWindow;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4085
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$5;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    const/4 v1, 0x0

    #setter for: Lcom/android/internal/policy/impl/PhoneWindow;->mSticked:Z
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindow;->access$2802(Lcom/android/internal/policy/impl/PhoneWindow;Z)Z

    .line 4086
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$5;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    #getter for: Lcom/android/internal/policy/impl/PhoneWindow;->mStickView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/internal/policy/impl/PhoneWindow;->access$2900(Lcom/android/internal/policy/impl/PhoneWindow;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x2020052

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 4087
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$5;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    #getter for: Lcom/android/internal/policy/impl/PhoneWindow;->mMultiWindowContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/internal/policy/impl/PhoneWindow;->access$2700(Lcom/android/internal/policy/impl/PhoneWindow;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow$5;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    #getter for: Lcom/android/internal/policy/impl/PhoneWindow;->mSticked:Z
    invoke-static {v1}, Lcom/android/internal/policy/impl/PhoneWindow;->access$2800(Lcom/android/internal/policy/impl/PhoneWindow;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/pm/ApplicationInfo;->setMultiWindowSticked(Z)V

    .line 4093
    :goto_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$5;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/PhoneWindow;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 4095
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$5;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    #getter for: Lcom/android/internal/policy/impl/PhoneWindow;->mMultiWindowListener:Landroid/app/MultiWindowListener;
    invoke-static {v0}, Lcom/android/internal/policy/impl/PhoneWindow;->access$2600(Lcom/android/internal/policy/impl/PhoneWindow;)Landroid/app/MultiWindowListener;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/MultiWindowListener;->onStickFloatingWindow()V

    .line 4097
    :cond_1
    return-void

    .line 4089
    :cond_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$5;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    const/4 v1, 0x1

    #setter for: Lcom/android/internal/policy/impl/PhoneWindow;->mSticked:Z
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindow;->access$2802(Lcom/android/internal/policy/impl/PhoneWindow;Z)Z

    .line 4090
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$5;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    #getter for: Lcom/android/internal/policy/impl/PhoneWindow;->mStickView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/internal/policy/impl/PhoneWindow;->access$2900(Lcom/android/internal/policy/impl/PhoneWindow;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x2020053

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 4091
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$5;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    #getter for: Lcom/android/internal/policy/impl/PhoneWindow;->mMultiWindowContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/internal/policy/impl/PhoneWindow;->access$2700(Lcom/android/internal/policy/impl/PhoneWindow;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow$5;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    #getter for: Lcom/android/internal/policy/impl/PhoneWindow;->mSticked:Z
    invoke-static {v1}, Lcom/android/internal/policy/impl/PhoneWindow;->access$2800(Lcom/android/internal/policy/impl/PhoneWindow;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/pm/ApplicationInfo;->setMultiWindowSticked(Z)V

    goto :goto_0
.end method
