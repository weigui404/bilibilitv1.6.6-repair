.class final Lbl/afb$d;
.super Lbl/adv;
.source "afb.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbl/afb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbl/afb$d$a;
    }
.end annotation


# static fields
.field public static final Companion:Lbl/afb$d$a;


# instance fields
.field private final n:Landroid/widget/TextView;

.field private final o:Landroid/widget/ImageView;

.field private final p:Lcom/bilibili/tv/widget/DrawLinearLayout;

.field private final q:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lbl/afb;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 368
    new-instance v0, Lbl/afb$d$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lbl/afb$d$a;-><init>(Lbl/bbg;)V

    sput-object v0, Lbl/afb$d;->Companion:Lbl/afb$d$a;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Ljava/lang/ref/WeakReference;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lbl/afb;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 376
    invoke-direct {p0, p1}, Lbl/adv;-><init>(Landroid/view/View;)V

    .line 377
    const-string v0, "itemView"

    invoke-static {p1, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 378
    const-string v0, "mMainBangumiFragmentWeakReference"

    invoke-static {p2, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 379
    iput-object p2, p0, Lbl/afb$d;->q:Ljava/lang/ref/WeakReference;

    .line 380
    const v0, 0x7f0800c3

    invoke-virtual {p0, p1, v0}, Lbl/afb$d;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lbl/afb$d;->n:Landroid/widget/TextView;

    .line 381
    const v0, 0x7f0800a1

    invoke-virtual {p0, p1, v0}, Lbl/afb$d;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lbl/afb$d;->o:Landroid/widget/ImageView;

    move-object v0, p1

    .line 382
    check-cast v0, Lcom/bilibili/tv/widget/DrawLinearLayout;

    iput-object v0, p0, Lbl/afb$d;->p:Lcom/bilibili/tv/widget/DrawLinearLayout;

    .line 383
    iget-object v0, p0, Lbl/afb$d;->p:Lcom/bilibili/tv/widget/DrawLinearLayout;

    const v1, 0x7f0700e6

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/widget/DrawLinearLayout;->setUpDrawable(I)V

    .line 384
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 385
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 386
    return-void
.end method


# virtual methods
.method public final A()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 395
    iget-object v0, p0, Lbl/afb$d;->o:Landroid/widget/ImageView;

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 418
    const-string v0, "v"

    invoke-static {p1, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 419
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 420
    const-string v1, "v.context"

    invoke-static {v0, v1}, Lbl/bbi;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 421
    invoke-static {v0}, Lbl/adl;->a(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v1

    .line 422
    const v0, 0x7f0800d8

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    .line 423
    if-eqz v1, :cond_1e

    if-nez v0, :cond_1f

    .line 454
    :cond_1e
    :goto_1e
    return-void

    .line 426
    :cond_1f
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 427
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 428
    const-string v3, "location"

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 429
    sget-object v3, Lbl/abl;->a:Lbl/abl;

    const-string v4, "ott-platform.animation.animation.0.click"

    invoke-virtual {v3, v4, v2}, Lbl/abl;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 430
    packed-switch v0, :pswitch_data_94

    goto :goto_1e

    .line 432
    :pswitch_3e
    sget-object v0, Lcom/bilibili/tv/ui/area/AreaActivity;->Companion:Lcom/bilibili/tv/ui/area/AreaActivity$a;

    const/16 v2, 0xd

    invoke-virtual {v0, v1, v2}, Lcom/bilibili/tv/ui/area/AreaActivity$a;->a(Landroid/content/Context;I)V

    .line 433
    const-string v0, "tv_home_bangumi_all_click"

    new-array v1, v5, [Ljava/lang/String;

    invoke-static {v0, v1}, Lbl/ok;->a(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_1e

    .line 436
    :pswitch_4d
    invoke-static {}, Lcom/bilibili/tv/MainApplication;->a()Lcom/bilibili/tv/MainApplication;

    move-result-object v0

    invoke-static {v0}, Lbl/mg;->a(Landroid/content/Context;)Lbl/mg;

    move-result-object v0

    .line 437
    const-string v2, "BiliAccount.get(MainApplication.getInstance())"

    invoke-static {v0, v2}, Lbl/bbi;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 438
    invoke-virtual {v0}, Lbl/mg;->a()Z

    move-result v0

    if-eqz v0, :cond_6d

    .line 439
    sget-object v0, Lcom/bilibili/tv/ui/bangumi/follow/FollowBangumiActivity;->Companion:Lcom/bilibili/tv/ui/bangumi/follow/FollowBangumiActivity$a;

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/ui/bangumi/follow/FollowBangumiActivity$a;->a(Landroid/content/Context;)V

    .line 443
    :goto_65
    const-string v0, "tv_home_bangumi_my_click"

    new-array v1, v5, [Ljava/lang/String;

    invoke-static {v0, v1}, Lbl/ok;->a(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_1e

    .line 441
    :cond_6d
    sget-object v0, Lcom/bilibili/tv/ui/account/LoginActivity;->Companion:Lcom/bilibili/tv/ui/account/LoginActivity$a;

    sget-object v2, Lcom/bilibili/tv/ui/main/MainActivity;->Companion:Lcom/bilibili/tv/ui/main/MainActivity$a;

    invoke-virtual {v2}, Lcom/bilibili/tv/ui/main/MainActivity$a;->a()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/bilibili/tv/ui/account/LoginActivity$a;->a(Landroid/app/Activity;I)V

    goto :goto_65

    .line 446
    :pswitch_79
    sget-object v0, Lcom/bilibili/tv/ui/bangumi/time/BangumiTimelineActivity;->Companion:Lcom/bilibili/tv/ui/bangumi/time/BangumiTimelineActivity$a;

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/ui/bangumi/time/BangumiTimelineActivity$a;->a(Landroid/content/Context;)V

    .line 447
    const-string v0, "tv_home_bangumi_timeline_click"

    new-array v1, v5, [Ljava/lang/String;

    invoke-static {v0, v1}, Lbl/ok;->a(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_1e

    .line 450
    :pswitch_86
    sget-object v0, Lcom/bilibili/tv/ui/bangumi/tag/BangumiTagActivity;->Companion:Lcom/bilibili/tv/ui/bangumi/tag/BangumiTagActivity$d;

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/ui/bangumi/tag/BangumiTagActivity$d;->a(Landroid/content/Context;)V

    .line 451
    const-string v0, "tv_home_bangumi_index_click"

    new-array v1, v5, [Ljava/lang/String;

    invoke-static {v0, v1}, Lbl/ok;->a(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_1e

    .line 430
    nop

    :pswitch_data_94
    .packed-switch 0x0
        :pswitch_3e
        :pswitch_4d
        :pswitch_79
        :pswitch_86
    .end packed-switch
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2

    .prologue
    .line 458
    const-string v0, "v"

    invoke-static {p1, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 459
    iget-object v0, p0, Lbl/afb$d;->q:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbl/afb;

    .line 460
    const v1, 0x7f0800d8

    invoke-virtual {p1, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    .line 461
    if-eqz v0, :cond_18

    if-nez v1, :cond_19

    .line 467
    :cond_18
    :goto_18
    return-void

    .line 464
    :cond_19
    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    # setter for: Lbl/afb;->d:I
    invoke-static {v0, v1}, Lbl/afb;->access$102(Lbl/afb;I)I

    .line 465
    invoke-static {p1, p2}, Lbl/adj;->a(Landroid/view/View;Z)V

    .line 466
    iget-object v0, p0, Lbl/afb$d;->p:Lcom/bilibili/tv/widget/DrawLinearLayout;

    invoke-virtual {v0, p2}, Lcom/bilibili/tv/widget/DrawLinearLayout;->setUpEnabled(Z)V

    goto :goto_18
.end method

.method public final z()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 390
    iget-object v0, p0, Lbl/afb$d;->n:Landroid/widget/TextView;

    return-object v0
.end method
