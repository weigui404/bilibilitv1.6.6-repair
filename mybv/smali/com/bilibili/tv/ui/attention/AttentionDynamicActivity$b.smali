.class public final Lcom/bilibili/tv/ui/attention/AttentionDynamicActivity$b;
.super Lbl/vn;
.source "AttentionDynamicActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bilibili/tv/ui/attention/AttentionDynamicActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbl/vn",
        "<",
        "Lcom/bilibili/tv/api/attention/UpperFeedList;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bilibili/tv/ui/attention/AttentionDynamicActivity;


# direct methods
.method public constructor <init>(Lcom/bilibili/tv/ui/attention/AttentionDynamicActivity;)V
    .locals 0

    .prologue
    .line 272
    iput-object p1, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicActivity$b;->this$0:Lcom/bilibili/tv/ui/attention/AttentionDynamicActivity;

    invoke-direct {p0}, Lbl/vn;-><init>()V

    .line 273
    return-void
.end method


# virtual methods
.method public a(Lcom/bilibili/tv/api/attention/UpperFeedList;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 300
    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicActivity$b;->this$0:Lcom/bilibili/tv/ui/attention/AttentionDynamicActivity;

    # getter for: Lcom/bilibili/tv/ui/attention/AttentionDynamicActivity;->a:Lcom/bilibili/tv/ui/attention/AttentionDynamicActivity$c;
    invoke-static {v0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicActivity;->access$200(Lcom/bilibili/tv/ui/attention/AttentionDynamicActivity;)Lcom/bilibili/tv/ui/attention/AttentionDynamicActivity$c;

    move-result-object v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicActivity$b;->this$0:Lcom/bilibili/tv/ui/attention/AttentionDynamicActivity;

    # getter for: Lcom/bilibili/tv/ui/attention/AttentionDynamicActivity;->c:Lcom/bilibili/tv/ui/base/LoadingImageView;
    invoke-static {v0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicActivity;->access$700(Lcom/bilibili/tv/ui/attention/AttentionDynamicActivity;)Lcom/bilibili/tv/ui/base/LoadingImageView;

    move-result-object v0

    if-nez v0, :cond_12

    .line 331
    :cond_11
    :goto_11
    return-void

    .line 303
    :cond_12
    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicActivity$b;->this$0:Lcom/bilibili/tv/ui/attention/AttentionDynamicActivity;

    invoke-virtual {v0, v3}, Lcom/bilibili/tv/ui/attention/AttentionDynamicActivity;->a(Z)V

    .line 304
    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicActivity$b;->this$0:Lcom/bilibili/tv/ui/attention/AttentionDynamicActivity;

    # getter for: Lcom/bilibili/tv/ui/attention/AttentionDynamicActivity;->c:Lcom/bilibili/tv/ui/base/LoadingImageView;
    invoke-static {v0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicActivity;->access$700(Lcom/bilibili/tv/ui/attention/AttentionDynamicActivity;)Lcom/bilibili/tv/ui/base/LoadingImageView;

    move-result-object v1

    .line 305
    if-nez v1, :cond_22

    .line 306
    invoke-static {}, Lbl/bbi;->a()V

    .line 308
    :cond_22
    invoke-virtual {v1}, Lcom/bilibili/tv/ui/base/LoadingImageView;->b()V

    .line 309
    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicActivity$b;->this$0:Lcom/bilibili/tv/ui/attention/AttentionDynamicActivity;

    # getter for: Lcom/bilibili/tv/ui/attention/AttentionDynamicActivity;->d:Landroid/support/v7/widget/RecyclerView;
    invoke-static {v0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicActivity;->access$800(Lcom/bilibili/tv/ui/attention/AttentionDynamicActivity;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    .line 310
    if-nez v0, :cond_30

    .line 311
    invoke-static {}, Lbl/bbi;->a()V

    .line 313
    :cond_30
    invoke-virtual {v0, v3}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 314
    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicActivity$b;->this$0:Lcom/bilibili/tv/ui/attention/AttentionDynamicActivity;

    # setter for: Lcom/bilibili/tv/ui/attention/AttentionDynamicActivity;->h:Z
    invoke-static {v0, v3}, Lcom/bilibili/tv/ui/attention/AttentionDynamicActivity;->access$002(Lcom/bilibili/tv/ui/attention/AttentionDynamicActivity;Z)Z

    .line 315
    if-eqz p1, :cond_59

    iget-object v0, p1, Lcom/bilibili/tv/api/attention/UpperFeedList;->items:Ljava/util/List;

    :goto_3c
    if-eqz v0, :cond_46

    iget-object v0, p1, Lcom/bilibili/tv/api/attention/UpperFeedList;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_61

    .line 316
    :cond_46
    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicActivity$b;->this$0:Lcom/bilibili/tv/ui/attention/AttentionDynamicActivity;

    # getter for: Lcom/bilibili/tv/ui/attention/AttentionDynamicActivity;->f:I
    invoke-static {v0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicActivity;->access$400(Lcom/bilibili/tv/ui/attention/AttentionDynamicActivity;)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_5b

    .line 317
    invoke-virtual {v1}, Lcom/bilibili/tv/ui/base/LoadingImageView;->c()V

    .line 318
    const v0, 0x7f0c00d8

    invoke-virtual {v1, v0}, Lcom/bilibili/tv/ui/base/LoadingImageView;->a(I)V

    goto :goto_11

    .line 315
    :cond_59
    const/4 v0, 0x0

    goto :goto_3c

    .line 321
    :cond_5b
    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicActivity$b;->this$0:Lcom/bilibili/tv/ui/attention/AttentionDynamicActivity;

    # setter for: Lcom/bilibili/tv/ui/attention/AttentionDynamicActivity;->g:Z
    invoke-static {v0, v3}, Lcom/bilibili/tv/ui/attention/AttentionDynamicActivity;->access$102(Lcom/bilibili/tv/ui/attention/AttentionDynamicActivity;Z)Z

    goto :goto_11

    .line 324
    :cond_61
    iget-object v0, p1, Lcom/bilibili/tv/api/attention/UpperFeedList;->items:Ljava/util/List;

    const-string v1, "\u52a8\u6001"

    invoke-static {v0, v1}, Lmybl/BiliFilter;->filterUpperFeedItem(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 325
    iget-object v1, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicActivity$b;->this$0:Lcom/bilibili/tv/ui/attention/AttentionDynamicActivity;

    # getter for: Lcom/bilibili/tv/ui/attention/AttentionDynamicActivity;->a:Lcom/bilibili/tv/ui/attention/AttentionDynamicActivity$c;
    invoke-static {v1}, Lcom/bilibili/tv/ui/attention/AttentionDynamicActivity;->access$200(Lcom/bilibili/tv/ui/attention/AttentionDynamicActivity;)Lcom/bilibili/tv/ui/attention/AttentionDynamicActivity$c;

    move-result-object v1

    .line 326
    if-nez v1, :cond_74

    .line 327
    invoke-static {}, Lbl/bbi;->a()V

    .line 329
    :cond_74
    const-string v2, "list"

    invoke-static {v0, v2}, Lbl/bbi;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 330
    invoke-virtual {v1, v0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicActivity$c;->a(Ljava/util/List;)V

    goto :goto_11
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 271
    check-cast p1, Lcom/bilibili/tv/api/attention/UpperFeedList;

    invoke-virtual {p0, p1}, Lcom/bilibili/tv/ui/attention/AttentionDynamicActivity$b;->a(Lcom/bilibili/tv/api/attention/UpperFeedList;)V

    return-void
.end method

.method public isCancel()Z
    .locals 1

    .prologue
    .line 277
    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicActivity$b;->this$0:Lcom/bilibili/tv/ui/attention/AttentionDynamicActivity;

    # getter for: Lcom/bilibili/tv/ui/attention/AttentionDynamicActivity;->a:Lcom/bilibili/tv/ui/attention/AttentionDynamicActivity$c;
    invoke-static {v0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicActivity;->access$200(Lcom/bilibili/tv/ui/attention/AttentionDynamicActivity;)Lcom/bilibili/tv/ui/attention/AttentionDynamicActivity$c;

    move-result-object v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 282
    const-string v0, "t"

    invoke-static {p1, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 283
    sget-object v0, Lbl/adl;->a:Lbl/adl;

    iget-object v1, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicActivity$b;->this$0:Lcom/bilibili/tv/ui/attention/AttentionDynamicActivity;

    invoke-virtual {v0, p1, v1}, Lbl/adl;->a(Ljava/lang/Throwable;Landroid/app/Activity;)V

    .line 284
    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicActivity$b;->this$0:Lcom/bilibili/tv/ui/attention/AttentionDynamicActivity;

    # getter for: Lcom/bilibili/tv/ui/attention/AttentionDynamicActivity;->a:Lcom/bilibili/tv/ui/attention/AttentionDynamicActivity$c;
    invoke-static {v0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicActivity;->access$200(Lcom/bilibili/tv/ui/attention/AttentionDynamicActivity;)Lcom/bilibili/tv/ui/attention/AttentionDynamicActivity$c;

    move-result-object v0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicActivity$b;->this$0:Lcom/bilibili/tv/ui/attention/AttentionDynamicActivity;

    # getter for: Lcom/bilibili/tv/ui/attention/AttentionDynamicActivity;->c:Lcom/bilibili/tv/ui/base/LoadingImageView;
    invoke-static {v0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicActivity;->access$700(Lcom/bilibili/tv/ui/attention/AttentionDynamicActivity;)Lcom/bilibili/tv/ui/base/LoadingImageView;

    move-result-object v0

    if-nez v0, :cond_1e

    .line 296
    :cond_1d
    :goto_1d
    return-void

    .line 287
    :cond_1e
    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicActivity$b;->this$0:Lcom/bilibili/tv/ui/attention/AttentionDynamicActivity;

    const/4 v1, 0x0

    # setter for: Lcom/bilibili/tv/ui/attention/AttentionDynamicActivity;->h:Z
    invoke-static {v0, v1}, Lcom/bilibili/tv/ui/attention/AttentionDynamicActivity;->access$002(Lcom/bilibili/tv/ui/attention/AttentionDynamicActivity;Z)Z

    .line 288
    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicActivity$b;->this$0:Lcom/bilibili/tv/ui/attention/AttentionDynamicActivity;

    # getter for: Lcom/bilibili/tv/ui/attention/AttentionDynamicActivity;->f:I
    invoke-static {v0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicActivity;->access$400(Lcom/bilibili/tv/ui/attention/AttentionDynamicActivity;)I

    move-result v0

    if-ne v0, v2, :cond_1d

    .line 289
    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicActivity$b;->this$0:Lcom/bilibili/tv/ui/attention/AttentionDynamicActivity;

    invoke-virtual {v0, v2}, Lcom/bilibili/tv/ui/attention/AttentionDynamicActivity;->a(Z)V

    .line 290
    iget-object v0, p0, Lcom/bilibili/tv/ui/attention/AttentionDynamicActivity$b;->this$0:Lcom/bilibili/tv/ui/attention/AttentionDynamicActivity;

    # getter for: Lcom/bilibili/tv/ui/attention/AttentionDynamicActivity;->c:Lcom/bilibili/tv/ui/base/LoadingImageView;
    invoke-static {v0}, Lcom/bilibili/tv/ui/attention/AttentionDynamicActivity;->access$700(Lcom/bilibili/tv/ui/attention/AttentionDynamicActivity;)Lcom/bilibili/tv/ui/base/LoadingImageView;

    move-result-object v0

    .line 291
    if-nez v0, :cond_3c

    .line 292
    invoke-static {}, Lbl/bbi;->a()V

    .line 294
    :cond_3c
    invoke-virtual {v0, v2}, Lcom/bilibili/tv/ui/base/LoadingImageView;->setRefreshError(Z)V

    goto :goto_1d
.end method
