.class public Landroid/widget/RemoteViews;
.super Ljava/lang/Object;
.source "RemoteViews.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Landroid/view/LayoutInflater$Filter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/RemoteViews$3;,
        Landroid/widget/RemoteViews$MemoryUsageCounter;,
        Landroid/widget/RemoteViews$ViewPaddingAction;,
        Landroid/widget/RemoteViews$TextViewSizeAction;,
        Landroid/widget/RemoteViews$TextViewDrawableAction;,
        Landroid/widget/RemoteViews$ViewGroupAction;,
        Landroid/widget/RemoteViews$ReflectionAction;,
        Landroid/widget/RemoteViews$BitmapReflectionAction;,
        Landroid/widget/RemoteViews$BitmapCache;,
        Landroid/widget/RemoteViews$ReflectionActionWithoutParams;,
        Landroid/widget/RemoteViews$SetDrawableParameters;,
        Landroid/widget/RemoteViews$SetOnClickPendingIntent;,
        Landroid/widget/RemoteViews$SetRemoteViewsAdapterIntent;,
        Landroid/widget/RemoteViews$SetRemoteViewsAdapterList;,
        Landroid/widget/RemoteViews$SetPendingIntentTemplate;,
        Landroid/widget/RemoteViews$SetOnClickFillInIntent;,
        Landroid/widget/RemoteViews$SetEmptyView;,
        Landroid/widget/RemoteViews$Action;,
        Landroid/widget/RemoteViews$OnClickHandler;,
        Landroid/widget/RemoteViews$ActionException;,
        Landroid/widget/RemoteViews$RemoteView;,
        Landroid/widget/RemoteViews$MutablePair;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/widget/RemoteViews;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEFAULT_ON_CLICK_HANDLER:Landroid/widget/RemoteViews$OnClickHandler; = null

.field static final EXTRA_REMOTEADAPTER_APPWIDGET_ID:Ljava/lang/String; = "remoteAdapterAppWidgetId"

.field private static final LOG_TAG:Ljava/lang/String; = "RemoteViews"

.field private static final MODE_HAS_LANDSCAPE_AND_PORTRAIT:I = 0x1

.field private static final MODE_NORMAL:I

.field private static final sInvokeArgsTls:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<[",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final sMethods:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Landroid/view/View;",
            ">;",
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/widget/RemoteViews$MutablePair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;>;",
            "Ljava/lang/reflect/Method;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final sMethodsLock:[Ljava/lang/Object;


# instance fields
.field private mActions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/RemoteViews$Action;",
            ">;"
        }
    .end annotation
.end field

.field private mBitmapCache:Landroid/widget/RemoteViews$BitmapCache;

.field private mHasTransferredToHost:Z

.field private mHasUsedCustomerView:Z

.field mDefaultTheme:I

.field private mIsRoot:Z

.field private mIsWidgetCollectionChild:Z

.field private mLandscape:Landroid/widget/RemoteViews;

.field private final mLayoutId:I

.field private mMemoryUsageCounter:Landroid/widget/RemoteViews$MemoryUsageCounter;

.field private final mPackage:Ljava/lang/String;

.field private final mPair:Landroid/widget/RemoteViews$MutablePair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/RemoteViews$MutablePair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation
.end field

.field private mPortrait:Landroid/widget/RemoteViews;

.field private mUser:Landroid/os/UserHandle;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 145
    new-instance v0, Landroid/widget/RemoteViews$OnClickHandler;

    invoke-direct {v0}, Landroid/widget/RemoteViews$OnClickHandler;-><init>()V

    sput-object v0, Landroid/widget/RemoteViews;->DEFAULT_ON_CLICK_HANDLER:Landroid/widget/RemoteViews$OnClickHandler;

    .line 147
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Landroid/widget/RemoteViews;->sMethodsLock:[Ljava/lang/Object;

    .line 148
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Landroid/widget/RemoteViews;->sMethods:Landroid/util/ArrayMap;

    .line 150
    new-instance v0, Landroid/widget/RemoteViews$1;

    invoke-direct {v0}, Landroid/widget/RemoteViews$1;-><init>()V

    sput-object v0, Landroid/widget/RemoteViews;->sInvokeArgsTls:Ljava/lang/ThreadLocal;

    .line 2550
    new-instance v0, Landroid/widget/RemoteViews$2;

    invoke-direct {v0}, Landroid/widget/RemoteViews$2;-><init>()V

    sput-object v0, Landroid/widget/RemoteViews;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter "parcel"

    .prologue
    .line 1632
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/RemoteViews;-><init>(Landroid/os/Parcel;Landroid/widget/RemoteViews$BitmapCache;)V

    .line 1633
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;Landroid/widget/RemoteViews$BitmapCache;)V
    .locals 10
    .parameter "parcel"
    .parameter "bitmapCache"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v9, 0x0

    .line 1635
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v6

    iput-object v6, p0, Landroid/widget/RemoteViews;->mUser:Landroid/os/UserHandle;

    .line 104
    iput-boolean v5, p0, Landroid/widget/RemoteViews;->mHasTransferredToHost:Z

    .line 119
    iput-boolean v4, p0, Landroid/widget/RemoteViews;->mIsRoot:Z

    .line 133
    iput-object v9, p0, Landroid/widget/RemoteViews;->mLandscape:Landroid/widget/RemoteViews;

    .line 134
    iput-object v9, p0, Landroid/widget/RemoteViews;->mPortrait:Landroid/widget/RemoteViews;

    .line 143
    iput-boolean v5, p0, Landroid/widget/RemoteViews;->mIsWidgetCollectionChild:Z

    .line 187
    new-instance v6, Landroid/widget/RemoteViews$MutablePair;

    invoke-direct {v6, v9, v9}, Landroid/widget/RemoteViews$MutablePair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v6, p0, Landroid/widget/RemoteViews;->mPair:Landroid/widget/RemoteViews$MutablePair;

    .line 1636
    const-string v6, "RemoteViews"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "RemoteViews parcel: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " bitmapCache: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1637
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1640
    .local v2, mode:I
    if-nez p2, :cond_0

    .line 1641
    new-instance v6, Landroid/widget/RemoteViews$BitmapCache;

    invoke-direct {v6, p1}, Landroid/widget/RemoteViews$BitmapCache;-><init>(Landroid/os/Parcel;)V

    iput-object v6, p0, Landroid/widget/RemoteViews;->mBitmapCache:Landroid/widget/RemoteViews$BitmapCache;

    .line 1647
    :goto_0
    if-nez v2, :cond_2

    .line 1648
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Landroid/widget/RemoteViews;->mPackage:Ljava/lang/String;

    .line 1649
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    iput v6, p0, Landroid/widget/RemoteViews;->mLayoutId:I

    .line 1650
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-ne v6, v4, :cond_1

    :goto_1
    iput-boolean v4, p0, Landroid/widget/RemoteViews;->mIsWidgetCollectionChild:Z

    .line 1652
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1653
    .local v0, count:I
    if-lez v0, :cond_3

    .line 1654
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v4, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    .line 1655
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2
    if-ge v1, v0, :cond_3

    .line 1656
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1657
    .local v3, tag:I
    packed-switch v3, :pswitch_data_0

    .line 1701
    :pswitch_0
    new-instance v4, Landroid/widget/RemoteViews$ActionException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Tag "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " not found"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/RemoteViews$ActionException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1643
    .end local v0           #count:I
    .end local v1           #i:I
    .end local v3           #tag:I
    :cond_0
    invoke-direct {p0, p2}, Landroid/widget/RemoteViews;->setBitmapCache(Landroid/widget/RemoteViews$BitmapCache;)V

    .line 1644
    invoke-virtual {p0}, Landroid/widget/RemoteViews;->setNotRoot()V

    goto :goto_0

    :cond_1
    move v4, v5

    .line 1650
    goto :goto_1

    .line 1659
    .restart local v0       #count:I
    .restart local v1       #i:I
    .restart local v3       #tag:I
    :pswitch_1
    iget-object v4, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    new-instance v5, Landroid/widget/RemoteViews$SetOnClickPendingIntent;

    invoke-direct {v5, p0, p1}, Landroid/widget/RemoteViews$SetOnClickPendingIntent;-><init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1655
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1662
    :pswitch_2
    iget-object v4, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    new-instance v5, Landroid/widget/RemoteViews$SetDrawableParameters;

    invoke-direct {v5, p0, p1}, Landroid/widget/RemoteViews$SetDrawableParameters;-><init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1665
    :pswitch_3
    iget-object v4, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    new-instance v5, Landroid/widget/RemoteViews$ReflectionAction;

    invoke-direct {v5, p0, p1}, Landroid/widget/RemoteViews$ReflectionAction;-><init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1668
    :pswitch_4
    iget-object v4, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    new-instance v5, Landroid/widget/RemoteViews$ViewGroupAction;

    iget-object v6, p0, Landroid/widget/RemoteViews;->mBitmapCache:Landroid/widget/RemoteViews$BitmapCache;

    invoke-direct {v5, p0, p1, v6}, Landroid/widget/RemoteViews$ViewGroupAction;-><init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;Landroid/widget/RemoteViews$BitmapCache;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1671
    :pswitch_5
    iget-object v4, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    new-instance v5, Landroid/widget/RemoteViews$ReflectionActionWithoutParams;

    invoke-direct {v5, p0, p1}, Landroid/widget/RemoteViews$ReflectionActionWithoutParams;-><init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1674
    :pswitch_6
    iget-object v4, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    new-instance v5, Landroid/widget/RemoteViews$SetEmptyView;

    invoke-direct {v5, p0, p1}, Landroid/widget/RemoteViews$SetEmptyView;-><init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1677
    :pswitch_7
    iget-object v4, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    new-instance v5, Landroid/widget/RemoteViews$SetPendingIntentTemplate;

    invoke-direct {v5, p0, p1}, Landroid/widget/RemoteViews$SetPendingIntentTemplate;-><init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1680
    :pswitch_8
    iget-object v4, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    new-instance v5, Landroid/widget/RemoteViews$SetOnClickFillInIntent;

    invoke-direct {v5, p0, p1}, Landroid/widget/RemoteViews$SetOnClickFillInIntent;-><init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1683
    :pswitch_9
    iget-object v4, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    new-instance v5, Landroid/widget/RemoteViews$SetRemoteViewsAdapterIntent;

    invoke-direct {v5, p0, p1}, Landroid/widget/RemoteViews$SetRemoteViewsAdapterIntent;-><init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1686
    :pswitch_a
    iget-object v4, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    new-instance v5, Landroid/widget/RemoteViews$TextViewDrawableAction;

    invoke-direct {v5, p0, p1}, Landroid/widget/RemoteViews$TextViewDrawableAction;-><init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1689
    :pswitch_b
    iget-object v4, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    new-instance v5, Landroid/widget/RemoteViews$TextViewSizeAction;

    invoke-direct {v5, p0, p1}, Landroid/widget/RemoteViews$TextViewSizeAction;-><init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1692
    :pswitch_c
    iget-object v4, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    new-instance v5, Landroid/widget/RemoteViews$ViewPaddingAction;

    invoke-direct {v5, p0, p1}, Landroid/widget/RemoteViews$ViewPaddingAction;-><init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1695
    :pswitch_d
    iget-object v4, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    new-instance v5, Landroid/widget/RemoteViews$BitmapReflectionAction;

    invoke-direct {v5, p0, p1}, Landroid/widget/RemoteViews$BitmapReflectionAction;-><init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 1698
    :pswitch_e
    iget-object v4, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    new-instance v5, Landroid/widget/RemoteViews$SetRemoteViewsAdapterList;

    invoke-direct {v5, p0, p1}, Landroid/widget/RemoteViews$SetRemoteViewsAdapterList;-><init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 1707
    .end local v0           #count:I
    .end local v1           #i:I
    .end local v3           #tag:I
    :cond_2
    new-instance v4, Landroid/widget/RemoteViews;

    iget-object v5, p0, Landroid/widget/RemoteViews;->mBitmapCache:Landroid/widget/RemoteViews$BitmapCache;

    invoke-direct {v4, p1, v5}, Landroid/widget/RemoteViews;-><init>(Landroid/os/Parcel;Landroid/widget/RemoteViews$BitmapCache;)V

    iput-object v4, p0, Landroid/widget/RemoteViews;->mLandscape:Landroid/widget/RemoteViews;

    .line 1708
    new-instance v4, Landroid/widget/RemoteViews;

    iget-object v5, p0, Landroid/widget/RemoteViews;->mBitmapCache:Landroid/widget/RemoteViews$BitmapCache;

    invoke-direct {v4, p1, v5}, Landroid/widget/RemoteViews;-><init>(Landroid/os/Parcel;Landroid/widget/RemoteViews$BitmapCache;)V

    iput-object v4, p0, Landroid/widget/RemoteViews;->mPortrait:Landroid/widget/RemoteViews;

    .line 1709
    iget-object v4, p0, Landroid/widget/RemoteViews;->mPortrait:Landroid/widget/RemoteViews;

    invoke-virtual {v4}, Landroid/widget/RemoteViews;->getPackage()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Landroid/widget/RemoteViews;->mPackage:Ljava/lang/String;

    .line 1710
    iget-object v4, p0, Landroid/widget/RemoteViews;->mPortrait:Landroid/widget/RemoteViews;

    invoke-virtual {v4}, Landroid/widget/RemoteViews;->getLayoutId()I

    move-result v4

    iput v4, p0, Landroid/widget/RemoteViews;->mLayoutId:I

    .line 1714
    :cond_3
    new-instance v4, Landroid/widget/RemoteViews$MemoryUsageCounter;

    invoke-direct {v4, p0, v9}, Landroid/widget/RemoteViews$MemoryUsageCounter;-><init>(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews$1;)V

    iput-object v4, p0, Landroid/widget/RemoteViews;->mMemoryUsageCounter:Landroid/widget/RemoteViews$MemoryUsageCounter;

    .line 1715
    invoke-direct {p0}, Landroid/widget/RemoteViews;->recalculateMemoryUsage()V

    .line 1716
    return-void

    .line 1657
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_d
        :pswitch_b
        :pswitch_c
        :pswitch_e
    .end packed-switch
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/widget/RemoteViews$BitmapCache;Landroid/widget/RemoteViews$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 66
    invoke-direct {p0, p1, p2}, Landroid/widget/RemoteViews;-><init>(Landroid/os/Parcel;Landroid/widget/RemoteViews$BitmapCache;)V

    return-void
