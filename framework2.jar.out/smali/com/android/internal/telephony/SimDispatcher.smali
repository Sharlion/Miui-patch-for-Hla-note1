.class public Lcom/android/internal/telephony/SimDispatcher;
.super Landroid/os/Handler;
.source "SimDispatcher.java"

# interfaces
.implements Lcom/android/internal/telephony/ImsEventDispatcher$VaEventDispatcher;


# static fields
.field protected static final EVENT_SIM_AKA_AUTH_COMPLETE:I = 0x64

.field private static final READ_ISIM_COMMAND_DATA_LENGTH:I = 0x100

.field private static final READ_ISIM_COMMAND_DATA_NUM:I = 0x5

.field private static final READ_ISIM_COMMAND_DOMAIN_NAME:I = 0x2

.field private static final READ_ISIM_COMMAND_IMPI:I = 0x0

.field private static final READ_ISIM_COMMAND_IMPU:I = 0x1

.field private static final READ_ISIM_COMMAND_PSISMSC:I = 0x3

.field private static final READ_ISIM_SERVICE_TABLE:I = 0x4

.field private static final READ_USIM_COMMAND_DATA_LENGTH:I = 0x100

.field private static final READ_USIM_COMMAND_IMSI:I = 0x0

.field private static final READ_USIM_COMMAND_PSISMSC:I = 0x1

.field private static final READ_USIM_COMMAND_SMSP:I = 0x2

.field private static final TAG:Ljava/lang/String; = "[SimDispatcher]"

.field private static final USIM_AUTH_IMS_AKA_COMMAND_RES_LENGTH:I = 0x100

.field private static imsAdapt:Lcom/android/internal/telephony/ImsAdapter;

