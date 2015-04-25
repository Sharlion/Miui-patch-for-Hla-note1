.class public Lorg/jets3t/service/model/cloudfront/StreamingDistributionConfig;
.super Lorg/jets3t/service/model/cloudfront/DistributionConfig;
.source "StreamingDistributionConfig.java"


# direct methods
.method public constructor <init>(Lorg/jets3t/service/model/cloudfront/Origin;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;ZLorg/jets3t/service/model/cloudfront/LoggingStatus;)V
    .locals 11
    .parameter "origin"
    .parameter "callerReference"
    .parameter "cnames"
    .parameter "comment"
    .parameter "enabled"
    .parameter "loggingStatus"

    .prologue
    .line 38
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    invoke-direct/range {v0 .. v10}, Lorg/jets3t/service/model/cloudfront/DistributionConfig;-><init>(Lorg/jets3t/service/model/cloudfront/Origin;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;ZLorg/jets3t/service/model/cloudfront/LoggingStatus;Z[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    return-void
.end method

.method public constructor <init>(Lorg/jets3t/service/model/cloudfront/Origin;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;ZLorg/jets3t/service/model/cloudfront/LoggingStatus;Z[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 11
    .parameter "origin"
    .parameter "callerReference"
    .parameter "cnames"
    .parameter "comment"
    .parameter "enabled"
    .parameter "loggingStatus"
    .parameter "trustedSignerSelf"
    .parameter "trustedSignerAwsAccountNumbers"
    .parameter "requiredProtocols"

    .prologue
    .line 30
    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    invoke-direct/range {v0 .. v10}, Lorg/jets3t/service/model/cloudfront/DistributionConfig;-><init>(Lorg/jets3t/service/model/cloudfront/Origin;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;ZLorg/jets3t/service/model/cloudfront/LoggingStatus;Z[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    return-void
.end method
