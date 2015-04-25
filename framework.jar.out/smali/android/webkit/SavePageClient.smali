.class public Landroid/webkit/SavePageClient;
.super Ljava/lang/Object;
.source "SavePageClient.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getSaveDir(Landroid/webkit/ValueCallback;Z)V
    .locals 0
    .parameter
    .parameter "canSaveAsComplete"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/ValueCallback",
            "<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 28
    .local p1, callback:Landroid/webkit/ValueCallback;,"Landroid/webkit/ValueCallback<Ljava/lang/String;>;"
    return-void
.end method

.method public onSaveFinish(II)V
    .locals 0
    .parameter "flag"
    .parameter "id"

    .prologue
    .line 49
    return-void
.end method

.method public onSavePageStart(ILjava/lang/String;)V
    .locals 0
    .parameter "id"
    .parameter "path"

    .prologue
    .line 35
    return-void
.end method

.method public onSaveProgressChange(II)V
    .locals 0
    .parameter "progress"
    .parameter "id"

    .prologue
    .line 42
    return-void
.end method
