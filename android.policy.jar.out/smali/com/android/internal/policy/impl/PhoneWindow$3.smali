.class Lcom/android/internal/policy/impl/PhoneWindow$3;
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
    .line 4047
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindow$3;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 4050
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$3;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/PhoneWindow;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4052
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$3;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    #getter for: Lcom/android/internal/policy/impl/PhoneWindow;->mMultiWindowListener:Landroid/app/MultiWindowListener;
    invoke-static {v0}, Lcom/android/internal/policy/impl/PhoneWindow;->access$2600(Lcom/android/internal/policy/impl/PhoneWindow;)Landroid/app/MultiWindowListener;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/MultiWindowListener;->onCloseFloatingWindow()V

    .line 4054
    :cond_0
    return-void
.end method
