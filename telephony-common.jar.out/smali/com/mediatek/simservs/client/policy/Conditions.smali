.class public Lcom/mediatek/simservs/client/policy/Conditions;
.super Lcom/mediatek/simservs/xcap/XcapElement;
.source "Conditions.java"

# interfaces
.implements Lcom/mediatek/simservs/xcap/ConfigureType;


# static fields
.field public static final NODE_NAME:Ljava/lang/String; = "cp:conditions"

.field static final TAG_ANONYMOUS:Ljava/lang/String; = "anonymous"

.field static final TAG_BUSY:Ljava/lang/String; = "busy"

.field static final TAG_COMMUNICATION_DIVERTED:Ljava/lang/String; = "communication-diverted"

.field static final TAG_INTERNATIONAL:Ljava/lang/String; = "international"

.field static final TAG_INTERNATIONAL_EXHC:Ljava/lang/String; = "international-exHC"

.field static final TAG_MEDIA:Ljava/lang/String; = "media"

.field static final TAG_NOT_REACHABLE:Ljava/lang/String; = "not-reachable"

.field static final TAG_NOT_REGISTERED:Ljava/lang/String; = "not-registered"

.field static final TAG_NO_ANSWER:Ljava/lang/String; = "no-answer"

.field static final TAG_PRESENCE_STATUS:Ljava/lang/String; = "presence-status"

.field static final TAG_ROAMING:Ljava/lang/String; = "roaming"

.field static final TAG_RULE_DEACTIVATED:Ljava/lang/String; = "rule-deactivated"


# instance fields
.field public mComprehend_Anonymous:Z

.field public mComprehend_Busy:Z

.field public mComprehend_CommunicationDiverted:Z

.field public mComprehend_International:Z

.field public mComprehend_International_exHc:Z

.field public mComprehend_NoAnswer:Z

.field public mComprehend_NotReachable:Z

.field public mComprehend_NotRegistered:Z

.field public mComprehend_PresenceStatus:Z

.field public mComprehend_Roaming:Z

.field public mComprehend_RuleDeactivated:Z

.field public mMedias:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/auth/Credentials;)V
    .locals 1
    .parameter "xcapUri"
    .parameter "parentUri"
    .parameter "intendedId"
    .parameter "credential"

    .prologue
    const/4 v0, 0x0

    .line 51
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/mediatek/simservs/xcap/XcapElement;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/auth/Credentials;)V

    .line 35
    iput-boolean v0, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehend_Busy:Z

    .line 36
    iput-boolean v0, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehend_NoAnswer:Z

    .line 37
    iput-boolean v0, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehend_NotReachable:Z

    .line 38
    iput-boolean v0, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehend_NotRegistered:Z

    .line 39
    iput-boolean v0, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehend_Roaming:Z

    .line 40
    iput-boolean v0, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehend_RuleDeactivated:Z

    .line 41
    iput-boolean v0, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehend_International:Z

    .line 42
    iput-boolean v0, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehend_International_exHc:Z

    .line 43
    iput-boolean v0, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehend_CommunicationDiverted:Z

    .line 44
    iput-boolean v0, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehend_PresenceStatus:Z

    .line 45
    iput-boolean v0, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehend_Anonymous:Z

    .line 53
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
    const/4 v0, 0x0

    .line 57
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/mediatek/simservs/xcap/XcapElement;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/auth/Credentials;)V

    .line 35
    iput-boolean v0, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehend_Busy:Z

    .line 36
    iput-boolean v0, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehend_NoAnswer:Z

    .line 37
    iput-boolean v0, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehend_NotReachable:Z

    .line 38
    iput-boolean v0, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehend_NotRegistered:Z

    .line 39
    iput-boolean v0, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehend_Roaming:Z

    .line 40
    iput-boolean v0, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehend_RuleDeactivated:Z

    .line 41
    iput-boolean v0, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehend_International:Z

    .line 42
    iput-boolean v0, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehend_International_exHc:Z

    .line 43
    iput-boolean v0, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehend_CommunicationDiverted:Z

    .line 44
    iput-boolean v0, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehend_PresenceStatus:Z

    .line 45
    iput-boolean v0, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehend_Anonymous:Z

    .line 58
    invoke-virtual {p0, p5}, Lcom/mediatek/simservs/client/policy/Conditions;->instantiateFromXmlNode(Lorg/w3c/dom/Node;)V

    .line 59
    return-void
.end method


# virtual methods
.method public addAnonymous()V
    .locals 1

    .prologue
    .line 236
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehend_Anonymous:Z

    .line 237
    return-void
