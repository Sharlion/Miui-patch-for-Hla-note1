.class public Lcom/mediatek/simservs/client/IncomingCommunicationBarring;
.super Lcom/mediatek/simservs/client/SimservType;
.source "IncomingCommunicationBarring.java"


# static fields
.field public static final NODE_NAME:Ljava/lang/String; = "incoming-communication-barring"


# instance fields
.field mRuleSet:Lcom/mediatek/simservs/client/policy/RuleSet;


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
    .line 24
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/mediatek/simservs/client/SimservType;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/auth/Credentials;)V

    .line 25
    return-void
.end method


# virtual methods
.method public createNewRuleSet()Lcom/mediatek/simservs/client/policy/RuleSet;
    .locals 5

    .prologue
    .line 53
    new-instance v0, Lcom/mediatek/simservs/client/policy/RuleSet;

    iget-object v1, p0, Lcom/mediatek/simservs/client/IncomingCommunicationBarring;->mXcapUri:Lcom/mediatek/xcap/client/uri/XcapUri;

    const-string v2, "incoming-communication-barring"

    iget-object v3, p0, Lcom/mediatek/simservs/client/IncomingCommunicationBarring;->mIntendedId:Ljava/lang/String;

    iget-object v4, p0, Lcom/mediatek/simservs/client/IncomingCommunicationBarring;->mCredentials:Lorg/apache/http/auth/Credentials;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/mediatek/simservs/client/policy/RuleSet;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/auth/Credentials;)V

    iput-object v0, p0, Lcom/mediatek/simservs/client/IncomingCommunicationBarring;->mRuleSet:Lcom/mediatek/simservs/client/policy/RuleSet;

    .line 54
    iget-object v0, p0, Lcom/mediatek/simservs/client/IncomingCommunicationBarring;->mRuleSet:Lcom/mediatek/simservs/client/policy/RuleSet;

    return-object v0
.end method

.method protected getNodeName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    const-string v0, "incoming-communication-barring"

    return-object v0
.end method

.method public getRuleSet()Lcom/mediatek/simservs/client/policy/RuleSet;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/mediatek/simservs/client/IncomingCommunicationBarring;->mRuleSet:Lcom/mediatek/simservs/client/policy/RuleSet;

    return-object v0
.end method

.method public initServiceInstance(Lorg/w3c/dom/Document;)V
    .locals 7
    .parameter "domDoc"

    .prologue
    .line 29
    const-string v0, "cp:ruleset"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v6

    .line 30
    .local v6, ruleSetNode:Lorg/w3c/dom/NodeList;
    invoke-interface {v6}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    if-lez v0, :cond_0

    .line 31
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    check-cast v5, Lorg/w3c/dom/Element;

    .line 32
    .local v5, nruleSetElement:Lorg/w3c/dom/Element;
    new-instance v0, Lcom/mediatek/simservs/client/policy/RuleSet;

    iget-object v1, p0, Lcom/mediatek/simservs/client/IncomingCommunicationBarring;->mXcapUri:Lcom/mediatek/xcap/client/uri/XcapUri;

    const-string v2, "incoming-communication-barring"

    iget-object v3, p0, Lcom/mediatek/simservs/client/IncomingCommunicationBarring;->mIntendedId:Ljava/lang/String;

    iget-object v4, p0, Lcom/mediatek/simservs/client/IncomingCommunicationBarring;->mCredentials:Lorg/apache/http/auth/Credentials;

    invoke-direct/range {v0 .. v5}, Lcom/mediatek/simservs/client/policy/RuleSet;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/auth/Credentials;Lorg/w3c/dom/Element;)V

    iput-object v0, p0, Lcom/mediatek/simservs/client/IncomingCommunicationBarring;->mRuleSet:Lcom/mediatek/simservs/client/policy/RuleSet;

    .line 36
    .end local v5           #nruleSetElement:Lorg/w3c/dom/Element;
    :goto_0
    return-void

    .line 34
    :cond_0
    new-instance v0, Lcom/mediatek/simservs/client/policy/RuleSet;

    iget-object v1, p0, Lcom/mediatek/simservs/client/IncomingCommunicationBarring;->mXcapUri:Lcom/mediatek/xcap/client/uri/XcapUri;

    const-string v2, "incoming-communication-barring"

    iget-object v3, p0, Lcom/mediatek/simservs/client/IncomingCommunicationBarring;->mIntendedId:Ljava/lang/String;

    iget-object v4, p0, Lcom/mediatek/simservs/client/IncomingCommunicationBarring;->mCredentials:Lorg/apache/http/auth/Credentials;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/mediatek/simservs/client/policy/RuleSet;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/auth/Credentials;)V

    iput-object v0, p0, Lcom/mediatek/simservs/client/IncomingCommunicationBarring;->mRuleSet:Lcom/mediatek/simservs/client/policy/RuleSet;

    goto :goto_0
.end method

.method public saveRuleSet()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mediatek/simservs/xcap/XcapException;
        }
    .end annotation

    .prologue
    .line 48
    iget-object v1, p0, Lcom/mediatek/simservs/client/IncomingCommunicationBarring;->mRuleSet:Lcom/mediatek/simservs/client/policy/RuleSet;

    invoke-virtual {v1}, Lcom/mediatek/simservs/client/policy/RuleSet;->toXmlString()Ljava/lang/String;

    move-result-object v0

    .line 49
    .local v0, ruleXml:Ljava/lang/String;
    iget-object v1, p0, Lcom/mediatek/simservs/client/IncomingCommunicationBarring;->mRuleSet:Lcom/mediatek/simservs/client/policy/RuleSet;

    invoke-virtual {v1, v0}, Lcom/mediatek/simservs/client/policy/RuleSet;->setContent(Ljava/lang/String;)V

    .line 50
    return-void
.end method
