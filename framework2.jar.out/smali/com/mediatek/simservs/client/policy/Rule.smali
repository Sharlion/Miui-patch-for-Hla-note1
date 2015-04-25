.class public Lcom/mediatek/simservs/client/policy/Rule;
.super Lcom/mediatek/simservs/xcap/XcapElement;
.source "Rule.java"

# interfaces
.implements Lcom/mediatek/simservs/xcap/ConfigureType;


# static fields
.field public static final NODE_NAME:Ljava/lang/String; = "cp:rule"


# instance fields
.field public mActions:Lcom/mediatek/simservs/client/policy/Actions;

.field public mConditions:Lcom/mediatek/simservs/client/policy/Conditions;

.field public mId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/auth/Credentials;)V
    .locals 1
    .parameter "xcapUri"
    .parameter "parentUri"
    .parameter "intendedId"
    .parameter "credential"

    .prologue
    .line 25
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/mediatek/simservs/xcap/XcapElement;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/auth/Credentials;)V

    .line 20
    const-string v0, "none"

    iput-object v0, p0, Lcom/mediatek/simservs/client/policy/Rule;->mId:Ljava/lang/String;

    .line 26
    return-void
.end method

.method public constructor <init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/auth/Credentials;Lorg/w3c/dom/Element;)V
    .locals 1
    .parameter "xcapUri"
    .parameter "parentUri"
    .parameter "intendedId"
    .parameter "credential"
    .parameter "domElement"

    .prologue
    .line 30
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/mediatek/simservs/xcap/XcapElement;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/auth/Credentials;)V

    .line 20
    const-string v0, "none"

    iput-object v0, p0, Lcom/mediatek/simservs/client/policy/Rule;->mId:Ljava/lang/String;

    .line 31
    invoke-virtual {p0, p5}, Lcom/mediatek/simservs/client/policy/Rule;->instantiateFromXmlNode(Lorg/w3c/dom/Node;)V

    .line 32
    return-void
.end method


# virtual methods
.method public createActions()Lcom/mediatek/simservs/client/policy/Actions;
    .locals 5

    .prologue
    .line 73
    iget-object v0, p0, Lcom/mediatek/simservs/client/policy/Rule;->mActions:Lcom/mediatek/simservs/client/policy/Actions;

    if-nez v0, :cond_0

    .line 74
    new-instance v0, Lcom/mediatek/simservs/client/policy/Actions;

    iget-object v1, p0, Lcom/mediatek/simservs/client/policy/Rule;->mXcapUri:Lcom/mediatek/xcap/client/uri/XcapUri;

    const-string v2, "cp:rule"

    iget-object v3, p0, Lcom/mediatek/simservs/client/policy/Rule;->mIntendedId:Ljava/lang/String;

    iget-object v4, p0, Lcom/mediatek/simservs/client/policy/Rule;->mCredentials:Lorg/apache/http/auth/Credentials;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/mediatek/simservs/client/policy/Actions;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/auth/Credentials;)V

    iput-object v0, p0, Lcom/mediatek/simservs/client/policy/Rule;->mActions:Lcom/mediatek/simservs/client/policy/Actions;

    .line 76
    :cond_0
    iget-object v0, p0, Lcom/mediatek/simservs/client/policy/Rule;->mActions:Lcom/mediatek/simservs/client/policy/Actions;

    return-object v0
.end method

.method public createConditions()Lcom/mediatek/simservs/client/policy/Conditions;
    .locals 5

    .prologue
    .line 80
    iget-object v0, p0, Lcom/mediatek/simservs/client/policy/Rule;->mConditions:Lcom/mediatek/simservs/client/policy/Conditions;

    if-nez v0, :cond_0

    .line 81
    new-instance v0, Lcom/mediatek/simservs/client/policy/Conditions;

    iget-object v1, p0, Lcom/mediatek/simservs/client/policy/Rule;->mXcapUri:Lcom/mediatek/xcap/client/uri/XcapUri;

    const-string v2, "cp:rule"

    iget-object v3, p0, Lcom/mediatek/simservs/client/policy/Rule;->mIntendedId:Ljava/lang/String;

    iget-object v4, p0, Lcom/mediatek/simservs/client/policy/Rule;->mCredentials:Lorg/apache/http/auth/Credentials;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/mediatek/simservs/client/policy/Conditions;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/auth/Credentials;)V

    iput-object v0, p0, Lcom/mediatek/simservs/client/policy/Rule;->mConditions:Lcom/mediatek/simservs/client/policy/Conditions;

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/mediatek/simservs/client/policy/Rule;->mConditions:Lcom/mediatek/simservs/client/policy/Conditions;

    return-object v0
.end method

.method public getActions()Lcom/mediatek/simservs/client/policy/Actions;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/mediatek/simservs/client/policy/Rule;->mActions:Lcom/mediatek/simservs/client/policy/Actions;

    return-object v0
.end method

.method public getConditions()Lcom/mediatek/simservs/client/policy/Conditions;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/mediatek/simservs/client/policy/Rule;->mConditions:Lcom/mediatek/simservs/client/policy/Conditions;

    return-object v0
.end method

.method protected getNodeName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    const-string v0, "cp:rule"

    return-object v0
.end method

