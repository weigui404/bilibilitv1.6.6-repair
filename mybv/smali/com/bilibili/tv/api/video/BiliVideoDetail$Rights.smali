.class public Lcom/bilibili/tv/api/video/BiliVideoDetail$Rights;
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
    name = "Rights"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/bilibili/tv/api/video/BiliVideoDetail$Rights;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mCanBp:Z
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "bp"
    .end annotation
.end field

.field public mCanCharge:Z
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "elec"
    .end annotation
.end field

.field public mCanDownload:Z
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "download"
    .end annotation
.end field

.field public mCanMovie:Z
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "movie"
    .end annotation
.end field

.field public noReprint:Z
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "no_reprint"
    .end annotation
.end field

.field public vipQuality:Z
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "hd5"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 391
    new-instance v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Rights$1;

    invoke-direct {v0}, Lcom/bilibili/tv/api/video/BiliVideoDetail$Rights$1;-><init>()V

    sput-object v0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Rights;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 433
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 434
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 436
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 437
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_32

    move v0, v1

    :goto_c
    iput-boolean v0, p0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Rights;->mCanBp:Z

    .line 438
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_34

    move v0, v1

    :goto_15
    iput-boolean v0, p0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Rights;->mCanCharge:Z

    .line 439
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_36

    move v0, v1

    :goto_1e
    iput-boolean v0, p0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Rights;->mCanDownload:Z

    .line 440
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_38

    move v0, v1

    :goto_27
    iput-boolean v0, p0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Rights;->mCanMovie:Z

    .line 441
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_3a

    :goto_2f
    iput-boolean v1, p0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Rights;->vipQuality:Z

    .line 442
    return-void

    :cond_32
    move v0, v2

    .line 437
    goto :goto_c

    :cond_34
    move v0, v2

    .line 438
    goto :goto_15

    :cond_36
    move v0, v2

    .line 439
    goto :goto_1e

    :cond_38
    move v0, v2

    .line 440
    goto :goto_27

    :cond_3a
    move v1, v2

    .line 441
    goto :goto_2f
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 421
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 426
    iget-boolean v0, p0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Rights;->mCanBp:Z

    if-eqz v0, :cond_2a

    move v0, v1

    :goto_7
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 427
    iget-boolean v0, p0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Rights;->mCanCharge:Z

    if-eqz v0, :cond_2c

    move v0, v1

    :goto_f
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 428
    iget-boolean v0, p0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Rights;->mCanDownload:Z

    if-eqz v0, :cond_2e

    move v0, v1

    :goto_17
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 429
    iget-boolean v0, p0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Rights;->mCanMovie:Z

    if-eqz v0, :cond_30

    move v0, v1

    :goto_1f
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 430
    iget-boolean v0, p0, Lcom/bilibili/tv/api/video/BiliVideoDetail$Rights;->vipQuality:Z

    if-eqz v0, :cond_32

    :goto_26
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 431
    return-void

    :cond_2a
    move v0, v2

    .line 426
    goto :goto_7

    :cond_2c
    move v0, v2

    .line 427
    goto :goto_f

    :cond_2e
    move v0, v2

    .line 428
    goto :goto_17

    :cond_30
    move v0, v2

    .line 429
    goto :goto_1f

    :cond_32
    move v1, v2

    .line 430
    goto :goto_26
.end method
