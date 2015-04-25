.class public abstract Lcom/mediatek/simservs/xcap/XcapElement;
.super Ljava/lang/Object;
.source "XcapElement.java"

# interfaces
.implements Lcom/mediatek/simservs/xcap/Attributable;


# static fields
.field public static final AUTH_XCAP_3GPP_INTENDED:Ljava/lang/String; = "X-3GPP-Intended-Identity"

.field public static final FALSE:Ljava/lang/String; = "false"

.field public static final TRUE:Ljava/lang/String; = "true"


# instance fields
.field public mCredentials:Lorg/apache/http/auth/Credentials;

.field public mIntendedId:Ljava/lang/String;

.field public mParentUri:Ljava/lang/String;

.field public mXcapUri:Lcom/mediatek/xcap/client/uri/XcapUri;


# direct methods
.method public constructor <init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/auth/Credentials;)V
    .locals 1
    .parameter "xcapUri"
    .parameter "parentUri"
    .parameter "intendedId"
    .parameter "credential"

    .prologue
    const/4 v0, 0x0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object v0, p0, Lcom/mediatek/simservs/xcap/XcapElement;->mXcapUri:Lcom/mediatek/xcap/client/uri/XcapUri;

    .line 41
    iput-object v0, p0, Lcom/mediatek/simservs/xcap/XcapElement;->mParentUri:Ljava/lang/String;

    .line 42
    iput-object v0, p0, Lcom/mediatek/simservs/xcap/XcapElement;->mIntendedId:Ljava/lang/String;

    .line 50
    iput-object p1, p0, Lcom/mediatek/simservs/xcap/XcapElement;->mXcapUri:Lcom/mediatek/xcap/client/uri/XcapUri;

    .line 51
    iput-object p2, p0, Lcom/mediatek/simservs/xcap/XcapElement;->mParentUri:Ljava/lang/String;

    .line 52
    iput-object p3, p0, Lcom/mediatek/simservs/xcap/XcapElement;->mIntendedId:Ljava/lang/String;

    .line 53
    iput-object p4, p0, Lcom/mediatek/simservs/xcap/XcapElement;->mCredentials:Lorg/apache/http/auth/Credentials;

    .line 54
    return-void
.end method

.method private getAttributeUri(Ljava/lang/String;)Ljava/net/URI;
    .locals 4
    .parameter "attribute"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .prologue
    .line 70
    new-instance v2, Lcom/mediatek/xcap/client/uri/XcapUri$XcapNodeSelector;

    const-string v3, "simservs"

    invoke-direct {v2, v3}, Lcom/mediatek/xcap/client/uri/XcapUri$XcapNodeSelector;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/mediatek/simservs/xcap/XcapElement;->mParentUri:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/mediatek/xcap/client/uri/XcapUri$XcapNodeSelector;->queryByNodeName(Ljava/lang/String;)Lcom/mediatek/xcap/client/uri/XcapUri$XcapNodeSelector;

    move-result-object v2

    invoke-virtual {p0}, Lcom/mediatek/simservs/xcap/XcapElement;->getNodeName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, p1}, Lcom/mediatek/xcap/client/uri/XcapUri$XcapNodeSelector;->queryByNodeName(Ljava/lang/String;Ljava/lang/String;)Lcom/mediatek/xcap/client/uri/XcapUri$XcapNodeSelector;

    move-result-object v0

    .line 74
    .local v0, elementSelector:Lcom/mediatek/xcap/client/uri/XcapUri$XcapNodeSelector;
    iget-object v2, p0, Lcom/mediatek/simservs/xcap/XcapElement;->mXcapUri:Lcom/mediatek/xcap/client/uri/XcapUri;

    invoke-virtual {v2, v0}, Lcom/mediatek/xcap/client/uri/XcapUri;->setNodeSelector(Lcom/mediatek/xcap/client/uri/XcapUri$XcapNodeSelector;)Lcom/mediatek/xcap/client/uri/XcapUri;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/xcap/client/uri/XcapUri;->toURI()Ljava/net/URI;

    move-result-object v1

    .line 75
    .local v1, elementURI:Ljava/net/URI;
    return-object v1
.end method