.end method

.method public constructor <init>(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)V
    .locals 4
    .parameter "landscape"
    .parameter "portrait"

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 1601
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/RemoteViews;->mUser:Landroid/os/UserHandle;

    .line 104
    iput-boolean v1, p0, Landroid/widget/RemoteViews;->mHasTransferredToHost:Z

    .line 119
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/RemoteViews;->mIsRoot:Z

    .line 133
    iput-object v3, p0, Landroid/widget/RemoteViews;->mLandscape:Landroid/widget/RemoteViews;

    .line 134
    iput-object v3, p0, Landroid/widget/RemoteViews;->mPortrait:Landroid/widget/RemoteViews;

    .line 143
    iput-boolean v1, p0, Landroid/widget/RemoteViews;->mIsWidgetCollectionChild:Z

    .line 187
    new-instance v0, Landroid/widget/RemoteViews$MutablePair;

    invoke-direct {v0, v3, v3}, Landroid/widget/RemoteViews$MutablePair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/widget/RemoteViews;->mPair:Landroid/widget/RemoteViews$MutablePair;

    .line 1603
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 1604
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Both RemoteViews must be non-null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1606
    :cond_1
    invoke-virtual {p1}, Landroid/widget/RemoteViews;->getPackage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/widget/RemoteViews;->getPackage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_2

    .line 1607
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Both RemoteViews must share the same package"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1609
    :cond_2
    const-string v0, "RemoteViews"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RemoteViews landscape: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " portrait: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1610
    invoke-virtual {p2}, Landroid/widget/RemoteViews;->getPackage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/RemoteViews;->mPackage:Ljava/lang/String;

    .line 1611
    invoke-virtual {p2}, Landroid/widget/RemoteViews;->getLayoutId()I

    move-result v0

    iput v0, p0, Landroid/widget/RemoteViews;->mLayoutId:I

    .line 1613
    iput-object p1, p0, Landroid/widget/RemoteViews;->mLandscape:Landroid/widget/RemoteViews;

    .line 1614
    iput-object p2, p0, Landroid/widget/RemoteViews;->mPortrait:Landroid/widget/RemoteViews;

    .line 1617
    new-instance v0, Landroid/widget/RemoteViews$MemoryUsageCounter;

    invoke-direct {v0, p0, v3}, Landroid/widget/RemoteViews$MemoryUsageCounter;-><init>(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews$1;)V

    iput-object v0, p0, Landroid/widget/RemoteViews;->mMemoryUsageCounter:Landroid/widget/RemoteViews$MemoryUsageCounter;

    .line 1619
    new-instance v0, Landroid/widget/RemoteViews$BitmapCache;

    invoke-direct {v0}, Landroid/widget/RemoteViews$BitmapCache;-><init>()V

    iput-object v0, p0, Landroid/widget/RemoteViews;->mBitmapCache:Landroid/widget/RemoteViews$BitmapCache;

    .line 1620
    invoke-direct {p0, p1}, Landroid/widget/RemoteViews;->configureRemoteViewsAsChild(Landroid/widget/RemoteViews;)V

    .line 1621
    invoke-direct {p0, p2}, Landroid/widget/RemoteViews;->configureRemoteViewsAsChild(Landroid/widget/RemoteViews;)V

    .line 1623
    invoke-direct {p0}, Landroid/widget/RemoteViews;->recalculateMemoryUsage()V

    .line 1624
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 4
    .parameter "packageName"
    .parameter "layoutId"

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 1574
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/RemoteViews;->mUser:Landroid/os/UserHandle;

    .line 104
    iput-boolean v1, p0, Landroid/widget/RemoteViews;->mHasTransferredToHost:Z

    .line 119
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/RemoteViews;->mIsRoot:Z

    .line 133
    iput-object v3, p0, Landroid/widget/RemoteViews;->mLandscape:Landroid/widget/RemoteViews;

    .line 134
    iput-object v3, p0, Landroid/widget/RemoteViews;->mPortrait:Landroid/widget/RemoteViews;

    .line 143
    iput-boolean v1, p0, Landroid/widget/RemoteViews;->mIsWidgetCollectionChild:Z

    .line 187
    new-instance v0, Landroid/widget/RemoteViews$MutablePair;

    invoke-direct {v0, v3, v3}, Landroid/widget/RemoteViews$MutablePair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/widget/RemoteViews;->mPair:Landroid/widget/RemoteViews$MutablePair;

    .line 1575
    const-string v0, "RemoteViews"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RemoteViews packageName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " layoutId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1576
    iput-object p1, p0, Landroid/widget/RemoteViews;->mPackage:Ljava/lang/String;

    .line 1577
    iput p2, p0, Landroid/widget/RemoteViews;->mLayoutId:I

    .line 1578
    new-instance v0, Landroid/widget/RemoteViews$BitmapCache;

    invoke-direct {v0}, Landroid/widget/RemoteViews$BitmapCache;-><init>()V

    iput-object v0, p0, Landroid/widget/RemoteViews;->mBitmapCache:Landroid/widget/RemoteViews$BitmapCache;

    .line 1581
    new-instance v0, Landroid/widget/RemoteViews$MemoryUsageCounter;

    invoke-direct {v0, p0, v3}, Landroid/widget/RemoteViews$MemoryUsageCounter;-><init>(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews$1;)V

    iput-object v0, p0, Landroid/widget/RemoteViews;->mMemoryUsageCounter:Landroid/widget/RemoteViews$MemoryUsageCounter;

    .line 1582
    invoke-direct {p0}, Landroid/widget/RemoteViews;->recalculateMemoryUsage()V

    .line 1583
    return-void
