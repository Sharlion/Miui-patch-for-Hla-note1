.class public final Lcom/android/internal/telephony/uicc/SIMFileHandler;
.super Lcom/android/internal/telephony/uicc/IccFileHandler;
.source "SIMFileHandler.java"

# interfaces
.implements Lcom/android/internal/telephony/uicc/IccConstants;


# static fields
.field static final LOG_TAG:Ljava/lang/String; = "SIMFileHandler"


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/uicc/UiccCardApplication;Ljava/lang/String;Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 0
    .parameter "app"
    .parameter "aid"
    .parameter "ci"

    .prologue
    .line 34
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/uicc/IccFileHandler;-><init>(Lcom/android/internal/telephony/uicc/UiccCardApplication;Ljava/lang/String;Lcom/android/internal/telephony/CommandsInterface;)V

    .line 35
    return-void
.end method


# virtual methods
.method protected getEFPath(I)Ljava/lang/String;
    .locals 1
    .parameter "efid"

    .prologue
    .line 41
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/uicc/SIMFileHandler;->getEFPath(IZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getEFPath(IZ)Ljava/lang/String;
    .locals 4
    .parameter "efid"
    .parameter "is7FFF"

    .prologue
    .line 46
    const-string v0, "7F20"

    .line 48
    .local v0, DF_APP:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/SIMFileHandler;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/SIMFileHandler;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getType()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_USIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    if-ne v2, v3, :cond_0

    .line 49
    const-string v0, "7FFF"

    .line 52
    :cond_0
    sparse-switch p1, :sswitch_data_0

    .line 89
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/SIMFileHandler;->getCommonIccEFPath(I)Ljava/lang/String;

    move-result-object v1

    .line 90
    .local v1, path:Ljava/lang/String;
    if-nez v1, :cond_1

    .line 91
    const-string v2, "SIMFileHandler"

    const-string v3, "Error: EF Path being returned in null"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    move-object v0, v1

    .line 93
    .end local v0           #DF_APP:Ljava/lang/String;
    .end local v1           #path:Ljava/lang/String;
    :goto_0
    :sswitch_0
    return-object v0

    .line 55
    .restart local v0       #DF_APP:Ljava/lang/String;
    :sswitch_1
    const-string v0, "7F10"

    goto :goto_0

    .line 58
    :sswitch_2
    const/4 v0, 0x0

    goto :goto_0

    .line 79
    :sswitch_3
    const-string v0, "3F007F20"

    goto :goto_0

    .line 85
    :sswitch_4
    const-string v0, "7FFF7F665F30"

    goto :goto_0

    .line 87
    :sswitch_5
    const-string v0, "3F007F25"

    goto :goto_0

    .line 52
    :sswitch_data_0
    .sparse-switch
        0x2fe2 -> :sswitch_2
        0x4f36 -> :sswitch_4
        0x6f11 -> :sswitch_3
        0x6f13 -> :sswitch_3
        0x6f14 -> :sswitch_3
        0x6f15 -> :sswitch_3
        0x6f16 -> :sswitch_3
        0x6f17 -> :sswitch_3
        0x6f18 -> :sswitch_3
        0x6f22 -> :sswitch_5
        0x6f38 -> :sswitch_0
        0x6f3c -> :sswitch_1
        0x6f3e -> :sswitch_0
        0x6f3f -> :sswitch_0
        0x6f42 -> :sswitch_1
        0x6f46 -> :sswitch_0
        0x6fad -> :sswitch_0
        0x6fb7 -> :sswitch_0
        0x6fc5 -> :sswitch_0
        0x6fc6 -> :sswitch_0
        0x6fc7 -> :sswitch_0
        0x6fc8 -> :sswitch_0
        0x6fc9 -> :sswitch_0
        0x6fca -> :sswitch_0
        0x6fcb -> :sswitch_0
        0x6fcd -> :sswitch_0
    .end sparse-switch
.end method

.method protected logd(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 98
    const-string v0, "SIMFileHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[SIMFileHandler] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    return-void
.end method

.method protected loge(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 103
    const-string v0, "SIMFileHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[SIMFileHandler] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    return-void
.end method