# virtual methods
.method public convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 4
    .parameter "inputStream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 298
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 299
    .local v1, r:Ljava/io/BufferedReader;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 301
    .local v2, total:Ljava/lang/StringBuilder;
    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .local v0, line:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 302
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 304
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public deleteByAttrName(Ljava/lang/String;)V
    .locals 8
    .parameter "attribute"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mediatek/simservs/xcap/XcapException;
        }
    .end annotation

    .prologue
    .line 169
    new-instance v3, Lcom/mediatek/xcap/client/XcapClient;

    invoke-direct {v3}, Lcom/mediatek/xcap/client/XcapClient;-><init>()V

    .line 170
    .local v3, xcapClient:Lcom/mediatek/xcap/client/XcapClient;
    const/4 v2, 0x0

    .line 171
    .local v2, response:Lorg/apache/http/HttpResponse;
    const/4 v1, 0x0

    .line 174
    .local v1, headers:[Lorg/apache/http/Header;
    :try_start_0
    iget-object v4, p0, Lcom/mediatek/simservs/xcap/XcapElement;->mIntendedId:Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 175
    const/4 v4, 0x1

    new-array v1, v4, [Lorg/apache/http/Header;

    .line 176
    const/4 v4, 0x0

    new-instance v5, Lorg/apache/http/message/BasicHeader;

    const-string v6, "X-3GPP-Intended-Identity"

    iget-object v7, p0, Lcom/mediatek/simservs/xcap/XcapElement;->mIntendedId:Ljava/lang/String;

    invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v1, v4

    .line 178
    :cond_0
    iget-object v4, p0, Lcom/mediatek/simservs/xcap/XcapElement;->mCredentials:Lorg/apache/http/auth/Credentials;

    invoke-virtual {v3, v4}, Lcom/mediatek/xcap/client/XcapClient;->setAuthenticationCredentials(Lorg/apache/http/auth/Credentials;)V

    .line 179
    invoke-direct {p0, p1}, Lcom/mediatek/simservs/xcap/XcapElement;->getAttributeUri(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Lcom/mediatek/xcap/client/XcapClient;->delete(Ljava/net/URI;[Lorg/apache/http/Header;)Lorg/apache/http/HttpResponse;

    move-result-object v2

    .line 181
    if-eqz v2, :cond_1

    .line 182
    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v4

    const/16 v5, 0xc8

    if-ne v4, v5, :cond_2

    .line 183
    const-string v4, "info"

    const-string v5, "document deleted in xcap server..."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_2

    .line 196
    :cond_1
    invoke-virtual {v3}, Lcom/mediatek/xcap/client/XcapClient;->shutdown()V

    .line 198
    :goto_0
    return-void

    .line 185
    :cond_2
    :try_start_1
    new-instance v4, Lcom/mediatek/simservs/xcap/XcapException;

    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v5

    invoke-direct {v4, v5}, Lcom/mediatek/simservs/xcap/XcapException;-><init>(I)V

    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_2

    .line 188
    :catch_0
    move-exception v0

    .line 189
    .local v0, e:Ljava/lang/IllegalArgumentException;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 196
    invoke-virtual {v3}, Lcom/mediatek/xcap/client/XcapClient;->shutdown()V

    goto :goto_0

    .line 190
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 191
    .local v0, e:Ljava/io/IOException;
    :try_start_3
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 192
    new-instance v4, Lcom/mediatek/simservs/xcap/XcapException;

    invoke-direct {v4, v0}, Lcom/mediatek/simservs/xcap/XcapException;-><init>(Ljava/io/IOException;)V

    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 196
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v4

    invoke-virtual {v3}, Lcom/mediatek/xcap/client/XcapClient;->shutdown()V

    throw v4

    .line 193
    :catch_2
    move-exception v0

    .line 194
    .local v0, e:Ljava/net/URISyntaxException;
    :try_start_4
    invoke-virtual {v0}, Ljava/net/URISyntaxException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 196
    invoke-virtual {v3}, Lcom/mediatek/xcap/client/XcapClient;->shutdown()V

    goto :goto_0
.end method

.method public domToXmlText(Lorg/w3c/dom/Element;)Ljava/lang/String;
    .locals 5
    .parameter "element"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 288
    invoke-static {}, Ljavax/xml/transform/TransformerFactory;->newInstance()Ljavax/xml/transform/TransformerFactory;

    move-result-object v1

    .line 289
    .local v1, transFactory:Ljavax/xml/transform/TransformerFactory;
    invoke-virtual {v1}, Ljavax/xml/transform/TransformerFactory;->newTransformer()Ljavax/xml/transform/Transformer;

    move-result-object v2

    .line 290
    .local v2, transformer:Ljavax/xml/transform/Transformer;
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 291
    .local v0, buffer:Ljava/io/StringWriter;
    const-string v3, "omit-xml-declaration"

    const-string v4, "yes"

    invoke-virtual {v2, v3, v4}, Ljavax/xml/transform/Transformer;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    new-instance v3, Ljavax/xml/transform/dom/DOMSource;

    invoke-direct {v3, p1}, Ljavax/xml/transform/dom/DOMSource;-><init>(Lorg/w3c/dom/Node;)V

    new-instance v4, Ljavax/xml/transform/stream/StreamResult;

    invoke-direct {v4, v0}, Ljavax/xml/transform/stream/StreamResult;-><init>(Ljava/io/Writer;)V

    invoke-virtual {v2, v3, v4}, Ljavax/xml/transform/Transformer;->transform(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V

    .line 294
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public getByAttrName(Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .parameter "attribute"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mediatek/simservs/xcap/XcapException;
        }
    .end annotation

    .prologue
    .line 85
    new-instance v6, Lcom/mediatek/xcap/client/XcapClient;

    invoke-direct {v6}, Lcom/mediatek/xcap/client/XcapClient;-><init>()V

    .line 86
    .local v6, xcapClient:Lcom/mediatek/xcap/client/XcapClient;
    const/4 v4, 0x0

    .line 87
    .local v4, response:Lorg/apache/http/HttpResponse;
    const/4 v5, 0x0

    .line 89
    .local v5, ret:Ljava/lang/String;
    const/4 v2, 0x0

    .line 92
    .local v2, headers:[Lorg/apache/http/Header;
    :try_start_0
    iget-object v7, p0, Lcom/mediatek/simservs/xcap/XcapElement;->mIntendedId:Ljava/lang/String;

    if-eqz v7, :cond_0

    .line 93
    const/4 v7, 0x1

    new-array v2, v7, [Lorg/apache/http/Header;

    .line 94
    const/4 v7, 0x0

    new-instance v8, Lorg/apache/http/message/BasicHeader;

    const-string v9, "X-3GPP-Intended-Identity"

    iget-object v10, p0, Lcom/mediatek/simservs/xcap/XcapElement;->mIntendedId:Ljava/lang/String;

    invoke-direct {v8, v9, v10}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v8, v2, v7

    .line 96
    :cond_0
    iget-object v7, p0, Lcom/mediatek/simservs/xcap/XcapElement;->mCredentials:Lorg/apache/http/auth/Credentials;

    invoke-virtual {v6, v7}, Lcom/mediatek/xcap/client/XcapClient;->setAuthenticationCredentials(Lorg/apache/http/auth/Credentials;)V

    .line 97
    invoke-direct {p0, p1}, Lcom/mediatek/simservs/xcap/XcapElement;->getAttributeUri(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v7

    invoke-virtual {v6, v7, v2}, Lcom/mediatek/xcap/client/XcapClient;->get(Ljava/net/URI;[Lorg/apache/http/Header;)Lorg/apache/http/HttpResponse;

    move-result-object v4

    .line 98
    if-eqz v4, :cond_1

    .line 99
    invoke-interface {v4}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v7

    invoke-interface {v7}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v7

    const/16 v8, 0xc8

    if-ne v7, v8, :cond_2

    .line 100
    invoke-interface {v4}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    .line 101
    .local v1, entity:Lorg/apache/http/HttpEntity;
    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v3

    .line 103
    .local v3, is:Ljava/io/InputStream;
    invoke-virtual {p0, v3}, Lcom/mediatek/simservs/xcap/XcapElement;->convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v5

    .line 117
    .end local v1           #entity:Lorg/apache/http/HttpEntity;
    .end local v3           #is:Ljava/io/InputStream;
    :cond_1
    invoke-virtual {v6}, Lcom/mediatek/xcap/client/XcapClient;->shutdown()V

    .line 119
    :goto_0
    return-object v5

    .line 105
    :cond_2
    const/4 v5, 0x0

    .line 106
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

    .line 109
    :catch_0
    move-exception v0

    .line 110
    .local v0, e:Ljava/lang/IllegalArgumentException;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 117
    invoke-virtual {v6}, Lcom/mediatek/xcap/client/XcapClient;->shutdown()V

    goto :goto_0

    .line 111
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 112
    .local v0, e:Ljava/io/IOException;
    :try_start_3
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 113
    new-instance v7, Lcom/mediatek/simservs/xcap/XcapException;

    invoke-direct {v7, v0}, Lcom/mediatek/simservs/xcap/XcapException;-><init>(Ljava/io/IOException;)V

    throw v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 117
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v7

    invoke-virtual {v6}, Lcom/mediatek/xcap/client/XcapClient;->shutdown()V

    throw v7

    .line 114
    :catch_2
    move-exception v0

    .line 115
    .local v0, e:Ljava/net/URISyntaxException;
    :try_start_4
    invoke-virtual {v0}, Ljava/net/URISyntaxException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 117
    invoke-virtual {v6}, Lcom/mediatek/xcap/client/XcapClient;->shutdown()V

    goto :goto_0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 242
    const/4 v0, 0x0

    return-object v0
.end method

.method public getNamespace()Ljava/lang/String;
    .locals 1

    .prologue
    .line 281
    const/4 v0, 0x0

    return-object v0
.end method

.method protected abstract getNodeName()Ljava/lang/String;
.end method

.method public getNodeSelector()Ljava/lang/String;
    .locals 1

    .prologue
    .line 273
    const/4 v0, 0x0

    return-object v0
.end method

.method public getNodeUri()Ljava/net/URI;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .prologue
    .line 59
    new-instance v2, Lcom/mediatek/xcap/client/uri/XcapUri$XcapNodeSelector;

    const-string v3, "simservs"

    invoke-direct {v2, v3}, Lcom/mediatek/xcap/client/uri/XcapUri$XcapNodeSelector;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/mediatek/simservs/xcap/XcapElement;->mParentUri:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/mediatek/xcap/client/uri/XcapUri$XcapNodeSelector;->queryByNodeName(Ljava/lang/String;)Lcom/mediatek/xcap/client/uri/XcapUri$XcapNodeSelector;

    move-result-object v2

    invoke-virtual {p0}, Lcom/mediatek/simservs/xcap/XcapElement;->getNodeName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mediatek/xcap/client/uri/XcapUri$XcapNodeSelector;->queryByNodeName(Ljava/lang/String;)Lcom/mediatek/xcap/client/uri/XcapUri$XcapNodeSelector;

    move-result-object v0

    .line 63
    .local v0, elementSelector:Lcom/mediatek/xcap/client/uri/XcapUri$XcapNodeSelector;
    iget-object v2, p0, Lcom/mediatek/simservs/xcap/XcapElement;->mXcapUri:Lcom/mediatek/xcap/client/uri/XcapUri;

    invoke-virtual {v2, v0}, Lcom/mediatek/xcap/client/uri/XcapUri;->setNodeSelector(Lcom/mediatek/xcap/client/uri/XcapUri$XcapNodeSelector;)Lcom/mediatek/xcap/client/uri/XcapUri;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/xcap/client/uri/XcapUri;->toURI()Ljava/net/URI;

    move-result-object v1

    .line 64
    .local v1, elementURI:Ljava/net/URI;
    return-object v1
.end method

.method public getParent()Lcom/mediatek/simservs/xcap/XcapElement;
    .locals 1

    .prologue
    .line 265
    const/4 v0, 0x0

    return-object v0
.end method

.method public getUri()Ljava/lang/String;
    .locals 3

    .prologue
    .line 249
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 251
    .local v0, pathUri:Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/mediatek/simservs/xcap/XcapElement;->mParentUri:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 252
    iget-object v1, p0, Lcom/mediatek/simservs/xcap/XcapElement;->mParentUri:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\\"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/mediatek/simservs/xcap/XcapElement;->getNodeName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 255
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 257
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/simservs/xcap/XcapElement;->getNodeName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public setByAttrName(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .parameter "attrName"
    .parameter "attrValue"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mediatek/simservs/xcap/XcapException;
        }
    .end annotation

    .prologue
    .line 129
    new-instance v3, Lcom/mediatek/xcap/client/XcapClient;

    invoke-direct {v3}, Lcom/mediatek/xcap/client/XcapClient;-><init>()V

    .line 130
    .local v3, xcapClient:Lcom/mediatek/xcap/client/XcapClient;
    const/4 v2, 0x0

    .line 131
    .local v2, response:Lorg/apache/http/HttpResponse;
    const/4 v1, 0x0

    .line 134
    .local v1, headers:[Lorg/apache/http/Header;
    :try_start_0
    iget-object v4, p0, Lcom/mediatek/simservs/xcap/XcapElement;->mIntendedId:Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 135
    const/4 v4, 0x1

    new-array v1, v4, [Lorg/apache/http/Header;

    .line 136
    const/4 v4, 0x0

    new-instance v5, Lorg/apache/http/message/BasicHeader;

    const-string v6, "X-3GPP-Intended-Identity"

    iget-object v7, p0, Lcom/mediatek/simservs/xcap/XcapElement;->mIntendedId:Ljava/lang/String;

    invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v1, v4

    .line 138
    :cond_0
    iget-object v4, p0, Lcom/mediatek/simservs/xcap/XcapElement;->mCredentials:Lorg/apache/http/auth/Credentials;

    invoke-virtual {v3, v4}, Lcom/mediatek/xcap/client/XcapClient;->setAuthenticationCredentials(Lorg/apache/http/auth/Credentials;)V

    .line 139
    invoke-direct {p0, p1}, Lcom/mediatek/simservs/xcap/XcapElement;->getAttributeUri(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v4

    const-string v5, "application/xcap-att+xml"

    invoke-virtual {v3, v4, v5, p2, v1}, Lcom/mediatek/xcap/client/XcapClient;->put(Ljava/net/URI;Ljava/lang/String;Ljava/lang/String;[Lorg/apache/http/Header;)Lorg/apache/http/HttpResponse;

    move-result-object v2

    .line 142
    if-eqz v2, :cond_2

    .line 143
    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v4

    const/16 v5, 0xc8

    if-eq v4, v5, :cond_1

    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v4

    const/16 v5, 0xc9

    if-ne v4, v5, :cond_3

    .line 145
    :cond_1
    const-string v4, "info"

    const-string v5, "document created in xcap server..."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_2

    .line 158
    :cond_2
    invoke-virtual {v3}, Lcom/mediatek/xcap/client/XcapClient;->shutdown()V

    .line 160
    :goto_0
    return-void

    .line 147
    :cond_3
    :try_start_1
    new-instance v4, Lcom/mediatek/simservs/xcap/XcapException;

    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v5

    invoke-direct {v4, v5}, Lcom/mediatek/simservs/xcap/XcapException;-><init>(I)V

    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_2

    .line 150
    :catch_0
    move-exception v0

    .line 151
    .local v0, e:Ljava/lang/IllegalArgumentException;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 158
    invoke-virtual {v3}, Lcom/mediatek/xcap/client/XcapClient;->shutdown()V

    goto :goto_0

    .line 152
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 153
    .local v0, e:Ljava/io/IOException;
    :try_start_3
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 154
    new-instance v4, Lcom/mediatek/simservs/xcap/XcapException;

    invoke-direct {v4, v0}, Lcom/mediatek/simservs/xcap/XcapException;-><init>(Ljava/io/IOException;)V

    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 158
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v4

    invoke-virtual {v3}, Lcom/mediatek/xcap/client/XcapClient;->shutdown()V

    throw v4

    .line 155
    :catch_2
    move-exception v0

    .line 156
    .local v0, e:Ljava/net/URISyntaxException;
    :try_start_4
    invoke-virtual {v0}, Ljava/net/URISyntaxException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 158
    invoke-virtual {v3}, Lcom/mediatek/xcap/client/XcapClient;->shutdown()V

    goto :goto_0
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 8
    .parameter "xml"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mediatek/simservs/xcap/XcapException;
        }
    .end annotation

    .prologue
    .line 206
    new-instance v3, Lcom/mediatek/xcap/client/XcapClient;

    invoke-direct {v3}, Lcom/mediatek/xcap/client/XcapClient;-><init>()V

    .line 207
    .local v3, xcapClient:Lcom/mediatek/xcap/client/XcapClient;
    const/4 v2, 0x0

    .line 208
    .local v2, response:Lorg/apache/http/HttpResponse;
    const/4 v1, 0x0

    .line 211
    .local v1, headers:[Lorg/apache/http/Header;
    :try_start_0
    iget-object v4, p0, Lcom/mediatek/simservs/xcap/XcapElement;->mIntendedId:Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 212
    const/4 v4, 0x1

    new-array v1, v4, [Lorg/apache/http/Header;

    .line 213
    const/4 v4, 0x0

    new-instance v5, Lorg/apache/http/message/BasicHeader;

    const-string v6, "X-3GPP-Intended-Identity"

    iget-object v7, p0, Lcom/mediatek/simservs/xcap/XcapElement;->mIntendedId:Ljava/lang/String;

    invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v1, v4

    .line 215
    :cond_0
    iget-object v4, p0, Lcom/mediatek/simservs/xcap/XcapElement;->mCredentials:Lorg/apache/http/auth/Credentials;

    invoke-virtual {v3, v4}, Lcom/mediatek/xcap/client/XcapClient;->setAuthenticationCredentials(Lorg/apache/http/auth/Credentials;)V

    .line 216
    invoke-virtual {p0}, Lcom/mediatek/simservs/xcap/XcapElement;->getNodeUri()Ljava/net/URI;

    move-result-object v4

    const-string v5, "application/xcap-el+xml"

    invoke-virtual {v3, v4, v5, p1, v1}, Lcom/mediatek/xcap/client/XcapClient;->put(Ljava/net/URI;Ljava/lang/String;Ljava/lang/String;[Lorg/apache/http/Header;)Lorg/apache/http/HttpResponse;

    move-result-object v2

    .line 218
    if-eqz v2, :cond_2

    .line 219
    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v4

    const/16 v5, 0xc8

    if-eq v4, v5, :cond_1

    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v4

    const/16 v5, 0xc9

    if-ne v4, v5, :cond_3

    .line 221
    :cond_1
    const-string v4, "info"

    const-string v5, "document created in xcap server..."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_2

    .line 234
    :cond_2
    invoke-virtual {v3}, Lcom/mediatek/xcap/client/XcapClient;->shutdown()V

    .line 236
    :goto_0
    return-void

    .line 223
    :cond_3
    :try_start_1
    new-instance v4, Lcom/mediatek/simservs/xcap/XcapException;

    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v5

    invoke-direct {v4, v5}, Lcom/mediatek/simservs/xcap/XcapException;-><init>(I)V

    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_2

    .line 226
    :catch_0
    move-exception v0

    .line 227
    .local v0, e:Ljava/lang/IllegalArgumentException;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 234
    invoke-virtual {v3}, Lcom/mediatek/xcap/client/XcapClient;->shutdown()V

    goto :goto_0

    .line 228
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 229
    .local v0, e:Ljava/io/IOException;
    :try_start_3
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 230
    new-instance v4, Lcom/mediatek/simservs/xcap/XcapException;

    invoke-direct {v4, v0}, Lcom/mediatek/simservs/xcap/XcapException;-><init>(Ljava/io/IOException;)V

    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 234
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v4

    invoke-virtual {v3}, Lcom/mediatek/xcap/client/XcapClient;->shutdown()V

    throw v4

    .line 231
    :catch_2
    move-exception v0

    .line 232
    .local v0, e:Ljava/net/URISyntaxException;
    :try_start_4
    invoke-virtual {v0}, Ljava/net/URISyntaxException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 234
    invoke-virtual {v3}, Lcom/mediatek/xcap/client/XcapClient;->shutdown()V

    goto :goto_0
.end method
