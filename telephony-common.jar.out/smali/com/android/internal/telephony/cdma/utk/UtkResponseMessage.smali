.class public Lcom/android/internal/telephony/cdma/utk/UtkResponseMessage;
.super Ljava/lang/Object;
.source "UtkResponseMessage.java"


# instance fields
.field additionalInfo:[B

.field cmdDet:Lcom/android/internal/telephony/cdma/utk/CommandDetails;

.field destinationId:I

.field event:I

.field oneShot:Z

.field resCode:Lcom/android/internal/telephony/cdma/utk/ResultCode;

.field sourceId:I

.field usersConfirm:Z

.field usersInput:Ljava/lang/String;

.field usersMenuSelection:I

.field usersYesNoSelection:Z


# direct methods
.method public constructor <init>(III[BZ)V
    .locals 3
    .parameter "ev"
    .parameter "srceId"
    .parameter "dstId"
    .parameter "moreInfo"
    .parameter "shot"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object v2, p0, Lcom/android/internal/telephony/cdma/utk/UtkResponseMessage;->cmdDet:Lcom/android/internal/telephony/cdma/utk/CommandDetails;

    .line 21
    sget-object v0, Lcom/android/internal/telephony/cdma/utk/ResultCode;->OK:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/utk/UtkResponseMessage;->resCode:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    .line 22
    iput v1, p0, Lcom/android/internal/telephony/cdma/utk/UtkResponseMessage;->usersMenuSelection:I

    .line 23
    iput-object v2, p0, Lcom/android/internal/telephony/cdma/utk/UtkResponseMessage;->usersInput:Ljava/lang/String;

    .line 24
    iput-boolean v1, p0, Lcom/android/internal/telephony/cdma/utk/UtkResponseMessage;->usersYesNoSelection:Z

    .line 25
    iput-boolean v1, p0, Lcom/android/internal/telephony/cdma/utk/UtkResponseMessage;->usersConfirm:Z

    .line 28
    iput v1, p0, Lcom/android/internal/telephony/cdma/utk/UtkResponseMessage;->event:I

    .line 29
    iput v1, p0, Lcom/android/internal/telephony/cdma/utk/UtkResponseMessage;->sourceId:I

    .line 30
    iput v1, p0, Lcom/android/internal/telephony/cdma/utk/UtkResponseMessage;->destinationId:I

    .line 32
    iput-boolean v1, p0, Lcom/android/internal/telephony/cdma/utk/UtkResponseMessage;->oneShot:Z

    .line 36
    iput p1, p0, Lcom/android/internal/telephony/cdma/utk/UtkResponseMessage;->event:I

    .line 37
    iput p2, p0, Lcom/android/internal/telephony/cdma/utk/UtkResponseMessage;->sourceId:I

    .line 38
    iput p3, p0, Lcom/android/internal/telephony/cdma/utk/UtkResponseMessage;->destinationId:I

    .line 39
    iput-object p4, p0, Lcom/android/internal/telephony/cdma/utk/UtkResponseMessage;->additionalInfo:[B

    .line 40
    iput-boolean p5, p0, Lcom/android/internal/telephony/cdma/utk/UtkResponseMessage;->oneShot:Z

    .line 41
    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;)V
    .locals 3
    .parameter "cmdMsg"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object v2, p0, Lcom/android/internal/telephony/cdma/utk/UtkResponseMessage;->cmdDet:Lcom/android/internal/telephony/cdma/utk/CommandDetails;

    .line 21
    sget-object v0, Lcom/android/internal/telephony/cdma/utk/ResultCode;->OK:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/utk/UtkResponseMessage;->resCode:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    .line 22
    iput v1, p0, Lcom/android/internal/telephony/cdma/utk/UtkResponseMessage;->usersMenuSelection:I

    .line 23
    iput-object v2, p0, Lcom/android/internal/telephony/cdma/utk/UtkResponseMessage;->usersInput:Ljava/lang/String;

    .line 24
    iput-boolean v1, p0, Lcom/android/internal/telephony/cdma/utk/UtkResponseMessage;->usersYesNoSelection:Z

    .line 25
    iput-boolean v1, p0, Lcom/android/internal/telephony/cdma/utk/UtkResponseMessage;->usersConfirm:Z

    .line 28
    iput v1, p0, Lcom/android/internal/telephony/cdma/utk/UtkResponseMessage;->event:I

    .line 29
    iput v1, p0, Lcom/android/internal/telephony/cdma/utk/UtkResponseMessage;->sourceId:I

    .line 30
    iput v1, p0, Lcom/android/internal/telephony/cdma/utk/UtkResponseMessage;->destinationId:I

    .line 32
    iput-boolean v1, p0, Lcom/android/internal/telephony/cdma/utk/UtkResponseMessage;->oneShot:Z

    .line 45
    iget-object v0, p1, Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cdma/utk/CommandDetails;

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/utk/UtkResponseMessage;->cmdDet:Lcom/android/internal/telephony/cdma/utk/CommandDetails;

    .line 46
    return-void
.end method


# virtual methods
.method getCmdDetails()Lcom/android/internal/telephony/cdma/utk/CommandDetails;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/utk/UtkResponseMessage;->cmdDet:Lcom/android/internal/telephony/cdma/utk/CommandDetails;

    return-object v0
.end method

.method public setConfirmation(Z)V
    .locals 0
    .parameter "confirm"

    .prologue
    .line 65
    iput-boolean p1, p0, Lcom/android/internal/telephony/cdma/utk/UtkResponseMessage;->usersConfirm:Z

    .line 66
    return-void
.end method

.method public setInput(Ljava/lang/String;)V
    .locals 0
    .parameter "input"

    .prologue
    .line 57
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/utk/UtkResponseMessage;->usersInput:Ljava/lang/String;

    .line 58
    return-void
.end method

.method public setMenuSelection(I)V
    .locals 0
    .parameter "selection"

    .prologue
    .line 53
    iput p1, p0, Lcom/android/internal/telephony/cdma/utk/UtkResponseMessage;->usersMenuSelection:I

    .line 54
    return-void
.end method

.method public setResultCode(Lcom/android/internal/telephony/cdma/utk/ResultCode;)V
    .locals 0
    .parameter "resCode"

    .prologue
    .line 49
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/utk/UtkResponseMessage;->resCode:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    .line 50
    return-void
.end method

.method public setYesNo(Z)V
    .locals 0
    .parameter "yesNo"

    .prologue
    .line 61
    iput-boolean p1, p0, Lcom/android/internal/telephony/cdma/utk/UtkResponseMessage;->usersYesNoSelection:Z

    .line 62
    return-void
.end method
