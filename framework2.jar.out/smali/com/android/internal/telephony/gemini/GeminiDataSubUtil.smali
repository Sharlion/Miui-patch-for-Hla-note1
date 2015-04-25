.class public Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;
    }
.end annotation


# static fields
.field private static h:Z


# instance fields
.field private g:[Z

.field private i:Lcom/android/internal/telephony/gemini/GeminiPhone;

.field private j:Lcom/android/internal/telephony/Phone;

.field private k:[Lcom/android/internal/telephony/Phone;

.field private l:[Lcom/android/internal/telephony/gemini/GeminiDataConn;

.field private m:[Lcom/android/internal/telephony/gemini/GeminiDataConnAc;

.field protected mApnTypes:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mContext:Landroid/content/Context;

.field private n:[Landroid/os/Handler;

.field private o:Landroid/content/BroadcastReceiver;

.field private p:[I

.field private q:[I

.field private r:Ljava/lang/Integer;

.field private s:Landroid/os/Handler;

.field private t:Lcom/android/internal/telephony/DefaultPhoneNotifier$IDataStateChangedCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 108
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->h:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/gemini/GeminiPhone;Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/Phone;)V
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x4

    const/4 v8, 0x0

    const/4 v3, 0x2

    const/4 v0, 0x0

    .line 274
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    new-array v1, v2, [Z

    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->g:[Z

    .line 112
    sget v1, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    new-array v1, v1, [Lcom/android/internal/telephony/Phone;

    iput-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->k:[Lcom/android/internal/telephony/Phone;

    .line 113
    sget v1, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    new-array v1, v1, [Lcom/android/internal/telephony/gemini/GeminiDataConn;

    iput-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->l:[Lcom/android/internal/telephony/gemini/GeminiDataConn;

    .line 114
    sget v1, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    new-array v1, v1, [Lcom/android/internal/telephony/gemini/GeminiDataConnAc;

    iput-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->m:[Lcom/android/internal/telephony/gemini/GeminiDataConnAc;

    .line 115
    sget v1, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    new-array v1, v1, [Landroid/os/Handler;

    iput-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->n:[Landroid/os/Handler;

    .line 117
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->mApnTypes:Ljava/util/HashSet;

    .line 122
    new-array v1, v3, [I

    fill-array-data v1, :array_1

    iput-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->p:[I

    .line 123
    new-array v1, v3, [I

    fill-array-data v1, :array_2

    iput-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->q:[I

    .line 125
    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v0}, Ljava/lang/Integer;-><init>(I)V

    iput-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->r:Ljava/lang/Integer;

    .line 127
    new-instance v1, Lcom/android/internal/telephony/gemini/e;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/gemini/e;-><init>(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)V

    iput-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->s:Landroid/os/Handler;

    .line 208
    new-instance v1, Lcom/android/internal/telephony/gemini/a;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/gemini/a;-><init>(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)V

    iput-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->t:Lcom/android/internal/telephony/DefaultPhoneNotifier$IDataStateChangedCallback;

    .line 275
    iput-object p1, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->i:Lcom/android/internal/telephony/gemini/GeminiPhone;

    .line 276
    new-array v2, v2, [Lcom/android/internal/telephony/Phone;

    aput-object p2, v2, v0

    const/4 v1, 0x1

    aput-object p3, v2, v1

    aput-object p4, v2, v3

    const/4 v1, 0x3

    aput-object p5, v2, v1

    .line 279
    check-cast p2, Lcom/android/internal/telephony/PhoneProxy;

    iput-object p2, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->j:Lcom/android/internal/telephony/Phone;

    move v1, v0

    .line 281
    :goto_0
    sget v0, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-ge v1, v0, :cond_1

    .line 282
    add-int/lit8 v3, v1, 0x1

    .line 283
    iget-object v4, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->k:[Lcom/android/internal/telephony/Phone;

    aget-object v0, v2, v1

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    aput-object v0, v4, v1

    .line 284
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->l:[Lcom/android/internal/telephony/gemini/GeminiDataConn;

    new-instance v4, Lcom/android/internal/telephony/gemini/GeminiDataConn;

    invoke-virtual {p1, v1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "GeminiDC-"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6, v3}, Lcom/android/internal/telephony/gemini/GeminiDataConn;-><init>(Lcom/android/internal/telephony/Phone;Ljava/lang/String;I)V

    aput-object v4, v0, v1

    .line 285
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->l:[Lcom/android/internal/telephony/gemini/GeminiDataConn;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/android/internal/telephony/gemini/GeminiDataConn;->start()V

    .line 286
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->m:[Lcom/android/internal/telephony/gemini/GeminiDataConnAc;

    new-instance v4, Lcom/android/internal/telephony/gemini/GeminiDataConnAc;

    iget-object v5, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->l:[Lcom/android/internal/telephony/gemini/GeminiDataConn;

    aget-object v5, v5, v1

    invoke-direct {v4, v5, v3}, Lcom/android/internal/telephony/gemini/GeminiDataConnAc;-><init>(Lcom/android/internal/telephony/gemini/GeminiDataConn;I)V

    aput-object v4, v0, v1

    .line 287
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->n:[Landroid/os/Handler;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    aput-object v3, v0, v1

    .line 289
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->m:[Lcom/android/internal/telephony/gemini/GeminiDataConnAc;

    aget-object v0, v0, v1

    aget-object v3, v2, v1

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->n:[Landroid/os/Handler;

    aget-object v4, v4, v1

    iget-object v5, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->l:[Lcom/android/internal/telephony/gemini/GeminiDataConn;

    aget-object v5, v5, v1

    invoke-virtual {v5}, Lcom/android/internal/telephony/gemini/GeminiDataConn;->getHandler()Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v0, v3, v4, v5}, Lcom/android/internal/telephony/gemini/GeminiDataConnAc;->fullyConnectSync(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Handler;)I

    move-result v0

    .line 290
    if-nez v0, :cond_0

    .line 291
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Connect success: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->logd(Ljava/lang/String;)V

    .line 296
    :goto_1
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->l:[Lcom/android/internal/telephony/gemini/GeminiDataConn;

    aget-object v0, v0, v1

    iget-object v3, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->s:Landroid/os/Handler;

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {v0, v3, v4, v8}, Lcom/android/internal/telephony/gemini/GeminiDataConn;->registerForIdle(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 299
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->d(I)Lcom/android/internal/telephony/PhoneProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/PhoneBase;

    .line 300
    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v3, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->s:Landroid/os/Handler;

    add-int/lit8 v4, v1, 0x5

    invoke-interface {v0, v3, v4, v8}, Lcom/android/internal/telephony/CommandsInterface;->registerForOffOrNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 281
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_0

    .line 293
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not connect to "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->loge(Ljava/lang/String;)V

    goto :goto_1

    .line 303
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->j:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->mContext:Landroid/content/Context;

    .line 305
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 306
    const-string v1, "android.intent.action.DATA_CONNECTION_FAILED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 307
    const-string v1, "android.intent.action.SERVICE_STATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 310
    new-instance v1, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    invoke-direct {v1, p0, v8}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;-><init>(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;Lcom/android/internal/telephony/gemini/e;)V

    iput-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->o:Landroid/content/BroadcastReceiver;

    .line 311
    iget-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->o:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 313
    return-void

    .line 106
    :array_0
    .array-data 0x1
        0x1t
        0x1t
        0x1t
        0x1t
    .end array-data

    .line 122
    :array_1
    .array-data 0x4
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
    .end array-data

    .line 123
    :array_2
    .array-data 0x4
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
    .end array-data
.end method

.method static synthetic a(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;I)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 82
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->b(I)I

    move-result v0

    return v0
.end method

.method private a(I)Z
    .locals 2
    .parameter

    .prologue
    .line 352
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isEVDODTSupport()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->i:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhoneTypeGemini(I)I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)[I
    .locals 1
    .parameter

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->q:[I

    return-object v0
.end method

.method static synthetic access$200(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 82
    invoke-static {p0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->logd(Ljava/lang/String;)V

    return-void
.end method

.method private b(I)I
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 357
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isDualTalkMode()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 358
    if-ne p1, v0, :cond_0

    .line 360
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 358
    goto :goto_0

    :cond_1
    move v0, v1

    .line 360
    goto :goto_0
.end method

.method static synthetic b(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;I)Lcom/android/internal/telephony/PhoneProxy;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 82
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->d(I)Lcom/android/internal/telephony/PhoneProxy;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)Lcom/android/internal/telephony/gemini/GeminiPhone;
    .locals 1
    .parameter

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->i:Lcom/android/internal/telephony/gemini/GeminiPhone;

    return-object v0
.end method

.method private c(I)Lcom/android/internal/telephony/IccCardConstants$State;
    .locals 1
    .parameter

    .prologue
    .line 365
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->i:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/IccCard;->getState()Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v0

    return-object v0
.end method

.method private c()V
    .locals 3

    .prologue
    .line 370
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->getDataConnectionFromSetting()I

    move-result v0

    .line 371
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->e(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->c(I)Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v1, v2, :cond_0

    .line 373
    iget-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->k:[Lcom/android/internal/telephony/Phone;

    aget-object v1, v1, v0

    iput-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->j:Lcom/android/internal/telephony/Phone;

    .line 374
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UAPP_C1: active Phone ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->logd(Ljava/lang/String;)V

    .line 396
    :goto_0
    return-void

    .line 378
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->i:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-static {}, Lcom/android/internal/telephony/gemini/GeminiPhone;->get3GSimId()I

    move-result v0

    .line 379
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->e(I)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->c(I)Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v1, v2, :cond_1

    .line 381
    iget-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->k:[Lcom/android/internal/telephony/Phone;

    aget-object v1, v1, v0

    iput-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->j:Lcom/android/internal/telephony/Phone;

    .line 382
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UAPP_C2: active Phone ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 386
    :cond_1
    const/4 v0, 0x0

    :goto_1
    sget v1, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-ge v0, v1, :cond_3

    .line 387
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->c(I)Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v1, v2, :cond_2

    .line 388
    iget-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->k:[Lcom/android/internal/telephony/Phone;

    aget-object v1, v1, v0

    iput-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->j:Lcom/android/internal/telephony/Phone;

    .line 389
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UAPP_C3: active Phone ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 386
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 394
    :cond_3
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->i:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->j:Lcom/android/internal/telephony/Phone;

    .line 395
    const-string v0, "UAPP_C4: active Phone is default phone"

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->logd(Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic c(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)[Lcom/android/internal/telephony/gemini/GeminiDataConn;
    .locals 1
    .parameter

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->l:[Lcom/android/internal/telephony/gemini/GeminiDataConn;

    return-object v0
.end method

.method private d(I)Lcom/android/internal/telephony/PhoneProxy;
    .locals 2
    .parameter

    .prologue
    .line 399
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->e(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 400
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->k:[Lcom/android/internal/telephony/Phone;

    aget-object v0, v0, p1

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    .line 403
    :goto_0
    return-object v0

    .line 402
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SAPP:Invaild simId=  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->logw(Ljava/lang/String;)V

    .line 403
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private d()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 996
    iget-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "mobile_data"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 997
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDataConnectionEnabled ret ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->logd(Ljava/lang/String;)V

    .line 998
    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method static synthetic d(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)[I
    .locals 1
    .parameter

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->p:[I

    return-object v0
.end method

.method static synthetic e(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)Ljava/lang/Integer;
    .locals 1
    .parameter

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->r:Ljava/lang/Integer;

    return-object v0
.end method

.method private e(I)Z
    .locals 1
    .parameter

    .prologue
    .line 961
    if-ltz p1, :cond_0

    sget v0, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-gt p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic f(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)[Lcom/android/internal/telephony/gemini/GeminiDataConnAc;
    .locals 1
    .parameter

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->m:[Lcom/android/internal/telephony/gemini/GeminiDataConnAc;

    return-object v0
.end method

.method static synthetic g(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)[Z
    .locals 1
    .parameter

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->g:[Z

    return-object v0
.end method

.method private getDataConnectionFromSetting()I
    .locals 3

    .prologue
    .line 985
    .line 988
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "gprs_connection_setting"

    const/4 v2, -0x4

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 990
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Default Data Setting value="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->logd(Ljava/lang/String;)V

    .line 992
    return v0
.end method

.method static synthetic h(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)I
    .locals 1
    .parameter

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->getDataConnectionFromSetting()I

    move-result v0

    return v0
.end method

.method static synthetic i(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)Z
    .locals 1
    .parameter

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->d()Z

    move-result v0

    return v0
.end method

.method private static logd(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 1052
    const-string v0, "PHONE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[GeminiDataSubUtil] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1053
    return-void
.end method

.method private static loge(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 1060
    const-string v0, "PHONE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[GeminiDataSubUtil] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1061
    return-void
.end method

.method private static logw(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 1056
    const-string v0, "PHONE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[GeminiDataSubUtil] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1057
    return-void
.end method


# virtual methods
.method public cleanupAllConnection(I)V
    .locals 1
    .parameter

    .prologue
    .line 1036
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->l:[Lcom/android/internal/telephony/gemini/GeminiDataConn;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/android/internal/telephony/gemini/GeminiDataConn;->cleanupAllConnection()V

    .line 1037
    return-void
.end method

.method public dataConnectivityDecideSimId()I
    .locals 3

    .prologue
    .line 617
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->getDataConnectionFromSetting()I

    move-result v0

    .line 618
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DCDS: defaultSimId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->logd(Ljava/lang/String;)V

    .line 619
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->e(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->c(I)Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v1, v2, :cond_0

    .line 621
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DCDS_C1: SIM ID ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->logd(Ljava/lang/String;)V

    .line 641
    :goto_0
    return v0

    .line 625
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->i:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-static {}, Lcom/android/internal/telephony/gemini/GeminiPhone;->get3GSimId()I

    move-result v0

    .line 626
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DCDS: threeGSimId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->logd(Ljava/lang/String;)V

    .line 627
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->e(I)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->c(I)Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v1, v2, :cond_1

    .line 629
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DCDS_C2: SIM ID ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 633
    :cond_1
    const/4 v0, 0x0

    :goto_1
    sget v1, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-ge v0, v1, :cond_3

    .line 634
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->c(I)Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v1, v2, :cond_2

    .line 635
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DCDS_C3: SIM ID ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 633
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 640
    :cond_3
    const-string v0, "DCDS_C4: no available SIM"

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->logd(Ljava/lang/String;)V

    .line 641
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public dialUpCsd(ILjava/lang/String;)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1031
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->c()V

    .line 1032
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->j:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->dialUpCsd(ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public disableApnType(Ljava/lang/String;)I
    .locals 5
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 662
    .line 665
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "disableApnType():type="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",call Gemini version"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->logd(Ljava/lang/String;)V

    .line 666
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isDualTalkMode()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 668
    iget-object v3, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->k:[Lcom/android/internal/telephony/Phone;

    aget-object v3, v3, v2

    invoke-interface {v3, p1}, Lcom/android/internal/telephony/Phone;->getDataConnectionState(Ljava/lang/String;)Lcom/android/internal/telephony/PhoneConstants$DataState;

    move-result-object v3

    .line 669
    sget-object v4, Lcom/android/internal/telephony/PhoneConstants$DataState;->CONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    if-eq v3, v4, :cond_0

    sget-object v4, Lcom/android/internal/telephony/PhoneConstants$DataState;->CONNECTING:Lcom/android/internal/telephony/PhoneConstants$DataState;

    if-ne v3, v4, :cond_2

    :cond_0
    move v0, v2

    .line 680
    :cond_1
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DAT:Select simId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->logd(Ljava/lang/String;)V

    .line 682
    if-eq v0, v1, :cond_4

    .line 683
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->disableApnTypeGemini(Ljava/lang/String;I)I

    move-result v0

    .line 688
    :goto_1
    return v0

    .line 672
    :cond_2
    iget-object v2, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->k:[Lcom/android/internal/telephony/Phone;

    aget-object v2, v2, v0

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/Phone;->getDataConnectionState(Ljava/lang/String;)Lcom/android/internal/telephony/PhoneConstants$DataState;

    move-result-object v2

    .line 673
    sget-object v3, Lcom/android/internal/telephony/PhoneConstants$DataState;->CONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    if-eq v2, v3, :cond_1

    sget-object v3, Lcom/android/internal/telephony/PhoneConstants$DataState;->CONNECTING:Lcom/android/internal/telephony/PhoneConstants$DataState;

    if-eq v2, v3, :cond_1

    move v0, v1

    goto :goto_0

    .line 678
    :cond_3
    invoke-virtual {p0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->dataConnectivityDecideSimId()I

    move-result v0

    goto :goto_0

    .line 685
    :cond_4
    const/4 v0, 0x3

    goto :goto_1
.end method

.method public declared-synchronized disableApnTypeGemini(Ljava/lang/String;I)I
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 917
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "disableApnTypeGemini():type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",simId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",powerOff="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->g:[Z

    aget-boolean v1, v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->logd(Ljava/lang/String;)V

    .line 919
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->m:[Lcom/android/internal/telephony/gemini/GeminiDataConnAc;

    aget-object v0, v0, p2

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gemini/GeminiDataConnAc;->disconnectSync(Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    .line 917
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public disableDataConnectivity()Z
    .locals 1

    .prologue
    .line 613
    const/4 v0, 0x0

    return v0
.end method

.method public disableDnsCheck(Z)V
    .locals 2
    .parameter

    .prologue
    .line 491
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isDualTalkMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 492
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[DT]disableDnsCheck="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->logd(Ljava/lang/String;)V

    .line 493
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->k:[Lcom/android/internal/telephony/Phone;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->disableDnsCheck(Z)V

    .line 494
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->k:[Lcom/android/internal/telephony/Phone;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->disableDnsCheck(Z)V

    .line 499
    :goto_0
    return-void

    .line 496
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->c()V

    .line 497
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->j:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->disableDnsCheck(Z)V

    goto :goto_0
.end method

.method public disableDnsCheckGemini(ZI)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 755
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->d(I)Lcom/android/internal/telephony/PhoneProxy;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/PhoneProxy;->disableDnsCheck(Z)V

    .line 756
    return-void
.end method

.method public enableApnType(Ljava/lang/String;)I
    .locals 4
    .parameter

    .prologue
    const/16 v0, 0x63

    .line 645
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enableApnType():type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",call Gemini version"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->logd(Ljava/lang/String;)V

    .line 646
    invoke-virtual {p0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->dataConnectivityDecideSimId()I

    move-result v1

    .line 647
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EAT:Select simId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->logd(Ljava/lang/String;)V

    .line 648
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->e(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 649
    invoke-virtual {p0, p1, v1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->enableApnTypeGemini(Ljava/lang/String;I)I

    move-result v0

    .line 656
    :cond_0
    :goto_0
    return v0

    .line 651
    :cond_1
    if-eq v1, v0, :cond_0

    .line 656
    const/4 v0, 0x3

    goto :goto_0
.end method

.method public declared-synchronized enableApnTypeGemini(Ljava/lang/String;I)I
    .locals 9
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x3

    const/4 v3, 0x0

    const/4 v1, 0x1

    const/4 v8, -0x1

    .line 818
    monitor-enter p0

    .line 820
    if-eq p2, v8, :cond_0

    :try_start_0
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->e(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 822
    :cond_0
    const-string v1, "EATG:SIM_NONE or Invalid"

    invoke-static {v1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->logw(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 900
    :goto_0
    monitor-exit p0

    return v0

    .line 826
    :cond_1
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "gemini enableApnTypeGemini():type="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ",simId="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ",powerOff="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->g:[Z

    aget-boolean v4, v4, p2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->logd(Ljava/lang/String;)V

    move v4, v3

    .line 828
    :goto_1
    sget v2, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-ge v4, v2, :cond_7

    .line 830
    if-ne p2, v4, :cond_3

    .line 828
    :cond_2
    :goto_2
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_1

    .line 834
    :cond_3
    const-string v2, "default"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isDualTalkMode()Z

    move-result v2

    if-nez v2, :cond_5

    .line 835
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->d(I)Lcom/android/internal/telephony/PhoneProxy;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneProxy;->getActiveApnTypes()[Ljava/lang/String;

    move-result-object v5

    .line 836
    if-eqz v5, :cond_5

    array-length v2, v5

    if-eqz v2, :cond_5

    move v2, v3

    .line 837
    :goto_3
    array-length v6, v5

    if-ge v2, v6, :cond_5

    .line 839
    const-string v6, "default"

    aget-object v7, v5, v2

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    const-string v6, "hipri"

    aget-object v7, v5, v2

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    const-string v6, "tethering"

    aget-object v7, v5, v2

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->d(I)Lcom/android/internal/telephony/PhoneProxy;

    move-result-object v6

    aget-object v7, v5, v2

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/PhoneProxy;->getDataConnectionState(Ljava/lang/String;)Lcom/android/internal/telephony/PhoneConstants$DataState;

    move-result-object v6

    sget-object v7, Lcom/android/internal/telephony/PhoneConstants$DataState;->DISCONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    if-eq v6, v7, :cond_4

    .line 843
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enableApnTypeGemini():Peer SIM still have non default/hipri/tethering active APN type: activeApnTypes["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "]="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v2, v5, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->logd(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 818
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 837
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 853
    :cond_5
    :try_start_2
    const-string v2, "default"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isDualTalkMode()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 854
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->d(I)Lcom/android/internal/telephony/PhoneProxy;

    move-result-object v2

    const-string v5, "default"

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/PhoneProxy;->getDataConnectionState(Ljava/lang/String;)Lcom/android/internal/telephony/PhoneConstants$DataState;

    move-result-object v2

    sget-object v5, Lcom/android/internal/telephony/PhoneConstants$DataState;->DISCONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    if-eq v2, v5, :cond_2

    .line 855
    const-string v2, "enableApnTypeGemini(), check if need disableApnTypeGemini(default)"

    invoke-static {v2}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->logd(Ljava/lang/String;)V

    .line 856
    const-string v2, "default"

    invoke-virtual {p0, v2, v4}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->disableApnTypeGemini(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v1, :cond_6

    .line 860
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enableApnTypeGemini(), disableApnTypeGemini, peerSimId = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->logd(Ljava/lang/String;)V

    move v0, v1

    .line 861
    goto/16 :goto_0

    .line 863
    :cond_6
    const-string v2, "enableApnTypeGemini(), peer default apn is already disconnected"

    invoke-static {v2}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->logd(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 869
    :cond_7
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->b(I)I

    move-result v0

    .line 870
    iget-object v2, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->p:[I

    aget v2, v2, v0

    .line 872
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "enableApnTypeGemini(): activeModem="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", current_use_sim_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->p:[I

    aget v4, v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", request_use_gprs_sim_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->q:[I

    aget v4, v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->logd(Ljava/lang/String;)V

    .line 875
    if-ne p2, v2, :cond_8

    iget-object v3, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->m:[Lcom/android/internal/telephony/gemini/GeminiDataConnAc;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Lcom/android/internal/telephony/gemini/GeminiDataConnAc;->isIdleDeactingSync()Z

    move-result v3

    if-nez v3, :cond_8

    .line 877
    iget-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->q:[I

    const/4 v2, -0x1

    aput v2, v1, v0

    .line 878
    const-string v0, "enableApnTypeGemini(): current_use_sim_id equals request SIM ID."

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->logd(Ljava/lang/String;)V

    .line 879
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->m:[Lcom/android/internal/telephony/gemini/GeminiDataConnAc;

    aget-object v0, v0, p2

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gemini/GeminiDataConnAc;->connectSync(Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_0

    .line 882
    :cond_8
    if-ne v2, v8, :cond_9

    .line 883
    iget-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->p:[I

    aput p2, v1, v0

    .line 884
    iget-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->q:[I

    const/4 v3, -0x1

    aput v3, v1, v0

    .line 885
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enableApnTypeGemini(): current SIM is NONE or IDLE, currentSim="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->logd(Ljava/lang/String;)V

    .line 886
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->m:[Lcom/android/internal/telephony/gemini/GeminiDataConnAc;

    aget-object v0, v0, p2

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gemini/GeminiDataConnAc;->connectSync(Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_0

    .line 888
    :cond_9
    iget-object v3, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->r:Ljava/lang/Integer;

    monitor-enter v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 889
    :try_start_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "enableApnTypeGemini(): current SIM:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is active."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->logd(Ljava/lang/String;)V

    .line 890
    iget-object v4, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->q:[I

    aget v4, v4, v0

    if-eq p2, v4, :cond_a

    .line 891
    iget-object v4, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->mApnTypes:Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/util/HashSet;->clear()V

    .line 893
    :cond_a
    iget-object v4, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->mApnTypes:Ljava/util/HashSet;

    invoke-virtual {v4, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 894
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 895
    :try_start_4
    iget-object v3, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->q:[I

    aput p2, v3, v0

    .line 896
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->l:[Lcom/android/internal/telephony/gemini/GeminiDataConn;

    aget-object v0, v0, v2

    invoke-virtual {v0}, Lcom/android/internal/telephony/gemini/GeminiDataConn;->cleanupAllConnection()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move v0, v1

    .line 900
    goto/16 :goto_0

    .line 894
    :catchall_1
    move-exception v0

    :try_start_5
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
.end method

.method public enableDataConnectivity()Z
    .locals 1

    .prologue
    .line 608
    const/4 v0, 0x0

    return v0
.end method

.method public getActiveApn()Ljava/lang/String;
    .locals 1

    .prologue
    .line 550
    const-string v0, "[DT] getActiveApn"

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->logd(Ljava/lang/String;)V

    .line 551
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->c()V

    .line 553
    const-string v0, ""

    return-object v0
.end method

.method public getActiveApnGemini(I)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 774
    const-string v0, ""

    return-object v0
.end method

.method public getActiveApnType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 409
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->c()V

    .line 410
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->j:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getActiveApnType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getActiveApnTypeGemini(I)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 767
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->d(I)Lcom/android/internal/telephony/PhoneProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneProxy;->getActiveApnType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getActiveApnTypes()[Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 517
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isDualTalkMode()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 518
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->k:[Lcom/android/internal/telephony/Phone;

    aget-object v0, v0, v5

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getActiveApnTypes()[Ljava/lang/String;

    move-result-object v2

    .line 519
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->k:[Lcom/android/internal/telephony/Phone;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getActiveApnTypes()[Ljava/lang/String;

    move-result-object v0

    .line 521
    if-nez v2, :cond_1

    .line 522
    if-eqz v0, :cond_0

    .line 523
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[DT] 1. getActiveApnTypes="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->logd(Ljava/lang/String;)V

    .line 545
    :goto_0
    return-object v0

    .line 526
    :cond_0
    const-string v0, "[DT] 2. getActiveApnTypes=null"

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->logd(Ljava/lang/String;)V

    .line 527
    const/4 v0, 0x0

    goto :goto_0

    .line 530
    :cond_1
    if-eqz v0, :cond_2

    .line 531
    array-length v3, v2

    .line 532
    array-length v4, v0

    .line 533
    add-int v1, v3, v4

    new-array v1, v1, [Ljava/lang/String;

    .line 534
    invoke-static {v2, v5, v1, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 535
    invoke-static {v0, v5, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 536
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[DT] 3. getActiveApnTypes="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->logd(Ljava/lang/String;)V

    move-object v0, v1

    .line 537
    goto :goto_0

    .line 539
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[DT] 4. getActiveApnTypes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->logd(Ljava/lang/String;)V

    move-object v0, v2

    .line 540
    goto :goto_0

    .line 544
    :cond_3
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->c()V

    .line 545
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->j:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getActiveApnTypes()[Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getActiveApnTypesGemini(I)[Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 763
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->d(I)Lcom/android/internal/telephony/PhoneProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneProxy;->getActiveApnTypes()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getApnForType(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    .line 415
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isDualTalkMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 416
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->k:[Lcom/android/internal/telephony/Phone;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getApnForType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 417
    if-nez v0, :cond_0

    .line 418
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->k:[Lcom/android/internal/telephony/Phone;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getApnForType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 420
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[DT]getApnForType==>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->logd(Ljava/lang/String;)V

    .line 424
    :goto_0
    return-object v0

    .line 423
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->c()V

    .line 424
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->j:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getApnForType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getApnForTypeGemini(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 780
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->d(I)Lcom/android/internal/telephony/PhoneProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneProxy;->getActiveApnType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentDataConnectionList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/dataconnection/DataConnection;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 571
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isDualTalkMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 572
    const-string v0, "[DT] getCurrentDataConnectionList"

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->logd(Ljava/lang/String;)V

    .line 576
    :goto_0
    return-object v1

    .line 575
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->c()V

    goto :goto_0
.end method

.method public getCurrentDataConnectionListGemini(I)Ljava/util/List;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/dataconnection/DataConnection;",
            ">;"
        }
    .end annotation

    .prologue
    .line 796
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDataActivityState()Lcom/android/internal/telephony/Phone$DataActivityState;
    .locals 3

    .prologue
    .line 476
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isDualTalkMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 477
    sget-object v0, Lcom/android/internal/telephony/Phone$DataActivityState;->NONE:Lcom/android/internal/telephony/Phone$DataActivityState;

    .line 478
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->k:[Lcom/android/internal/telephony/Phone;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getDataActivityState()Lcom/android/internal/telephony/Phone$DataActivityState;

    move-result-object v0

    .line 479
    sget-object v1, Lcom/android/internal/telephony/Phone$DataActivityState;->NONE:Lcom/android/internal/telephony/Phone$DataActivityState;

    if-ne v0, v1, :cond_0

    .line 480
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->k:[Lcom/android/internal/telephony/Phone;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getDataActivityState()Lcom/android/internal/telephony/Phone$DataActivityState;

    move-result-object v0

    .line 486
    :goto_0
    return-object v0

    .line 482
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[DT]getDataActivityState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 485
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->c()V

    .line 486
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->j:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getDataActivityState()Lcom/android/internal/telephony/Phone$DataActivityState;

    move-result-object v0

    goto :goto_0
.end method

.method public getDataCallList(Landroid/os/Message;)V
    .locals 1
    .parameter

    .prologue
    .line 565
    const-string v0, "[DT] getDataCallList"

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->logd(Ljava/lang/String;)V

    .line 566
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->c()V

    .line 567
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->j:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getDataCallList(Landroid/os/Message;)V

    .line 568
    return-void
.end method

.method public getDataCallListGemini(Landroid/os/Message;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 788
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->d(I)Lcom/android/internal/telephony/PhoneProxy;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/PhoneProxy;->getDataCallList(Landroid/os/Message;)V

    .line 789
    return-void
.end method

.method public getDataConnectionState()Lcom/android/internal/telephony/PhoneConstants$DataState;
    .locals 3

    .prologue
    .line 461
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isDualTalkMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 462
    invoke-virtual {p0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->dataConnectivityDecideSimId()I

    move-result v0

    .line 463
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDataConnectionState()="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->logd(Ljava/lang/String;)V

    .line 464
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 465
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->d(I)Lcom/android/internal/telephony/PhoneProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneProxy;->getDataConnectionState()Lcom/android/internal/telephony/PhoneConstants$DataState;

    move-result-object v0

    .line 471
    :goto_0
    return-object v0

    .line 468
    :cond_0
    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$DataState;->DISCONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    goto :goto_0

    .line 470
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->c()V

    .line 471
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->j:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getDataConnectionState()Lcom/android/internal/telephony/PhoneConstants$DataState;

    move-result-object v0

    goto :goto_0
.end method

.method public getDataConnectionState(Ljava/lang/String;)Lcom/android/internal/telephony/PhoneConstants$DataState;
    .locals 3
    .parameter

    .prologue
    .line 430
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isDualTalkMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 431
    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$DataState;->DISCONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    .line 432
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->k:[Lcom/android/internal/telephony/Phone;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getDataConnectionState(Ljava/lang/String;)Lcom/android/internal/telephony/PhoneConstants$DataState;

    move-result-object v0

    .line 433
    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$DataState;->DISCONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    if-ne v0, v1, :cond_0

    .line 434
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->k:[Lcom/android/internal/telephony/Phone;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getDataConnectionState(Ljava/lang/String;)Lcom/android/internal/telephony/PhoneConstants$DataState;

    move-result-object v0

    .line 436
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[DT]getDataConnectionState==>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->logd(Ljava/lang/String;)V

    .line 440
    :goto_0
    return-object v0

    .line 439
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->c()V

    .line 440
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->j:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getDataConnectionState(Ljava/lang/String;)Lcom/android/internal/telephony/PhoneConstants$DataState;

    move-result-object v0

    goto :goto_0
.end method

.method public getDataConnectionStateGemini(Ljava/lang/String;I)Lcom/android/internal/telephony/PhoneConstants$DataState;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 751
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->d(I)Lcom/android/internal/telephony/PhoneProxy;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/PhoneProxy;->getDataConnectionState(Ljava/lang/String;)Lcom/android/internal/telephony/PhoneConstants$DataState;

    move-result-object v0

    return-object v0
.end method

.method public getDataRoamingEnabled()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 581
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isDualTalkMode()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 582
    iget-object v2, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->k:[Lcom/android/internal/telephony/Phone;

    aget-object v2, v2, v0

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getDataRoamingEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->k:[Lcom/android/internal/telephony/Phone;

    aget-object v2, v2, v1

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getDataRoamingEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 584
    :cond_0
    const-string v0, "[DT] getDataRoamingEnabled: true"

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->logd(Ljava/lang/String;)V

    move v0, v1

    .line 591
    :goto_0
    return v0

    .line 587
    :cond_1
    const-string v1, "[DT] getDataRoamingEnabled: false"

    invoke-static {v1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 590
    :cond_2
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->c()V

    .line 591
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->j:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getDataRoamingEnabled()Z

    move-result v0

    goto :goto_0
.end method

.method public getDataRoamingEnabledGemini(I)Z
    .locals 1
    .parameter

    .prologue
    .line 802
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->d(I)Lcom/android/internal/telephony/PhoneProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneProxy;->getDataRoamingEnabled()Z

    move-result v0

    return v0
.end method

.method public getDataStateChangedCallback()Lcom/android/internal/telephony/DefaultPhoneNotifier$IDataStateChangedCallback;
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->t:Lcom/android/internal/telephony/DefaultPhoneNotifier$IDataStateChangedCallback;

    return-object v0
.end method

.method public getDnsServers(Ljava/lang/String;)[Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    .line 717
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isDualTalkMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 719
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->k:[Lcom/android/internal/telephony/Phone;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getDnsServers(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 721
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[DT]:getDnsServers, apnType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->logd(Ljava/lang/String;)V

    .line 722
    if-nez v0, :cond_0

    .line 723
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->k:[Lcom/android/internal/telephony/Phone;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getDnsServers(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 729
    :cond_0
    :goto_0
    return-object v0

    .line 728
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->c()V

    .line 729
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->j:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getDnsServers(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getDnsServersGemini(Ljava/lang/String;I)[Ljava/lang/String;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 936
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->d(I)Lcom/android/internal/telephony/PhoneProxy;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/PhoneProxy;->getDnsServers(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPdpContextList(Landroid/os/Message;)V
    .locals 1
    .parameter

    .prologue
    .line 559
    const-string v0, "[DT] getPdpContextList"

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->logd(Ljava/lang/String;)V

    .line 560
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->c()V

    .line 561
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->j:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getPdpContextList(Landroid/os/Message;)V

    .line 562
    return-void
.end method

.method public getPdpContextListGemini(Landroid/os/Message;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 784
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->d(I)Lcom/android/internal/telephony/PhoneProxy;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/PhoneProxy;->getPdpContextList(Landroid/os/Message;)V

    .line 785
    return-void
.end method

.method public isDataConnectivityEnabled()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 692
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isDualTalkMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 696
    :goto_0
    return v1

    .line 695
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->c()V

    goto :goto_0
.end method

.method public isDataConnectivityEnabledGemini(I)Z
    .locals 1
    .parameter

    .prologue
    .line 926
    const/4 v0, 0x1

    return v0
.end method

.method public isDataConnectivityPossible()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 701
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isDualTalkMode()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 703
    iget-object v2, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->k:[Lcom/android/internal/telephony/Phone;

    aget-object v2, v2, v0

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->isDataConnectivityPossible()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->k:[Lcom/android/internal/telephony/Phone;

    aget-object v2, v2, v1

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->isDataConnectivityPossible()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 705
    :cond_0
    const-string v0, "[DT]:isDataConnectivityPossible=true"

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->logd(Ljava/lang/String;)V

    move v0, v1

    .line 712
    :goto_0
    return v0

    .line 708
    :cond_1
    const-string v1, "[DT]:isDataConnectivityPossible=false"

    invoke-static {v1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 711
    :cond_2
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->c()V

    .line 712
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->j:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->isDataConnectivityPossible()Z

    move-result v0

    goto :goto_0
.end method

.method public isDataConnectivityPossible(Ljava/lang/String;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 446
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isDualTalkMode()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 447
    iget-object v2, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->k:[Lcom/android/internal/telephony/Phone;

    aget-object v2, v2, v0

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/Phone;->isDataConnectivityPossible(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->k:[Lcom/android/internal/telephony/Phone;

    aget-object v2, v2, v1

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/Phone;->isDataConnectivityPossible(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 449
    :cond_0
    const-string v0, "[DT]isDataConnectivityPossible: true"

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->logd(Ljava/lang/String;)V

    move v0, v1

    .line 456
    :goto_0
    return v0

    .line 452
    :cond_1
    const-string v1, "[DT]isDataConnectivityPossible: false"

    invoke-static {v1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 455
    :cond_2
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->c()V

    .line 456
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->j:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->isDataConnectivityPossible(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public isDataConnectivityPossibleGemini(Ljava/lang/String;I)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 932
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->d(I)Lcom/android/internal/telephony/PhoneProxy;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/PhoneProxy;->isDataConnectivityPossible(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isDnsCheckDisabled()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 502
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isDualTalkMode()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 503
    iget-object v2, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->k:[Lcom/android/internal/telephony/Phone;

    aget-object v2, v2, v0

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->isDnsCheckDisabled()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->k:[Lcom/android/internal/telephony/Phone;

    aget-object v2, v2, v1

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->isDnsCheckDisabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 505
    :cond_0
    const-string v0, "[DT]isDnsCheckDisabled=true"

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->logd(Ljava/lang/String;)V

    move v0, v1

    .line 512
    :goto_0
    return v0

    .line 508
    :cond_1
    const-string v1, "[DT]isDnsCheckDisabled=false"

    invoke-static {v1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 511
    :cond_2
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->c()V

    .line 512
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->j:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->isDnsCheckDisabled()Z

    move-result v0

    goto :goto_0
.end method

.method public isDnsCheckDisabledGemini(I)Z
    .locals 1
    .parameter

    .prologue
    .line 759
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->d(I)Lcom/android/internal/telephony/PhoneProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneProxy;->isDnsCheckDisabled()Z

    move-result v0

    return v0
.end method

.method public isGprsDetached(I)Z
    .locals 1
    .parameter

    .prologue
    .line 952
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->m:[Lcom/android/internal/telephony/gemini/GeminiDataConnAc;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/android/internal/telephony/gemini/GeminiDataConnAc;->isIdleSync()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 953
    const/4 v0, 0x1

    .line 955
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isGprsDetachingOrDetached(I)Z
    .locals 1
    .parameter

    .prologue
    .line 944
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->m:[Lcom/android/internal/telephony/gemini/GeminiDataConnAc;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/android/internal/telephony/gemini/GeminiDataConnAc;->isIdleDeactingSync()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 945
    const/4 v0, 0x1

    .line 947
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPsActive(I)Z
    .locals 2
    .parameter

    .prologue
    .line 1044
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->p:[I

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->b(I)I

    move-result v1

    aget v0, v0, v1

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->q:[I

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->b(I)I

    move-result v1

    aget v0, v0, v1

    if-ne v0, p1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public notifyDataActivity()V
    .locals 3

    .prologue
    .line 734
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isDualTalkMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 735
    invoke-virtual {p0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->dataConnectivityDecideSimId()I

    move-result v0

    .line 736
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyDataActivity()="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->logd(Ljava/lang/String;)V

    .line 737
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 738
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->d(I)Lcom/android/internal/telephony/PhoneProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneProxy;->notifyDataActivity()V

    .line 746
    :cond_0
    :goto_0
    return-void

    .line 743
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->c()V

    .line 744
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->j:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->notifyDataActivity()V

    goto :goto_0
.end method

.method public notifyDataActivityGemini(I)V
    .locals 1
    .parameter

    .prologue
    .line 940
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->d(I)Lcom/android/internal/telephony/PhoneProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneProxy;->notifyDataActivity()V

    .line 941
    return-void
.end method

.method public registerForDetached(ILandroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1023
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->l:[Lcom/android/internal/telephony/gemini/GeminiDataConn;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2, p3, p4}, Lcom/android/internal/telephony/gemini/GeminiDataConn;->registerForIdle(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1024
    return-void
.end method

.method public resetAsRadioOff(I)V
    .locals 8
    .parameter

    .prologue
    const/4 v7, 0x1

    const/4 v2, 0x0

    const/4 v6, -0x1

    .line 316
    move v1, v2

    :goto_0
    sget v0, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-ge v1, v0, :cond_7

    .line 317
    shl-int v0, v7, v1

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    if-ne p1, v6, :cond_2

    .line 319
    :cond_0
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->b(I)I

    move-result v3

    .line 321
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->p:[I

    aget v0, v0, v3

    if-ne v1, v0, :cond_1

    .line 322
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "resetAsRadioOff: reset SIM "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " data connection [mode="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ", allowDetach="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->l:[Lcom/android/internal/telephony/gemini/GeminiDataConn;

    aget-object v4, v4, v1

    invoke-virtual {v4}, Lcom/android/internal/telephony/gemini/GeminiDataConn;->isAllowDetach()Z

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "]."

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->logd(Ljava/lang/String;)V

    .line 327
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a(I)Z

    move-result v0

    .line 328
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "resetAsRadioOff, isCdmaDataConn="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->logd(Ljava/lang/String;)V

    .line 329
    if-ne p1, v6, :cond_3

    .line 330
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->l:[Lcom/android/internal/telephony/gemini/GeminiDataConn;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/android/internal/telephony/gemini/GeminiDataConn;->transitToIdleState()V

    .line 343
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->q:[I

    aget v0, v0, v3

    if-ne v1, v0, :cond_2

    .line 344
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "resetAsRadioOff: reset request SIM "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "."

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->logd(Ljava/lang/String;)V

    .line 345
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->q:[I

    aput v6, v0, v3

    .line 316
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_0

    .line 331
    :cond_3
    shl-int v4, v7, v1

    and-int/2addr v4, p1

    if-nez v4, :cond_5

    .line 332
    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->l:[Lcom/android/internal/telephony/gemini/GeminiDataConn;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/android/internal/telephony/gemini/GeminiDataConn;->isAllowDetach()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 333
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->i:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/PhoneProxy;->setGprsConnType(I)V

    .line 335
    :cond_4
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->l:[Lcom/android/internal/telephony/gemini/GeminiDataConn;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/android/internal/telephony/gemini/GeminiDataConn;->transitToIdleState()V

    goto :goto_1

    .line 337
    :cond_5
    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->l:[Lcom/android/internal/telephony/gemini/GeminiDataConn;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/android/internal/telephony/gemini/GeminiDataConn;->isAllowDetach()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 338
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->i:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/PhoneProxy;->setGprsConnType(I)V

    .line 340
    :cond_6
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->l:[Lcom/android/internal/telephony/gemini/GeminiDataConn;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/android/internal/telephony/gemini/GeminiDataConn;->cleanupAllConnection()V

    goto :goto_1

    .line 349
    :cond_7
    return-void
.end method

.method public setDataRoamingEnabled(Z)V
    .locals 2
    .parameter

    .prologue
    .line 596
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isDualTalkMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 597
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[DT] setDataRoamingEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->logd(Ljava/lang/String;)V

    .line 598
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->k:[Lcom/android/internal/telephony/Phone;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->setDataRoamingEnabled(Z)V

    .line 599
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->k:[Lcom/android/internal/telephony/Phone;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->setDataRoamingEnabled(Z)V

    .line 604
    :goto_0
    return-void

    .line 601
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->c()V

    .line 602
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->j:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->setDataRoamingEnabled(Z)V

    goto :goto_0
.end method

.method public setGeminiDataConnStateToActingState(I)V
    .locals 3
    .parameter

    .prologue
    .line 1003
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "transit to Acting state for simId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->logd(Ljava/lang/String;)V

    .line 1004
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->l:[Lcom/android/internal/telephony/gemini/GeminiDataConn;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/android/internal/telephony/gemini/GeminiDataConn;->transitToActingState()V

    .line 1005
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->b(I)I

    move-result v0

    .line 1006
    iget-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->p:[I

    aput p1, v1, v0

    .line 1007
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "activeModem="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", current_use_sim_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->p:[I

    aget v0, v2, v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->logd(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1011
    :goto_0
    return-void

    .line 1008
    :catch_0
    move-exception v0

    .line 1009
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "invalid simId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setGeminiDataConnStateToIdleState(I)V
    .locals 2
    .parameter

    .prologue
    .line 1015
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "transit to Idle state for simId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->logd(Ljava/lang/String;)V

    .line 1016
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->l:[Lcom/android/internal/telephony/gemini/GeminiDataConn;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/android/internal/telephony/gemini/GeminiDataConn;->transitToIdleState()V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1020
    :goto_0
    return-void

    .line 1017
    :catch_0
    move-exception v0

    .line 1018
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "invalid simId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setPsAttach(I)V
    .locals 1
    .parameter

    .prologue
    .line 1040
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->l:[Lcom/android/internal/telephony/gemini/GeminiDataConn;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/android/internal/telephony/gemini/GeminiDataConn;->setPsAttach()V

    .line 1041
    return-void
.end method

.method public unregisterForDetached(ILandroid/os/Handler;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1027
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->l:[Lcom/android/internal/telephony/gemini/GeminiDataConn;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2}, Lcom/android/internal/telephony/gemini/GeminiDataConn;->unregisterForIdle(Landroid/os/Handler;)V

    .line 1028
    return-void
.end method
