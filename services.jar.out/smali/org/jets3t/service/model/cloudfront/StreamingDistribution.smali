.class public Lorg/jets3t/service/model/cloudfront/StreamingDistribution;
.super Lorg/jets3t/service/model/cloudfront/Distribution;
.source "StreamingDistribution.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;Ljava/util/Map;Lorg/jets3t/service/model/cloudfront/DistributionConfig;)V
    .locals 0
    .parameter "id"
    .parameter "status"
    .parameter "lastModifiedDate"
    .parameter "domainName"
    .parameter "activeTrustedSigners"
    .parameter "config"

    .prologue
    .line 36
    invoke-direct/range {p0 .. p6}, Lorg/jets3t/service/model/cloudfront/Distribution;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;Ljava/util/Map;Lorg/jets3t/service/model/cloudfront/DistributionConfig;)V

    .line 37
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;Lorg/jets3t/service/model/cloudfront/Origin;[Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .parameter "id"
    .parameter "status"
    .parameter "lastModifiedDate"
    .parameter "domainName"
    .parameter "origin"
    .parameter "cnames"
    .parameter "comment"
    .parameter "enabled"

    .prologue
    .line 30
    invoke-direct/range {p0 .. p8}, Lorg/jets3t/service/model/cloudfront/Distribution;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;Lorg/jets3t/service/model/cloudfront/Origin;[Ljava/lang/String;Ljava/lang/String;Z)V

    .line 31
    return-void
.end method