.method public instantiateFromXmlNode(Lorg/w3c/dom/Node;)V
    .locals 10
    .parameter "domNode"

    .prologue
    const/4 v9, 0x0

    .line 41
    move-object v8, p1

    check-cast v8, Lorg/w3c/dom/Element;

    .line 42
    .local v8, domElement:Lorg/w3c/dom/Element;
    const-string v0, "id"

    invoke-interface {v8, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/simservs/client/policy/Rule;->mId:Ljava/lang/String;

    .line 43
    const-string v0, "cp:conditions"

    invoke-interface {v8, v0}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v7

    .line 44
    .local v7, conditionsNode:Lorg/w3c/dom/NodeList;
    invoke-interface {v7}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    if-lez v0, :cond_0

    .line 45
    new-instance v0, Lcom/mediatek/simservs/client/policy/Conditions;

    iget-object v1, p0, Lcom/mediatek/simservs/client/policy/Rule;->mXcapUri:Lcom/mediatek/xcap/client/uri/XcapUri;

    const-string v2, "cp:rule"

    iget-object v3, p0, Lcom/mediatek/simservs/client/policy/Rule;->mIntendedId:Ljava/lang/String;

    iget-object v4, p0, Lcom/mediatek/simservs/client/policy/Rule;->mCredentials:Lorg/apache/http/auth/Credentials;

    invoke-interface {v7, v9}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    check-cast v5, Lorg/w3c/dom/Element;

    invoke-direct/range {v0 .. v5}, Lcom/mediatek/simservs/client/policy/Conditions;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/auth/Credentials;Lorg/w3c/dom/Element;)V

    iput-object v0, p0, Lcom/mediatek/simservs/client/policy/Rule;->mConditions:Lcom/mediatek/simservs/client/policy/Conditions;

    .line 49
    :cond_0
    const-string v0, "cp:actions"

    invoke-interface {v8, v0}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v6

    .line 50
    .local v6, actionsNode:Lorg/w3c/dom/NodeList;
    invoke-interface {v6}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    if-lez v0, :cond_1

    .line 51
    new-instance v0, Lcom/mediatek/simservs/client/policy/Actions;

    iget-object v1, p0, Lcom/mediatek/simservs/client/policy/Rule;->mXcapUri:Lcom/mediatek/xcap/client/uri/XcapUri;

    const-string v2, "cp:rule"

    iget-object v3, p0, Lcom/mediatek/simservs/client/policy/Rule;->mIntendedId:Ljava/lang/String;

    iget-object v4, p0, Lcom/mediatek/simservs/client/policy/Rule;->mCredentials:Lorg/apache/http/auth/Credentials;

    invoke-interface {v6, v9}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    check-cast v5, Lorg/w3c/dom/Element;

    invoke-direct/range {v0 .. v5}, Lcom/mediatek/simservs/client/policy/Actions;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/auth/Credentials;Lorg/w3c/dom/Element;)V

    iput-object v0, p0, Lcom/mediatek/simservs/client/policy/Rule;->mActions:Lcom/mediatek/simservs/client/policy/Actions;

    .line 54
    :cond_1
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .parameter "id"

    .prologue
    .line 87
    iput-object p1, p0, Lcom/mediatek/simservs/client/policy/Rule;->mId:Ljava/lang/String;

    .line 88
    return-void
.end method

.method public toXmlElement(Lorg/w3c/dom/Document;)Lorg/w3c/dom/Element;
    .locals 5
    .parameter "document"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 57
    const-string v3, "cp:rule"

    invoke-interface {p1, v3}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v2

    .line 58
    .local v2, ruleElement:Lorg/w3c/dom/Element;
    const-string v3, "id"

    iget-object v4, p0, Lcom/mediatek/simservs/client/policy/Rule;->mId:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    iget-object v3, p0, Lcom/mediatek/simservs/client/policy/Rule;->mConditions:Lcom/mediatek/simservs/client/policy/Conditions;

    if-eqz v3, :cond_0

    .line 61
    iget-object v3, p0, Lcom/mediatek/simservs/client/policy/Rule;->mConditions:Lcom/mediatek/simservs/client/policy/Conditions;

    invoke-virtual {v3, p1}, Lcom/mediatek/simservs/client/policy/Conditions;->toXmlElement(Lorg/w3c/dom/Document;)Lorg/w3c/dom/Element;

    move-result-object v1

    .line 62
    .local v1, conditionsElement:Lorg/w3c/dom/Element;
    invoke-interface {v2, v1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 65
    .end local v1           #conditionsElement:Lorg/w3c/dom/Element;
    :cond_0
    iget-object v3, p0, Lcom/mediatek/simservs/client/policy/Rule;->mActions:Lcom/mediatek/simservs/client/policy/Actions;

    if-eqz v3, :cond_1

    .line 66
    iget-object v3, p0, Lcom/mediatek/simservs/client/policy/Rule;->mActions:Lcom/mediatek/simservs/client/policy/Actions;

    invoke-virtual {v3, p1}, Lcom/mediatek/simservs/client/policy/Actions;->toXmlElement(Lorg/w3c/dom/Document;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 67
    .local v0, actionsElement:Lorg/w3c/dom/Element;
    invoke-interface {v2, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 69
    .end local v0           #actionsElement:Lorg/w3c/dom/Element;
    :cond_1
    return-object v2
.end method