.end method

.method public addBusy()V
    .locals 1

    .prologue
    .line 196
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehend_Busy:Z

    .line 197
    return-void
.end method

.method public addCommunicationDiverted()V
    .locals 1

    .prologue
    .line 228
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehend_CommunicationDiverted:Z

    .line 229
    return-void
.end method

.method public addInternational()V
    .locals 1

    .prologue
    .line 220
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehend_International:Z

    .line 221
    return-void
.end method

.method public addInternationalExHc()V
    .locals 1

    .prologue
    .line 224
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehend_International_exHc:Z

    .line 225
    return-void
.end method

.method public addMedia(Ljava/lang/String;)V
    .locals 1
    .parameter "media"

    .prologue
    .line 284
    iget-object v0, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mMedias:Ljava/util/List;

    if-nez v0, :cond_0

    .line 285
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mMedias:Ljava/util/List;

    .line 286
    :cond_0
    iget-object v0, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mMedias:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 287
    return-void
.end method

.method public addNoAnswer()V
    .locals 1

    .prologue
    .line 200
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehend_NoAnswer:Z

    .line 201
    return-void
.end method

.method public addNotReachable()V
    .locals 1

    .prologue
    .line 204
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehend_NotReachable:Z

    .line 205
    return-void
.end method

.method public addNotRegistered()V
    .locals 1

    .prologue
    .line 208
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehend_NotRegistered:Z

    .line 209
    return-void
.end method

.method public addPresenceStatus()V
    .locals 1

    .prologue
    .line 232
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehend_PresenceStatus:Z

    .line 233
    return-void
.end method

.method public addRoaming()V
    .locals 1

    .prologue
    .line 212
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehend_Roaming:Z

    .line 213
    return-void
.end method

.method public addRuleDeactivated()V
    .locals 1

    .prologue
    .line 216
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehend_RuleDeactivated:Z

    .line 217
    return-void
.end method

.method public clearConditions()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 294
    iput-boolean v1, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehend_Busy:Z

    .line 295
    iput-boolean v1, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehend_NoAnswer:Z

    .line 296
    iput-boolean v1, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehend_NotReachable:Z

    .line 297
    iput-boolean v1, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehend_NotRegistered:Z

    .line 298
    iput-boolean v1, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehend_Roaming:Z

    .line 299
    iput-boolean v1, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehend_RuleDeactivated:Z

    .line 300
    iput-boolean v1, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehend_International:Z

    .line 301
    iput-boolean v1, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehend_CommunicationDiverted:Z

    .line 302
    iput-boolean v1, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehend_PresenceStatus:Z

    .line 303
    iget-object v0, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mMedias:Ljava/util/List;

    if-nez v0, :cond_0

    .line 304
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mMedias:Ljava/util/List;

    .line 305
    :cond_0
    iget-object v0, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mMedias:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 306
    iput-boolean v1, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehend_Anonymous:Z

    .line 307
    return-void
.end method

.method public comprehendAnonymous()Z
    .locals 1

    .prologue
    .line 280
    iget-boolean v0, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehend_Anonymous:Z

    return v0
.end method

.method public comprehendBusy()Z
    .locals 1

    .prologue
    .line 240
    iget-boolean v0, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehend_Busy:Z

    return v0
.end method

.method public comprehendCommunicationDiverted()Z
    .locals 1

    .prologue
    .line 272
    iget-boolean v0, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehend_CommunicationDiverted:Z

    return v0
.end method

.method public comprehendInternational()Z
    .locals 1

    .prologue
    .line 264
    iget-boolean v0, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehend_International:Z

    return v0
.end method

.method public comprehendInternationalExHc()Z
    .locals 1

    .prologue
    .line 268
    iget-boolean v0, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehend_International_exHc:Z

    return v0
.end method

.method public comprehendNoAnswer()Z
    .locals 1

    .prologue
    .line 244
    iget-boolean v0, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehend_NoAnswer:Z

    return v0
.end method

.method public comprehendNotReachable()Z
    .locals 1

    .prologue
    .line 248
    iget-boolean v0, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehend_NotReachable:Z

    return v0
.end method

.method public comprehendNotRegistered()Z
    .locals 1

    .prologue
    .line 252
    iget-boolean v0, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehend_NotRegistered:Z

    return v0
.end method

.method public comprehendPresenceStatus()Z
    .locals 1

    .prologue
    .line 276
    iget-boolean v0, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehend_PresenceStatus:Z

    return v0
.end method

