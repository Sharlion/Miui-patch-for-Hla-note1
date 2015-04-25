.class public Lcom/mediatek/simservs/client/TerminatingIdentityPresentation;
.super Lcom/mediatek/simservs/client/SimservType;
.source "TerminatingIdentityPresentation.java"


# static fields
.field public static final NODE_NAME:Ljava/lang/String; = "terminating-identity-presentation"


# direct methods
.method public constructor <init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/auth/Credentials;)V
    .locals 0
    .parameter "documentUri"
    .parameter "parentUri"
    .parameter "intendedId"
    .parameter "credential"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mediatek/simservs/xcap/XcapException;,
            Ljavax/xml/parsers/ParserConfigurationException;
        }
    .end annotation

    .prologue
    .line 20
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/mediatek/simservs/client/SimservType;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/auth/Credentials;)V

    .line 21
    return-void
.end method


# virtual methods
.method protected getNodeName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    const-string v0, "terminating-identity-presentation"

    return-object v0
.end method

.method public initServiceInstance(Lorg/w3c/dom/Document;)V
    .locals 0
    .parameter "domDoc"

    .prologue
    .line 26
    return-void
.end method
