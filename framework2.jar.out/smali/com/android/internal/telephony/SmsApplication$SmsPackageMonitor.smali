.class final Lcom/android/internal/telephony/SmsApplication$SmsPackageMonitor;
.super Lcom/android/internal/content/PackageMonitor;
.source "SmsApplication.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/SmsApplication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SmsPackageMonitor"
.end annotation


# instance fields
.field final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 520
    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    .line 521
    iput-object p1, p0, Lcom/android/internal/telephony/SmsApplication$SmsPackageMonitor;->mContext:Landroid/content/Context;

    .line 522
    return-void
.end method

.method private onPackageChanged(Ljava/lang/String;)V
    .locals 4
    .parameter "packageName"

    .prologue
    .line 540
    iget-object v2, p0, Lcom/android/internal/telephony/SmsApplication$SmsPackageMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 542
    .local v1, packageManager:Landroid/content/pm/PackageManager;
    iget-object v2, p0, Lcom/android/internal/telephony/SmsApplication$SmsPackageMonitor;->mContext:Landroid/content/Context;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/android/internal/telephony/SmsApplication;->getDefaultSendToApplication(Landroid/content/Context;Z)Landroid/content/ComponentName;

    move-result-object v0

    .line 543
    .local v0, componentName:Landroid/content/ComponentName;
    if-eqz v0, :cond_0

    .line 544
    #calls: Lcom/android/internal/telephony/SmsApplication;->configurePreferredActivity(Landroid/content/pm/PackageManager;Landroid/content/ComponentName;)V
    invoke-static {v1, v0}, Lcom/android/internal/telephony/SmsApplication;->access$000(Landroid/content/pm/PackageManager;Landroid/content/ComponentName;)V

    .line 546
    :cond_0
    return-void
.end method


# virtual methods
.method public onPackageAppeared(Ljava/lang/String;I)V
    .locals 0
    .parameter "packageName"
    .parameter "reason"

    .prologue
    .line 531
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SmsApplication$SmsPackageMonitor;->onPackageChanged(Ljava/lang/String;)V

    .line 532
    return-void
.end method

.method public onPackageDisappeared(Ljava/lang/String;I)V
    .locals 0
    .parameter "packageName"
    .parameter "reason"

    .prologue
    .line 526
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SmsApplication$SmsPackageMonitor;->onPackageChanged(Ljava/lang/String;)V

    .line 527
    return-void
.end method

.method public onPackageModified(Ljava/lang/String;)V
    .locals 0
    .parameter "packageName"

    .prologue
    .line 536
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SmsApplication$SmsPackageMonitor;->onPackageChanged(Ljava/lang/String;)V

    .line 537
    return-void
.end method