.method public comprehendRoaming()Z
    .locals 1

    .prologue
    .line 256
    iget-boolean v0, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehend_Roaming:Z

    return v0
.end method

.method public comprehendRuleDeactivated()Z
    .locals 1

    .prologue
    .line 260
    iget-boolean v0, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehend_RuleDeactivated:Z

    return v0
.end method

.method public getMedias()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 290
    iget-object v0, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mMedias:Ljava/util/List;

    return-object v0
.end method

.method protected getNodeName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    const-string v0, "cp:conditions"

    return-object v0
.end method

.method public instantiateFromXmlNode(Lorg/w3c/dom/Node;)V
    .locals 7
    .parameter "domNode"

    .prologue
    const/4 v6, 0x1

    .line 68
    move-object v1, p1

    check-cast v1, Lorg/w3c/dom/Element;

    .line 70
    .local v1, domElement:Lorg/w3c/dom/Element;
    const-string v4, "busy"

    invoke-interface {v1, v4}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    .line 71
    .local v0, conditionsNode:Lorg/w3c/dom/NodeList;
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v4

    if-lez v4, :cond_0

    .line 72
    iput-boolean v6, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehend_Busy:Z

    .line 74
    :cond_0
    const-string v4, "no-answer"

    invoke-interface {v1, v4}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    .line 75
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v4

    if-lez v4, :cond_1

    .line 76
    iput-boolean v6, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehend_NoAnswer:Z

    .line 78
    :cond_1
    const-string v4, "not-reachable"

    invoke-interface {v1, v4}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    .line 79
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v4

    if-lez v4, :cond_2

    .line 80
    iput-boolean v6, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehend_NotReachable:Z

    .line 82
    :cond_2
    const-string v4, "not-registered"

    invoke-interface {v1, v4}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    .line 83
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v4

    if-lez v4, :cond_3

    .line 84
    iput-boolean v6, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehend_NotRegistered:Z

    .line 86
    :cond_3
    const-string v4, "roaming"

    invoke-interface {v1, v4}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    .line 87
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v4

    if-lez v4, :cond_4

    .line 88
    iput-boolean v6, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehend_Roaming:Z

    .line 90
    :cond_4
    const-string v4, "rule-deactivated"

    invoke-interface {v1, v4}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    .line 91
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v4

    if-lez v4, :cond_5

    .line 92
    iput-boolean v6, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehend_RuleDeactivated:Z

    .line 94
    :cond_5
    const-string v4, "international"

    invoke-interface {v1, v4}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    .line 95
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v4

    if-lez v4, :cond_6

    .line 96
    iput-boolean v6, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehend_International:Z

    .line 98
    :cond_6
    const-string v4, "international-exHC"

    invoke-interface {v1, v4}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    .line 99
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v4

    if-lez v4, :cond_7

    .line 100
    iput-boolean v6, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehend_International_exHc:Z

    .line 102
    :cond_7
    const-string v4, "communication-diverted"

    invoke-interface {v1, v4}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    .line 103
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v4

    if-lez v4, :cond_8

    .line 104
    iput-boolean v6, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehend_CommunicationDiverted:Z

    .line 106
    :cond_8
    const-string v4, "presence-status"

    invoke-interface {v1, v4}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    .line 107
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v4

    if-lez v4, :cond_9

    .line 108
    iput-boolean v6, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehend_PresenceStatus:Z

    .line 110
    :cond_9
    const-string v4, "media"

    invoke-interface {v1, v4}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    .line 111
    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    iput-object v4, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mMedias:Ljava/util/List;

    .line 112
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v4

    if-ge v2, v4, :cond_a

    .line 113
    invoke-interface {v0, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    check-cast v3, Lorg/w3c/dom/Element;

    .line 114
    .local v3, mediaElement:Lorg/w3c/dom/Element;
    iget-object v4, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mMedias:Ljava/util/List;

    invoke-interface {v3}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 112
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 117
    .end local v3           #mediaElement:Lorg/w3c/dom/Element;
    :cond_a
    const-string v4, "anonymous"

    invoke-interface {v1, v4}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    .line 118
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v4

    if-lez v4, :cond_b

    .line 119
    iput-boolean v6, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehend_Anonymous:Z

    .line 120
    :cond_b
    return-void
.end method

.method public toXmlElement(Lorg/w3c/dom/Document;)Lorg/w3c/dom/Element;
    .locals 5
    .parameter "document"

    .prologue
    .line 123
    const-string v4, "cp:conditions"

    invoke-interface {p1, v4}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v1

    .line 125
    .local v1, conditionsElement:Lorg/w3c/dom/Element;
    invoke-virtual {p0}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendBusy()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 126
    const-string v4, "busy"

    invoke-interface {p1, v4}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 127
    .local v0, conditionElement:Lorg/w3c/dom/Element;
    invoke-interface {v1, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 130
    .end local v0           #conditionElement:Lorg/w3c/dom/Element;
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendNoAnswer()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 131
    const-string v4, "no-answer"

    invoke-interface {p1, v4}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 132
    .restart local v0       #conditionElement:Lorg/w3c/dom/Element;
    invoke-interface {v1, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 135
    .end local v0           #conditionElement:Lorg/w3c/dom/Element;
    :cond_1
    invoke-virtual {p0}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendNotReachable()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 136
    const-string v4, "not-reachable"

    invoke-interface {p1, v4}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 137
    .restart local v0       #conditionElement:Lorg/w3c/dom/Element;
    invoke-interface {v1, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 140
    .end local v0           #conditionElement:Lorg/w3c/dom/Element;
    :cond_2
    invoke-virtual {p0}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendNotRegistered()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 141
    const-string v4, "not-registered"

    invoke-interface {p1, v4}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 142
    .restart local v0       #conditionElement:Lorg/w3c/dom/Element;
    invoke-interface {v1, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 145
    .end local v0           #conditionElement:Lorg/w3c/dom/Element;
    :cond_3
    invoke-virtual {p0}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendRoaming()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 146
    const-string v4, "roaming"

    invoke-interface {p1, v4}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 147
    .restart local v0       #conditionElement:Lorg/w3c/dom/Element;
    invoke-interface {v1, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 150
    .end local v0           #conditionElement:Lorg/w3c/dom/Element;
    :cond_4
    invoke-virtual {p0}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendRuleDeactivated()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 151
    const-string v4, "rule-deactivated"

    invoke-interface {p1, v4}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 152
    .restart local v0       #conditionElement:Lorg/w3c/dom/Element;
    invoke-interface {v1, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 155
    .end local v0           #conditionElement:Lorg/w3c/dom/Element;
    :cond_5
    invoke-virtual {p0}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendInternational()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 156
    const-string v4, "international"

    invoke-interface {p1, v4}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 157
    .restart local v0       #conditionElement:Lorg/w3c/dom/Element;
    invoke-interface {v1, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 160
    .end local v0           #conditionElement:Lorg/w3c/dom/Element;
    :cond_6
    invoke-virtual {p0}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendInternationalExHc()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 161
    const-string v4, "international-exHC"

    invoke-interface {p1, v4}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 162
    .restart local v0       #conditionElement:Lorg/w3c/dom/Element;
    invoke-interface {v1, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 165
    .end local v0           #conditionElement:Lorg/w3c/dom/Element;
    :cond_7
    invoke-virtual {p0}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendCommunicationDiverted()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 166
    const-string v4, "communication-diverted"

    invoke-interface {p1, v4}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 167
    .restart local v0       #conditionElement:Lorg/w3c/dom/Element;
    invoke-interface {v1, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 170
    .end local v0           #conditionElement:Lorg/w3c/dom/Element;
    :cond_8
    invoke-virtual {p0}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendPresenceStatus()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 171
    const-string v4, "presence-status"

    invoke-interface {p1, v4}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 172
    .restart local v0       #conditionElement:Lorg/w3c/dom/Element;
    invoke-interface {v1, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 175
    .end local v0           #conditionElement:Lorg/w3c/dom/Element;
    :cond_9
    iget-object v4, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mMedias:Ljava/util/List;

    if-eqz v4, :cond_a

    .line 176
    iget-object v4, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mMedias:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_a

    .line 177
    iget-object v4, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mMedias:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 178
    .local v2, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 180
    const-string v4, "media"

    invoke-interface {p1, v4}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v3

    .line 181
    .local v3, ruleElement:Lorg/w3c/dom/Element;
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v3, v4}, Lorg/w3c/dom/Element;->setTextContent(Ljava/lang/String;)V

    .line 182
    invoke-interface {v1, v3}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    goto :goto_0

    .line 187
    .end local v2           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v3           #ruleElement:Lorg/w3c/dom/Element;
    :cond_a
    invoke-virtual {p0}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendAnonymous()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 188
    const-string v4, "anonymous"

    invoke-interface {p1, v4}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 189
    .restart local v0       #conditionElement:Lorg/w3c/dom/Element;
    invoke-interface {v1, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 192
    .end local v0           #conditionElement:Lorg/w3c/dom/Element;
    :cond_b
    return-object v1
.end method
