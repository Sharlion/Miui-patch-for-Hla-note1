.class public abstract Lcom/mediatek/simservs/xcap/InquireType;
.super Lcom/mediatek/simservs/xcap/XcapElement;
.source "InquireType.java"


# direct methods
.method public constructor <init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/auth/Credentials;)V
    .locals 0
    .parameter "xcapUri"
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
    .line 21
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/mediatek/simservs/xcap/XcapElement;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/auth/Credentials;)V

    .line 22
    return-void
.end method


# virtual methods
.method public getContent()Ljava/lang/String;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mediatek/simservs/xcap/XcapException;
        }
    .end annotation

    .prologue
    .line 30
    new-instance v6, Lcom/mediatek/xcap/client/XcapClient;

    invoke-direct {v6}, Lcom/mediatek/xcap/client/XcapClient;-><init>()V

    .line 31
    .local v6, xcapClient:Lcom/mediatek/xcap/client/XcapClient;
    const/4 v4, 0x0

    .line 32
    .local v4, response:Lorg/apache/http/HttpResponse;
    const/4 v5, 0x0

    .line 34
    .local v5, ret:Ljava/lang/String;
    const/4 v2, 0x0

    .line 37
    .local v2, headers:[Lorg/apache/http/Header;
    :try_start_0
    iget-object v7, p0, Lcom/mediatek/simservs/xcap/InquireType;->mIntendedId:Ljava/lang/String;

    if-eqz v7, :cond_0

    .line 38
    const/4 v7, 0x1

    new-array v2, v7, [Lorg/apache/http/Header;

    .line 39
    const/4 v7, 0x0

    new-instance v8, Lorg/apache/http/message/BasicHeader;

    const-string v9, "X-3GPP-Intended-Identity"

    iget-object v10, p0, Lcom/mediatek/simservs/xcap/InquireType;->mIntendedId:Ljava/lang/String;

    invoke-direct {v8, v9, v10}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v8, v2, v7

    .line 41
    :cond_0
    iget-object v7, p0, Lcom/mediatek/simservs/xcap/InquireType;->mCredentials:Lorg/apache/http/auth/Credentials;

    invoke-virtual {v6, v7}, Lcom/mediatek/xcap/client/XcapClient;->setAuthenticationCredentials(Lorg/apache/http/auth/Credentials;)V

    .line 42
    invoke-virtual {p0}, Lcom/mediatek/simservs/xcap/InquireType;->getNodeUri()Ljava/net/URI;

    move-result-object v7

    invoke-virtual {v6, v7, v2}, Lcom/mediatek/xcap/client/XcapClient;->get(Ljava/net/URI;[Lorg/apache/http/Header;)Lorg/apache/http/HttpResponse;

    move-result-object v4

    .line 44
    if-eqz v4, :cond_1

    .line 45
    invoke-interface {v4}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v7

    invoke-interface {v7}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v7

    const/16 v8, 0xc8

    if-ne v7, v8, :cond_2

    .line 46
    invoke-interface {v4}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    .line 47
    .local v1, entity:Lorg/apache/http/HttpEntity;
    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v3

    .line 49
    .local v3, is:Ljava/io/InputStream;
    invoke-virtual {p0, v3}, Lcom/mediatek/simservs/xcap/InquireType;->convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v5

    .line 63
    .end local v1           #entity:Lorg/apache/http/HttpEntity;
    .end local v3           #is:Ljava/io/InputStream;
    :cond_1
    invoke-virtual {v6}, Lcom/mediatek/xcap/client/XcapClient;->shutdown()V

    .line 65
    :goto_0
    return-object v5

    .line 51
    :cond_2
    const/4 v5, 0x0

    .line 52
    :try_start_1
    new-instance v7, Lcom/mediatek/simservs/xcap/XcapException;

    invoke-interface {v4}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v8

    invoke-interface {v8}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v8

    invoke-direct {v7, v8}, Lcom/mediatek/simservs/xcap/XcapException;-><init>(I)V

    throw v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_2

    .line 55
    :catch_0
    move-exception v0

    .line 56
    .local v0, e:Ljava/lang/IllegalArgumentException;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 63
    invoke-virtual {v6}, Lcom/mediatek/xcap/client/XcapClient;->shutdown()V

    goto :goto_0

    .line 57
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 58
    .local v0, e:Ljava/io/IOException;
    :try_start_3
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 59
    new-instance v7, Lcom/mediatek/simservs/xcap/XcapException;

    invoke-direct {v7, v0}, Lcom/mediatek/simservs/xcap/XcapException;-><init>(Ljava/io/IOException;)V

    throw v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 63
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v7

    invoke-virtual {v6}, Lcom/mediatek/xcap/client/XcapClient;->shutdown()V

    throw v7

    .line 60
    :catch_2
    move-exception v0

    .line 61
    .local v0, e:Ljava/net/URISyntaxException;
    :try_start_4
    invoke-virtual {v0}, Ljava/net/URISyntaxException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 63
    invoke-virtual {v6}, Lcom/mediatek/xcap/client/XcapClient;->shutdown()V

    goto :goto_0
.end method
