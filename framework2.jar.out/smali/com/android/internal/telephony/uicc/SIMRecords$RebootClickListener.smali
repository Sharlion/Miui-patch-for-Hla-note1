.class Lcom/android/internal/telephony/uicc/SIMRecords$RebootClickListener;
.super Ljava/lang/Object;
.source "SIMRecords.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/uicc/SIMRecords;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RebootClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/uicc/SIMRecords;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/uicc/SIMRecords;)V
    .locals 0
    .parameter

    .prologue
    .line 3941
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/SIMRecords$RebootClickListener;->this$0:Lcom/android/internal/telephony/uicc/SIMRecords;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/uicc/SIMRecords;Lcom/android/internal/telephony/uicc/SIMRecords$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3941
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/SIMRecords$RebootClickListener;-><init>(Lcom/android/internal/telephony/uicc/SIMRecords;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 3946
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords$RebootClickListener;->this$0:Lcom/android/internal/telephony/uicc/SIMRecords;

    const-string v2, "Unlock Phone onClick"

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 3947
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords$RebootClickListener;->this$0:Lcom/android/internal/telephony/uicc/SIMRecords;

    iget-object v1, v1, Lcom/android/internal/telephony/uicc/SIMRecords;->mContext:Landroid/content/Context;

    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 3949
    .local v0, pm:Landroid/os/PowerManager;
    const-string v1, "Unlock state changed"

    invoke-virtual {v0, v1}, Landroid/os/PowerManager;->reboot(Ljava/lang/String;)V

    .line 3950
    return-void
.end method
