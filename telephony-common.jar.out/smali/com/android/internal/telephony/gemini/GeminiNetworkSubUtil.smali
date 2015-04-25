.class public Lcom/android/internal/telephony/gemini/GeminiNetworkSubUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final CONN_TYPE_ALWAYS:I = 0x1

.field public static final CONN_TYPE_WHEN_NEEDED:I = 0x0

.field private static I:I = 0x0

.field public static final MODE_DUAL_SIM:I = 0x3

.field public static final MODE_FLIGHT_MODE:I = 0x0

.field public static final MODE_GPRS_AUTO_ATTACH:I = 0x1

.field public static final MODE_GPRS_NOT_ATTACH:I = 0x0

.field public static final MODE_GPRS_USER_SELECT:I = 0x2

.field public static final MODE_POWER_OFF:I = -0x1

.field public static final MODE_QUAD_SIM:I = 0xf

.field public static final MODE_SIM1_ONLY:I = 0x1

.field public static final MODE_SIM2_ONLY:I = 0x2

.field public static final MODE_SIM3_ONLY:I = 0x4

.field public static final MODE_SIM4_ONLY:I = 0x8

.field public static final MODE_TRIPLE_SIM:I = 0x7


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 90
    const/4 v0, -0x1

    sput v0, Lcom/android/internal/telephony/gemini/GeminiNetworkSubUtil;->I:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Lcom/android/internal/telephony/gemini/GeminiPhone;I)V
    .locals 9
    .parameter
    .parameter

    .prologue
    const/16 v8, 0x8

    const/4 v7, 0x4

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 93
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "airplane_mode_on"

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 97
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "dual_sim_mode_setting"

    const/4 v3, 0x3

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 102
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[bootUp]airplaneMode:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " dualSimModeSetting:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " SIM status:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/gemini/GeminiNetworkSubUtil;->log(Ljava/lang/String;)V

    .line 107
    const-string v2, "gsm.sim.inserted"

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    if-lez v1, :cond_0

    .line 110
    invoke-static {p0, v4, p1, v5}, Lcom/android/internal/telephony/gemini/GeminiNetworkSubUtil;->a(Lcom/android/internal/telephony/gemini/GeminiPhone;IIZ)V

    .line 131
    :goto_0
    return-void

    .line 112
    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/gemini/GeminiRadioStatusUtil;->getSIMMode()I

    move-result v1

    .line 113
    if-eq v1, v0, :cond_1

    .line 114
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Sim mode from ICCID is different than dual sim mode, to sync with insert status ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiNetworkSubUtil;->log(Ljava/lang/String;)V

    move v0, p1

    .line 118
    :cond_1
    if-eq v0, v5, :cond_2

    if-eq v0, v6, :cond_2

    if-eq v0, v7, :cond_2

    if-ne v0, v8, :cond_4

    .line 119
    :cond_2
    if-eq p1, v5, :cond_3

    if-eq p1, v6, :cond_3

    if-eq p1, v7, :cond_3

    if-ne p1, v8, :cond_4

    .line 121
    :cond_3
    if-eq v0, p1, :cond_4

    .line 122
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Dual sim mode is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " and inserted status is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sync two values"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiNetworkSubUtil;->log(Ljava/lang/String;)V

    move v0, p1

    .line 128
    :cond_4
    invoke-static {p0, v0, p1, v5}, Lcom/android/internal/telephony/gemini/GeminiNetworkSubUtil;->a(Lcom/android/internal/telephony/gemini/GeminiPhone;IIZ)V

    goto :goto_0
.end method

