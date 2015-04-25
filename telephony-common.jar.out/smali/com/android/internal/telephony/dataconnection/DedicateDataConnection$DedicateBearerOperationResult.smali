.class public Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$DedicateBearerOperationResult;
.super Ljava/lang/Object;
.source "DedicateDataConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DedicateBearerOperationResult"
.end annotation


# instance fields
.field public failCause:Lcom/android/internal/telephony/dataconnection/DcFailCause;

.field public properties:Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;

.field final synthetic this$0:Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;)V
    .locals 0
    .parameter

    .prologue
    .line 679
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$DedicateBearerOperationResult;->this$0:Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 680
    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;Lcom/android/internal/telephony/dataconnection/DcFailCause;)V
    .locals 0
    .parameter
    .parameter "perperty"
    .parameter "cause"

    .prologue
    .line 682
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$DedicateBearerOperationResult;->this$0:Lcom/android/internal/telephony/dataconnection/DedicateDataConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 683
    iput-object p2, p0, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$DedicateBearerOperationResult;->properties:Lcom/android/internal/telephony/dataconnection/DedicateBearerProperties;

    .line 684
    iput-object p3, p0, Lcom/android/internal/telephony/dataconnection/DedicateDataConnection$DedicateBearerOperationResult;->failCause:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    .line 685
    return-void
.end method
