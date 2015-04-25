.class public Landroid/security/KeyStore;
.super Ljava/lang/Object;
.source "KeyStore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/security/KeyStore$State;
    }
.end annotation


# static fields
.field public static final ACTION_KEYSTORE_RESET:Ljava/lang/String; = "com.mediatek.android.keystore.action.KEYSTORE_RESET"

.field public static final FLAG_ENCRYPTED:I = 0x1

.field public static final FLAG_NONE:I = 0x0

.field public static final KEY_NOT_FOUND:I = 0x7

.field public static final LOCKED:I = 0x2

.field public static final NO_ERROR:I = 0x1

.field public static final PERMISSION_DENIED:I = 0x6

.field public static final PROTOCOL_ERROR:I = 0x5

.field public static final SYSTEM_ERROR:I = 0x4

.field private static final TAG:Ljava/lang/String; = "KeyStore"

.field public static final UID_SELF:I = -0x1

.field public static final UNDEFINED_ACTION:I = 0x9

.field public static final UNINITIALIZED:I = 0x3

.field public static final VALUE_CORRUPTED:I = 0x8

.field public static final WRONG_PASSWORD:I = 0xa


# instance fields
.field private final mBinder:Landroid/security/IKeystoreService;

.field private mContext:Landroid/content/Context;

.field private mError:I


# direct methods
.method private constructor <init>(Landroid/security/IKeystoreService;)V
    .locals 2
    .parameter "binder"

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    const/4 v1, 0x1

    iput v1, p0, Landroid/security/KeyStore;->mError:I

    .line 70
    iput-object p1, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    .line 73
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    .line 74
    .local v0, caller:Landroid/app/ActivityThread;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v1

    :goto_0
    iput-object v1, p0, Landroid/security/KeyStore;->mContext:Landroid/content/Context;

    .line 76
    return-void

    .line 74
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getInstance()Landroid/security/KeyStore;
    .locals 2

    .prologue
    .line 79
    const-string v1, "android.security.keystore"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/security/IKeystoreService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/security/IKeystoreService;

    move-result-object v0

    .line 81
    .local v0, keystore:Landroid/security/IKeystoreService;
    new-instance v1, Landroid/security/KeyStore;

    invoke-direct {v1, v0}, Landroid/security/KeyStore;-><init>(Landroid/security/IKeystoreService;)V

    return-object v1
.end method

.method static getKeyTypeForAlgorithm(Ljava/lang/String;)I
    .locals 3
    .parameter "keyType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 85
    const-string v0, "RSA"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    const/4 v0, 0x6

    .line 90
    :goto_0
    return v0

    .line 87
    :cond_0
    const-string v0, "DSA"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 88
    const/16 v0, 0x74

    goto :goto_0

    .line 89
    :cond_1
    const-string v0, "EC"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 90
    const/16 v0, 0x198

    goto :goto_0

    .line 92
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported key type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public clearUid(I)Z
    .locals 6
    .parameter "uid"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 349
    :try_start_0
    iget-object v3, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    int-to-long v4, p1

    invoke-interface {v3, v4, v5}, Landroid/security/IKeystoreService;->clear_uid(J)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-ne v3, v1, :cond_0

    .line 352
    :goto_0
    return v1

    :cond_0
    move v1, v2

    .line 349
    goto :goto_0

    .line 350
    :catch_0
    move-exception v0

    .line 351
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "KeyStore"

    const-string v3, "Cannot connect to keystore"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v1, v2

    .line 352
    goto :goto_0
.end method