.method static a(Lcom/android/internal/telephony/gemini/GeminiPhone;IIZ)V
    .locals 11
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x3

    const/4 v10, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 134
    sget v0, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    new-array v6, v0, [Lcom/android/internal/telephony/Phone;

    .line 136
    invoke-static {}, Lcom/android/internal/telephony/gemini/GeminiRadioStatusUtil;->getSIMMode()I

    move-result v5

    .line 138
    sget v0, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    new-array v7, v0, [Z

    .line 139
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setRadioMode: mode= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ,simInsertedStatus= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ,simMod= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiNetworkSubUtil;->log(Ljava/lang/String;)V

    move v0, v2

    .line 141
    :goto_0
    sget v1, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-ge v0, v1, :cond_1

    .line 142
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    aput-object v1, v6, v0

    .line 143
    shl-int v1, v3, v0

    and-int/2addr v1, v5

    if-eqz v1, :cond_0

    move v1, v3

    :goto_1
    aput-boolean v1, v7, v0

    .line 144
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "isPhoneOn[SIM"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int/lit8 v8, v0, 0x1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v8, "]="

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-boolean v8, v7, v0

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/gemini/GeminiNetworkSubUtil;->log(Ljava/lang/String;)V

    .line 141
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move v1, v2

    .line 143
    goto :goto_1

    .line 147
    :cond_1
    packed-switch p1, :pswitch_data_0

    .line 174
    :pswitch_0
    :try_start_0
    const-class v0, Lcom/mediatek/common/telephony/IServiceStateExt;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/mediatek/common/MediatekClassFactory;->createInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/common/telephony/IServiceStateExt;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 178
    :goto_2
    if-nez p3, :cond_8

    if-eqz v0, :cond_8

    invoke-interface {v0}, Lcom/mediatek/common/telephony/IServiceStateExt;->supportEccForEachSIM()Z

    move-result v0

    if-eqz v0, :cond_8

    move v0, v2

    .line 179
    :goto_3
    sget v1, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-ge v0, v1, :cond_4

    .line 180
    aget-object v1, v6, v0

    invoke-interface {v1, v3}, Lcom/android/internal/telephony/Phone;->setRadioPower(Z)V

    .line 179
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :pswitch_1
    move v0, v2

    .line 150
    :goto_4
    sget v1, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-ge v0, v1, :cond_5

    .line 151
    aget-object v1, v6, v0

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/Phone;->setRadioPower(Z)V

    .line 150
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :pswitch_2
    move v0, v2

    .line 159
    :goto_5
    sget v1, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-ge v0, v1, :cond_5

    .line 160
    shl-int v1, v3, v0

    if-ne p1, v1, :cond_3

    .line 161
    aget-object v1, v6, v0

    aget-boolean v8, v7, v0

    invoke-interface {v1, v8}, Lcom/android/internal/telephony/Phone;->setRadioPower(Z)V

    .line 162
    aget-boolean v1, v7, v0

    if-nez v1, :cond_2

    move p1, v2

    .line 159
    :cond_2
    :goto_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 166
    :cond_3
    aget-object v1, v6, v0

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/Phone;->setRadioPower(Z)V

    goto :goto_6

    .line 175
    :catch_0
    move-exception v0

    .line 176
    const/4 v0, 0x0

    goto :goto_2

    .line 182
    :cond_4
    const-string v0, "EVDO set radio mode and turn on all radios."

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiNetworkSubUtil;->log(Ljava/lang/String;)V

    .line 203
    :cond_5
    :goto_7
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "airplane_mode_on"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    .line 208
    invoke-static {}, Lcom/android/internal/telephony/gemini/GeminiPhone;->r()Z

    move-result v8

    .line 210
    if-ne p1, v10, :cond_c

    .line 211
    const-string v0, "Power-off, not to refresh dual SIM mode setting"

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiNetworkSubUtil;->log(Ljava/lang/String;)V

    .line 271
    :cond_6
    :goto_8
    invoke-static {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiNetworkSubUtil;->b(Lcom/android/internal/telephony/gemini/GeminiPhone;I)V

    .line 274
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isDualTalkMode()Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 276
    aget-object v0, v6, v2

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/PhoneBase;

    .line 277
    aget-object v1, v6, v3

    check-cast v1, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/PhoneBase;

    .line 278
    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/ServiceStateTracker;->getDesiredPowerState()Z

    move-result v0

    .line 279
    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/ServiceStateTracker;->getDesiredPowerState()Z

    move-result v5

    .line 281
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isFlightModePowerOffMD()Z

    move-result v1

    if-eqz v1, :cond_20

    .line 282
    if-eq p1, v10, :cond_1f

    .line 283
    if-ne v7, v3, :cond_12

    .line 284
    if-nez p3, :cond_11

    .line 285
    const-string v0, "airplane mode and turn off MD now"

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiNetworkSubUtil;->log(Ljava/lang/String;)V

    .line 286
    aget-object v0, v6, v2

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gemini/GeminiPhone;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v10, v1}, Lcom/android/internal/telephony/PhoneProxy;->setRadioMode(ILandroid/os/Message;)V

    .line 287
    aget-object v0, v6, v3

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gemini/GeminiPhone;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v10, v1}, Lcom/android/internal/telephony/PhoneProxy;->setRadioMode(ILandroid/os/Message;)V

    .line 452
    :cond_7
    :goto_9
    sget v0, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    new-array v7, v0, [Landroid/telephony/ServiceState;

    move v0, v3

    move v1, v3

    move v5, v2

    .line 456
    :goto_a
    sget v8, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-ge v5, v8, :cond_34

    .line 457
    aget-object v8, v6, v5

    invoke-interface {v8}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v8

    aput-object v8, v7, v5

    .line 458
    aget-object v8, v7, v5

    if-nez v8, :cond_32

    move v1, v2

    .line 456
    :goto_b
    add-int/lit8 v5, v5, 0x1

    goto :goto_a

    :cond_8
    move v0, v2

    move v1, v2

    .line 186
    :goto_c
    sget v8, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-ge v1, v8, :cond_b

    .line 187
    shl-int v8, v3, v1

    and-int/2addr v8, p2

    if-eqz v8, :cond_a

    .line 188
    aget-object v8, v6, v1

    aget-boolean v9, v7, v1

    invoke-interface {v8, v9}, Lcom/android/internal/telephony/Phone;->setRadioPower(Z)V

    .line 189
    aget-boolean v8, v7, v1

    if-eqz v8, :cond_9

    .line 190
    shl-int v8, v3, v1

    or-int/2addr v0, v8

    .line 186
    :cond_9
    :goto_d
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 193
    :cond_a
    aget-object v8, v6, v1

    invoke-interface {v8, v2}, Lcom/android/internal/telephony/Phone;->setRadioPower(Z)V

    .line 194
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Warning! Request Dual mode but not enough SIM, status:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " mode:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/internal/telephony/gemini/GeminiNetworkSubUtil;->log(Ljava/lang/String;)V

    goto :goto_d

    .line 198
    :cond_b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mode switch to "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/gemini/GeminiNetworkSubUtil;->log(Ljava/lang/String;)V

    move p1, v0

    goto/16 :goto_7

    .line 213
    :cond_c
    if-nez p2, :cond_f

    .line 214
    const-string v0, "No SIM inserted, refresh dual SIM  mode to MODE_DUAL_SIM"

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiNetworkSubUtil;->log(Ljava/lang/String;)V

    .line 215
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "dual_sim_mode_setting"

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 219
    if-nez v7, :cond_6

    .line 221
    if-nez p1, :cond_6

    .line 222
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isDualTalkMode()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isEVDODTSupport()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 223
    const-string v0, "For CTA requirement, force to turn on SIM1 radio and SIM2 radio"

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiNetworkSubUtil;->log(Ljava/lang/String;)V

    .line 224
    aget-object v0, v6, v2

    invoke-interface {v0, v3}, Lcom/android/internal/telephony/Phone;->setRadioPower(Z)V

    .line 225
    aget-object v0, v6, v3

    invoke-interface {v0, v3}, Lcom/android/internal/telephony/Phone;->setRadioPower(Z)V

    move p1, v4

    .line 226
    goto/16 :goto_8

    .line 228
    :cond_d
    const-string v0, "No SIM inserted, force to turn on SIM1 radio if no any sim radio is enabled!"

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiNetworkSubUtil;->log(Ljava/lang/String;)V

    .line 230
    if-eqz v8, :cond_e

    .line 231
    invoke-static {}, Lcom/android/internal/telephony/gemini/GeminiPhone;->get3GSimId()I

    move-result v0

    .line 232
    aget-object v1, v6, v0

    invoke-interface {v1, v3}, Lcom/android/internal/telephony/Phone;->setRadioPower(Z)V

    .line 234
    packed-switch v0, :pswitch_data_1

    .line 248
    :goto_e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "3G simId="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mode switch to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiNetworkSubUtil;->log(Ljava/lang/String;)V

    goto/16 :goto_8

    :pswitch_3
    move p1, v3

    .line 237
    goto :goto_e

    .line 239
    :pswitch_4
    const/4 p1, 0x2

    .line 240
    goto :goto_e

    .line 242
    :pswitch_5
    const/4 p1, 0x4

    .line 243
    goto :goto_e

    .line 245
    :pswitch_6
    const/16 p1, 0x8

    goto :goto_e

    .line 251
    :cond_e
    aget-object v0, v6, v2

    invoke-interface {v0, v3}, Lcom/android/internal/telephony/Phone;->setRadioPower(Z)V

    move p1, v3

    .line 252
    goto/16 :goto_8

    .line 259
    :cond_f
    if-ne v7, v3, :cond_10

    .line 260
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Refresh dual SIM mode setting under air plane mode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiNetworkSubUtil;->log(Ljava/lang/String;)V

    .line 261
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "dual_sim_mode_setting"

    invoke-static {v0, v1, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_8

    .line 264
    :cond_10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Refresh dual SIM mode setting: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiNetworkSubUtil;->log(Ljava/lang/String;)V

    .line 265
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "dual_sim_mode_setting"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_8

    .line 292
    :cond_11
    const-string v0, "Air plane mode but is boot up (dt), do nothing"

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiNetworkSubUtil;->log(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 294
    :cond_12
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isRadioOffPowerOffMD()Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 295
    invoke-virtual {p0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getDualSimMode()I

    move-result v7

    .line 297
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Check if need to boot up modem ["

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v9, ", "

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v9, ", "

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v9, ", "

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v9, "]"

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/gemini/GeminiNetworkSubUtil;->log(Ljava/lang/String;)V

    .line 298
    and-int/lit8 v1, v7, 0x1

    and-int/lit8 v9, p1, 0x1

    if-eq v1, v9, :cond_17

    .line 299
    and-int/lit8 v1, p1, 0x1

    if-lez v1, :cond_15

    .line 300
    if-nez v0, :cond_17

    .line 301
    if-eqz p3, :cond_14

    .line 302
    const-string v0, "skip up phone1 since this is already in bootup flow"

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiNetworkSubUtil;->log(Ljava/lang/String;)V

    move v1, v2

    .line 317
    :goto_f
    and-int/lit8 v0, v7, 0x2

    and-int/lit8 v9, p1, 0x2

    if-eq v0, v9, :cond_1b

    .line 318
    and-int/lit8 v0, p1, 0x2

    if-lez v0, :cond_19

    .line 319
    if-nez v5, :cond_1b

    .line 320
    if-eqz p3, :cond_18

    .line 321
    const-string v0, "skip up phone2 since this is already in bootup flow"

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiNetworkSubUtil;->log(Ljava/lang/String;)V

    move v0, v1

    .line 336
    :goto_10
    if-eqz v0, :cond_13

    if-eq p1, v10, :cond_13

    and-int/lit8 v1, v7, 0x1

    and-int/lit8 v5, p1, 0x1

    if-ne v1, v5, :cond_7

    and-int/lit8 v1, v7, 0x2

    and-int/lit8 v5, p1, 0x2

    if-ne v1, v5, :cond_7

    .line 340
    :cond_13
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Radio mode is the same with previous one or no power on MD, continue power on radio ["

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiNetworkSubUtil;->log(Ljava/lang/String;)V

    .line 341
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isDualTalkMode()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 342
    invoke-virtual {p0, v3, v2, v2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 343
    invoke-virtual {p0, v3, v2, v3}, Lcom/android/internal/telephony/gemini/GeminiPhone;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    .line 344
    invoke-static {p0, p1, v0, v1}, Lcom/android/internal/telephony/gemini/GeminiNetworkSubUtil;->a(Lcom/android/internal/telephony/gemini/GeminiPhone;ILandroid/os/Message;Landroid/os/Message;)V

    goto/16 :goto_9

    .line 304
    :cond_14
    const-string v0, "boot up phone1"

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiNetworkSubUtil;->log(Ljava/lang/String;)V

    .line 305
    aget-object v0, v6, v2

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneProxy;->setRadioPowerOn()V

    move v1, v3

    .line 306
    goto :goto_f

    .line 310
    :cond_15
    const-string v0, "shutdown phone1"

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiNetworkSubUtil;->log(Ljava/lang/String;)V

    .line 311
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getExternalModemSlot()I

    move-result v0

    if-nez v0, :cond_16

    .line 312
    aget-object v0, v6, v2

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0, v2, v3}, Lcom/android/internal/telephony/PhoneProxy;->setRadioPower(ZZ)V

    move v1, v2

    goto :goto_f

    .line 314
    :cond_16
    aget-object v0, v6, v2

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {p0, v3, v2, v2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v10, v1}, Lcom/android/internal/telephony/PhoneProxy;->setRadioMode(ILandroid/os/Message;)V

    :cond_17
    move v1, v2

    goto/16 :goto_f

    .line 323
    :cond_18
    const-string v0, "boot up phone2"

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiNetworkSubUtil;->log(Ljava/lang/String;)V

    .line 324
    aget-object v0, v6, v3

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneProxy;->setRadioPowerOn()V

    move v0, v3

    .line 325
    goto :goto_10

    .line 329
    :cond_19
    const-string v0, "shutdown phone2"

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiNetworkSubUtil;->log(Ljava/lang/String;)V

    .line 330
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getExternalModemSlot()I

    move-result v0

    if-ne v0, v3, :cond_1a

    .line 331
    aget-object v0, v6, v3

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0, v2, v3}, Lcom/android/internal/telephony/PhoneProxy;->setRadioPower(ZZ)V

    move v0, v1

    goto/16 :goto_10

    .line 333
    :cond_1a
    aget-object v0, v6, v3

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {p0, v3, v2, v3}, Lcom/android/internal/telephony/gemini/GeminiPhone;->obtainMessage(III)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v0, v10, v5}, Lcom/android/internal/telephony/PhoneProxy;->setRadioMode(ILandroid/os/Message;)V

    :cond_1b
    move v0, v1

    goto/16 :goto_10

    .line 346
    :cond_1c
    if-eqz v8, :cond_1d

    .line 347
    aget-object v0, v6, v3

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gemini/GeminiPhone;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/android/internal/telephony/PhoneProxy;->setRadioMode(ILandroid/os/Message;)V

    goto/16 :goto_9

    .line 349
    :cond_1d
    aget-object v0, v6, v2

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gemini/GeminiPhone;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/android/internal/telephony/PhoneProxy;->setRadioMode(ILandroid/os/Message;)V

    goto/16 :goto_9

    .line 353
    :cond_1e
    invoke-virtual {p0, v3, v2, v2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 354
    invoke-virtual {p0, v3, v2, v3}, Lcom/android/internal/telephony/gemini/GeminiPhone;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    .line 355
    invoke-static {p0, p1, v0, v1}, Lcom/android/internal/telephony/gemini/GeminiNetworkSubUtil;->a(Lcom/android/internal/telephony/gemini/GeminiPhone;ILandroid/os/Message;Landroid/os/Message;)V

    goto/16 :goto_9

    .line 358
    :cond_1f
    invoke-virtual {p0, v3, v2, v2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 359
    invoke-virtual {p0, v3, v2, v3}, Lcom/android/internal/telephony/gemini/GeminiPhone;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    .line 360
    invoke-static {p0, p1, v0, v1}, Lcom/android/internal/telephony/gemini/GeminiNetworkSubUtil;->a(Lcom/android/internal/telephony/gemini/GeminiPhone;ILandroid/os/Message;Landroid/os/Message;)V

    goto/16 :goto_9

    .line 364
    :cond_20
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isRadioOffPowerOffMD()Z

    move-result v1

    if-eqz v1, :cond_2c

    if-eq p1, v10, :cond_2c

    .line 365
    invoke-virtual {p0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getDualSimMode()I

    move-result v7

    .line 367
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Check if need to boot up modem ["

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v9, ", "

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v9, ", "

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v9, ", "

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v9, "]"

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/gemini/GeminiNetworkSubUtil;->log(Ljava/lang/String;)V

    .line 368
    and-int/lit8 v1, v7, 0x1

    and-int/lit8 v9, p1, 0x1

    if-eq v1, v9, :cond_25

    .line 369
    and-int/lit8 v1, p1, 0x1

    if-lez v1, :cond_23

    .line 370
    if-nez v0, :cond_25

    .line 371
    if-eqz p3, :cond_22

    .line 372
    const-string v0, "skip up phone1 since this is already in bootup flow"

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiNetworkSubUtil;->log(Ljava/lang/String;)V

    move v1, v2

    .line 387
    :goto_11
    and-int/lit8 v0, v7, 0x2

    and-int/lit8 v9, p1, 0x2

    if-eq v0, v9, :cond_29

    .line 388
    and-int/lit8 v0, p1, 0x2

    if-lez v0, :cond_27

    .line 389
    if-nez v5, :cond_29

    .line 390
    if-eqz p3, :cond_26

    .line 391
    const-string v0, "skip up phone2 since this is already in bootup flow"

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiNetworkSubUtil;->log(Ljava/lang/String;)V

    move v0, v1

    .line 406
    :goto_12
    if-eqz v0, :cond_21

    if-eq p1, v10, :cond_21

    and-int/lit8 v1, v7, 0x1

    and-int/lit8 v5, p1, 0x1

    if-ne v1, v5, :cond_7

    and-int/lit8 v1, v7, 0x2

    and-int/lit8 v5, p1, 0x2

    if-ne v1, v5, :cond_7

    .line 410
    :cond_21
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Radio mode is the same with previous one or no power on MD, continue power on radio ["

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiNetworkSubUtil;->log(Ljava/lang/String;)V

    .line 411
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isDualTalkMode()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 412
    invoke-virtual {p0, v3, v2, v2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 413
    invoke-virtual {p0, v3, v2, v3}, Lcom/android/internal/telephony/gemini/GeminiPhone;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    .line 414
    invoke-static {p0, p1, v0, v1}, Lcom/android/internal/telephony/gemini/GeminiNetworkSubUtil;->a(Lcom/android/internal/telephony/gemini/GeminiPhone;ILandroid/os/Message;Landroid/os/Message;)V

    goto/16 :goto_9

    .line 374
    :cond_22
    const-string v0, "boot up phone1"

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiNetworkSubUtil;->log(Ljava/lang/String;)V

    .line 375
    aget-object v0, v6, v2

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneProxy;->setRadioPowerOn()V

    move v1, v3

    .line 376
    goto :goto_11

    .line 380
    :cond_23
    const-string v0, "shutdown phone1"

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiNetworkSubUtil;->log(Ljava/lang/String;)V

    .line 381
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getExternalModemSlot()I

    move-result v0

    if-nez v0, :cond_24

    .line 382
    aget-object v0, v6, v2

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0, v2, v3}, Lcom/android/internal/telephony/PhoneProxy;->setRadioPower(ZZ)V

    move v1, v2

    goto :goto_11

    .line 384
    :cond_24
    aget-object v0, v6, v2

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {p0, v3, v2, v2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v10, v1}, Lcom/android/internal/telephony/PhoneProxy;->setRadioMode(ILandroid/os/Message;)V

    :cond_25
    move v1, v2

    goto/16 :goto_11

    .line 393
    :cond_26
    const-string v0, "boot up phone2"

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiNetworkSubUtil;->log(Ljava/lang/String;)V

    .line 394
    aget-object v0, v6, v3

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneProxy;->setRadioPowerOn()V

    move v0, v3

    .line 395
    goto :goto_12

    .line 399
    :cond_27
    const-string v0, "shutdown phone2"

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiNetworkSubUtil;->log(Ljava/lang/String;)V

    .line 400
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getExternalModemSlot()I

    move-result v0

    if-ne v0, v3, :cond_28

    .line 401
    aget-object v0, v6, v3

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0, v2, v3}, Lcom/android/internal/telephony/PhoneProxy;->setRadioPower(ZZ)V

    move v0, v1

    goto/16 :goto_12

    .line 403
    :cond_28
    aget-object v0, v6, v3

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {p0, v3, v2, v3}, Lcom/android/internal/telephony/gemini/GeminiPhone;->obtainMessage(III)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v0, v10, v5}, Lcom/android/internal/telephony/PhoneProxy;->setRadioMode(ILandroid/os/Message;)V

    :cond_29
    move v0, v1

    goto/16 :goto_12

    .line 416
    :cond_2a
    if-eqz v8, :cond_2b

    .line 417
    aget-object v0, v6, v3

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gemini/GeminiPhone;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/android/internal/telephony/PhoneProxy;->setRadioMode(ILandroid/os/Message;)V

    goto/16 :goto_9

    .line 419
    :cond_2b
    aget-object v0, v6, v2

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gemini/GeminiPhone;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/android/internal/telephony/PhoneProxy;->setRadioMode(ILandroid/os/Message;)V

    goto/16 :goto_9

    .line 425
    :cond_2c
    invoke-virtual {p0, v3, v2, v2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 426
    invoke-virtual {p0, v3, v2, v3}, Lcom/android/internal/telephony/gemini/GeminiPhone;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    .line 427
    invoke-static {p0, p1, v0, v1}, Lcom/android/internal/telephony/gemini/GeminiNetworkSubUtil;->a(Lcom/android/internal/telephony/gemini/GeminiPhone;ILandroid/os/Message;Landroid/os/Message;)V

    goto/16 :goto_9

    .line 431
    :cond_2d
    if-ne v7, v3, :cond_30

    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isFlightModePowerOffMD()Z

    move-result v0

    if-eqz v0, :cond_30

    .line 432
    if-nez p3, :cond_2f

    .line 433
    if-eqz v8, :cond_2e

    .line 434
    invoke-static {}, Lcom/android/internal/telephony/gemini/GeminiPhone;->get3GSimId()I

    move-result v0

    .line 435
    aget-object v0, v6, v0

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gemini/GeminiPhone;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v10, v1}, Lcom/android/internal/telephony/PhoneProxy;->setRadioMode(ILandroid/os/Message;)V

    goto/16 :goto_9

    .line 438
    :cond_2e
    aget-object v0, v6, v2

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gemini/GeminiPhone;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v10, v1}, Lcom/android/internal/telephony/PhoneProxy;->setRadioMode(ILandroid/os/Message;)V

    goto/16 :goto_9

    .line 440
    :cond_2f
    const-string v0, "Air plane mode but is boot up, do nothing"

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiNetworkSubUtil;->log(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 443
    :cond_30
    if-eqz v8, :cond_31

    .line 444
    invoke-static {}, Lcom/android/internal/telephony/gemini/GeminiPhone;->get3GSimId()I

    move-result v0

    .line 445
    aget-object v0, v6, v0

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gemini/GeminiPhone;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/android/internal/telephony/PhoneProxy;->setRadioMode(ILandroid/os/Message;)V

    goto/16 :goto_9

    .line 448
    :cond_31
    aget-object v0, v6, v2

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gemini/GeminiPhone;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/android/internal/telephony/PhoneProxy;->setRadioMode(ILandroid/os/Message;)V

    goto/16 :goto_9

    .line 461
    :cond_32
    aget-object v8, v7, v5

    invoke-virtual {v8}, Landroid/telephony/ServiceState;->getState()I

    move-result v8

    if-eq v8, v4, :cond_33

    move v0, v2

    .line 464
    :cond_33
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Current SIM"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    add-int/lit8 v9, v5, 0x1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " service state: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v9, v7, v5

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", mode: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/internal/telephony/gemini/GeminiNetworkSubUtil;->log(Ljava/lang/String;)V

    goto/16 :goto_b

    .line 468
    :cond_34
    if-ne v1, v3, :cond_36

    .line 469
    if-eq p1, v10, :cond_35

    if-nez p1, :cond_36

    :cond_35
    if-ne v0, v3, :cond_36

    .line 470
    const-string v0, "Already in power off state, force notify"

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiNetworkSubUtil;->log(Ljava/lang/String;)V

    .line 471
    :goto_13
    sget v0, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-ge v2, v0, :cond_36

    .line 472
    aget-object v0, v6, v2

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneProxy;->forceNotifyServiceStateChange()V

    .line 471
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    .line 477
    :cond_36
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->setDualSimMode(I)V

    .line 480
    if-lez p1, :cond_37

    .line 481
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->enableGPRSAlwaysAttachIfNecessary(I)V

    .line 483
    :cond_37
    return-void

    .line 147
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch

    .line 234
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private static a(Lcom/android/internal/telephony/gemini/GeminiPhone;ILandroid/os/Message;Landroid/os/Message;)V
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v8, 0x65

    const/16 v7, 0x64

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 486
    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    .line 487
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/PhoneProxy;

    .line 489
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isEVDODTSupport()Z

    move-result v2

    if-eqz v2, :cond_12

    .line 490
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "External modem DualTalk ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] for EVDO"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/gemini/GeminiNetworkSubUtil;->log(Ljava/lang/String;)V

    .line 491
    if-ne p1, v4, :cond_3

    .line 492
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getExternalModemSlot()I

    move-result v2

    if-nez v2, :cond_0

    .line 493
    invoke-virtual {v0, v4, p2}, Lcom/android/internal/telephony/PhoneProxy;->setRadioPower(ZLandroid/os/Message;)V

    .line 494
    invoke-virtual {v1, v5, p3}, Lcom/android/internal/telephony/PhoneProxy;->setRadioMode(ILandroid/os/Message;)V

    .line 591
    :goto_0
    return-void

    .line 496
    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isInternationalRoamingEnabled()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getTelephonyMode()I

    move-result v2

    if-eq v2, v7, :cond_1

    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getTelephonyMode()I

    move-result v2

    if-eq v2, v8, :cond_1

    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isEVDODTSupport()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 500
    :cond_1
    invoke-virtual {v0, v6, p2}, Lcom/android/internal/telephony/PhoneProxy;->setRadioMode(ILandroid/os/Message;)V

    .line 503
    :goto_1
    invoke-virtual {v1, v5, p3}, Lcom/android/internal/telephony/PhoneProxy;->setRadioPower(ZLandroid/os/Message;)V

    goto :goto_0

    .line 502
    :cond_2
    invoke-virtual {v0, v4, p2}, Lcom/android/internal/telephony/PhoneProxy;->setRadioMode(ILandroid/os/Message;)V

    goto :goto_1

    .line 505
    :cond_3
    if-ne p1, v6, :cond_7

    .line 506
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getExternalModemSlot()I

    move-result v2

    if-nez v2, :cond_6

    .line 507
    invoke-virtual {v0, v5, p2}, Lcom/android/internal/telephony/PhoneProxy;->setRadioPower(ZLandroid/os/Message;)V

    .line 508
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isInternationalRoamingEnabled()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getTelephonyMode()I

    move-result v0

    if-eq v0, v7, :cond_4

    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getTelephonyMode()I

    move-result v0

    if-eq v0, v8, :cond_4

    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isEVDODTSupport()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 512
    :cond_4
    invoke-virtual {v1, v6, p3}, Lcom/android/internal/telephony/PhoneProxy;->setRadioMode(ILandroid/os/Message;)V

    goto :goto_0

    .line 514
    :cond_5
    invoke-virtual {v1, v4, p3}, Lcom/android/internal/telephony/PhoneProxy;->setRadioMode(ILandroid/os/Message;)V

    goto :goto_0

    .line 516
    :cond_6
    invoke-virtual {v0, v5, p2}, Lcom/android/internal/telephony/PhoneProxy;->setRadioMode(ILandroid/os/Message;)V

    .line 517
    invoke-virtual {v1, v4, p3}, Lcom/android/internal/telephony/PhoneProxy;->setRadioPower(ZLandroid/os/Message;)V

    goto :goto_0

    .line 519
    :cond_7
    const/4 v2, 0x3

    if-ne p1, v2, :cond_d

    .line 520
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getExternalModemSlot()I

    move-result v2

    if-nez v2, :cond_a

    .line 521
    invoke-virtual {v0, v4, p2}, Lcom/android/internal/telephony/PhoneProxy;->setRadioPower(ZLandroid/os/Message;)V

    .line 522
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isInternationalRoamingEnabled()Z

    move-result v0

    if-nez v0, :cond_8

    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getTelephonyMode()I

    move-result v0

    if-eq v0, v7, :cond_8

    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getTelephonyMode()I

    move-result v0

    if-eq v0, v8, :cond_8

    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isEVDODTSupport()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 526
    :cond_8
    invoke-virtual {v1, v6, p3}, Lcom/android/internal/telephony/PhoneProxy;->setRadioMode(ILandroid/os/Message;)V

    goto :goto_0

    .line 529
    :cond_9
    invoke-virtual {v1, v4, p3}, Lcom/android/internal/telephony/PhoneProxy;->setRadioMode(ILandroid/os/Message;)V

    goto/16 :goto_0

    .line 531
    :cond_a
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isInternationalRoamingEnabled()Z

    move-result v2

    if-nez v2, :cond_b

    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getTelephonyMode()I

    move-result v2

    if-eq v2, v7, :cond_b

    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getTelephonyMode()I

    move-result v2

    if-eq v2, v8, :cond_b

    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isEVDODTSupport()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 535
    :cond_b
    invoke-virtual {v0, v6, p2}, Lcom/android/internal/telephony/PhoneProxy;->setRadioMode(ILandroid/os/Message;)V

    .line 538
    :goto_2
    invoke-virtual {v1, v4, p3}, Lcom/android/internal/telephony/PhoneProxy;->setRadioPower(ZLandroid/os/Message;)V

    goto/16 :goto_0

    .line 537
    :cond_c
    invoke-virtual {v0, v4, p2}, Lcom/android/internal/telephony/PhoneProxy;->setRadioMode(ILandroid/os/Message;)V

    goto :goto_2

    .line 540
    :cond_d
    if-nez p1, :cond_f

    .line 541
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getExternalModemSlot()I

    move-result v2

    if-nez v2, :cond_e

    .line 542
    invoke-virtual {v0, v5, p2}, Lcom/android/internal/telephony/PhoneProxy;->setRadioPower(ZLandroid/os/Message;)V

    .line 543
    invoke-virtual {v1, v5, p3}, Lcom/android/internal/telephony/PhoneProxy;->setRadioMode(ILandroid/os/Message;)V

    goto/16 :goto_0

    .line 545
    :cond_e
    invoke-virtual {v0, v5, p2}, Lcom/android/internal/telephony/PhoneProxy;->setRadioMode(ILandroid/os/Message;)V

    .line 546
    invoke-virtual {v1, v5, p3}, Lcom/android/internal/telephony/PhoneProxy;->setRadioPower(ZLandroid/os/Message;)V

    goto/16 :goto_0

    .line 548
    :cond_f
    const/4 v2, -0x1

    if-ne p1, v2, :cond_11

    .line 549
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getExternalModemSlot()I

    move-result v2

    if-nez v2, :cond_10

    .line 550
    invoke-virtual {v0, v5, v4}, Lcom/android/internal/telephony/PhoneProxy;->setRadioPower(ZZ)V

    .line 551
    const/4 v0, -0x1

    invoke-virtual {v1, v0, p3}, Lcom/android/internal/telephony/PhoneProxy;->setRadioMode(ILandroid/os/Message;)V

    goto/16 :goto_0

    .line 553
    :cond_10
    const/4 v2, -0x1

    invoke-virtual {v0, v2, p2}, Lcom/android/internal/telephony/PhoneProxy;->setRadioMode(ILandroid/os/Message;)V

    .line 554
    invoke-virtual {v1, v5, v4}, Lcom/android/internal/telephony/PhoneProxy;->setRadioPower(ZZ)V

    goto/16 :goto_0

    .line 557
    :cond_11
    const-string v0, "Wrong dual sim mode"

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiNetworkSubUtil;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 559
    :cond_12
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getTelephonyMode()I

    move-result v2

    if-nez v2, :cond_13

    .line 560
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "External/Internal modem DualTalk ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/gemini/GeminiNetworkSubUtil;->log(Ljava/lang/String;)V

    .line 561
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getExternalModemSlot ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getExternalModemSlot()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/gemini/GeminiNetworkSubUtil;->log(Ljava/lang/String;)V

    .line 562
    packed-switch p1, :pswitch_data_0

    .line 584
    const-string v0, "Wrong dual sim mode"

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiNetworkSubUtil;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 564
    :pswitch_0
    invoke-virtual {v0, v4, p2}, Lcom/android/internal/telephony/PhoneProxy;->setRadioPower(ZLandroid/os/Message;)V

    .line 565
    invoke-virtual {v1, v5, p3}, Lcom/android/internal/telephony/PhoneProxy;->setRadioPower(ZLandroid/os/Message;)V

    goto/16 :goto_0

    .line 568
    :pswitch_1
    invoke-virtual {v0, v5, p2}, Lcom/android/internal/telephony/PhoneProxy;->setRadioPower(ZLandroid/os/Message;)V

    .line 569
    invoke-virtual {v1, v4, p3}, Lcom/android/internal/telephony/PhoneProxy;->setRadioPower(ZLandroid/os/Message;)V

    goto/16 :goto_0

    .line 572
    :pswitch_2
    invoke-virtual {v0, v4, p2}, Lcom/android/internal/telephony/PhoneProxy;->setRadioPower(ZLandroid/os/Message;)V

    .line 573
    invoke-virtual {v1, v4, p3}, Lcom/android/internal/telephony/PhoneProxy;->setRadioPower(ZLandroid/os/Message;)V

    goto/16 :goto_0

    .line 576
    :pswitch_3
    invoke-virtual {v0, v5, p2}, Lcom/android/internal/telephony/PhoneProxy;->setRadioPower(ZLandroid/os/Message;)V

    .line 577
    invoke-virtual {v1, v5, p3}, Lcom/android/internal/telephony/PhoneProxy;->setRadioPower(ZLandroid/os/Message;)V

    goto/16 :goto_0

    .line 580
    :pswitch_4
    invoke-virtual {v0, v5, v4}, Lcom/android/internal/telephony/PhoneProxy;->setRadioPower(ZZ)V

    .line 581
    invoke-virtual {v1, v5, v4}, Lcom/android/internal/telephony/PhoneProxy;->setRadioPower(ZZ)V

    goto/16 :goto_0

    .line 588
    :cond_13
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No match scenario for setRadioModeSeperately ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiNetworkSubUtil;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 562
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method static b(Lcom/android/internal/telephony/gemini/GeminiPhone;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 594
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    .line 595
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/PhoneProxy;

    .line 598
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/PhoneProxy;->setAutoGprsAttach(I)V

    .line 599
    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/PhoneProxy;->setAutoGprsAttach(I)V

    .line 600
    return-void
.end method

.method private static log(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 603
    const-string v0, "PHONE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[GeminiNetworkSubUtil] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 604
    return-void
.end method
