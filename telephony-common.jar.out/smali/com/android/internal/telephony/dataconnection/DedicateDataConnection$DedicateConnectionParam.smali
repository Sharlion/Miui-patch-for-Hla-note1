.class Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$DedicateConnectionParam;
.super Ljava/lang/Object;
.source "DedicateDataConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DedicateConnectionParam"
.end annotation


# instance fields
.field public callState:Lcom/android/internal/telephony/dataconnection/DedicateDataCallState;

.field public onCompletedMsg:Landroid/os/Message;

.field public param:Lcom/android/internal/telephony/dataconnection/DcTracker$EnableDedicateBearerParam;

.field public reason:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;Lcom/android/internal/telephony/dataconnection/DcTracker$EnableDedicateBearerParam;Landroid/os/Message;)V
    .locals 0
    .parameter
    .parameter "enableDedicateBearerParam"
    .parameter "msg"

    .prologue
    .line 648
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$DedicateConnectionParam;->this$0:Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 649
    iput-object p2, p0, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$DedicateConnectionParam;->param:Lcom/android/internal/telephony/dataconnection/DcTracker$EnableDedicateBearerParam;

    .line 650
    iput-object p3, p0, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$DedicateConnectionParam;->onCompletedMsg:Landroid/os/Message;

    .line 651
    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;Lcom/android/internal/telephony/dataconnection/DedicateDataCallState;Landroid/os/Message;)V
    .locals 0
    .parameter
    .parameter "dedicateDataCallState"
    .parameter "msg"

    .prologue
    .line 658
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$DedicateConnectionParam;->this$0:Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 659
    iput-object p2, p0, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$DedicateConnectionParam;->callState:Lcom/android/internal/telephony/dataconnection/DedicateDataCallState;

    .line 660
    iput-object p3, p0, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$DedicateConnectionParam;->onCompletedMsg:Landroid/os/Message;

    .line 661
    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter
    .parameter "rea"
    .parameter "msg"

    .prologue
    .line 653
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$DedicateConnectionParam;->this$0:Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 654
    iput-object p3, p0, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$DedicateConnectionParam;->onCompletedMsg:Landroid/os/Message;

    .line 655
    iput-object p2, p0, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$DedicateConnectionParam;->reason:Ljava/lang/String;

    .line 656
    return-void
.end method
