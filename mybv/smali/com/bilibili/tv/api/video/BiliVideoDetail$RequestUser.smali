.class public Lcom/bilibili/tv/api/video/BiliVideoDetail$RequestUser;
.super Ljava/lang/Object;
.source "BiliVideoDetail.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation build Landroid/support/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bilibili/tv/api/video/BiliVideoDetail;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RequestUser"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/bilibili/tv/api/video/BiliVideoDetail$RequestUser;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mAttention:I
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "attention"
    .end annotation
.end field

.field public mCoin:Z
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "coin"
    .end annotation
.end field

.field public mFavorite:Z
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "favorite"
    .end annotation
.end field

.field public mLike:Z
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "like"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 720
    new-instance v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$RequestUser$1;

    invoke-direct {v0}, Lcom/bilibili/tv/api/video/BiliVideoDetail$RequestUser$1;-><init>()V

    sput-object v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$RequestUser;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 761
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 762
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 764
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 765
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/bilibili/tv/api/video/BiliVideoDetail$RequestUser;->mAttention:I

    .line 766
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_26

    move v0, v1

    :goto_12
    iput-boolean v0, p0, Lcom/bilibili/tv/api/video/BiliVideoDetail$RequestUser;->mFavorite:Z

    .line 767
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_28

    move v0, v1

    :goto_1b
    iput-boolean v0, p0, Lcom/bilibili/tv/api/video/BiliVideoDetail$RequestUser;->mLike:Z

    .line 768
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_2a

    :goto_23
    iput-boolean v1, p0, Lcom/bilibili/tv/api/video/BiliVideoDetail$RequestUser;->mCoin:Z

    .line 769
    return-void

    :cond_26
    move v0, v2

    .line 766
    goto :goto_12

    :cond_28
    move v0, v2

    .line 767
    goto :goto_1b

    :cond_2a
    move v1, v2

    .line 768
    goto :goto_23
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 746
    const/4 v0, 0x0

    return v0
.end method

.method public isAttention()Z
    .locals 2

    .prologue
    .line 750
    iget v0, p0, Lcom/bilibili/tv/api/video/BiliVideoDetail$RequestUser;->mAttention:I

    const/16 v1, -0x3e7

    if-eq v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 755
    iget v0, p0, Lcom/bilibili/tv/api/video/BiliVideoDetail$RequestUser;->mAttention:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 756
    iget-boolean v0, p0, Lcom/bilibili/tv/api/video/BiliVideoDetail$RequestUser;->mFavorite:Z

    if-eqz v0, :cond_1f

    move v0, v1

    :goto_c
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 757
    iget-boolean v0, p0, Lcom/bilibili/tv/api/video/BiliVideoDetail$RequestUser;->mLike:Z

    if-eqz v0, :cond_21

    move v0, v1

    :goto_14
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 758
    iget-boolean v0, p0, Lcom/bilibili/tv/api/video/BiliVideoDetail$RequestUser;->mCoin:Z

    if-eqz v0, :cond_23

    :goto_1b
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 759
    return-void

    :cond_1f
    move v0, v2

    .line 756
    goto :goto_c

    :cond_21
    move v0, v2

    .line 757
    goto :goto_14

    :cond_23
    move v1, v2

    .line 758
    goto :goto_1b
.end method
