.class public final enum Lcom/android/internal/telephony/Phone$IccService;
.super Ljava/lang/Enum;
.source "Phone.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/Phone;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "IccService"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/internal/telephony/Phone$IccService;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/internal/telephony/Phone$IccService;

.field public static final enum CFIS:Lcom/android/internal/telephony/Phone$IccService;

.field public static final enum CHV1_DISABLE_FUNCTION:Lcom/android/internal/telephony/Phone$IccService;

.field public static final enum EPLMN:Lcom/android/internal/telephony/Phone$IccService;

.field public static final enum MWIS:Lcom/android/internal/telephony/Phone$IccService;

.field public static final enum OPL:Lcom/android/internal/telephony/Phone$IccService;

.field public static final enum PNN:Lcom/android/internal/telephony/Phone$IccService;

.field public static final enum SMSP:Lcom/android/internal/telephony/Phone$IccService;

.field public static final enum SPDI:Lcom/android/internal/telephony/Phone$IccService;

.field public static final enum SPN:Lcom/android/internal/telephony/Phone$IccService;

.field public static final enum UNSUPPORTED_SERVICE:Lcom/android/internal/telephony/Phone$IccService;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 94
    new-instance v0, Lcom/android/internal/telephony/Phone$IccService;

    const-string v1, "CHV1_DISABLE_FUNCTION"

    invoke-direct {v0, v1, v3}, Lcom/android/internal/telephony/Phone$IccService;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/Phone$IccService;->CHV1_DISABLE_FUNCTION:Lcom/android/internal/telephony/Phone$IccService;

    .line 95
    new-instance v0, Lcom/android/internal/telephony/Phone$IccService;

    const-string v1, "SPN"

    invoke-direct {v0, v1, v4}, Lcom/android/internal/telephony/Phone$IccService;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/Phone$IccService;->SPN:Lcom/android/internal/telephony/Phone$IccService;

    .line 96
    new-instance v0, Lcom/android/internal/telephony/Phone$IccService;

    const-string v1, "PNN"

    invoke-direct {v0, v1, v5}, Lcom/android/internal/telephony/Phone$IccService;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/Phone$IccService;->PNN:Lcom/android/internal/telephony/Phone$IccService;

    .line 97
    new-instance v0, Lcom/android/internal/telephony/Phone$IccService;

    const-string v1, "OPL"

    invoke-direct {v0, v1, v6}, Lcom/android/internal/telephony/Phone$IccService;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/Phone$IccService;->OPL:Lcom/android/internal/telephony/Phone$IccService;

    .line 98
    new-instance v0, Lcom/android/internal/telephony/Phone$IccService;

    const-string v1, "MWIS"

    invoke-direct {v0, v1, v7}, Lcom/android/internal/telephony/Phone$IccService;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/Phone$IccService;->MWIS:Lcom/android/internal/telephony/Phone$IccService;

    .line 99
    new-instance v0, Lcom/android/internal/telephony/Phone$IccService;

    const-string v1, "CFIS"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/Phone$IccService;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/Phone$IccService;->CFIS:Lcom/android/internal/telephony/Phone$IccService;

    .line 100
    new-instance v0, Lcom/android/internal/telephony/Phone$IccService;

    const-string v1, "SPDI"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/Phone$IccService;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/Phone$IccService;->SPDI:Lcom/android/internal/telephony/Phone$IccService;

    .line 101
    new-instance v0, Lcom/android/internal/telephony/Phone$IccService;

    const-string v1, "EPLMN"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/Phone$IccService;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/Phone$IccService;->EPLMN:Lcom/android/internal/telephony/Phone$IccService;

    .line 102
    new-instance v0, Lcom/android/internal/telephony/Phone$IccService;

    const-string v1, "SMSP"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/Phone$IccService;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/Phone$IccService;->SMSP:Lcom/android/internal/telephony/Phone$IccService;

    .line 103
    new-instance v0, Lcom/android/internal/telephony/Phone$IccService;

    const-string v1, "UNSUPPORTED_SERVICE"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/Phone$IccService;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/Phone$IccService;->UNSUPPORTED_SERVICE:Lcom/android/internal/telephony/Phone$IccService;

    .line 93
    const/16 v0, 0xa

    new-array v0, v0, [Lcom/android/internal/telephony/Phone$IccService;

    sget-object v1, Lcom/android/internal/telephony/Phone$IccService;->CHV1_DISABLE_FUNCTION:Lcom/android/internal/telephony/Phone$IccService;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/internal/telephony/Phone$IccService;->SPN:Lcom/android/internal/telephony/Phone$IccService;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/internal/telephony/Phone$IccService;->PNN:Lcom/android/internal/telephony/Phone$IccService;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/internal/telephony/Phone$IccService;->OPL:Lcom/android/internal/telephony/Phone$IccService;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/internal/telephony/Phone$IccService;->MWIS:Lcom/android/internal/telephony/Phone$IccService;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/android/internal/telephony/Phone$IccService;->CFIS:Lcom/android/internal/telephony/Phone$IccService;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/android/internal/telephony/Phone$IccService;->SPDI:Lcom/android/internal/telephony/Phone$IccService;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/android/internal/telephony/Phone$IccService;->EPLMN:Lcom/android/internal/telephony/Phone$IccService;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/android/internal/telephony/Phone$IccService;->SMSP:Lcom/android/internal/telephony/Phone$IccService;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/android/internal/telephony/Phone$IccService;->UNSUPPORTED_SERVICE:Lcom/android/internal/telephony/Phone$IccService;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/internal/telephony/Phone$IccService;->$VALUES:[Lcom/android/internal/telephony/Phone$IccService;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 93
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/Phone$IccService;
    .locals 1
    .parameter "name"

    .prologue
    .line 93
    const-class v0, Lcom/android/internal/telephony/Phone$IccService;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Phone$IccService;

    return-object v0
.end method

.method public static values()[Lcom/android/internal/telephony/Phone$IccService;
    .locals 1

    .prologue
    .line 93
    sget-object v0, Lcom/android/internal/telephony/Phone$IccService;->$VALUES:[Lcom/android/internal/telephony/Phone$IccService;

    invoke-virtual {v0}, [Lcom/android/internal/telephony/Phone$IccService;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/telephony/Phone$IccService;

    return-object v0
.end method


# virtual methods
.method public getIndex()I
    .locals 3

    .prologue
    .line 106
    const/4 v0, -0x1

    .line 107
    .local v0, nIndex:I
    sget-object v1, Lcom/android/internal/telephony/Phone$1;->$SwitchMap$com$android$internal$telephony$Phone$IccService:[I

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone$IccService;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 141
    :goto_0
    return v0

    .line 109
    :pswitch_0
    const/4 v0, 0x0

    .line 110
    goto :goto_0

    .line 112
    :pswitch_1
    const/4 v0, 0x1

    .line 113
    goto :goto_0

    .line 115
    :pswitch_2
    const/4 v0, 0x2

    .line 116
    goto :goto_0

    .line 118
    :pswitch_3
    const/4 v0, 0x3

    .line 119
    goto :goto_0

    .line 121
    :pswitch_4
    const/4 v0, 0x4

    .line 122
    goto :goto_0

    .line 124
    :pswitch_5
    const/4 v0, 0x5

    .line 125
    goto :goto_0

    .line 127
    :pswitch_6
    const/4 v0, 0x6

    .line 128
    goto :goto_0

    .line 130
    :pswitch_7
    const/4 v0, 0x7

    .line 131
    goto :goto_0

    .line 133
    :pswitch_8
    const/16 v0, 0x8

    .line 134
    goto :goto_0

    .line 136
    :pswitch_9
    const/16 v0, 0x9

    .line 137
    goto :goto_0

    .line 107
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method