.end method

.method static synthetic access$100(Landroid/widget/RemoteViews;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-boolean v0, p0, Landroid/widget/RemoteViews;->mIsWidgetCollectionChild:Z

    return v0
.end method

.method static synthetic access$200(Landroid/view/View;)Landroid/graphics/Rect;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    invoke-static {p0}, Landroid/widget/RemoteViews;->getSourceBounds(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Landroid/widget/RemoteViews;Landroid/view/View;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 66
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RemoteViews;->getMethod(Landroid/view/View;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews$BitmapCache;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Landroid/widget/RemoteViews;->mBitmapCache:Landroid/widget/RemoteViews$BitmapCache;

    return-object v0
.end method

.method static synthetic access$500(Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    invoke-static {p0}, Landroid/widget/RemoteViews;->wrapArg(Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    invoke-direct {p0, p1}, Landroid/widget/RemoteViews;->configureRemoteViewsAsChild(Landroid/widget/RemoteViews;)V

    return-void
.end method

.method static synthetic access$800(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews$BitmapCache;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    invoke-direct {p0, p1}, Landroid/widget/RemoteViews;->setBitmapCache(Landroid/widget/RemoteViews$BitmapCache;)V

    return-void
.end method

.method private addAction(Landroid/widget/RemoteViews$Action;)V
    .locals 2
    .parameter "a"

    .prologue
    .line 1808
    invoke-direct {p0}, Landroid/widget/RemoteViews;->hasLandscapeAndPortraitLayouts()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1809
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "RemoteViews specifying separate landscape and portrait layouts cannot be modified. Instead, fully configure the landscape and portrait layouts individually before constructing the combined layout."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1813
    :cond_0
    iget-object v0, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 1814
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    .line 1816
    :cond_1
    iget-object v0, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1819
    iget-object v0, p0, Landroid/widget/RemoteViews;->mMemoryUsageCounter:Landroid/widget/RemoteViews$MemoryUsageCounter;

    invoke-virtual {p1, v0}, Landroid/widget/RemoteViews$Action;->updateMemoryUsageEstimate(Landroid/widget/RemoteViews$MemoryUsageCounter;)V

    .line 1820
    return-void
.end method

.method private configureRemoteViewsAsChild(Landroid/widget/RemoteViews;)V
    .locals 2
    .parameter "rv"

    .prologue
    .line 1300
    iget-object v0, p0, Landroid/widget/RemoteViews;->mBitmapCache:Landroid/widget/RemoteViews$BitmapCache;

    iget-object v1, p1, Landroid/widget/RemoteViews;->mBitmapCache:Landroid/widget/RemoteViews$BitmapCache;

    invoke-virtual {v0, v1}, Landroid/widget/RemoteViews$BitmapCache;->assimilate(Landroid/widget/RemoteViews$BitmapCache;)V

    .line 1301
    iget-object v0, p0, Landroid/widget/RemoteViews;->mBitmapCache:Landroid/widget/RemoteViews$BitmapCache;

    invoke-direct {p1, v0}, Landroid/widget/RemoteViews;->setBitmapCache(Landroid/widget/RemoteViews$BitmapCache;)V

    .line 1302
    invoke-virtual {p1}, Landroid/widget/RemoteViews;->setNotRoot()V

    .line 1303
    return-void
.end method

.method private getMethod(Landroid/view/View;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 8
    .parameter "view"
    .parameter "methodName"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .prologue
    .line 757
    .local p3, paramType:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 759
    .local v1, klass:Ljava/lang/Class;,"Ljava/lang/Class<+Landroid/view/View;>;"
    sget-object v5, Landroid/widget/RemoteViews;->sMethodsLock:[Ljava/lang/Object;

    monitor-enter v5

    .line 760
    :try_start_0
    sget-object v4, Landroid/widget/RemoteViews;->sMethods:Landroid/util/ArrayMap;

    invoke-virtual {v4, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/ArrayMap;

    .line 761
    .local v3, methods:Landroid/util/ArrayMap;,"Landroid/util/ArrayMap<Landroid/widget/RemoteViews$MutablePair<Ljava/lang/String;Ljava/lang/Class<*>;>;Ljava/lang/reflect/Method;>;"
    if-nez v3, :cond_0

    .line 762
    new-instance v3, Landroid/util/ArrayMap;

    .end local v3           #methods:Landroid/util/ArrayMap;,"Landroid/util/ArrayMap<Landroid/widget/RemoteViews$MutablePair<Ljava/lang/String;Ljava/lang/Class<*>;>;Ljava/lang/reflect/Method;>;"
    invoke-direct {v3}, Landroid/util/ArrayMap;-><init>()V

    .line 763
    .restart local v3       #methods:Landroid/util/ArrayMap;,"Landroid/util/ArrayMap<Landroid/widget/RemoteViews$MutablePair<Ljava/lang/String;Ljava/lang/Class<*>;>;Ljava/lang/reflect/Method;>;"
    sget-object v4, Landroid/widget/RemoteViews;->sMethods:Landroid/util/ArrayMap;

    invoke-virtual {v4, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 766
    :cond_0
    iget-object v4, p0, Landroid/widget/RemoteViews;->mPair:Landroid/widget/RemoteViews$MutablePair;

    iput-object p2, v4, Landroid/widget/RemoteViews$MutablePair;->first:Ljava/lang/Object;

    .line 767
    iget-object v4, p0, Landroid/widget/RemoteViews;->mPair:Landroid/widget/RemoteViews$MutablePair;

    iput-object p3, v4, Landroid/widget/RemoteViews$MutablePair;->second:Ljava/lang/Object;

    .line 769
    iget-object v4, p0, Landroid/widget/RemoteViews;->mPair:Landroid/widget/RemoteViews$MutablePair;

    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/reflect/Method;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 770
    .local v2, method:Ljava/lang/reflect/Method;
    if-nez v2, :cond_3

    .line 772
    if-nez p3, :cond_1

    .line 773
    const/4 v4, 0x0

    :try_start_1
    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v1, p2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v2

    .line 782
    :goto_0
    :try_start_2
    const-class v4, Landroid/view/RemotableViewMethod;

    invoke-virtual {v2, v4}, Ljava/lang/reflect/Method;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 783
    new-instance v4, Landroid/widget/RemoteViews$ActionException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "view: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " can\'t use method with RemoteViews: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {p3}, Landroid/widget/RemoteViews;->getParameters(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Landroid/widget/RemoteViews$ActionException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 790
    .end local v2           #method:Ljava/lang/reflect/Method;
    .end local v3           #methods:Landroid/util/ArrayMap;,"Landroid/util/ArrayMap<Landroid/widget/RemoteViews$MutablePair<Ljava/lang/String;Ljava/lang/Class<*>;>;Ljava/lang/reflect/Method;>;"
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .line 775
    .restart local v2       #method:Ljava/lang/reflect/Method;
    .restart local v3       #methods:Landroid/util/ArrayMap;,"Landroid/util/ArrayMap<Landroid/widget/RemoteViews$MutablePair<Ljava/lang/String;Ljava/lang/Class<*>;>;Ljava/lang/reflect/Method;>;"
    :cond_1
    const/4 v4, 0x1

    :try_start_3
    new-array v4, v4, [Ljava/lang/Class;

    const/4 v6, 0x0

    aput-object p3, v4, v6

    invoke-virtual {v1, p2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_3} :catch_0

    move-result-object v2

    goto :goto_0

    .line 777
    :catch_0
    move-exception v0

    .line 778
    .local v0, ex:Ljava/lang/NoSuchMethodException;
    :try_start_4
    new-instance v4, Landroid/widget/RemoteViews$ActionException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "view: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " doesn\'t have method: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {p3}, Landroid/widget/RemoteViews;->getParameters(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Landroid/widget/RemoteViews$ActionException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 788
    .end local v0           #ex:Ljava/lang/NoSuchMethodException;
    :cond_2
    new-instance v4, Landroid/widget/RemoteViews$MutablePair;

    invoke-direct {v4, p2, p3}, Landroid/widget/RemoteViews$MutablePair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v3, v4, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 790
    :cond_3
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 792
    return-object v2
.end method

.method private static getParameters(Ljava/lang/Class;)Ljava/lang/String;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 796
    .local p0, paramType:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    if-nez p0, :cond_0

    const-string v0, "()"

    .line 797
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getRemoteViewsToApply(Landroid/content/Context;)Landroid/widget/RemoteViews;
    .locals 2
    .parameter "context"

    .prologue
    .line 2386
    invoke-direct {p0}, Landroid/widget/RemoteViews;->hasLandscapeAndPortraitLayouts()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2387
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v0, v1, Landroid/content/res/Configuration;->orientation:I

    .line 2388
    .local v0, orientation:I
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 2389
    iget-object p0, p0, Landroid/widget/RemoteViews;->mLandscape:Landroid/widget/RemoteViews;

    .line 2394
    .end local v0           #orientation:I
    .end local p0
    :cond_0
    :goto_0
    return-object p0

    .line 2391
    .restart local v0       #orientation:I
    .restart local p0
    :cond_1
    iget-object p0, p0, Landroid/widget/RemoteViews;->mPortrait:Landroid/widget/RemoteViews;

    goto :goto_0
.end method

.method private static getSourceBounds(Landroid/view/View;)Landroid/graphics/Rect;
    .locals 7
    .parameter "v"

    .prologue
    const/4 v6, 0x1

    const/4 v4, 0x0

    const/high16 v5, 0x3f00

    .line 742
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v3

    iget v0, v3, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    .line 744
    .local v0, appScale:F
    const/4 v3, 0x2

    new-array v1, v3, [I

    .line 745
    .local v1, pos:[I
    invoke-virtual {p0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 747
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 748
    .local v2, rect:Landroid/graphics/Rect;
    aget v3, v1, v4

    int-to-float v3, v3

    mul-float/2addr v3, v0

    add-float/2addr v3, v5

    float-to-int v3, v3

    iput v3, v2, Landroid/graphics/Rect;->left:I

    .line 749
    aget v3, v1, v6

    int-to-float v3, v3

    mul-float/2addr v3, v0

    add-float/2addr v3, v5

    float-to-int v3, v3

    iput v3, v2, Landroid/graphics/Rect;->top:I

    .line 750
    aget v3, v1, v4

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v4

    add-int/2addr v3, v4

    int-to-float v3, v3

    mul-float/2addr v3, v0

    add-float/2addr v3, v5

    float-to-int v3, v3

    iput v3, v2, Landroid/graphics/Rect;->right:I

    .line 751
    aget v3, v1, v6

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    int-to-float v3, v3

    mul-float/2addr v3, v0

    add-float/2addr v3, v5

    float-to-int v3, v3

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    .line 752
    return-object v2
.end method

.method private hasLandscapeAndPortraitLayouts()Z
    .locals 1

    .prologue
    .line 1591
    iget-object v0, p0, Landroid/widget/RemoteViews;->mLandscape:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/RemoteViews;->mPortrait:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private performApply(Landroid/view/View;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$OnClickHandler;)V
    .locals 4
    .parameter "v"
    .parameter "parent"
    .parameter "handler"

    .prologue
    .line 2464
    iget-object v3, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    if-eqz v3, :cond_1

    .line 2465
    if-nez p3, :cond_0

    sget-object p3, Landroid/widget/RemoteViews;->DEFAULT_ON_CLICK_HANDLER:Landroid/widget/RemoteViews$OnClickHandler;

    .line 2466
    :cond_0
    iget-object v3, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 2467
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 2468
    iget-object v3, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RemoteViews$Action;

    .line 2469
    .local v0, a:Landroid/widget/RemoteViews$Action;
    invoke-virtual {v0, p1, p2, p3}, Landroid/widget/RemoteViews$Action;->apply(Landroid/view/View;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$OnClickHandler;)V

    .line 2467
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2472
    .end local v0           #a:Landroid/widget/RemoteViews$Action;
    .end local v1           #count:I
    .end local v2           #i:I
    :cond_1
    return-void
.end method

.method private prepareContext(Landroid/content/Context;)Landroid/content/Context;
    .locals 6
    .parameter "context"

    .prologue
    .line 2476
    iget-object v2, p0, Landroid/widget/RemoteViews;->mPackage:Ljava/lang/String;

    .line 2478
    .local v2, packageName:Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 2481
    :try_start_0
    iget-boolean v3, p0, Landroid/widget/RemoteViews;->mHasUsedCustomerView:Z

    iget-object v4, p0, Landroid/widget/RemoteViews;->mUser:Landroid/os/UserHandle;

    invoke-static {p1, v2, v3, v4}, Landroid/appwidget/AppWidgetContext;->newWidgetContextAsUser(Landroid/content/Context;Ljava/lang/String;ZLandroid/os/UserHandle;)Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 2491
    .local v0, c:Landroid/content/Context;
    :goto_0
    return-object v0

    .line 2483
    .end local v0           #c:Landroid/content/Context;
    :catch_0
    move-exception v1

    .line 2484
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v3, "RemoteViews"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Package name "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " not found"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2485
    move-object v0, p1

    .line 2486
    .restart local v0       #c:Landroid/content/Context;
    goto :goto_0

    .line 2488
    .end local v0           #c:Landroid/content/Context;
    .end local v1           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_0
    move-object v0, p1

    .restart local v0       #c:Landroid/content/Context;
    goto :goto_0
.end method

.method private recalculateMemoryUsage()V
    .locals 4

    .prologue
    .line 1756
    iget-object v2, p0, Landroid/widget/RemoteViews;->mMemoryUsageCounter:Landroid/widget/RemoteViews$MemoryUsageCounter;

    invoke-virtual {v2}, Landroid/widget/RemoteViews$MemoryUsageCounter;->clear()V

    .line 1758
    invoke-direct {p0}, Landroid/widget/RemoteViews;->hasLandscapeAndPortraitLayouts()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1760
    iget-object v2, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    .line 1761
    iget-object v2, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1762
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 1763
    iget-object v2, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/RemoteViews$Action;

    iget-object v3, p0, Landroid/widget/RemoteViews;->mMemoryUsageCounter:Landroid/widget/RemoteViews$MemoryUsageCounter;

    invoke-virtual {v2, v3}, Landroid/widget/RemoteViews$Action;->updateMemoryUsageEstimate(Landroid/widget/RemoteViews$MemoryUsageCounter;)V

    .line 1762
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1766
    .end local v0           #count:I
    .end local v1           #i:I
    :cond_0
    iget-boolean v2, p0, Landroid/widget/RemoteViews;->mIsRoot:Z

    if-eqz v2, :cond_1

    .line 1767
    iget-object v2, p0, Landroid/widget/RemoteViews;->mBitmapCache:Landroid/widget/RemoteViews$BitmapCache;

    iget-object v3, p0, Landroid/widget/RemoteViews;->mMemoryUsageCounter:Landroid/widget/RemoteViews$MemoryUsageCounter;

    invoke-virtual {v2, v3}, Landroid/widget/RemoteViews$BitmapCache;->addBitmapMemory(Landroid/widget/RemoteViews$MemoryUsageCounter;)V

    .line 1774
    :cond_1
    :goto_1
    return-void

    .line 1770
    :cond_2
    iget-object v2, p0, Landroid/widget/RemoteViews;->mMemoryUsageCounter:Landroid/widget/RemoteViews$MemoryUsageCounter;

    iget-object v3, p0, Landroid/widget/RemoteViews;->mLandscape:Landroid/widget/RemoteViews;

    invoke-virtual {v3}, Landroid/widget/RemoteViews;->estimateMemoryUsage()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/RemoteViews$MemoryUsageCounter;->increment(I)V

    .line 1771
    iget-object v2, p0, Landroid/widget/RemoteViews;->mMemoryUsageCounter:Landroid/widget/RemoteViews$MemoryUsageCounter;

    iget-object v3, p0, Landroid/widget/RemoteViews;->mPortrait:Landroid/widget/RemoteViews;

    invoke-virtual {v3}, Landroid/widget/RemoteViews;->estimateMemoryUsage()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/RemoteViews$MemoryUsageCounter;->increment(I)V

    .line 1772
    iget-object v2, p0, Landroid/widget/RemoteViews;->mBitmapCache:Landroid/widget/RemoteViews$BitmapCache;

    iget-object v3, p0, Landroid/widget/RemoteViews;->mMemoryUsageCounter:Landroid/widget/RemoteViews$MemoryUsageCounter;

    invoke-virtual {v2, v3}, Landroid/widget/RemoteViews$BitmapCache;->addBitmapMemory(Landroid/widget/RemoteViews$MemoryUsageCounter;)V

    goto :goto_1
.end method

.method private setBitmapCache(Landroid/widget/RemoteViews$BitmapCache;)V
    .locals 3
    .parameter "bitmapCache"

    .prologue
    .line 1780
    iput-object p1, p0, Landroid/widget/RemoteViews;->mBitmapCache:Landroid/widget/RemoteViews$BitmapCache;

    .line 1781
    invoke-direct {p0}, Landroid/widget/RemoteViews;->hasLandscapeAndPortraitLayouts()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1782
    iget-object v2, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    .line 1783
    iget-object v2, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1784
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 1785
    iget-object v2, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/RemoteViews$Action;

    invoke-virtual {v2, p1}, Landroid/widget/RemoteViews$Action;->setBitmapCache(Landroid/widget/RemoteViews$BitmapCache;)V

    .line 1784
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1789
    .end local v0           #count:I
    .end local v1           #i:I
    :cond_0
    iget-object v2, p0, Landroid/widget/RemoteViews;->mLandscape:Landroid/widget/RemoteViews;

    invoke-direct {v2, p1}, Landroid/widget/RemoteViews;->setBitmapCache(Landroid/widget/RemoteViews$BitmapCache;)V

    .line 1790
    iget-object v2, p0, Landroid/widget/RemoteViews;->mPortrait:Landroid/widget/RemoteViews;

    invoke-direct {v2, p1}, Landroid/widget/RemoteViews;->setBitmapCache(Landroid/widget/RemoteViews$BitmapCache;)V

    .line 1792
    :cond_1
    return-void
.end method

.method private static wrapArg(Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 2
    .parameter "value"

    .prologue
    .line 801
    sget-object v1, Landroid/widget/RemoteViews;->sInvokeArgsTls:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    .line 802
    .local v0, args:[Ljava/lang/Object;
    const/4 v1, 0x0

    aput-object p0, v0, v1

    .line 803
    return-object v0
.end method


# virtual methods
.method public addView(ILandroid/widget/RemoteViews;)V
    .locals 1
    .parameter "viewId"
    .parameter "nestedView"

    .prologue
    .line 1833
    new-instance v0, Landroid/widget/RemoteViews$ViewGroupAction;

    invoke-direct {v0, p0, p1, p2}, Landroid/widget/RemoteViews$ViewGroupAction;-><init>(Landroid/widget/RemoteViews;ILandroid/widget/RemoteViews;)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 1834
    return-void
.end method

.method public apply(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .parameter "context"
    .parameter "parent"

    .prologue
    .line 2409
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/widget/RemoteViews;->apply(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$OnClickHandler;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public apply(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$OnClickHandler;)Landroid/view/View;
    .locals 7
    .parameter "context"
    .parameter "parent"
    .parameter "handler"

    .prologue
    .line 2414
    invoke-direct {p0, p1}, Landroid/widget/RemoteViews;->getRemoteViewsToApply(Landroid/content/Context;)Landroid/widget/RemoteViews;

    move-result-object v3

    .line 2415
    .local v3, rvToApply:Landroid/widget/RemoteViews;
    const-string v4, "RemoteViews"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "apply LayoutId: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Landroid/widget/RemoteViews;->getLayoutId()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2418
    invoke-direct {p0, p1}, Landroid/widget/RemoteViews;->prepareContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    .line 2420
    .local v0, c:Landroid/content/Context;
    iget v4, p0, Landroid/widget/RemoteViews;->mDefaultTheme:I

    invoke-virtual {v0, v4}, Landroid/content/Context;->setTheme(I)V

    const-string v4, "layout_inflater"

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 2423
    .local v1, inflater:Landroid/view/LayoutInflater;
    invoke-virtual {v1, v0}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 2424
    invoke-virtual {v1, p0}, Landroid/view/LayoutInflater;->setFilter(Landroid/view/LayoutInflater$Filter;)V

    .line 2426
    invoke-virtual {v3}, Landroid/widget/RemoteViews;->getLayoutId()I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v1, v4, p2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 2428
    .local v2, result:Landroid/view/View;
    invoke-direct {v3, v2, p2, p3}, Landroid/widget/RemoteViews;->performApply(Landroid/view/View;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$OnClickHandler;)V

    .line 2430
    return-object v2
.end method

.method public clone()Landroid/widget/RemoteViews;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1720
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1721
    .local v0, p:Landroid/os/Parcel;
    invoke-virtual {p0, v0, v1}, Landroid/widget/RemoteViews;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1722
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 1723
    new-instance v1, Landroid/widget/RemoteViews;

    invoke-direct {v1, v0}, Landroid/widget/RemoteViews;-><init>(Landroid/os/Parcel;)V

    return-object v1
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 66
    invoke-virtual {p0}, Landroid/widget/RemoteViews;->clone()Landroid/widget/RemoteViews;

    move-result-object v0

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 2504
    const/4 v0, 0x0

    return v0
.end method

.method public estimateMemoryUsage()I
    .locals 1

    .prologue
    .line 1799
    iget-object v0, p0, Landroid/widget/RemoteViews;->mMemoryUsageCounter:Landroid/widget/RemoteViews$MemoryUsageCounter;

    invoke-virtual {v0}, Landroid/widget/RemoteViews$MemoryUsageCounter;->getMemoryUsage()I

    move-result v0

    return v0
.end method

.method public getLayoutId()I
    .locals 1

    .prologue
    .line 1738
    iget v0, p0, Landroid/widget/RemoteViews;->mLayoutId:I

    return v0
.end method

.method public getPackage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1727
    iget-object v0, p0, Landroid/widget/RemoteViews;->mPackage:Ljava/lang/String;

    return-object v0
.end method

.method public mergeRemoteViews(Landroid/widget/RemoteViews;)V
    .locals 10
    .parameter "newRv"

    .prologue
    .line 290
    if-nez p1, :cond_1

    .line 328
    :cond_0
    :goto_0
    return-void

    .line 294
    :cond_1
    invoke-virtual {p1}, Landroid/widget/RemoteViews;->clone()Landroid/widget/RemoteViews;

    move-result-object v1

    .line 296
    .local v1, copy:Landroid/widget/RemoteViews;
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 297
    .local v5, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Landroid/widget/RemoteViews$Action;>;"
    iget-object v8, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    if-nez v8, :cond_2

    .line 298
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    .line 301
    :cond_2
    iget-object v8, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 302
    .local v2, count:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-ge v3, v2, :cond_3

    .line 303
    iget-object v8, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RemoteViews$Action;

    .line 304
    .local v0, a:Landroid/widget/RemoteViews$Action;
    invoke-virtual {v0}, Landroid/widget/RemoteViews$Action;->getUniqueKey()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 302
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 307
    .end local v0           #a:Landroid/widget/RemoteViews$Action;
    :cond_3
    iget-object v7, v1, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    .line 308
    .local v7, newActions:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/widget/RemoteViews$Action;>;"
    if-eqz v7, :cond_0

    .line 309
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 310
    const/4 v3, 0x0

    :goto_2
    if-ge v3, v2, :cond_7

    .line 311
    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RemoteViews$Action;

    .line 312
    .restart local v0       #a:Landroid/widget/RemoteViews$Action;
    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/widget/RemoteViews$Action;

    invoke-virtual {v8}, Landroid/widget/RemoteViews$Action;->getUniqueKey()Ljava/lang/String;

    move-result-object v4

    .line 313
    .local v4, key:Ljava/lang/String;
    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/widget/RemoteViews$Action;

    invoke-virtual {v8}, Landroid/widget/RemoteViews$Action;->mergeBehavior()I

    move-result v6

    .line 314
    .local v6, mergeBehavior:I
    invoke-virtual {v5, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    if-nez v6, :cond_4

    .line 315
    iget-object v8, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 316
    invoke-virtual {v5, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 320
    :cond_4
    if-eqz v6, :cond_5

    const/4 v8, 0x1

    if-ne v6, v8, :cond_6

    .line 321
    :cond_5
    iget-object v8, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 310
    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 326
    .end local v0           #a:Landroid/widget/RemoteViews$Action;
    .end local v4           #key:Ljava/lang/String;
    .end local v6           #mergeBehavior:I
    :cond_7
    new-instance v8, Landroid/widget/RemoteViews$BitmapCache;

    invoke-direct {v8}, Landroid/widget/RemoteViews$BitmapCache;-><init>()V

    iput-object v8, p0, Landroid/widget/RemoteViews;->mBitmapCache:Landroid/widget/RemoteViews$BitmapCache;

    .line 327
    iget-object v8, p0, Landroid/widget/RemoteViews;->mBitmapCache:Landroid/widget/RemoteViews$BitmapCache;

    invoke-direct {p0, v8}, Landroid/widget/RemoteViews;->setBitmapCache(Landroid/widget/RemoteViews$BitmapCache;)V

    goto/16 :goto_0
.end method

.method public onLoadClass(Ljava/lang/Class;)Z
    .locals 1
    .parameter "clazz"

    .prologue
    .line 2500
    const-class v0, Landroid/widget/RemoteViews$RemoteView;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public reapply(Landroid/content/Context;Landroid/view/View;)V
    .locals 1
    .parameter "context"
    .parameter "v"

    .prologue
    .line 2442
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/widget/RemoteViews;->reapply(Landroid/content/Context;Landroid/view/View;Landroid/widget/RemoteViews$OnClickHandler;)V

    .line 2443
    return-void
.end method

.method public reapply(Landroid/content/Context;Landroid/view/View;Landroid/widget/RemoteViews$OnClickHandler;)V
    .locals 3
    .parameter "context"
    .parameter "v"
    .parameter "handler"

    .prologue
    .line 2447
    invoke-direct {p0, p1}, Landroid/widget/RemoteViews;->getRemoteViewsToApply(Landroid/content/Context;)Landroid/widget/RemoteViews;

    move-result-object v0

    .line 2452
    .local v0, rvToApply:Landroid/widget/RemoteViews;
    invoke-direct {p0}, Landroid/widget/RemoteViews;->hasLandscapeAndPortraitLayouts()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2453
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {v0}, Landroid/widget/RemoteViews;->getLayoutId()I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 2454
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Attempting to re-apply RemoteViews to a view that that does not share the same root layout id."

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2459
    :cond_0
    invoke-direct {p0, p1}, Landroid/widget/RemoteViews;->prepareContext(Landroid/content/Context;)Landroid/content/Context;

    .line 2460
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-direct {v0, p2, v1, p3}, Landroid/widget/RemoteViews;->performApply(Landroid/view/View;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$OnClickHandler;)V

    .line 2461
    return-void
.end method

.method public removeAllViews(I)V
    .locals 2
    .parameter "viewId"

    .prologue
    .line 1843
    new-instance v0, Landroid/widget/RemoteViews$ViewGroupAction;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Landroid/widget/RemoteViews$ViewGroupAction;-><init>(Landroid/widget/RemoteViews;ILandroid/widget/RemoteViews;)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 1844
    return-void
.end method

.method public setBitmap(ILjava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "viewId"
    .parameter "methodName"
    .parameter "value"

    .prologue
    .line 2340
    new-instance v0, Landroid/widget/RemoteViews$BitmapReflectionAction;

    invoke-direct {v0, p0, p1, p2, p3}, Landroid/widget/RemoteViews$BitmapReflectionAction;-><init>(Landroid/widget/RemoteViews;ILjava/lang/String;Landroid/graphics/Bitmap;)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 2341
    return-void
.end method

.method public setBoolean(ILjava/lang/String;Z)V
    .locals 6
    .parameter "viewId"
    .parameter "methodName"
    .parameter "value"

    .prologue
    .line 2209
    new-instance v0, Landroid/widget/RemoteViews$ReflectionAction;

    const/4 v4, 0x1

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Landroid/widget/RemoteViews$ReflectionAction;-><init>(Landroid/widget/RemoteViews;ILjava/lang/String;ILjava/lang/Object;)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 2210
    return-void
.end method

.method public setBundle(ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 6
    .parameter "viewId"
    .parameter "methodName"
    .parameter "value"

    .prologue
    .line 2351
    new-instance v0, Landroid/widget/RemoteViews$ReflectionAction;

    const/16 v4, 0xd

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Landroid/widget/RemoteViews$ReflectionAction;-><init>(Landroid/widget/RemoteViews;ILjava/lang/String;ILjava/lang/Object;)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 2352
    return-void
.end method

.method public setByte(ILjava/lang/String;B)V
    .locals 6
    .parameter "viewId"
    .parameter "methodName"
    .parameter "value"

    .prologue
    .line 2220
    new-instance v0, Landroid/widget/RemoteViews$ReflectionAction;

    const/4 v4, 0x2

    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Landroid/widget/RemoteViews$ReflectionAction;-><init>(Landroid/widget/RemoteViews;ILjava/lang/String;ILjava/lang/Object;)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 2221
    return-void
.end method

.method public setChar(ILjava/lang/String;C)V
    .locals 6
    .parameter "viewId"
    .parameter "methodName"
    .parameter "value"

    .prologue
    .line 2286
    new-instance v0, Landroid/widget/RemoteViews$ReflectionAction;

    const/16 v4, 0x8

    invoke-static {p3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v5

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Landroid/widget/RemoteViews$ReflectionAction;-><init>(Landroid/widget/RemoteViews;ILjava/lang/String;ILjava/lang/Object;)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 2287
    return-void
.end method

.method public setCharSequence(ILjava/lang/String;Ljava/lang/CharSequence;)V
    .locals 6
    .parameter "viewId"
    .parameter "methodName"
    .parameter "value"

    .prologue
    .line 2308
    new-instance v0, Landroid/widget/RemoteViews$ReflectionAction;

    const/16 v4, 0xa

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Landroid/widget/RemoteViews$ReflectionAction;-><init>(Landroid/widget/RemoteViews;ILjava/lang/String;ILjava/lang/Object;)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 2309
    return-void
.end method

.method public setChronometer(IJLjava/lang/String;Z)V
    .locals 1
    .parameter "viewId"
    .parameter "base"
    .parameter "format"
    .parameter "started"

    .prologue
    .line 1989
    const-string/jumbo v0, "setBase"

    invoke-virtual {p0, p1, v0, p2, p3}, Landroid/widget/RemoteViews;->setLong(ILjava/lang/String;J)V

    .line 1990
    const-string/jumbo v0, "setFormat"

    invoke-virtual {p0, p1, v0, p4}, Landroid/widget/RemoteViews;->setString(ILjava/lang/String;Ljava/lang/String;)V

    .line 1991
    const-string/jumbo v0, "setStarted"

    invoke-virtual {p0, p1, v0, p5}, Landroid/widget/RemoteViews;->setBoolean(ILjava/lang/String;Z)V

    .line 1992
    return-void
.end method

.method public setContentDescription(ILjava/lang/CharSequence;)V
    .locals 1
    .parameter "viewId"
    .parameter "contentDescription"

    .prologue
    .line 2372
    const-string/jumbo v0, "setContentDescription"

    invoke-virtual {p0, p1, v0, p2}, Landroid/widget/RemoteViews;->setCharSequence(ILjava/lang/String;Ljava/lang/CharSequence;)V

    .line 2373
    return-void
.end method

.method public setDefaultTheme(I)V
    .locals 0
    .parameter "id"

    .prologue
    iput p1, p0, Landroid/widget/RemoteViews;->mDefaultTheme:I

    return-void
.end method

.method public setDisplayedChild(II)V
    .locals 1
    .parameter "viewId"
    .parameter "childIndex"

    .prologue
    .line 1871
    const-string/jumbo v0, "setDisplayedChild"

    invoke-virtual {p0, p1, v0, p2}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 1872
    return-void
.end method

.method public setDouble(ILjava/lang/String;D)V
    .locals 6
    .parameter "viewId"
    .parameter "methodName"
    .parameter "value"

    .prologue
    .line 2275
    new-instance v0, Landroid/widget/RemoteViews$ReflectionAction;

    const/4 v4, 0x7

    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Landroid/widget/RemoteViews$ReflectionAction;-><init>(Landroid/widget/RemoteViews;ILjava/lang/String;ILjava/lang/Object;)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 2276
    return-void
.end method

.method public setDrawableParameters(IZIILandroid/graphics/PorterDuff$Mode;I)V
    .locals 8
    .parameter "viewId"
    .parameter "targetBackground"
    .parameter "alpha"
    .parameter "colorFilter"
    .parameter "mode"
    .parameter "level"

    .prologue
    .line 2100
    new-instance v0, Landroid/widget/RemoteViews$SetDrawableParameters;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Landroid/widget/RemoteViews$SetDrawableParameters;-><init>(Landroid/widget/RemoteViews;IZIILandroid/graphics/PorterDuff$Mode;I)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 2102
    return-void
.end method

.method public setEmptyView(II)V
    .locals 1
    .parameter "viewId"
    .parameter "emptyViewId"

    .prologue
    .line 1971
    new-instance v0, Landroid/widget/RemoteViews$SetEmptyView;

    invoke-direct {v0, p0, p1, p2}, Landroid/widget/RemoteViews$SetEmptyView;-><init>(Landroid/widget/RemoteViews;II)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 1972
    return-void
.end method

.method public setFloat(ILjava/lang/String;F)V
    .locals 6
    .parameter "viewId"
    .parameter "methodName"
    .parameter "value"

    .prologue
    .line 2264
    new-instance v0, Landroid/widget/RemoteViews$ReflectionAction;

    const/4 v4, 0x6

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Landroid/widget/RemoteViews$ReflectionAction;-><init>(Landroid/widget/RemoteViews;ILjava/lang/String;ILjava/lang/Object;)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 2265
    return-void
.end method

.method public setHasUsedCustomerView(Z)V
    .locals 0
    .parameter "usedCustomerView"

    .prologue
    .line 2568
    iput-boolean p1, p0, Landroid/widget/RemoteViews;->mHasUsedCustomerView:Z

    .line 2569
    return-void
.end method

.method public setImageViewBitmap(ILandroid/graphics/Bitmap;)V
    .locals 1
    .parameter "viewId"
    .parameter "bitmap"

    .prologue
    .line 1961
    const-string/jumbo v0, "setImageBitmap"

    invoke-virtual {p0, p1, v0, p2}, Landroid/widget/RemoteViews;->setBitmap(ILjava/lang/String;Landroid/graphics/Bitmap;)V

    .line 1962
    return-void
.end method

.method public setImageViewResource(II)V
    .locals 1
    .parameter "viewId"
    .parameter "srcId"

    .prologue
    .line 1941
    const-string/jumbo v0, "setImageResource"

    invoke-virtual {p0, p1, v0, p2}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 1942
    return-void
.end method

.method public setImageViewUri(ILandroid/net/Uri;)V
    .locals 1
    .parameter "viewId"
    .parameter "uri"

    .prologue
    .line 1951
    const-string/jumbo v0, "setImageURI"

    invoke-virtual {p0, p1, v0, p2}, Landroid/widget/RemoteViews;->setUri(ILjava/lang/String;Landroid/net/Uri;)V

    .line 1952
    return-void
.end method

.method public setInt(ILjava/lang/String;I)V
    .locals 6
    .parameter "viewId"
    .parameter "methodName"
    .parameter "value"

    .prologue
    .line 2242
    new-instance v0, Landroid/widget/RemoteViews$ReflectionAction;

    const/4 v4, 0x4

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Landroid/widget/RemoteViews$ReflectionAction;-><init>(Landroid/widget/RemoteViews;ILjava/lang/String;ILjava/lang/Object;)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 2243
    return-void
.end method

.method public setIntent(ILjava/lang/String;Landroid/content/Intent;)V
    .locals 6
    .parameter "viewId"
    .parameter "methodName"
    .parameter "value"

    .prologue
    .line 2362
    new-instance v0, Landroid/widget/RemoteViews$ReflectionAction;

    const/16 v4, 0xe

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Landroid/widget/RemoteViews$ReflectionAction;-><init>(Landroid/widget/RemoteViews;ILjava/lang/String;ILjava/lang/Object;)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 2363
    return-void
.end method

.method setIsWidgetCollectionChild(Z)V
    .locals 0
    .parameter "isWidgetCollectionChild"

    .prologue
    .line 1749
    iput-boolean p1, p0, Landroid/widget/RemoteViews;->mIsWidgetCollectionChild:Z

    .line 1750
    return-void
.end method

.method public setLabelFor(II)V
    .locals 1
    .parameter "viewId"
    .parameter "labeledId"

    .prologue
    .line 2382
    const-string/jumbo v0, "setLabelFor"

    invoke-virtual {p0, p1, v0, p2}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 2383
    return-void
.end method

.method public setLong(ILjava/lang/String;J)V
    .locals 6
    .parameter "viewId"
    .parameter "methodName"
    .parameter "value"

    .prologue
    .line 2253
    new-instance v0, Landroid/widget/RemoteViews$ReflectionAction;

    const/4 v4, 0x5

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Landroid/widget/RemoteViews$ReflectionAction;-><init>(Landroid/widget/RemoteViews;ILjava/lang/String;ILjava/lang/Object;)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 2254
    return-void
.end method

.method setNotRoot()V
    .locals 1

    .prologue
    .line 1306
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/RemoteViews;->mIsRoot:Z

    .line 1307
    return-void
.end method

.method public setOnClickFillInIntent(ILandroid/content/Intent;)V
    .locals 1
    .parameter "viewId"
    .parameter "fillInIntent"

    .prologue
    .line 2069
    new-instance v0, Landroid/widget/RemoteViews$SetOnClickFillInIntent;

    invoke-direct {v0, p0, p1, p2}, Landroid/widget/RemoteViews$SetOnClickFillInIntent;-><init>(Landroid/widget/RemoteViews;ILandroid/content/Intent;)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 2070
    return-void
.end method

.method public setOnClickPendingIntent(ILandroid/app/PendingIntent;)V
    .locals 1
    .parameter "viewId"
    .parameter "pendingIntent"

    .prologue
    .line 2030
    new-instance v0, Landroid/widget/RemoteViews$SetOnClickPendingIntent;

    invoke-direct {v0, p0, p1, p2}, Landroid/widget/RemoteViews$SetOnClickPendingIntent;-><init>(Landroid/widget/RemoteViews;ILandroid/app/PendingIntent;)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 2031
    return-void
.end method

.method public setPendingIntentTemplate(ILandroid/app/PendingIntent;)V
    .locals 1
    .parameter "viewId"
    .parameter "pendingIntentTemplate"

    .prologue
    .line 2046
    new-instance v0, Landroid/widget/RemoteViews$SetPendingIntentTemplate;

    invoke-direct {v0, p0, p1, p2}, Landroid/widget/RemoteViews$SetPendingIntentTemplate;-><init>(Landroid/widget/RemoteViews;ILandroid/app/PendingIntent;)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 2047
    return-void
.end method

.method public setProgressBar(IIIZ)V
    .locals 1
    .parameter "viewId"
    .parameter "max"
    .parameter "progress"
    .parameter "indeterminate"

    .prologue
    .line 2009
    const-string/jumbo v0, "setIndeterminate"

    invoke-virtual {p0, p1, v0, p4}, Landroid/widget/RemoteViews;->setBoolean(ILjava/lang/String;Z)V

    .line 2010
    if-nez p4, :cond_0

    .line 2011
    const-string/jumbo v0, "setMax"

    invoke-virtual {p0, p1, v0, p2}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 2012
    const-string/jumbo v0, "setProgress"

    invoke-virtual {p0, p1, v0, p3}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 2014
    :cond_0
    return-void
.end method

.method public setRelativeScrollPosition(II)V
    .locals 1
    .parameter "viewId"
    .parameter "offset"

    .prologue
    .line 2185
    const-string/jumbo v0, "smoothScrollByOffset"

    invoke-virtual {p0, p1, v0, p2}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 2186
    return-void
.end method

.method public setRemoteAdapter(IILandroid/content/Intent;)V
    .locals 0
    .parameter "appWidgetId"
    .parameter "viewId"
    .parameter "intent"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2128
    invoke-virtual {p0, p2, p3}, Landroid/widget/RemoteViews;->setRemoteAdapter(ILandroid/content/Intent;)V

    .line 2129
    return-void
.end method

.method public setRemoteAdapter(ILandroid/content/Intent;)V
    .locals 1
    .parameter "viewId"
    .parameter "intent"

    .prologue
    .line 2140
    new-instance v0, Landroid/widget/RemoteViews$SetRemoteViewsAdapterIntent;

    invoke-direct {v0, p0, p1, p2}, Landroid/widget/RemoteViews$SetRemoteViewsAdapterIntent;-><init>(Landroid/widget/RemoteViews;ILandroid/content/Intent;)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 2141
    return-void
.end method

.method public setRemoteAdapter(ILjava/util/ArrayList;I)V
    .locals 1
    .parameter "viewId"
    .parameter
    .parameter "viewTypeCount"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/RemoteViews;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 2165
    .local p2, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/widget/RemoteViews;>;"
    new-instance v0, Landroid/widget/RemoteViews$SetRemoteViewsAdapterList;

    invoke-direct {v0, p0, p1, p2, p3}, Landroid/widget/RemoteViews$SetRemoteViewsAdapterList;-><init>(Landroid/widget/RemoteViews;ILjava/util/ArrayList;I)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 2166
    return-void
.end method

.method public setScrollPosition(II)V
    .locals 1
    .parameter "viewId"
    .parameter "position"

    .prologue
    .line 2175
    const-string/jumbo v0, "smoothScrollToPosition"

    invoke-virtual {p0, p1, v0, p2}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 2176
    return-void
.end method

.method public setShort(ILjava/lang/String;S)V
    .locals 6
    .parameter "viewId"
    .parameter "methodName"
    .parameter "value"

    .prologue
    .line 2231
    new-instance v0, Landroid/widget/RemoteViews$ReflectionAction;

    const/4 v4, 0x3

    invoke-static {p3}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v5

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Landroid/widget/RemoteViews$ReflectionAction;-><init>(Landroid/widget/RemoteViews;ILjava/lang/String;ILjava/lang/Object;)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 2232
    return-void
.end method

.method public setString(ILjava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "viewId"
    .parameter "methodName"
    .parameter "value"

    .prologue
    .line 2297
    new-instance v0, Landroid/widget/RemoteViews$ReflectionAction;

    const/16 v4, 0x9

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Landroid/widget/RemoteViews$ReflectionAction;-><init>(Landroid/widget/RemoteViews;ILjava/lang/String;ILjava/lang/Object;)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 2298
    return-void
.end method

.method public setTextColor(II)V
    .locals 1
    .parameter "viewId"
    .parameter "color"

    .prologue
    .line 2112
    const-string/jumbo v0, "setTextColor"

    invoke-virtual {p0, p1, v0, p2}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 2113
    return-void
.end method

.method public setTextViewCompoundDrawables(IIIII)V
    .locals 8
    .parameter "viewId"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 1916
    new-instance v0, Landroid/widget/RemoteViews$TextViewDrawableAction;

    const/4 v3, 0x0

    move-object v1, p0

    move v2, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-direct/range {v0 .. v7}, Landroid/widget/RemoteViews$TextViewDrawableAction;-><init>(Landroid/widget/RemoteViews;IZIIII)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 1917
    return-void
.end method

.method public setTextViewCompoundDrawablesRelative(IIIII)V
    .locals 8
    .parameter "viewId"
    .parameter "start"
    .parameter "top"
    .parameter "end"
    .parameter "bottom"

    .prologue
    .line 1931
    new-instance v0, Landroid/widget/RemoteViews$TextViewDrawableAction;

    const/4 v3, 0x1

    move-object v1, p0

    move v2, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-direct/range {v0 .. v7}, Landroid/widget/RemoteViews$TextViewDrawableAction;-><init>(Landroid/widget/RemoteViews;IZIIII)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 1932
    return-void
.end method

.method public setTextViewText(ILjava/lang/CharSequence;)V
    .locals 1
    .parameter "viewId"
    .parameter "text"

    .prologue
    .line 1891
    const-string/jumbo v0, "setText"

    invoke-virtual {p0, p1, v0, p2}, Landroid/widget/RemoteViews;->setCharSequence(ILjava/lang/String;Ljava/lang/CharSequence;)V

    .line 1892
    return-void
.end method

.method public setTextViewTextSize(IIF)V
    .locals 1
    .parameter "viewId"
    .parameter "units"
    .parameter "size"

    .prologue
    .line 1902
    new-instance v0, Landroid/widget/RemoteViews$TextViewSizeAction;

    invoke-direct {v0, p0, p1, p2, p3}, Landroid/widget/RemoteViews$TextViewSizeAction;-><init>(Landroid/widget/RemoteViews;IIF)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 1903
    return-void
.end method

.method public setUri(ILjava/lang/String;Landroid/net/Uri;)V
    .locals 6
    .parameter "viewId"
    .parameter "methodName"
    .parameter "value"

    .prologue
    .line 2319
    if-eqz p3, :cond_0

    .line 2321
    invoke-virtual {p3}, Landroid/net/Uri;->getCanonicalUri()Landroid/net/Uri;

    move-result-object p3

    .line 2322
    invoke-static {}, Landroid/os/StrictMode;->vmFileUriExposureEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2323
    const-string v0, "RemoteViews.setUri()"

    invoke-virtual {p3, v0}, Landroid/net/Uri;->checkFileUriExposed(Ljava/lang/String;)V

    .line 2326
    :cond_0
    new-instance v0, Landroid/widget/RemoteViews$ReflectionAction;

    const/16 v4, 0xb

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Landroid/widget/RemoteViews$ReflectionAction;-><init>(Landroid/widget/RemoteViews;ILjava/lang/String;ILjava/lang/Object;)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 2327
    return-void
.end method

.method public setUser(Landroid/os/UserHandle;)V
    .locals 0
    .parameter "user"

    .prologue
    .line 1587
    iput-object p1, p0, Landroid/widget/RemoteViews;->mUser:Landroid/os/UserHandle;

    .line 1588
    return-void
.end method

.method public setViewPadding(IIIII)V
    .locals 7
    .parameter "viewId"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 2198
    new-instance v0, Landroid/widget/RemoteViews$ViewPaddingAction;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Landroid/widget/RemoteViews$ViewPaddingAction;-><init>(Landroid/widget/RemoteViews;IIIII)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 2199
    return-void
.end method

.method public setViewVisibility(II)V
    .locals 1
    .parameter "viewId"
    .parameter "visibility"

    .prologue
    .line 1881
    const-string/jumbo v0, "setVisibility"

    invoke-virtual {p0, p1, v0, p2}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 1882
    return-void
.end method

.method public showNext(I)V
    .locals 2
    .parameter "viewId"

    .prologue
    .line 1852
    new-instance v0, Landroid/widget/RemoteViews$ReflectionActionWithoutParams;

    const-string/jumbo v1, "showNext"

    invoke-direct {v0, p0, p1, v1}, Landroid/widget/RemoteViews$ReflectionActionWithoutParams;-><init>(Landroid/widget/RemoteViews;ILjava/lang/String;)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 1853
    return-void
.end method

.method public showPrevious(I)V
    .locals 2
    .parameter "viewId"

    .prologue
    .line 1861
    new-instance v0, Landroid/widget/RemoteViews$ReflectionActionWithoutParams;

    const-string/jumbo v1, "showPrevious"

    invoke-direct {v0, p0, p1, v1}, Landroid/widget/RemoteViews$ReflectionActionWithoutParams;-><init>(Landroid/widget/RemoteViews;ILjava/lang/String;)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 1862
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 7
    .parameter "dest"
    .parameter "flags"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 2509
    iget-boolean v5, p0, Landroid/widget/RemoteViews;->mHasTransferredToHost:Z

    if-eqz v5, :cond_0

    .line 2510
    const-string v5, "RemoteViews"

    const-string v6, "ANR Warning,RemoteViews can only be used once ,if not ,it may cause ANR in hosts such as Laucher,SystemUI. keys for search <ANR Exception MSG   History>"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2512
    :cond_0
    iput-boolean v3, p0, Landroid/widget/RemoteViews;->mHasTransferredToHost:Z

    .line 2514
    invoke-direct {p0}, Landroid/widget/RemoteViews;->hasLandscapeAndPortraitLayouts()Z

    move-result v5

    if-nez v5, :cond_4

    .line 2515
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2518
    iget-boolean v5, p0, Landroid/widget/RemoteViews;->mIsRoot:Z

    if-eqz v5, :cond_1

    .line 2519
    iget-object v5, p0, Landroid/widget/RemoteViews;->mBitmapCache:Landroid/widget/RemoteViews$BitmapCache;

    invoke-virtual {v5, p1, p2}, Landroid/widget/RemoteViews$BitmapCache;->writeBitmapsToParcel(Landroid/os/Parcel;I)V

    .line 2521
    :cond_1
    iget-object v5, p0, Landroid/widget/RemoteViews;->mPackage:Ljava/lang/String;

    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2522
    iget v5, p0, Landroid/widget/RemoteViews;->mLayoutId:I

    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 2523
    iget-boolean v5, p0, Landroid/widget/RemoteViews;->mIsWidgetCollectionChild:Z

    if-eqz v5, :cond_2

    :goto_0
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2525
    iget-object v3, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    if-eqz v3, :cond_3

    .line 2526
    iget-object v3, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 2530
    .local v1, count:I
    :goto_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2531
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    if-ge v2, v1, :cond_6

    .line 2532
    iget-object v3, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RemoteViews$Action;

    .line 2533
    .local v0, a:Landroid/widget/RemoteViews$Action;
    invoke-virtual {v0, p1, v4}, Landroid/widget/RemoteViews$Action;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2531
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .end local v0           #a:Landroid/widget/RemoteViews$Action;
    .end local v1           #count:I
    .end local v2           #i:I
    :cond_2
    move v3, v4

    .line 2523
    goto :goto_0

    .line 2528
    :cond_3
    const/4 v1, 0x0

    .restart local v1       #count:I
    goto :goto_1

    .line 2536
    .end local v1           #count:I
    :cond_4
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2539
    iget-boolean v3, p0, Landroid/widget/RemoteViews;->mIsRoot:Z

    if-eqz v3, :cond_5

    .line 2540
    iget-object v3, p0, Landroid/widget/RemoteViews;->mBitmapCache:Landroid/widget/RemoteViews$BitmapCache;

    invoke-virtual {v3, p1, p2}, Landroid/widget/RemoteViews$BitmapCache;->writeBitmapsToParcel(Landroid/os/Parcel;I)V

    .line 2542
    :cond_5
    iget-object v3, p0, Landroid/widget/RemoteViews;->mLandscape:Landroid/widget/RemoteViews;

    invoke-virtual {v3, p1, p2}, Landroid/widget/RemoteViews;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2543
    iget-object v3, p0, Landroid/widget/RemoteViews;->mPortrait:Landroid/widget/RemoteViews;

    invoke-virtual {v3, p1, p2}, Landroid/widget/RemoteViews;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2545
    :cond_6
    return-void
.end method
