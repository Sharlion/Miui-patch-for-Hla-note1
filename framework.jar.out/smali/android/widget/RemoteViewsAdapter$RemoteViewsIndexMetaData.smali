.class Landroid/widget/RemoteViewsAdapter$RemoteViewsIndexMetaData;
.super Ljava/lang/Object;
.source "RemoteViewsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RemoteViewsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RemoteViewsIndexMetaData"
.end annotation


# instance fields
.field itemId:J

.field typeId:I


# direct methods
.method public constructor <init>(Landroid/widget/RemoteViews;J)V
    .locals 0
    .parameter "v"
    .parameter "itemId"

    .prologue
    .line 539
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 540
    invoke-virtual {p0, p1, p2, p3}, Landroid/widget/RemoteViewsAdapter$RemoteViewsIndexMetaData;->set(Landroid/widget/RemoteViews;J)V

    .line 541
    return-void
.end method


# virtual methods
.method public set(Landroid/widget/RemoteViews;J)V
    .locals 1
    .parameter "v"
    .parameter "id"

    .prologue
    .line 544
    iput-wide p2, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsIndexMetaData;->itemId:J

    .line 545
    if-eqz p1, :cond_0

    .line 546
    invoke-virtual {p1}, Landroid/widget/RemoteViews;->getLayoutId()I

    move-result v0

    iput v0, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsIndexMetaData;->typeId:I

    .line 550
    :goto_0
    return-void

    .line 548
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsIndexMetaData;->typeId:I

    goto :goto_0
.end method