.field private static mIccRecordsInstance:[Lcom/android/internal/telephony/uicc/IccRecords;

.field private static mIsimRecordsInstance:[Lcom/android/internal/telephony/uicc/IsimUiccRecords;

.field private static final mLock:Ljava/lang/Object;

.field private static mUiccController:[Lcom/android/internal/telephony/uicc/UiccController;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIsimState:Ljava/lang/String;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mSimState:Ljava/lang/String;

.field private mSocket:Lcom/android/internal/telephony/ImsAdapter$VaSocketIO;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/SimDispatcher;->mLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/ImsAdapter$VaSocketIO;)V
    .locals 3
    .parameter "context"
    .parameter "IO"

    .prologue
    .line 72
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 69
    const-string v1, ""

    iput-object v1, p0, Lcom/android/internal/telephony/SimDispatcher;->mSimState:Ljava/lang/String;

    .line 70
    const-string v1, ""

    iput-object v1, p0, Lcom/android/internal/telephony/SimDispatcher;->mIsimState:Ljava/lang/String;

    .line 154
    new-instance v1, Lcom/android/internal/telephony/SimDispatcher$1;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/SimDispatcher$1;-><init>(Lcom/android/internal/telephony/SimDispatcher;)V

    iput-object v1, p0, Lcom/android/internal/telephony/SimDispatcher;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 73
    iput-object p1, p0, Lcom/android/internal/telephony/SimDispatcher;->mContext:Landroid/content/Context;

    .line 74
    iput-object p2, p0, Lcom/android/internal/telephony/SimDispatcher;->mSocket:Lcom/android/internal/telephony/ImsAdapter$VaSocketIO;

    .line 75
    sget v1, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    new-array v1, v1, [Lcom/android/internal/telephony/uicc/IccRecords;

    sput-object v1, Lcom/android/internal/telephony/SimDispatcher;->mIccRecordsInstance:[Lcom/android/internal/telephony/uicc/IccRecords;

    .line 76
    sget v1, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    new-array v1, v1, [Lcom/android/internal/telephony/uicc/IsimUiccRecords;

    sput-object v1, Lcom/android/internal/telephony/SimDispatcher;->mIsimRecordsInstance:[Lcom/android/internal/telephony/uicc/IsimUiccRecords;

    .line 77
    sget v1, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    new-array v1, v1, [Lcom/android/internal/telephony/uicc/UiccController;

    sput-object v1, Lcom/android/internal/telephony/SimDispatcher;->mUiccController:[Lcom/android/internal/telephony/uicc/UiccController;

    .line 79
    const-string v1, "SimDispatcher()"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/SimDispatcher;->log(Ljava/lang/String;)V

    .line 81
    sget-object v1, Lcom/android/internal/telephony/SimDispatcher;->imsAdapt:Lcom/android/internal/telephony/ImsAdapter;

    if-nez v1, :cond_0

    .line 82
    const-string v1, "ImsAdapter.getInstance"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/SimDispatcher;->log(Ljava/lang/String;)V

    .line 83
    invoke-static {}, Lcom/android/internal/telephony/ImsAdapter;->getInstance()Lcom/android/internal/telephony/ImsAdapter;

    move-result-object v1

    sput-object v1, Lcom/android/internal/telephony/SimDispatcher;->imsAdapt:Lcom/android/internal/telephony/ImsAdapter;

    .line 86
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 87
    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 88
    const-string v1, "android.intent.action.ACTION_SIM_STATE_CHANGED_MULTI_APPLICATION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 89
    iget-object v1, p0, Lcom/android/internal/telephony/SimDispatcher;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/telephony/SimDispatcher;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 90
    return-void
.end method

.method static synthetic access$002(Lcom/android/internal/telephony/SimDispatcher;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    iput-object p1, p0, Lcom/android/internal/telephony/SimDispatcher;->mSimState:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/SimDispatcher;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/internal/telephony/SimDispatcher;->mIsimState:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/internal/telephony/SimDispatcher;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    iput-object p1, p0, Lcom/android/internal/telephony/SimDispatcher;->mIsimState:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/internal/telephony/SimDispatcher;)Lcom/android/internal/telephony/ImsAdapter$VaSocketIO;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/internal/telephony/SimDispatcher;->mSocket:Lcom/android/internal/telephony/ImsAdapter$VaSocketIO;

    return-object v0
.end method

.method private readIsimData(II)V
    .locals 11
    .parameter "type"
    .parameter "transaction_id"

    .prologue
    .line 538
    new-instance v2, Lcom/android/internal/telephony/ImsAdapter$VaEvent;

    const v9, 0x187d9

    invoke-direct {v2, v9}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;-><init>(I)V

    .line 539
    .local v2, event:Lcom/android/internal/telephony/ImsAdapter$VaEvent;
    const/16 v9, 0x100

    new-array v8, v9, [B

    .line 540
    .local v8, resData:[B
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "readIsimData type = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", transaction_id ="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/SimDispatcher;->log(Ljava/lang/String;)V

    .line 542
    packed-switch p1, :pswitch_data_0

    .line 748
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "readIsimData unknown type = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/SimDispatcher;->log(Ljava/lang/String;)V

    .line 753
    :cond_0
    iget-object v9, p0, Lcom/android/internal/telephony/SimDispatcher;->mSocket:Lcom/android/internal/telephony/ImsAdapter$VaSocketIO;

    invoke-virtual {v9, v2}, Lcom/android/internal/telephony/ImsAdapter$VaSocketIO;->writeEvent(Lcom/android/internal/telephony/ImsAdapter$VaEvent;)I

    .line 754
    :goto_0
    return-void

    .line 545
    :pswitch_0
    sget-object v9, Lcom/android/internal/telephony/SimDispatcher;->mIsimRecordsInstance:[Lcom/android/internal/telephony/uicc/IsimUiccRecords;

    const/4 v10, 0x0

    aget-object v9, v9, v10

    invoke-virtual {v9}, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->getIsimImpi()Ljava/lang/String;

    move-result-object v4

    .line 546
    .local v4, impi:Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "impi = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/SimDispatcher;->log(Ljava/lang/String;)V

    .line 548
    if-nez v4, :cond_1

    .line 549
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "readIsimData: type = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/SimDispatcher;->log(Ljava/lang/String;)V

    .line 550
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/SimDispatcher;->readIsimDataFail(II)V

    goto :goto_0

    .line 555
    :cond_1
    invoke-virtual {v2, p2}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->putByte(I)I

    .line 558
    const/4 v9, 0x1

    invoke-virtual {v2, v9}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->putByte(I)I

    .line 561
    invoke-virtual {v2, p1}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->putByte(I)I

    .line 564
    const/4 v9, 0x1

    invoke-virtual {v2, v9}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->putByte(I)I

    .line 568
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "impi.length = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/SimDispatcher;->log(Ljava/lang/String;)V

    .line 569
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v9

    const/16 v10, 0x100

    if-le v9, v10, :cond_2

    const/16 v9, 0x100

    :goto_1
    invoke-virtual {v2, v9}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->putInt(I)I

    .line 571
    const/16 v9, 0x100

    invoke-virtual {v2, v4, v9}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->putString(Ljava/lang/String;I)I

    .line 573
    const/4 v3, 0x0

    .local v3, i:I
    :goto_2
    const/4 v9, 0x4

    if-ge v3, v9, :cond_0

    .line 576
    const/4 v9, 0x0

    invoke-virtual {v2, v9}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->putInt(I)I

    .line 578
    const/16 v9, 0x100

    new-array v9, v9, [B

    invoke-virtual {v2, v9}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->putBytes([B)I

    .line 573
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 569
    .end local v3           #i:I
    :cond_2
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v9

    goto :goto_1

    .line 585
    .end local v4           #impi:Ljava/lang/String;
    :pswitch_1
    sget-object v9, Lcom/android/internal/telephony/SimDispatcher;->mIsimRecordsInstance:[Lcom/android/internal/telephony/uicc/IsimUiccRecords;

    const/4 v10, 0x0

    aget-object v9, v9, v10

    invoke-virtual {v9}, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->getIsimImpu()[Ljava/lang/String;

    move-result-object v5

    .line 587
    .local v5, impu:[Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "impu = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/SimDispatcher;->log(Ljava/lang/String;)V

    .line 589
    if-nez v5, :cond_3

    .line 590
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "readIsimData: type = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/SimDispatcher;->log(Ljava/lang/String;)V

    .line 591
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/SimDispatcher;->readIsimDataFail(II)V

    goto/16 :goto_0

    .line 596
    :cond_3
    invoke-virtual {v2, p2}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->putByte(I)I

    .line 599
    const/4 v9, 0x1

    invoke-virtual {v2, v9}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->putByte(I)I

    .line 602
    invoke-virtual {v2, p1}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->putByte(I)I

    .line 605
    array-length v9, v5

    const/4 v10, 0x5

    if-le v9, v10, :cond_4

    const/4 v9, 0x5

    :goto_3
    invoke-virtual {v2, v9}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->putByte(I)I

    .line 608
    const/4 v3, 0x0

    .restart local v3       #i:I
    :goto_4
    const/4 v9, 0x5

    if-ge v3, v9, :cond_0

    .line 609
    array-length v9, v5

    if-ge v3, v9, :cond_6

    .line 611
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "impu["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "].length = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    aget-object v10, v5, v3

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    aget-object v10, v5, v3

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/SimDispatcher;->log(Ljava/lang/String;)V

    .line 612
    aget-object v9, v5, v3

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    const/16 v10, 0x100

    if-le v9, v10, :cond_5

    const/16 v9, 0x100

    :goto_5
    invoke-virtual {v2, v9}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->putInt(I)I

    .line 614
    aget-object v9, v5, v3

    const/16 v10, 0x100

    invoke-virtual {v2, v9, v10}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->putString(Ljava/lang/String;I)I

    .line 608
    :goto_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 605
    .end local v3           #i:I
    :cond_4
    array-length v9, v5

    goto :goto_3

    .line 612
    .restart local v3       #i:I
    :cond_5
    aget-object v9, v5, v3

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    goto :goto_5

    .line 617
    :cond_6
    const/4 v9, 0x0

    invoke-virtual {v2, v9}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->putInt(I)I

    .line 619
    const/16 v9, 0x100

    new-array v9, v9, [B

    invoke-virtual {v2, v9}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->putBytes([B)I

    goto :goto_6

    .line 627
    .end local v3           #i:I
    .end local v5           #impu:[Ljava/lang/String;
    :pswitch_2
    sget-object v9, Lcom/android/internal/telephony/SimDispatcher;->mIsimRecordsInstance:[Lcom/android/internal/telephony/uicc/IsimUiccRecords;

    const/4 v10, 0x0

    aget-object v9, v9, v10

    invoke-virtual {v9}, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->getIsimDomain()Ljava/lang/String;

    move-result-object v0

    .line 628
    .local v0, domain:Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "domain = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/SimDispatcher;->log(Ljava/lang/String;)V

    .line 630
    if-nez v0, :cond_7

    .line 631
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "readIsimData: type = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/SimDispatcher;->log(Ljava/lang/String;)V

    .line 632
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/SimDispatcher;->readIsimDataFail(II)V

    goto/16 :goto_0

    .line 637
    :cond_7
    invoke-virtual {v2, p2}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->putByte(I)I

    .line 640
    const/4 v9, 0x1

    invoke-virtual {v2, v9}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->putByte(I)I

    .line 643
    invoke-virtual {v2, p1}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->putByte(I)I

    .line 646
    const/4 v9, 0x1

    invoke-virtual {v2, v9}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->putByte(I)I

    .line 650
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "domain.length = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/SimDispatcher;->log(Ljava/lang/String;)V

    .line 651
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v9

    const/16 v10, 0x100

    if-le v9, v10, :cond_8

    const/16 v9, 0x100

    :goto_7
    invoke-virtual {v2, v9}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->putInt(I)I

    .line 653
    const/16 v9, 0x100

    invoke-virtual {v2, v0, v9}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->putString(Ljava/lang/String;I)I

    .line 655
    const/4 v3, 0x0

    .restart local v3       #i:I
    :goto_8
    const/4 v9, 0x4

    if-ge v3, v9, :cond_0

    .line 658
    const/4 v9, 0x0

    invoke-virtual {v2, v9}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->putInt(I)I

    .line 660
    const/16 v9, 0x100

    new-array v9, v9, [B

    invoke-virtual {v2, v9}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->putBytes([B)I

    .line 655
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 651
    .end local v3           #i:I
    :cond_8
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v9

    goto :goto_7

    .line 666
    .end local v0           #domain:Ljava/lang/String;
    :pswitch_3
    sget-object v9, Lcom/android/internal/telephony/SimDispatcher;->mIsimRecordsInstance:[Lcom/android/internal/telephony/uicc/IsimUiccRecords;

    const/4 v10, 0x0

    aget-object v9, v9, v10

    invoke-virtual {v9}, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->getEfPsismsc()[B

    move-result-object v1

    .line 668
    .local v1, efPsismsc:[B
    if-nez v1, :cond_9

    .line 669
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "readUsimDataFail: type = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/SimDispatcher;->log(Ljava/lang/String;)V

    .line 670
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/SimDispatcher;->readIsimDataFail(II)V

    goto/16 :goto_0

    .line 674
    :cond_9
    const/4 v3, 0x0

    .restart local v3       #i:I
    :goto_9
    array-length v9, v1

    if-ge v3, v9, :cond_a

    .line 675
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Result = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    aget-byte v10, v1, v3

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/SimDispatcher;->log(Ljava/lang/String;)V

    .line 674
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 679
    :cond_a
    invoke-virtual {v2, p2}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->putByte(I)I

    .line 682
    const/4 v9, 0x1

    invoke-virtual {v2, v9}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->putByte(I)I

    .line 685
    invoke-virtual {v2, p1}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->putByte(I)I

    .line 688
    const/4 v9, 0x1

    invoke-virtual {v2, v9}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->putByte(I)I

    .line 692
    array-length v9, v1

    const/16 v10, 0x100

    if-le v9, v10, :cond_b

    const/16 v7, 0x100

    .line 693
    .local v7, psismscLen:I
    :goto_a
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "efPsismsc.length = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    array-length v10, v1

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", max len = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/16 v10, 0x100

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/SimDispatcher;->log(Ljava/lang/String;)V

    .line 694
    invoke-virtual {v2, v7}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->putInt(I)I

    .line 696
    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static {v1, v9, v8, v10, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 697
    invoke-virtual {v2, v8}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->putBytes([B)I

    .line 699
    const/4 v3, 0x0

    :goto_b
    const/4 v9, 0x4

    if-ge v3, v9, :cond_0

    .line 702
    const/4 v9, 0x0

    invoke-virtual {v2, v9}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->putInt(I)I

    .line 704
    const/16 v9, 0x100

    new-array v9, v9, [B

    invoke-virtual {v2, v9}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->putBytes([B)I

    .line 699
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 692
    .end local v7           #psismscLen:I
    :cond_b
    array-length v7, v1

    goto :goto_a

    .line 710
    .end local v1           #efPsismsc:[B
    .end local v3           #i:I
    :pswitch_4
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v9

    invoke-virtual {v9}, Landroid/telephony/TelephonyManager;->getIsimIst()Ljava/lang/String;

    move-result-object v6

    .line 711
    .local v6, ist:Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "ist = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/SimDispatcher;->log(Ljava/lang/String;)V

    .line 713
    if-nez v6, :cond_c

    .line 714
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "readIsimData: type = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/SimDispatcher;->log(Ljava/lang/String;)V

    .line 715
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/SimDispatcher;->readIsimDataFail(II)V

    goto/16 :goto_0

    .line 720
    :cond_c
    invoke-virtual {v2, p2}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->putByte(I)I

    .line 723
    const/4 v9, 0x1

    invoke-virtual {v2, v9}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->putByte(I)I

    .line 726
    invoke-virtual {v2, p1}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->putByte(I)I

    .line 729
    const/4 v9, 0x1

    invoke-virtual {v2, v9}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->putByte(I)I

    .line 733
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "ist.length = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/SimDispatcher;->log(Ljava/lang/String;)V

    .line 734
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v2, v9}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->putInt(I)I

    .line 736
    const/16 v9, 0x100

    invoke-virtual {v2, v6, v9}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->putString(Ljava/lang/String;I)I

    .line 738
    const/4 v3, 0x0

    .restart local v3       #i:I
    :goto_c
    const/4 v9, 0x4

    if-ge v3, v9, :cond_0

    .line 741
    const/4 v9, 0x0

    invoke-virtual {v2, v9}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->putInt(I)I

    .line 743
    const/16 v9, 0x100

    new-array v9, v9, [B

    invoke-virtual {v2, v9}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->putBytes([B)I

    .line 738
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 542
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private readIsimDataFail(II)V
    .locals 5
    .parameter "type"
    .parameter "transaction_id"

    .prologue
    const/4 v4, 0x0

    .line 757
    new-instance v0, Lcom/android/internal/telephony/ImsAdapter$VaEvent;

    const v3, 0x187d9

    invoke-direct {v0, v3}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;-><init>(I)V

    .line 758
    .local v0, event:Lcom/android/internal/telephony/ImsAdapter$VaEvent;
    const/16 v3, 0x100

    new-array v2, v3, [B

    .line 761
    .local v2, pad:[B
    invoke-virtual {v0, p2}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->putByte(I)I

    .line 764
    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->putByte(I)I

    .line 767
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->putByte(I)I

    .line 770
    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->putByte(I)I

    .line 773
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    const/4 v3, 0x5

    if-ge v1, v3, :cond_0

    .line 775
    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->putInt(I)I

    .line 777
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->putBytes([B)I

    .line 773
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 781
    :cond_0
    iget-object v3, p0, Lcom/android/internal/telephony/SimDispatcher;->mSocket:Lcom/android/internal/telephony/ImsAdapter$VaSocketIO;

    invoke-virtual {v3, v0}, Lcom/android/internal/telephony/ImsAdapter$VaSocketIO;->writeEvent(Lcom/android/internal/telephony/ImsAdapter$VaEvent;)I

    .line 782
    return-void
.end method

.method private readUsimData(II)V
    .locals 11
    .parameter "type"
    .parameter "transaction_id"

    .prologue
    .line 364
    new-instance v2, Lcom/android/internal/telephony/ImsAdapter$VaEvent;

    const v9, 0x187d7

    invoke-direct {v2, v9}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;-><init>(I)V

    .line 365
    .local v2, event:Lcom/android/internal/telephony/ImsAdapter$VaEvent;
    const/16 v9, 0x100

    new-array v7, v9, [B

    .line 366
    .local v7, resData:[B
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "transaction_id = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/SimDispatcher;->log(Ljava/lang/String;)V

    .line 368
    packed-switch p1, :pswitch_data_0

    .line 496
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "readUsimData unknown type = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/SimDispatcher;->log(Ljava/lang/String;)V

    .line 501
    :goto_0
    iget-object v9, p0, Lcom/android/internal/telephony/SimDispatcher;->mSocket:Lcom/android/internal/telephony/ImsAdapter$VaSocketIO;

    invoke-virtual {v9, v2}, Lcom/android/internal/telephony/ImsAdapter$VaSocketIO;->writeEvent(Lcom/android/internal/telephony/ImsAdapter$VaEvent;)I

    .line 502
    :goto_1
    return-void

    .line 371
    :pswitch_0
    const/4 v5, 0x0

    .line 372
    .local v5, mncLength:I
    sget-object v9, Lcom/android/internal/telephony/SimDispatcher;->mIccRecordsInstance:[Lcom/android/internal/telephony/uicc/IccRecords;

    const/4 v10, 0x0

    aget-object v9, v9, v10

    invoke-virtual {v9}, Lcom/android/internal/telephony/uicc/IccRecords;->getIMSI()Ljava/lang/String;

    move-result-object v4

    .line 373
    .local v4, imsi:Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "imsi = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/SimDispatcher;->log(Ljava/lang/String;)V

    .line 374
    sget-object v9, Lcom/android/internal/telephony/SimDispatcher;->mIccRecordsInstance:[Lcom/android/internal/telephony/uicc/IccRecords;

    const/4 v10, 0x0

    aget-object v9, v9, v10

    invoke-virtual {v9}, Lcom/android/internal/telephony/uicc/IccRecords;->getMncLength()I

    move-result v5

    .line 375
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "MNC length = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/SimDispatcher;->log(Ljava/lang/String;)V

    .line 377
    if-eqz v4, :cond_0

    if-lez v5, :cond_0

    const/16 v9, 0xf

    if-le v5, v9, :cond_1

    .line 378
    :cond_0
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "readUsimDataFail: ID = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", type = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/SimDispatcher;->log(Ljava/lang/String;)V

    .line 379
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/SimDispatcher;->readUsimDataFail(II)V

    goto :goto_1

    .line 384
    :cond_1
    invoke-virtual {v2, p2}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->putByte(I)I

    .line 387
    const/4 v9, 0x1

    invoke-virtual {v2, v9}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->putByte(I)I

    .line 390
    invoke-virtual {v2, p1}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->putByte(I)I

    .line 393
    const/4 v9, 0x1

    invoke-virtual {v2, v9}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->putByte(I)I

    .line 396
    int-to-byte v9, v5

    invoke-virtual {v2, v9}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->putByte(I)I

    .line 399
    const/4 v9, 0x0

    invoke-virtual {v2, v9}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->putByte(I)I

    .line 400
    const/4 v9, 0x0

    invoke-virtual {v2, v9}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->putByte(I)I

    .line 401
    const/4 v9, 0x0

    invoke-virtual {v2, v9}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->putByte(I)I

    .line 405
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "imsi.length = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/SimDispatcher;->log(Ljava/lang/String;)V

    .line 406
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v2, v9}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->putInt(I)I

    .line 408
    const/16 v9, 0x100

    invoke-virtual {v2, v4, v9}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->putString(Ljava/lang/String;I)I

    goto/16 :goto_0

    .line 412
    .end local v4           #imsi:Ljava/lang/String;
    .end local v5           #mncLength:I
    :pswitch_1
    sget-object v9, Lcom/android/internal/telephony/SimDispatcher;->mIccRecordsInstance:[Lcom/android/internal/telephony/uicc/IccRecords;

    const/4 v10, 0x0

    aget-object v9, v9, v10

    invoke-virtual {v9}, Lcom/android/internal/telephony/uicc/IccRecords;->getEfPsismsc()[B

    move-result-object v0

    .line 414
    .local v0, efPsismsc:[B
    if-nez v0, :cond_2

    .line 415
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "readUsimDataFail: ID = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", type = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/SimDispatcher;->log(Ljava/lang/String;)V

    .line 416
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/SimDispatcher;->readUsimDataFail(II)V

    goto/16 :goto_1

    .line 420
    :cond_2
    const/4 v3, 0x0

    .local v3, i:I
    :goto_2
    array-length v9, v0

    if-ge v3, v9, :cond_3

    .line 421
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Result = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    aget-byte v10, v0, v3

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/SimDispatcher;->log(Ljava/lang/String;)V

    .line 420
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 425
    :cond_3
    invoke-virtual {v2, p2}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->putByte(I)I

    .line 428
    const/4 v9, 0x1

    invoke-virtual {v2, v9}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->putByte(I)I

    .line 431
    invoke-virtual {v2, p1}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->putByte(I)I

    .line 434
    const/4 v9, 0x1

    invoke-virtual {v2, v9}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->putByte(I)I

    .line 437
    const/4 v9, 0x0

    invoke-virtual {v2, v9}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->putByte(I)I

    .line 440
    const/4 v9, 0x0

    invoke-virtual {v2, v9}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->putByte(I)I

    .line 441
    const/4 v9, 0x0

    invoke-virtual {v2, v9}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->putByte(I)I

    .line 442
    const/4 v9, 0x0

    invoke-virtual {v2, v9}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->putByte(I)I

    .line 446
    array-length v9, v0

    const/16 v10, 0x100

    if-le v9, v10, :cond_4

    const/16 v6, 0x100

    .line 447
    .local v6, psismscLen:I
    :goto_3
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "efPsismsc.length = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    array-length v10, v0

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", max len = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/16 v10, 0x100

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/SimDispatcher;->log(Ljava/lang/String;)V

    .line 448
    invoke-virtual {v2, v6}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->putInt(I)I

    .line 450
    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static {v0, v9, v7, v10, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 451
    invoke-virtual {v2, v7}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->putBytes([B)I

    goto/16 :goto_0

    .line 446
    .end local v6           #psismscLen:I
    :cond_4
    array-length v6, v0

    goto :goto_3

    .line 455
    .end local v0           #efPsismsc:[B
    .end local v3           #i:I
    :pswitch_2
    sget-object v9, Lcom/android/internal/telephony/SimDispatcher;->mIccRecordsInstance:[Lcom/android/internal/telephony/uicc/IccRecords;

    const/4 v10, 0x0

    aget-object v9, v9, v10

    invoke-virtual {v9}, Lcom/android/internal/telephony/uicc/IccRecords;->getEfSmsp()[B

    move-result-object v1

    .line 456
    .local v1, efSmsp:[B
    if-nez v1, :cond_5

    .line 457
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "readUsimDataFail: ID = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", type = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/SimDispatcher;->log(Ljava/lang/String;)V

    .line 458
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/SimDispatcher;->readUsimDataFail(II)V

    goto/16 :goto_1

    .line 462
    :cond_5
    const/4 v3, 0x0

    .restart local v3       #i:I
    :goto_4
    array-length v9, v1

    if-ge v3, v9, :cond_6

    .line 463
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Result = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    aget-byte v10, v1, v3

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/SimDispatcher;->log(Ljava/lang/String;)V

    .line 462
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 467
    :cond_6
    invoke-virtual {v2, p2}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->putByte(I)I

    .line 470
    const/4 v9, 0x1

    invoke-virtual {v2, v9}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->putByte(I)I

    .line 473
    invoke-virtual {v2, p1}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->putByte(I)I

    .line 476
    const/4 v9, 0x1

    invoke-virtual {v2, v9}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->putByte(I)I

    .line 479
    const/4 v9, 0x0

    invoke-virtual {v2, v9}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->putByte(I)I

    .line 482
    const/4 v9, 0x0

    invoke-virtual {v2, v9}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->putByte(I)I

    .line 483
    const/4 v9, 0x0

    invoke-virtual {v2, v9}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->putByte(I)I

    .line 484
    const/4 v9, 0x0

    invoke-virtual {v2, v9}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->putByte(I)I

    .line 488
    array-length v9, v1

    const/16 v10, 0x100

    if-le v9, v10, :cond_7

    const/16 v8, 0x100

    .line 489
    .local v8, smspLen:I
    :goto_5
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "efSmsp.length = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    array-length v10, v1

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", max len = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/16 v10, 0x100

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/SimDispatcher;->log(Ljava/lang/String;)V

    .line 490
    invoke-virtual {v2, v8}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->putInt(I)I

    .line 492
    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static {v1, v9, v7, v10, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 493
    invoke-virtual {v2, v7}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->putBytes([B)I

    goto/16 :goto_0

    .line 488
    .end local v8           #smspLen:I
    :cond_7
    array-length v8, v1

    goto :goto_5

    .line 368
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private readUsimDataFail(II)V
    .locals 4
    .parameter "type"
    .parameter "transaction_id"

    .prologue
    const/4 v3, 0x0

    .line 505
    new-instance v0, Lcom/android/internal/telephony/ImsAdapter$VaEvent;

    const v2, 0x187d7

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;-><init>(I)V

    .line 506
    .local v0, event:Lcom/android/internal/telephony/ImsAdapter$VaEvent;
    const/16 v2, 0x100

    new-array v1, v2, [B

    .line 507
    .local v1, pad:[B
    invoke-virtual {v0, p2}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->putByte(I)I

    .line 510
    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->putByte(I)I

    .line 513
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->putByte(I)I

    .line 516
    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->putByte(I)I

    .line 519
    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->putByte(I)I

    .line 522
    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->putByte(I)I

    .line 523
    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->putByte(I)I

    .line 524
    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->putByte(I)I

    .line 528
    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->putInt(I)I

    .line 530
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->putBytes([B)I

    .line 533
    iget-object v2, p0, Lcom/android/internal/telephony/SimDispatcher;->mSocket:Lcom/android/internal/telephony/ImsAdapter$VaSocketIO;

    invoke-virtual {v2, v0}, Lcom/android/internal/telephony/ImsAdapter$VaSocketIO;->writeEvent(Lcom/android/internal/telephony/ImsAdapter$VaEvent;)I

    .line 534
    return-void
.end method


# virtual methods
.method public VaEventCallback(Lcom/android/internal/telephony/ImsAdapter$VaEvent;)V
    .locals 23
    .parameter "event"

    .prologue
    .line 221
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->getRequestID()I

    move-result v18

    .line 222
    .local v18, request_id:I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "reqeust_id = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/SimDispatcher;->log(Ljava/lang/String;)V

    .line 224
    const/4 v3, 0x0

    .line 225
    .local v3, p:Lcom/android/internal/telephony/gsm/GSMPhone;
    const/4 v15, 0x0

    .line 226
    .local v15, phoneProxy:Lcom/android/internal/telephony/PhoneProxy;
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v16

    .line 227
    .local v16, pp:Lcom/android/internal/telephony/Phone;
    move-object/from16 v0, v16

    instance-of v5, v0, Lcom/android/internal/telephony/PhoneProxy;

    if-eqz v5, :cond_0

    .line 228
    move-object/from16 v0, v16

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    move-object v15, v0

    .line 233
    .end local v16           #pp:Lcom/android/internal/telephony/Phone;
    :goto_0
    invoke-virtual {v15}, Lcom/android/internal/telephony/PhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    .end local v3           #p:Lcom/android/internal/telephony/gsm/GSMPhone;
    check-cast v3, Lcom/android/internal/telephony/gsm/GSMPhone;

    .line 234
    .restart local v3       #p:Lcom/android/internal/telephony/gsm/GSMPhone;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "phone object is"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/SimDispatcher;->log(Ljava/lang/String;)V

    .line 236
    packed-switch v18, :pswitch_data_0

    .line 354
    :pswitch_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown request: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/SimDispatcher;->log(Ljava/lang/String;)V

    .line 360
    .end local v3           #p:Lcom/android/internal/telephony/gsm/GSMPhone;
    .end local v15           #phoneProxy:Lcom/android/internal/telephony/PhoneProxy;
    .end local v18           #request_id:I
    :goto_1
    return-void

    .line 230
    .restart local v3       #p:Lcom/android/internal/telephony/gsm/GSMPhone;
    .restart local v15       #phoneProxy:Lcom/android/internal/telephony/PhoneProxy;
    .restart local v16       #pp:Lcom/android/internal/telephony/Phone;
    .restart local v18       #request_id:I
    :cond_0
    check-cast v16, Lcom/android/internal/telephony/gemini/GeminiPhone;

    .end local v16           #pp:Lcom/android/internal/telephony/Phone;
    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v15

    .end local v15           #phoneProxy:Lcom/android/internal/telephony/PhoneProxy;
    check-cast v15, Lcom/android/internal/telephony/PhoneProxy;

    .restart local v15       #phoneProxy:Lcom/android/internal/telephony/PhoneProxy;
    goto :goto_0

    .line 238
    :pswitch_1
    const/16 v17, 0x0

    .line 239
    .local v17, randLen:I
    const/4 v10, 0x0

    .line 240
    .local v10, autnLen:I
    const/4 v4, 0x0

    .line 241
    .local v4, sessionId:I
    const-string v7, ""

    .line 242
    .local v7, strRand:Ljava/lang/String;
    const-string v8, ""

    .line 243
    .local v8, strAuth:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->getByte()I

    move-result v20

    .line 244
    .local v20, transaction_id:I
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->getByte()I

    move-result v17

    .line 245
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->getByte()I

    move-result v10

    .line 247
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->getByte()I

    move-result v5

    const/16 v22, 0x1

    move/from16 v0, v22

    if-ne v5, v0, :cond_3

    const/4 v5, 0x3

    :goto_2
    invoke-virtual {v6, v5}, Lcom/android/internal/telephony/uicc/UiccController;->getIccApplicationChannel(I)I

    move-result v4

    .line 250
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "transaction_id: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/SimDispatcher;->log(Ljava/lang/String;)V

    .line 251
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Rand Len =  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "Autn Len = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/SimDispatcher;->log(Ljava/lang/String;)V

    .line 253
    const/16 v5, 0x20

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->getBytes(I)[B

    move-result-object v12

    .line 254
    .local v12, byteRand:[B
    const/16 v5, 0x20

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->getBytes(I)[B

    move-result-object v11

    .line 256
    .local v11, byteAutn:[B
    if-lez v17, :cond_1

    .line 257
    invoke-static {v12}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    mul-int/lit8 v22, v17, 0x2

    move/from16 v0, v22

    invoke-virtual {v5, v6, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 260
    :cond_1
    if-lez v10, :cond_2

    .line 261
    invoke-static {v11}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    mul-int/lit8 v22, v10, 0x2

    move/from16 v0, v22

    invoke-virtual {v5, v6, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 264
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SIM auth:RAND = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ,AUTN = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/SimDispatcher;->log(Ljava/lang/String;)V

    .line 266
    const/16 v5, 0x64

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v5, v1, v6}, Lcom/android/internal/telephony/SimDispatcher;->obtainMessage(III)Landroid/os/Message;

    move-result-object v9

    .line 267
    .local v9, result:Landroid/os/Message;
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v3 .. v9}, Lcom/android/internal/telephony/gsm/GSMPhone;->doGeneralSimAuthentication(IIILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 357
    .end local v3           #p:Lcom/android/internal/telephony/gsm/GSMPhone;
    .end local v4           #sessionId:I
    .end local v7           #strRand:Ljava/lang/String;
    .end local v8           #strAuth:Ljava/lang/String;
    .end local v9           #result:Landroid/os/Message;
    .end local v10           #autnLen:I
    .end local v11           #byteAutn:[B
    .end local v12           #byteRand:[B
    .end local v15           #phoneProxy:Lcom/android/internal/telephony/PhoneProxy;
    .end local v17           #randLen:I
    .end local v18           #request_id:I
    .end local v20           #transaction_id:I
    :catch_0
    move-exception v13

    .line 358
    .local v13, e:Ljava/lang/Exception;
    invoke-virtual {v13}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    .line 247
    .end local v13           #e:Ljava/lang/Exception;
    .restart local v3       #p:Lcom/android/internal/telephony/gsm/GSMPhone;
    .restart local v4       #sessionId:I
    .restart local v7       #strRand:Ljava/lang/String;
    .restart local v8       #strAuth:Ljava/lang/String;
    .restart local v10       #autnLen:I
    .restart local v15       #phoneProxy:Lcom/android/internal/telephony/PhoneProxy;
    .restart local v17       #randLen:I
    .restart local v18       #request_id:I
    .restart local v20       #transaction_id:I
    :cond_3
    const/4 v5, 0x1

    goto/16 :goto_2

    .line 271
    .end local v4           #sessionId:I
    .end local v7           #strRand:Ljava/lang/String;
    .end local v8           #strAuth:Ljava/lang/String;
    .end local v10           #autnLen:I
    .end local v17           #randLen:I
    .end local v20           #transaction_id:I
    :pswitch_2
    const/4 v14, 0x0

    .local v14, i:I
    :goto_3
    :try_start_1
    sget v5, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-ge v14, v5, :cond_6

    .line 272
    sget-object v5, Lcom/android/internal/telephony/SimDispatcher;->mUiccController:[Lcom/android/internal/telephony/uicc/UiccController;

    aget-object v5, v5, v14

    if-nez v5, :cond_4

    .line 273
    sget-object v5, Lcom/android/internal/telephony/SimDispatcher;->mUiccController:[Lcom/android/internal/telephony/uicc/UiccController;

    invoke-static {v14}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance(I)Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v6

    aput-object v6, v5, v14

    .line 274
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mUiccController: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/SimDispatcher;->mUiccController:[Lcom/android/internal/telephony/uicc/UiccController;

    aget-object v6, v6, v14

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/SimDispatcher;->log(Ljava/lang/String;)V

    .line 278
    :cond_4
    sget-object v5, Lcom/android/internal/telephony/SimDispatcher;->mIccRecordsInstance:[Lcom/android/internal/telephony/uicc/IccRecords;

    sget-object v6, Lcom/android/internal/telephony/SimDispatcher;->mUiccController:[Lcom/android/internal/telephony/uicc/UiccController;

    aget-object v6, v6, v14

    const/16 v22, 0x1

    move/from16 v0, v22

    invoke-virtual {v6, v0}, Lcom/android/internal/telephony/uicc/UiccController;->getIccRecords(I)Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v6

    aput-object v6, v5, v14

    .line 279
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mIccRecordsInstance: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v5, Lcom/android/internal/telephony/SimDispatcher;->mIccRecordsInstance:[Lcom/android/internal/telephony/uicc/IccRecords;

    aget-object v5, v5, v14

    if-nez v5, :cond_5

    const-string v5, "null"

    :goto_4
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/SimDispatcher;->log(Ljava/lang/String;)V

    .line 271
    add-int/lit8 v14, v14, 0x1

    goto :goto_3

    .line 279
    :cond_5
    sget-object v5, Lcom/android/internal/telephony/SimDispatcher;->mIccRecordsInstance:[Lcom/android/internal/telephony/uicc/IccRecords;

    aget-object v5, v5, v14

    goto :goto_4

    .line 282
    :cond_6
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->getByte()I

    move-result v20

    .line 283
    .restart local v20       #transaction_id:I
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->getByte()I

    move-result v21

    .line 285
    .local v21, type:I
    sget-object v5, Lcom/android/internal/telephony/SimDispatcher;->mIccRecordsInstance:[Lcom/android/internal/telephony/uicc/IccRecords;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    if-eqz v5, :cond_7

    .line 286
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "readUsimData, type = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v21

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/SimDispatcher;->log(Ljava/lang/String;)V

    .line 287
    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/SimDispatcher;->readUsimData(II)V

    goto/16 :goto_1

    .line 289
    :cond_7
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "readUsimDataFail: ID = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", type = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v21

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/SimDispatcher;->log(Ljava/lang/String;)V

    .line 290
    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/SimDispatcher;->readUsimDataFail(II)V

    goto/16 :goto_1

    .line 297
    .end local v14           #i:I
    .end local v20           #transaction_id:I
    .end local v21           #type:I
    :pswitch_3
    const/4 v14, 0x0

    .restart local v14       #i:I
    :goto_5
    sget v5, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-ge v14, v5, :cond_a

    .line 298
    sget-object v5, Lcom/android/internal/telephony/SimDispatcher;->mUiccController:[Lcom/android/internal/telephony/uicc/UiccController;

    aget-object v5, v5, v14

    if-nez v5, :cond_8

    .line 299
    sget-object v5, Lcom/android/internal/telephony/SimDispatcher;->mUiccController:[Lcom/android/internal/telephony/uicc/UiccController;

    invoke-static {v14}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance(I)Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v6

    aput-object v6, v5, v14

    .line 300
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mUiccController: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/SimDispatcher;->mUiccController:[Lcom/android/internal/telephony/uicc/UiccController;

    aget-object v6, v6, v14

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/SimDispatcher;->log(Ljava/lang/String;)V

    .line 303
    :cond_8
    sget-object v6, Lcom/android/internal/telephony/SimDispatcher;->mIsimRecordsInstance:[Lcom/android/internal/telephony/uicc/IsimUiccRecords;

    sget-object v5, Lcom/android/internal/telephony/SimDispatcher;->mUiccController:[Lcom/android/internal/telephony/uicc/UiccController;

    aget-object v5, v5, v14

    const/16 v22, 0x3

    move/from16 v0, v22

    invoke-virtual {v5, v0}, Lcom/android/internal/telephony/uicc/UiccController;->getIccRecords(I)Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v5

    check-cast v5, Lcom/android/internal/telephony/uicc/IsimUiccRecords;

    aput-object v5, v6, v14

    .line 304
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mIsimRecordsInstance: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v5, Lcom/android/internal/telephony/SimDispatcher;->mIsimRecordsInstance:[Lcom/android/internal/telephony/uicc/IsimUiccRecords;

    aget-object v5, v5, v14

    if-nez v5, :cond_9

    const-string v5, "null"

    :goto_6
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/SimDispatcher;->log(Ljava/lang/String;)V

    .line 297
    add-int/lit8 v14, v14, 0x1

    goto :goto_5

    .line 304
    :cond_9
    sget-object v5, Lcom/android/internal/telephony/SimDispatcher;->mIsimRecordsInstance:[Lcom/android/internal/telephony/uicc/IsimUiccRecords;

    aget-object v5, v5, v14

    goto :goto_6

    .line 307
    :cond_a
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->getByte()I

    move-result v20

    .line 308
    .restart local v20       #transaction_id:I
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->getByte()I

    move-result v21

    .line 310
    .restart local v21       #type:I
    sget-object v5, Lcom/android/internal/telephony/SimDispatcher;->mIsimRecordsInstance:[Lcom/android/internal/telephony/uicc/IsimUiccRecords;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    if-eqz v5, :cond_b

    .line 311
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "readIsimData, type = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v21

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/SimDispatcher;->log(Ljava/lang/String;)V

    .line 312
    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/SimDispatcher;->readIsimData(II)V

    goto/16 :goto_1

    .line 314
    :cond_b
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "readIsimDataFail: ID = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", type = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v21

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/SimDispatcher;->log(Ljava/lang/String;)V

    .line 315
    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/SimDispatcher;->readIsimDataFail(II)V

    goto/16 :goto_1

    .line 321
    .end local v14           #i:I
    .end local v20           #transaction_id:I
    .end local v21           #type:I
    :pswitch_4
    new-instance v19, Lcom/android/internal/telephony/ImsAdapter$VaEvent;

    const v5, 0x187d5

    move-object/from16 v0, v19

    invoke-direct {v0, v5}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;-><init>(I)V

    .line 322
    .local v19, responseEvent:Lcom/android/internal/telephony/ImsAdapter$VaEvent;
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->getByte()I

    move-result v20

    .line 323
    .restart local v20       #transaction_id:I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "transaction_id: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/SimDispatcher;->log(Ljava/lang/String;)V

    .line 326
    invoke-virtual/range {v19 .. v20}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->putByte(I)I

    .line 328
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mSimState: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/SimDispatcher;->mSimState:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/SimDispatcher;->log(Ljava/lang/String;)V

    .line 330
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/SimDispatcher;->mSimState:Ljava/lang/String;

    const-string v6, "LOADED"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 331
    const/4 v5, 0x1

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->putByte(I)I

    .line 337
    :goto_7
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/SimDispatcher;->mIsimState:Ljava/lang/String;

    const-string v6, "LOADED"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 338
    const/4 v5, 0x2

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->putByte(I)I

    .line 344
    :goto_8
    const/4 v5, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->putByte(I)I

    .line 347
    const/4 v5, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->putByte(I)I

    .line 350
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/SimDispatcher;->mSocket:Lcom/android/internal/telephony/ImsAdapter$VaSocketIO;

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Lcom/android/internal/telephony/ImsAdapter$VaSocketIO;->writeEvent(Lcom/android/internal/telephony/ImsAdapter$VaEvent;)I

    goto/16 :goto_1

    .line 333
    :cond_c
    const/4 v5, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->putByte(I)I

    goto :goto_7

    .line 340
    :cond_d
    const/4 v5, 0x3

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->putByte(I)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_8

    .line 236
    :pswitch_data_0
    .packed-switch 0x187d4
        :pswitch_4
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public disableRequest()V
    .locals 1

    .prologue
    .line 97
    const-string v0, "disableRequest()"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/SimDispatcher;->log(Ljava/lang/String;)V

    .line 98
    return-void
.end method

.method public enableRequest()V
    .locals 1

    .prologue
    .line 93
    const-string v0, "enableRequest()"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/SimDispatcher;->log(Ljava/lang/String;)V

    .line 94
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 11
    .parameter "msg"

    .prologue
    .line 102
    sget-object v7, Lcom/android/internal/telephony/SimDispatcher;->mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 103
    :try_start_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 104
    .local v1, ar:Landroid/os/AsyncResult;
    iget v6, p1, Landroid/os/Message;->what:I

    packed-switch v6, :pswitch_data_0

    .line 149
    const-string v6, "[SimDispatcher]"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " Unknown Event "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p1, Landroid/os/Message;->what:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    :goto_0
    monitor-exit v7

    .line 152
    return-void

    .line 106
    :pswitch_0
    const/4 v5, 0x0

    .line 107
    .local v5, response:Lcom/android/internal/telephony/uicc/IccIoResult;
    const/4 v3, 0x1

    .line 108
    .local v3, isSuccess:I
    const-string v6, "SIM_AUTH_COMPLETE"

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/SimDispatcher;->log(Ljava/lang/String;)V

    .line 109
    iget-object v6, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v6, Lcom/android/internal/telephony/uicc/IccIoResult;

    move-object v0, v6

    check-cast v0, Lcom/android/internal/telephony/uicc/IccIoResult;

    move-object v5, v0

    .line 110
    iget-object v6, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v6, :cond_0

    .line 111
    const/4 v3, 0x0

    .line 112
    const-string v6, "auth fail"

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/SimDispatcher;->log(Ljava/lang/String;)V

    .line 115
    :cond_0
    new-instance v2, Lcom/android/internal/telephony/ImsAdapter$VaEvent;

    const v6, 0x187db

    invoke-direct {v2, v6}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;-><init>(I)V

    .line 118
    .local v2, event:Lcom/android/internal/telephony/ImsAdapter$VaEvent;
    iget v6, p1, Landroid/os/Message;->arg1:I

    int-to-byte v6, v6

    invoke-virtual {v2, v6}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->putByte(I)I

    .line 119
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Trans ID = "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v8, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/SimDispatcher;->log(Ljava/lang/String;)V

    .line 122
    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->putByte(I)I

    .line 125
    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->putByte(I)I

    .line 126
    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->putByte(I)I

    .line 128
    if-eqz v5, :cond_1

    .line 129
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "response = "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/SimDispatcher;->log(Ljava/lang/String;)V

    .line 133
    :cond_1
    const/16 v6, 0x100

    new-array v4, v6, [B

    .line 134
    .local v4, resData:[B
    if-eqz v5, :cond_2

    iget-object v6, v5, Lcom/android/internal/telephony/uicc/IccIoResult;->payload:[B

    if-eqz v6, :cond_2

    .line 135
    iget-object v6, v5, Lcom/android/internal/telephony/uicc/IccIoResult;->payload:[B

    const/4 v8, 0x0

    const/4 v9, 0x0

    iget-object v10, v5, Lcom/android/internal/telephony/uicc/IccIoResult;->payload:[B

    array-length v10, v10

    invoke-static {v6, v8, v4, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 136
    invoke-virtual {v2, v4}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->putBytes([B)I

    .line 143
    :goto_1
    iget-object v6, p0, Lcom/android/internal/telephony/SimDispatcher;->mSocket:Lcom/android/internal/telephony/ImsAdapter$VaSocketIO;

    invoke-virtual {v6, v2}, Lcom/android/internal/telephony/ImsAdapter$VaSocketIO;->writeEvent(Lcom/android/internal/telephony/ImsAdapter$VaEvent;)I

    .line 145
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SIM_AUTH_COMPLETE result is "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/SimDispatcher;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 151
    .end local v1           #ar:Landroid/os/AsyncResult;
    .end local v2           #event:Lcom/android/internal/telephony/ImsAdapter$VaEvent;
    .end local v3           #isSuccess:I
    .end local v4           #resData:[B
    .end local v5           #response:Lcom/android/internal/telephony/uicc/IccIoResult;
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .line 139
    .restart local v1       #ar:Landroid/os/AsyncResult;
    .restart local v2       #event:Lcom/android/internal/telephony/ImsAdapter$VaEvent;
    .restart local v3       #isSuccess:I
    .restart local v4       #resData:[B
    .restart local v5       #response:Lcom/android/internal/telephony/uicc/IccIoResult;
    :cond_2
    :try_start_1
    invoke-virtual {v2, v4}, Lcom/android/internal/telephony/ImsAdapter$VaEvent;->putBytes([B)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 104
    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
    .end packed-switch
.end method

.method protected log(Ljava/lang/String;)V
    .locals 1
    .parameter "s"

    .prologue
    .line 786
    const-string v0, "[SimDispatcher]"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 787
    return-void
.end method
