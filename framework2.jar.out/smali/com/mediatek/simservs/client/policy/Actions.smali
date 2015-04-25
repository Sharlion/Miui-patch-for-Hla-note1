.class public Lcom/mediatek/simservs/client/policy/Actions;
.super Lcom/mediatek/simservs/xcap/XcapElement;
.source "Actions.java"

# interfaces
.implements Lcom/mediatek/simservs/xcap/ConfigureType;


# static fields
.field public static final NODE_NAME:Ljava/lang/String; = "cp:actions"

.field static final TAG_ALLOW:Ljava/lang/String; = "allow"


# instance fields
.field public mAllow:Z

.field public mForwardTo:Lcom/mediatek/simservs/client/policy/ForwardTo;


# direct methods
.method public constructor <init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/auth/Credentials;)V
    .locals 0
    .parameter "xcapUri"
    .parameter "parentUri"
    .parameter "intendedId"
    .parameter "credential"

    .prologue
    .line 25
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/mediatek/simservs/xcap/XcapElement;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/auth/Credentials;)V

    .line 26
    return-void
.end method

.method public constructor <init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/auth/Credentials;Lorg/w3c/dom/Element;)V
    .locals 0
    .parameter "xcapUri"
    .parameter "parentUri"
    .parameter "intendedId"
    .parameter "credential"
    .parameter "domElement"

    .prologue
    .line 30
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/mediatek/simservs/xcap/XcapElement;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/auth/Credentials;)V

    .line 31
    invoke-virtual {p0, p5}, Lcom/mediatek/simservs/client/policy/Actions;->instantiateFromXmlNode(Lorg/w3c/dom/Node;)V

    .line 32
    return-void
.end method


# virtual methods
.method public getFowardTo()Lcom/mediatek/simservs/client/policy/ForwardTo;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/mediatek/simservs/client/policy/Actions;->mForwardTo:Lcom/mediatek/simservs/client/policy/ForwardTo;

    return-object v0
.end method

.method protected getNodeName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    const-string v0, "cp:actions"

    return-object v0
.end method

.method public instantiateFromXmlNode(Lorg/w3c/dom/Node;)V
    .locals 9
    .parameter "domNode"

    .prologue
    .line 41
    move-object v5, p1

    check-cast v5, Lorg/w3c/dom/Element;

    .line 42
    .local v5, domElement:Lorg/w3c/dom/Element;
    const-string v0, "allow"

    invoke-interface {v5, v0}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v6

    .line 43
    .local v6, actionNode:Lorg/w3c/dom/NodeList;
    invoke-interface {v6}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    if-lez v0, :cond_0

    .line 44
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v7

    check-cast v7, Lorg/w3c/dom/Element;

    .line 45
    .local v7, allowElement:Lorg/w3c/dom/Element;
    invoke-interface {v7}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object v8

    .line 46
    .local v8, allowed:Ljava/lang/String;
    const-string v0, "true"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mediatek/simservs/client/policy/Actions;->mAllow:Z

    .line 49
    .end local v7           #allowElement:Lorg/w3c/dom/Element;
    .end local v8           #allowed:Ljava/lang/String;
    :cond_0
    const-string v0, "forward-to"

    invoke-interface {v5, v0}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v6

    .line 50
    invoke-interface {v6}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    if-lez v0, :cond_1

    .line 51
    new-instance v0, Lcom/mediatek/simservs/client/policy/ForwardTo;

    iget-object v1, p0, Lcom/mediatek/simservs/client/policy/Actions;->mXcapUri:Lcom/mediatek/xcap/client/uri/XcapUri;

    const-string v2, "cp:actions"

    iget-object v3, p0, Lcom/mediatek/simservs/client/policy/Actions;->mIntendedId:Ljava/lang/String;

    iget-object v4, p0, Lcom/mediatek/simservs/client/policy/Actions;->mCredentials:Lorg/apache/http/auth/Credentials;

    invoke-direct/range {v0 .. v5}, Lcom/mediatek/simservs/client/policy/ForwardTo;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/auth/Credentials;Lorg/w3c/dom/Element;)V

    iput-object v0, p0, Lcom/mediatek/simservs/client/policy/Actions;->mForwardTo:Lcom/mediatek/simservs/client/policy/ForwardTo;

    .line 54
    :cond_1
    return-void
.end method

