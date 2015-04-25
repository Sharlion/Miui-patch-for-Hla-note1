.class public Lcom/android/internal/telephony/PhoneSubInfoProxy;
.super Lcom/android/internal/telephony/IPhoneSubInfo$Stub;
.source "PhoneSubInfoProxy.java"


# instance fields
.field private PHONE_SUBINFO_SERVICE:[Ljava/lang/String;

.field private mPhoneSubInfo:Lcom/android/internal/telephony/PhoneSubInfo;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/PhoneSubInfo;)V
    .locals 1
    .parameter "phoneSubInfo"

    .prologue
    .line 39
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/PhoneSubInfoProxy;-><init>(Lcom/android/internal/telephony/PhoneSubInfo;I)V

    .line 40
    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/PhoneSubInfo;I)V
    .locals 3
    .parameter "phoneSubInfo"
    .parameter "simId"

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;-><init>()V

    .line 28
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "iphonesubinfo"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "iphonesubinfo2"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "iphonesubinfo3"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "iphonesubinfo4"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/internal/telephony/PhoneSubInfoProxy;->PHONE_SUBINFO_SERVICE:[Ljava/lang/String;

    .line 43
    iput-object p1, p0, Lcom/android/internal/telephony/PhoneSubInfoProxy;->mPhoneSubInfo:Lcom/android/internal/telephony/PhoneSubInfo;

    .line 45
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneSubInfoProxy;->PHONE_SUBINFO_SERVICE:[Ljava/lang/String;

    aget-object v0, v0, p2

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_0

    .line 46
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneSubInfoProxy;->PHONE_SUBINFO_SERVICE:[Ljava/lang/String;

    aget-object v0, v0, p2

    invoke-static {v0, p0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 48
    :cond_0
    return-void
.end method


# virtual methods
.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1
    .parameter "fd"
    .parameter "pw"
    .parameter "args"

    .prologue
    .line 240
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneSubInfoProxy;->mPhoneSubInfo:Lcom/android/internal/telephony/PhoneSubInfo;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/PhoneSubInfo;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 241
    return-void
.end method

.method public getCompleteVoiceMailNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneSubInfoProxy;->mPhoneSubInfo:Lcom/android/internal/telephony/PhoneSubInfo;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneSubInfo;->getCompleteVoiceMailNumber()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneSubInfoProxy;->mPhoneSubInfo:Lcom/android/internal/telephony/PhoneSubInfo;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneSubInfo;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceSvn()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneSubInfoProxy;->mPhoneSubInfo:Lcom/android/internal/telephony/PhoneSubInfo;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneSubInfo;->getDeviceSvn()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getGroupIdLevel1()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneSubInfoProxy;->mPhoneSubInfo:Lcom/android/internal/telephony/PhoneSubInfo;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneSubInfo;->getGroupIdLevel1()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIccSerialNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneSubInfoProxy;->mPhoneSubInfo:Lcom/android/internal/telephony/PhoneSubInfo;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneSubInfo;->getIccSerialNumber()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIsimChallengeResponse(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "nonce"

    .prologue
    .line 187
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneSubInfoProxy;->mPhoneSubInfo:Lcom/android/internal/telephony/PhoneSubInfo;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/PhoneSubInfo;->getIsimChallengeResponse(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIsimDomain()Ljava/lang/String;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneSubInfoProxy;->mPhoneSubInfo:Lcom/android/internal/telephony/PhoneSubInfo;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneSubInfo;->getIsimDomain()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIsimGbabp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneSubInfoProxy;->mPhoneSubInfo:Lcom/android/internal/telephony/PhoneSubInfo;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneSubInfo;->getIsimGbabp()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIsimImpi()Ljava/lang/String;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneSubInfoProxy;->mPhoneSubInfo:Lcom/android/internal/telephony/PhoneSubInfo;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneSubInfo;->getIsimImpi()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIsimImpu()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneSubInfoProxy;->mPhoneSubInfo:Lcom/android/internal/telephony/PhoneSubInfo;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneSubInfo;->getIsimImpu()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIsimIst()Ljava/lang/String;
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneSubInfoProxy;->mPhoneSubInfo:Lcom/android/internal/telephony/PhoneSubInfo;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneSubInfo;->getIsimIst()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIsimPcscf()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneSubInfoProxy;->mPhoneSubInfo:Lcom/android/internal/telephony/PhoneSubInfo;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneSubInfo;->getIsimPcscf()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLine1AlphaTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneSubInfoProxy;->mPhoneSubInfo:Lcom/android/internal/telephony/PhoneSubInfo;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneSubInfo;->getLine1AlphaTag()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLine1Number()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneSubInfoProxy;->mPhoneSubInfo:Lcom/android/internal/telephony/PhoneSubInfo;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneSubInfo;->getLine1Number()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMsisdn()Ljava/lang/String;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneSubInfoProxy;->mPhoneSubInfo:Lcom/android/internal/telephony/PhoneSubInfo;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneSubInfo;->getMsisdn()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSubscriberId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneSubInfoProxy;->mPhoneSubInfo:Lcom/android/internal/telephony/PhoneSubInfo;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneSubInfo;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUsimGbabp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneSubInfoProxy;->mPhoneSubInfo:Lcom/android/internal/telephony/PhoneSubInfo;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneSubInfo;->getUsimGbabp()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUsimService(I)Z
    .locals 1
    .parameter "service"

    .prologue
    .line 216
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneSubInfoProxy;->mPhoneSubInfo:Lcom/android/internal/telephony/PhoneSubInfo;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/PhoneSubInfo;->getUsimService(I)Z

    move-result v0

    return v0
.end method

.method public getVoiceMailAlphaTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneSubInfoProxy;->mPhoneSubInfo:Lcom/android/internal/telephony/PhoneSubInfo;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneSubInfo;->getVoiceMailAlphaTag()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVoiceMailNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneSubInfoProxy;->mPhoneSubInfo:Lcom/android/internal/telephony/PhoneSubInfo;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneSubInfo;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setIsimGbabp(Ljava/lang/String;Landroid/os/Message;)V
    .locals 1
    .parameter "gbabp"
    .parameter "onComplete"

    .prologue
    .line 207
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneSubInfoProxy;->mPhoneSubInfo:Lcom/android/internal/telephony/PhoneSubInfo;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/PhoneSubInfo;->setIsimGbabp(Ljava/lang/String;Landroid/os/Message;)V

    .line 208
    return-void
.end method

.method public setUsimGbabp(Ljava/lang/String;Landroid/os/Message;)V
    .locals 1
    .parameter "gbabp"
    .parameter "onComplete"

    .prologue
    .line 236
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneSubInfoProxy;->mPhoneSubInfo:Lcom/android/internal/telephony/PhoneSubInfo;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/PhoneSubInfo;->setUsimGbabp(Ljava/lang/String;Landroid/os/Message;)V

    .line 237
    return-void
.end method

.method public setmPhoneSubInfo(Lcom/android/internal/telephony/PhoneSubInfo;)V
    .locals 0
    .parameter "phoneSubInfo"

    .prologue
    .line 52
    iput-object p1, p0, Lcom/android/internal/telephony/PhoneSubInfoProxy;->mPhoneSubInfo:Lcom/android/internal/telephony/PhoneSubInfo;

    .line 53
    return-void
.end method