.method public contains(Ljava/lang/String;)Z
    .locals 1
    .parameter "key"

    .prologue
    .line 158
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Landroid/security/KeyStore;->contains(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public contains(Ljava/lang/String;I)Z
    .locals 4
    .parameter "key"
    .parameter "uid"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 150
    :try_start_0
    iget-object v3, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    invoke-interface {v3, p1, p2}, Landroid/security/IKeystoreService;->exist(Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-ne v3, v1, :cond_0

    .line 153
    :goto_0
    return v1

    :cond_0
    move v1, v2

    .line 150
    goto :goto_0

    .line 151
    :catch_0
    move-exception v0

    .line 152
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "KeyStore"

    const-string v3, "Cannot connect to keystore"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v1, v2

    .line 153
    goto :goto_0
.end method

.method public delKey(Ljava/lang/String;)Z
    .locals 1
    .parameter "key"

    .prologue
    .line 267
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Landroid/security/KeyStore;->delKey(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public delKey(Ljava/lang/String;I)Z
    .locals 4
    .parameter "key"
    .parameter "uid"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 259
    :try_start_0
    iget-object v3, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    invoke-interface {v3, p1, p2}, Landroid/security/IKeystoreService;->del_key(Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-ne v3, v1, :cond_0

    .line 262
    :goto_0
    return v1

    :cond_0
    move v1, v2

    .line 259
    goto :goto_0

    .line 260
    :catch_0
    move-exception v0

    .line 261
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "KeyStore"

    const-string v3, "Cannot connect to keystore"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v1, v2

    .line 262
    goto :goto_0
.end method

.method public delete(Ljava/lang/String;)Z
    .locals 1
    .parameter "key"

    .prologue
    .line 145
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Landroid/security/KeyStore;->delete(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public delete(Ljava/lang/String;I)Z
    .locals 4
    .parameter "key"
    .parameter "uid"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 137
    :try_start_0
    iget-object v3, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    invoke-interface {v3, p1, p2}, Landroid/security/IKeystoreService;->del(Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-ne v3, v1, :cond_0

    .line 140
    :goto_0
    return v1

    :cond_0
    move v1, v2

    .line 137
    goto :goto_0

    .line 138
    :catch_0
    move-exception v0

    .line 139
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "KeyStore"

    const-string v3, "Cannot connect to keystore"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v1, v2

    .line 140
    goto :goto_0
.end method

.method public duplicate(Ljava/lang/String;ILjava/lang/String;I)Z
    .locals 4
    .parameter "srcKey"
    .parameter "srcUid"
    .parameter "destKey"
    .parameter "destUid"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 326
    :try_start_0
    iget-object v3, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    invoke-interface {v3, p1, p2, p3, p4}, Landroid/security/IKeystoreService;->duplicate(Ljava/lang/String;ILjava/lang/String;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-ne v3, v1, :cond_0

    .line 329
    :goto_0
    return v1

    :cond_0
    move v1, v2

    .line 326
    goto :goto_0

    .line 327
    :catch_0
    move-exception v0

    .line 328
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "KeyStore"

    const-string v3, "Cannot connect to keystore"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v1, v2

    .line 329
    goto :goto_0
.end method

.method public generate(Ljava/lang/String;IIII[[B)Z
    .locals 8
    .parameter "key"
    .parameter "uid"
    .parameter "keyType"
    .parameter "keySize"
    .parameter "flags"
    .parameter "args"

    .prologue
    .line 232
    :try_start_0
    iget-object v0, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Landroid/security/IKeystoreService;->generate(Ljava/lang/String;IIII[[B)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    .line 235
    :goto_0
    return v0

    .line 232
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 233
    :catch_0
    move-exception v7

    .line 234
    .local v7, e:Landroid/os/RemoteException;
    const-string v0, "KeyStore"

    const-string v1, "Cannot connect to keystore"

    invoke-static {v0, v1, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 235
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public get(Ljava/lang/String;)[B
    .locals 3
    .parameter "key"

    .prologue
    .line 119
    :try_start_0
    iget-object v1, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    invoke-interface {v1, p1}, Landroid/security/IKeystoreService;->get(Ljava/lang/String;)[B
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 122
    :goto_0
    return-object v1

    .line 120
    :catch_0
    move-exception v0

    .line 121
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "KeyStore"

    const-string v2, "Cannot connect to keystore"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 122
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getLastError()I
    .locals 1

    .prologue
    .line 357
    iget v0, p0, Landroid/security/KeyStore;->mError:I

    return v0
.end method

.method public getPubkey(Ljava/lang/String;)[B
    .locals 3
    .parameter "key"

    .prologue
    .line 250
    :try_start_0
    iget-object v1, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    invoke-interface {v1, p1}, Landroid/security/IKeystoreService;->get_pubkey(Ljava/lang/String;)[B
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 253
    :goto_0
    return-object v1

    .line 251
    :catch_0
    move-exception v0

    .line 252
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "KeyStore"

    const-string v2, "Cannot connect to keystore"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 253
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getmtime(Ljava/lang/String;)J
    .locals 7
    .parameter "key"

    .prologue
    const-wide/16 v3, -0x1

    .line 312
    :try_start_0
    iget-object v5, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    invoke-interface {v5, p1}, Landroid/security/IKeystoreService;->getmtime(Ljava/lang/String;)J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    .line 313
    .local v1, millis:J
    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    .line 320
    .end local v1           #millis:J
    :goto_0
    return-wide v3

    .line 317
    .restart local v1       #millis:J
    :cond_0
    const-wide/16 v3, 0x3e8

    mul-long/2addr v3, v1

    goto :goto_0

    .line 318
    .end local v1           #millis:J
    :catch_0
    move-exception v0

    .line 319
    .local v0, e:Landroid/os/RemoteException;
    const-string v5, "KeyStore"

    const-string v6, "Cannot connect to keystore"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public grant(Ljava/lang/String;I)Z
    .locals 4
    .parameter "key"
    .parameter "uid"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 290
    :try_start_0
    iget-object v3, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    invoke-interface {v3, p1, p2}, Landroid/security/IKeystoreService;->grant(Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-ne v3, v1, :cond_0

    .line 293
    :goto_0
    return v1

    :cond_0
    move v1, v2

    .line 290
    goto :goto_0

    .line 291
    :catch_0
    move-exception v0

    .line 292
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "KeyStore"

    const-string v3, "Cannot connect to keystore"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v1, v2

    .line 293
    goto :goto_0
.end method

.method public importKey(Ljava/lang/String;[BII)Z
    .locals 4
    .parameter "keyName"
    .parameter "key"
    .parameter "uid"
    .parameter "flags"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 241
    :try_start_0
    iget-object v3, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    invoke-interface {v3, p1, p2, p3, p4}, Landroid/security/IKeystoreService;->import_key(Ljava/lang/String;[BII)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-ne v3, v1, :cond_0

    .line 244
    :goto_0
    return v1

    :cond_0
    move v1, v2

    .line 241
    goto :goto_0

    .line 242
    :catch_0
    move-exception v0

    .line 243
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "KeyStore"

    const-string v3, "Cannot connect to keystore"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v1, v2

    .line 244
    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 222
    :try_start_0
    iget-object v2, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    invoke-interface {v2}, Landroid/security/IKeystoreService;->zero()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    const/4 v3, 0x7

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    .line 225
    :cond_0
    :goto_0
    return v1

    .line 223
    :catch_0
    move-exception v0

    .line 224
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "KeyStore"

    const-string v3, "Cannot connect to keystore"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public isHardwareBacked()Z
    .locals 1

    .prologue
    .line 335
    const-string v0, "RSA"

    invoke-virtual {p0, v0}, Landroid/security/KeyStore;->isHardwareBacked(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isHardwareBacked(Ljava/lang/String;)Z
    .locals 5
    .parameter "keyType"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 340
    :try_start_0
    iget-object v3, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v4}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Landroid/security/IKeystoreService;->is_hardware_backed(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-ne v3, v1, :cond_0

    .line 343
    :goto_0
    return v1

    :cond_0
    move v1, v2

    .line 340
    goto :goto_0

    .line 341
    :catch_0
    move-exception v0

    .line 342
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "KeyStore"

    const-string v3, "Cannot connect to keystore"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v1, v2

    .line 343
    goto :goto_0
.end method

.method public isUnlocked()Z
    .locals 2

    .prologue
    .line 114
    invoke-virtual {p0}, Landroid/security/KeyStore;->state()Landroid/security/KeyStore$State;

    move-result-object v0

    sget-object v1, Landroid/security/KeyStore$State;->UNLOCKED:Landroid/security/KeyStore$State;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public lock()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 203
    :try_start_0
    iget-object v3, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    invoke-interface {v3}, Landroid/security/IKeystoreService;->lock()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-ne v3, v1, :cond_0

    .line 206
    :goto_0
    return v1

    :cond_0
    move v1, v2

    .line 203
    goto :goto_0

    .line 204
    :catch_0
    move-exception v0

    .line 205
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "KeyStore"

    const-string v3, "Cannot connect to keystore"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v1, v2

    .line 206
    goto :goto_0
.end method

.method public password(Ljava/lang/String;)Z
    .locals 4
    .parameter "password"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 194
    :try_start_0
    iget-object v3, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    invoke-interface {v3, p1}, Landroid/security/IKeystoreService;->password(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-ne v3, v1, :cond_0

    .line 197
    :goto_0
    return v1

    :cond_0
    move v1, v2

    .line 194
    goto :goto_0

    .line 195
    :catch_0
    move-exception v0

    .line 196
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "KeyStore"

    const-string v3, "Cannot connect to keystore"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v1, v2

    .line 197
    goto :goto_0
.end method

.method public put(Ljava/lang/String;[BII)Z
    .locals 4
    .parameter "key"
    .parameter "value"
    .parameter "uid"
    .parameter "flags"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 128
    :try_start_0
    iget-object v3, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    invoke-interface {v3, p1, p2, p3, p4}, Landroid/security/IKeystoreService;->insert(Ljava/lang/String;[BII)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-ne v3, v1, :cond_0

    .line 131
    :goto_0
    return v1

    :cond_0
    move v1, v2

    .line 128
    goto :goto_0

    .line 129
    :catch_0
    move-exception v0

    .line 130
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "KeyStore"

    const-string v3, "Cannot connect to keystore"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v1, v2

    .line 131
    goto :goto_0
.end method

.method public reset()Z
    .locals 6

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 175
    const/4 v2, 0x0

    .line 177
    .local v2, result:Z
    :try_start_0
    iget-object v5, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    invoke-interface {v5}, Landroid/security/IKeystoreService;->reset()I

    move-result v5

    if-ne v5, v4, :cond_1

    move v2, v4

    .line 179
    :goto_0
    if-eqz v2, :cond_0

    .line 180
    iget-object v4, p0, Landroid/security/KeyStore;->mContext:Landroid/content/Context;

    if-eqz v4, :cond_0

    .line 181
    new-instance v1, Landroid/content/Intent;

    const-string v4, "com.mediatek.android.keystore.action.KEYSTORE_RESET"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 182
    .local v1, intent:Landroid/content/Intent;
    iget-object v4, p0, Landroid/security/KeyStore;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1           #intent:Landroid/content/Intent;
    :cond_0
    move v3, v2

    .line 189
    :goto_1
    return v3

    :cond_1
    move v2, v3

    .line 177
    goto :goto_0

    .line 185
    :catch_0
    move-exception v0

    .line 186
    .local v0, e:Landroid/os/RemoteException;
    const-string v4, "KeyStore"

    const-string v5, "Cannot connect to keystore"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public saw(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .parameter "prefix"

    .prologue
    .line 171
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Landroid/security/KeyStore;->saw(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public saw(Ljava/lang/String;I)[Ljava/lang/String;
    .locals 3
    .parameter "prefix"
    .parameter "uid"

    .prologue
    .line 163
    :try_start_0
    iget-object v1, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    invoke-interface {v1, p1, p2}, Landroid/security/IKeystoreService;->saw(Ljava/lang/String;I)[Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 166
    :goto_0
    return-object v1

    .line 164
    :catch_0
    move-exception v0

    .line 165
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "KeyStore"

    const-string v2, "Cannot connect to keystore"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 166
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public sign(Ljava/lang/String;[B)[B
    .locals 3
    .parameter "key"
    .parameter "data"

    .prologue
    .line 272
    :try_start_0
    iget-object v1, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    invoke-interface {v1, p1, p2}, Landroid/security/IKeystoreService;->sign(Ljava/lang/String;[B)[B
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 275
    :goto_0
    return-object v1

    .line 273
    :catch_0
    move-exception v0

    .line 274
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "KeyStore"

    const-string v2, "Cannot connect to keystore"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 275
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public state()Landroid/security/KeyStore$State;
    .locals 4

    .prologue
    .line 99
    :try_start_0
    iget-object v2, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    invoke-interface {v2}, Landroid/security/IKeystoreService;->test()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 105
    .local v1, ret:I
    packed-switch v1, :pswitch_data_0

    .line 109
    new-instance v2, Ljava/lang/AssertionError;

    iget v3, p0, Landroid/security/KeyStore;->mError:I

    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(I)V

    throw v2

    .line 100
    .end local v1           #ret:I
    :catch_0
    move-exception v0

    .line 101
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "KeyStore"

    const-string v3, "Cannot connect to keystore"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 102
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    .line 106
    .end local v0           #e:Landroid/os/RemoteException;
    .restart local v1       #ret:I
    :pswitch_0
    sget-object v2, Landroid/security/KeyStore$State;->UNLOCKED:Landroid/security/KeyStore$State;

    .line 108
    :goto_0
    return-object v2

    .line 107
    :pswitch_1
    sget-object v2, Landroid/security/KeyStore$State;->LOCKED:Landroid/security/KeyStore$State;

    goto :goto_0

    .line 108
    :pswitch_2
    sget-object v2, Landroid/security/KeyStore$State;->UNINITIALIZED:Landroid/security/KeyStore$State;

    goto :goto_0

    .line 105
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public ungrant(Ljava/lang/String;I)Z
    .locals 4
    .parameter "key"
    .parameter "uid"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 299
    :try_start_0
    iget-object v3, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    invoke-interface {v3, p1, p2}, Landroid/security/IKeystoreService;->ungrant(Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-ne v3, v1, :cond_0

    .line 302
    :goto_0
    return v1

    :cond_0
    move v1, v2

    .line 299
    goto :goto_0

    .line 300
    :catch_0
    move-exception v0

    .line 301
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "KeyStore"

    const-string v3, "Cannot connect to keystore"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v1, v2

    .line 302
    goto :goto_0
.end method

.method public unlock(Ljava/lang/String;)Z
    .locals 4
    .parameter "password"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 212
    :try_start_0
    iget-object v3, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    invoke-interface {v3, p1}, Landroid/security/IKeystoreService;->unlock(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Landroid/security/KeyStore;->mError:I

    .line 213
    iget v3, p0, Landroid/security/KeyStore;->mError:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v3, v1, :cond_0

    .line 216
    :goto_0
    return v1

    :cond_0
    move v1, v2

    .line 213
    goto :goto_0

    .line 214
    :catch_0
    move-exception v0

    .line 215
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "KeyStore"

    const-string v3, "Cannot connect to keystore"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v1, v2

    .line 216
    goto :goto_0
.end method

.method public verify(Ljava/lang/String;[B[B)Z
    .locals 4
    .parameter "key"
    .parameter "data"
    .parameter "signature"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 281
    :try_start_0
    iget-object v3, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    invoke-interface {v3, p1, p2, p3}, Landroid/security/IKeystoreService;->verify(Ljava/lang/String;[B[B)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-ne v3, v1, :cond_0

    .line 284
    :goto_0
    return v1

    :cond_0
    move v1, v2

    .line 281
    goto :goto_0

    .line 282
    :catch_0
    move-exception v0

    .line 283
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "KeyStore"

    const-string v3, "Cannot connect to keystore"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v1, v2

    .line 284
    goto :goto_0
.end method
