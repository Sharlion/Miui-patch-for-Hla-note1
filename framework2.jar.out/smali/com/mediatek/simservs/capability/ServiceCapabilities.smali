.class public Lcom/mediatek/simservs/capability/ServiceCapabilities;
.super Lcom/mediatek/simservs/xcap/XcapElement;
.source "ServiceCapabilities.java"


# static fields
.field public static final ATT_PROVISIONED:Ljava/lang/String; = "provisioned"


# direct methods
.method public constructor <init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/auth/Credentials;)V
    .locals 0
    .parameter "xcapUri"
    .parameter "parentUri"
    .parameter "intendedId"
    .parameter "credential"

    .prologue
    .line 17
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/mediatek/simservs/xcap/XcapElement;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/auth/Credentials;)V

    .line 18
    return-void
.end method


# virtual methods
.method protected getNodeName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    const/4 v0, 0x0

    return-object v0
.end method
