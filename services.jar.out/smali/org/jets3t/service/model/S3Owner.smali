.class public Lorg/jets3t/service/model/S3Owner;
.super Lorg/jets3t/service/model/StorageOwner;
.source "S3Owner.java"


# static fields
.field private static final serialVersionUID:J = 0x360dfc9eb72cdc22L


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lorg/jets3t/service/model/StorageOwner;-><init>()V

    .line 33
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "id"
    .parameter "displayName"

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Lorg/jets3t/service/model/StorageOwner;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    return-void
.end method