.method public isAllow()Z
    .locals 1

    .prologue
    .line 75
    iget-boolean v0, p0, Lcom/mediatek/simservs/client/policy/Actions;->mAllow:Z

    return v0
.end method

.method public setAllow(Z)V
    .locals 0
    .parameter "allow"

    .prologue
    .line 71
    iput-boolean p1, p0, Lcom/mediatek/simservs/client/policy/Actions;->mAllow:Z

    .line 72
    return-void
.end method

.method public setFowardTo(Ljava/lang/String;Z)V
    .locals 5
    .parameter "target"
    .parameter "notifyCaller"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/mediatek/simservs/client/policy/Actions;->mForwardTo:Lcom/mediatek/simservs/client/policy/ForwardTo;

    if-nez v0, :cond_0

    .line 80
    new-instance v0, Lcom/mediatek/simservs/client/policy/ForwardTo;

    iget-object v1, p0, Lcom/mediatek/simservs/client/policy/Actions;->mXcapUri:Lcom/mediatek/xcap/client/uri/XcapUri;

    iget-object v2, p0, Lcom/mediatek/simservs/client/policy/Actions;->mParentUri:Ljava/lang/String;

    iget-object v3, p0, Lcom/mediatek/simservs/client/policy/Actions;->mIntendedId:Ljava/lang/String;

    iget-object v4, p0, Lcom/mediatek/simservs/client/policy/Actions;->mCredentials:Lorg/apache/http/auth/Credentials;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/mediatek/simservs/client/policy/ForwardTo;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/auth/Credentials;)V

    iput-object v0, p0, Lcom/mediatek/simservs/client/policy/Actions;->mForwardTo:Lcom/mediatek/simservs/client/policy/ForwardTo;

    .line 82
    :cond_0
    iget-object v0, p0, Lcom/mediatek/simservs/client/policy/Actions;->mForwardTo:Lcom/mediatek/simservs/client/policy/ForwardTo;

    invoke-virtual {v0, p1}, Lcom/mediatek/simservs/client/policy/ForwardTo;->setTarget(Ljava/lang/String;)V

    .line 83
    iget-object v0, p0, Lcom/mediatek/simservs/client/policy/Actions;->mForwardTo:Lcom/mediatek/simservs/client/policy/ForwardTo;

    invoke-virtual {v0, p2}, Lcom/mediatek/simservs/client/policy/ForwardTo;->setNotifyCaller(Z)V

    .line 84
    return-void
.end method

.method public toXmlElement(Lorg/w3c/dom/Document;)Lorg/w3c/dom/Element;
    .locals 4
    .parameter "document"

    .prologue
    .line 57
    const-string v3, "cp:actions"

    invoke-interface {p1, v3}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 59
    .local v0, actionsElement:Lorg/w3c/dom/Element;
    iget-object v3, p0, Lcom/mediatek/simservs/client/policy/Actions;->mForwardTo:Lcom/mediatek/simservs/client/policy/ForwardTo;

    if-eqz v3, :cond_0

    .line 60
    iget-object v3, p0, Lcom/mediatek/simservs/client/policy/Actions;->mForwardTo:Lcom/mediatek/simservs/client/policy/ForwardTo;

    invoke-virtual {v3, p1}, Lcom/mediatek/simservs/client/policy/ForwardTo;->toXmlElement(Lorg/w3c/dom/Document;)Lorg/w3c/dom/Element;

    move-result-object v2

    .line 61
    .local v2, forwardToElement:Lorg/w3c/dom/Element;
    invoke-interface {v0, v2}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 67
    .end local v2           #forwardToElement:Lorg/w3c/dom/Element;
    :goto_0
    return-object v0

    .line 63
    :cond_0
    const-string v3, "allow"

    invoke-interface {p1, v3}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v1

    .line 64
    .local v1, allowElement:Lorg/w3c/dom/Element;
    iget-boolean v3, p0, Lcom/mediatek/simservs/client/policy/Actions;->mAllow:Z

    if-eqz v3, :cond_1

    const-string v3, "true"

    :goto_1
    invoke-interface {v1, v3}, Lorg/w3c/dom/Element;->setTextContent(Ljava/lang/String;)V

    .line 65
    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    goto :goto_0

    .line 64
    :cond_1
    const-string v3, "false"

    goto :goto_1
.end method
