.class public Lcom/mediatek/simservs/client/policy/Sphere;
.super Lcom/mediatek/simservs/xcap/XcapElement;
.source "Sphere.java"


# static fields
.field public static final NODE_NAME:Ljava/lang/String; = "sphere"


# direct methods
.method public constructor <init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/auth/Credentials;)V
    .locals 0
    .parameter "xcapUri"
    .parameter "parentUri"
    .parameter "intendedId"
    .parameter "credential"

    .prologue
    .line 16
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/mediatek/simservs/xcap/XcapElement;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/auth/Credentials;)V

    .line 17
    return-void
.end method


# virtual methods
.method protected getNodeName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    const-string v0, "sphere"

    return-object v0
.end method
