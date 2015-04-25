.class public Lcom/android/internal/telephony/GbaCredentials;
.super Ljava/lang/Object;
.source "GbaCredentials.java"

# interfaces
.implements Lorg/apache/http/auth/Credentials;


# static fields
.field private static final DEFAULT_UA_SECURITY_PROTOCOL_ID0:[B = null

.field private static final TAG:Ljava/lang/String; = "GbaCredentials"

.field protected static final hexArray:[C


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mNafAddress:Ljava/lang/String;

.field private mPasswd:Ljava/lang/String;

.field mService:Lcom/mediatek/common/gba/IGbaService;

.field private mUserPrincipal:Lorg/apache/http/auth/BasicUserPrincipal;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const/4 v0, 0x5

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/internal/telephony/GbaCredentials;->DEFAULT_UA_SECURITY_PROTOCOL_ID0:[B

    .line 26
    const-string v0, "0123456789abcdef"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/GbaCredentials;->hexArray:[C

    return-void

    .line 25
    nop

    :array_0
    .array-data 0x1
        0x1t
        0x0t
        0x1t
        0x0t
        0x2ft
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .parameter "context"
    .parameter "nafAddress"

    .prologue
    const/4 v2, -0x1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/android/internal/telephony/GbaCredentials;->mContext:Landroid/content/Context;

    .line 32
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2f

    if-ne v0, v1, :cond_0

    .line 33
    const/4 v0, 0x0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    .line 36
    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/GbaCredentials;->mNafAddress:Ljava/lang/String;

    .line 37
    iget-object v0, p0, Lcom/android/internal/telephony/GbaCredentials;->mNafAddress:Ljava/lang/String;

    const-string v1, "http://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v2, :cond_2

    .line 38
    const/4 v0, 0x7

    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/GbaCredentials;->mNafAddress:Ljava/lang/String;

    .line 43
    :cond_1
    :goto_0
    const-string v0, "GbaCredentials"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "nafAddress:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/GbaCredentials;->mNafAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/GbaCredentials;->mUserPrincipal:Lorg/apache/http/auth/BasicUserPrincipal;

    .line 45
    return-void

    .line 39
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/GbaCredentials;->mNafAddress:Ljava/lang/String;

    const-string v1, "https://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v2, :cond_1

    .line 40
    const/16 v0, 0x8

    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/GbaCredentials;->mNafAddress:Ljava/lang/String;

    goto :goto_0
.end method

.method private bytesToHex([B)Ljava/lang/String;
    .locals 6
    .parameter "bytes"

    .prologue
    .line 87
    array-length v3, p1

    mul-int/lit8 v3, v3, 0x2

    new-array v0, v3, [C

    .line 88
    .local v0, hexChars:[C
    const/4 v1, 0x0

    .local v1, j:I
    :goto_0
    array-length v3, p1

    if-ge v1, v3, :cond_0

    .line 89
    aget-byte v3, p1, v1

    and-int/lit16 v2, v3, 0xff

    .line 90
    .local v2, v:I
    mul-int/lit8 v3, v1, 0x2

    sget-object v4, Lcom/android/internal/telephony/GbaCredentials;->hexArray:[C

    ushr-int/lit8 v5, v2, 0x4

    aget-char v4, v4, v5

    aput-char v4, v0, v3

    .line 91
    mul-int/lit8 v3, v1, 0x2

    add-int/lit8 v3, v3, 0x1

    sget-object v4, Lcom/android/internal/telephony/GbaCredentials;->hexArray:[C

    and-int/lit8 v5, v2, 0xf

    aget-char v4, v4, v5

    aput-char v4, v0, v3

    .line 88
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 93
    .end local v2           #v:I
    :cond_0
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>([C)V

    return-object v3
.end method


# virtual methods
.method public getPassword()Ljava/lang/String;
    .locals 3

    .prologue
    .line 82
    const-string v0, "GbaCredentials"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mPasswd:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/GbaCredentials;->mPasswd:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    iget-object v0, p0, Lcom/android/internal/telephony/GbaCredentials;->mPasswd:Ljava/lang/String;

    return-object v0
.end method

.method public getUserPrincipal()Ljava/security/Principal;
    .locals 7

    .prologue
    .line 49
    const-string v3, "GbaCredentials"

    const-string v4, "getUserPrincipal"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    iget-object v3, p0, Lcom/android/internal/telephony/GbaCredentials;->mUserPrincipal:Lorg/apache/http/auth/BasicUserPrincipal;

    if-nez v3, :cond_1

    .line 51
    const-string v3, "GbaCredentials"

    const-string v4, "Run GBA procedure"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    :try_start_0
    const-string v3, "GbaService"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 55
    .local v0, b:Landroid/os/IBinder;
    if-nez v0, :cond_0

    .line 56
    const-string v3, "debug"

    const-string v4, "The binder is null"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    const/4 v3, 0x0

    .line 77
    .end local v0           #b:Landroid/os/IBinder;
    :goto_0
    return-object v3

    .line 59
    .restart local v0       #b:Landroid/os/IBinder;
    :cond_0
    invoke-static {v0}, Lcom/mediatek/common/gba/IGbaService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/common/gba/IGbaService;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/GbaCredentials;->mService:Lcom/mediatek/common/gba/IGbaService;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    .end local v0           #b:Landroid/os/IBinder;
    :goto_1
    :try_start_1
    iget-object v3, p0, Lcom/android/internal/telephony/GbaCredentials;->mService:Lcom/mediatek/common/gba/IGbaService;

    iget-object v4, p0, Lcom/android/internal/telephony/GbaCredentials;->mNafAddress:Ljava/lang/String;

    sget-object v5, Lcom/android/internal/telephony/GbaCredentials;->DEFAULT_UA_SECURITY_PROTOCOL_ID0:[B

    const/4 v6, 0x0

    invoke-interface {v3, v4, v5, v6}, Lcom/mediatek/common/gba/IGbaService;->runGbaAuthentication(Ljava/lang/String;[BZ)Lcom/mediatek/common/gba/NafSessionKey;

    move-result-object v2

    .line 66
    .local v2, nafSessionKey:Lcom/mediatek/common/gba/NafSessionKey;
    if-eqz v2, :cond_1

    .line 67
    const-string v3, "GbaCredentials"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "GBA Session Key:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    new-instance v3, Lorg/apache/http/auth/BasicUserPrincipal;

    invoke-virtual {v2}, Lcom/mediatek/common/gba/NafSessionKey;->getBtid()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/apache/http/auth/BasicUserPrincipal;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/internal/telephony/GbaCredentials;->mUserPrincipal:Lorg/apache/http/auth/BasicUserPrincipal;

    .line 69
    invoke-virtual {v2}, Lcom/mediatek/common/gba/NafSessionKey;->getKey()[B

    move-result-object v3

    const/4 v4, 0x2

    invoke-static {v3, v4}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/GbaCredentials;->mPasswd:Ljava/lang/String;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 77
    .end local v2           #nafSessionKey:Lcom/mediatek/common/gba/NafSessionKey;
    :cond_1
    :goto_2
    iget-object v3, p0, Lcom/android/internal/telephony/GbaCredentials;->mUserPrincipal:Lorg/apache/http/auth/BasicUserPrincipal;

    goto :goto_0

    .line 60
    :catch_0
    move-exception v1

    .line 61
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 73
    .end local v1           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 74
    .restart local v1       #e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 71
    .end local v1           #e:Ljava/lang/Exception;
    :catch_2
    move-exception v3

    goto :goto_2
.end method
