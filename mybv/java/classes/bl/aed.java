package bl;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.support.v7.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import com.bilibili.tv.MainApplication;
import com.bilibili.tv.R;
import com.bilibili.tv.api.favorite.BiliFavoriteBox;
import com.bilibili.tv.api.favorite.BiliFavoriteVideoApiService;
import com.bilibili.tv.ui.favorite.FavoriteRightGridLayoutManger;
import com.bilibili.tv.ui.favorite.boxlist.BoxListInfoActivity;
import com.bilibili.tv.widget.ScalableImageView;
import com.bilibili.tv.widget.border.BorderGridLayoutManager;
import java.util.ArrayList;
import java.util.List;

/* compiled from: BL */
/* loaded from: classes.dex */
public final class aed extends ady {
    public static final d Companion = new d(null);
    private static final String e = "BoxListFavoriteFragment";
    private static final int f = 4;
    private b c;
    private a d;

    /* compiled from: BL */
    /* loaded from: classes.dex */
    static final class e implements BorderGridLayoutManager.a {
        public static final e a = new e();

        e() {
        }

        @Override // com.bilibili.tv.widget.border.BorderGridLayoutManager.a
        public final void a(View view, View view2, int i, int i2, int i3) {
        }
    }

    /* compiled from: BL */
    /* loaded from: classes.dex */
    public static final class d {
        private d() {
        }

        public /* synthetic */ d(bbg bbgVar) {
            this();
        }

        public final aed a() {
            return new aed();
        }
    }

    @Override // bl.ady
    public void a(RecyclerView recyclerView, Bundle bundle) {
        bbi.b(recyclerView, "recyclerView");
        super.a(recyclerView, bundle);
        this.d = new a();
        FragmentActivity activity = getActivity();
        if (activity == null) {
            bbi.a();
        }
        bbi.a((Object) activity, "activity!!");
        FavoriteRightGridLayoutManger favoriteRightGridLayoutManger = new FavoriteRightGridLayoutManger(activity, f);
        this.c = new b();
        recyclerView.setHasFixedSize(true);
        recyclerView.setLayoutManager(favoriteRightGridLayoutManger);
        int b2 = adl.b(R.dimen.px_20);
        int b3 = adl.b(R.dimen.px_25);
        recyclerView.setPadding(b3, b2, b3, b3);
        recyclerView.setAdapter(this.c);
        favoriteRightGridLayoutManger.a(((e)null).a);
        i();
        b();
    }

    @Override // bl.adw
    public boolean c() {
        if (isVisible() && this.c != null) {
            b bVar = this.c;
            if (bVar == null) {
                bbi.a();
            }
            if (bVar.a() > 0) {
                return true;
            }
        }
        return false;
    }

    @Override // android.support.v4.app.Fragment
    public void onDestroyView() {
        this.c = (b) null;
        this.d = (a) null;
        super.onDestroyView();
    }

    @Override // bl.ady, bl.aea
    public void d_() {
        super.d_();
        b();
    }

    private final void b() {
        BiliFavoriteVideoApiService biliFavoriteVideoApiService = (BiliFavoriteVideoApiService) vo.a(BiliFavoriteVideoApiService.class);
        mg a2 = mg.a(getActivity());
        bbi.a((Object) a2, "BiliAccount.get(activity)");
        biliFavoriteVideoApiService.getStatedBoxList(a2.e(), Long.valueOf(mg.a(getActivity()).d()), 0L).a(this.d);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: BL */
    /* loaded from: classes.dex */
    public final class a extends vn<List<BiliFavoriteBox>> {
        public a() {
        }

        @Override // bl.vn
        public /* bridge */ /* synthetic */ void a(List<BiliFavoriteBox> list) {
            if (aed.this.c == null) {
                return;
            }
            aed.this.j();
            b bVar = aed.this.c;
            if (bVar == null) {
                bbi.a();
            }
            if (bVar.a() != 0 || (list != null && !list.isEmpty())) {
                b bVar2 = aed.this.c;
                if (bVar2 == null) {
                    bbi.a();
                }
                if (list == null) {
                    bbi.a();
                }
                bVar2.a(list);
                return;
            }
            aed.this.l();
            aed.this.a(R.string.nothing_show);
        }

        @Override // bl.vm
        public boolean isCancel() {
            return !aed.this.isAdded();
        }

        @Override // bl.vm
        public void onError(Throwable th) {
            bbi.b(th, "t");
            adl.a.a(th, aed.this.getActivity());
            if (aed.this.c == null) {
                return;
            }
            aed.this.k();
        }

        /* renamed from: a, reason: avoid collision after fix types in other method */
        public void a2(List<BiliFavoriteBox> list) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: BL */
    /* loaded from: classes.dex */
    public static final class b extends RecyclerView.a<adv> {
        private final ArrayList<BiliFavoriteBox> a = new ArrayList<>();

        @Override // android.support.v7.widget.RecyclerView.a
        /* renamed from: c, reason: merged with bridge method [inline-methods] */
        public adv a(ViewGroup viewGroup, int i) {
            bbi.b(viewGroup, "parent");
            return ((c)null).Companion.a(viewGroup);
        }

        @Override // android.support.v7.widget.RecyclerView.a
        public void a(adv advVar, int i) {
            bbi.b(advVar, "viewHolder");
            if (advVar instanceof c) {
                BiliFavoriteBox biliFavoriteBox = this.a.get(i);
                bbi.a((Object) biliFavoriteBox, "mBiliFavoriteBoxes[position]");
                BiliFavoriteBox biliFavoriteBox2 = biliFavoriteBox;
                List<BiliFavoriteBox.Video> videoCovers = biliFavoriteBox2.getVideoCovers();
                if (biliFavoriteBox2.getMName() != null) {
                    ((c) advVar).A().setText(biliFavoriteBox2.getMName());
                }
                if (videoCovers != null && videoCovers.get(0).getCover() != null) {
                    nv.a().a(ach.c(MainApplication.a(), videoCovers.get(0).getCover()), ((c) advVar).z());
                }
                else{nv.a().a("", ((c) advVar).z());}
                if (biliFavoriteBox2.getMCount() <= 999) {
                    ((c) advVar).B().setText(String.valueOf(biliFavoriteBox2.getMCount()));
                } else {
                    ((c) advVar).B().setText("999+");
                }
                advVar.a.setTag(R.id.position, Integer.valueOf(i));
                View view = advVar.a;
                bbi.a((Object) view, "viewHolder.itemView");
                view.setTag(biliFavoriteBox2);
            }
        }

        @Override // android.support.v7.widget.RecyclerView.a
        public int a() {
            return this.a.size();
        }

        public final void a(List<BiliFavoriteBox> list) {
            bbi.b(list, "list");
            this.a.addAll(list);
            d();
        }
    }

    /* compiled from: BL */
    /* loaded from: classes.dex */
    public static final class c extends adv implements View.OnClickListener, View.OnFocusChangeListener {
        public static final a Companion = new a(null);
        private ScalableImageView n;
        private TextView o;
        private ImageView p;
        private ImageView q;
        private final TextView r;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(View view) {
            super(view);
            bbi.b(view, "itemView");
            this.n = (ScalableImageView) a(view, R.id.img);
            this.o = (TextView) a(view, R.id.title);
            this.p = (ImageView) a(view, R.id.top_tag_normal);
            this.q = (ImageView) a(view, R.id.top_tag_big);
            this.r = (TextView) a(view, R.id.count);
            this.n.setUpDrawable(R.drawable.shadow_white_rect);
            this.r.setBackgroundDrawable(adl.a.a(R.dimen.px_8, R.color.black_60));
            view.setOnFocusChangeListener(this);
            view.setOnClickListener(this);
        }

        public final ScalableImageView z() {
            return this.n;
        }

        public final TextView A() {
            return this.o;
        }

        public final TextView B() {
            return this.r;
        }

        @Override // android.view.View.OnFocusChangeListener
        public void onFocusChange(View view, boolean z) {
            bbi.b(view, "v");
            this.n.setUpEnabled(z);
            if (z) {
                this.q.setVisibility(0);
            } else {
                this.q.setVisibility(4);
            }
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            bbi.b(view, "v");
            Context context = view.getContext();
            bbi.a((Object) context, "v.context");
            Activity a2 = adl.a(context);
            if (a2 != null) {
                Object tag = view.getTag();
                Object tag2 = view.getTag(R.id.position);
                if ((tag instanceof BiliFavoriteBox) && (tag2 instanceof Integer)) {
                    BiliFavoriteBox biliFavoriteBox = (BiliFavoriteBox) tag;
                    BoxListInfoActivity.Companion.a(a2, Long.valueOf(biliFavoriteBox.getMMid()), Long.valueOf(biliFavoriteBox.getMId()), biliFavoriteBox.getMName());
                    ok.a("tv_myfavourite_fold_click", "row", String.valueOf(((int) Math.floor(((Number) tag2).intValue() / aed.f)) + 1));
                }
            }
        }

        /* compiled from: BL */
        /* loaded from: classes.dex */
        public static final class a {
            private a() {
            }

            public /* synthetic */ a(bbg bbgVar) {
                this();
            }

            public final c a(ViewGroup viewGroup) {
                bbi.b(viewGroup, "parent");
                View inflate = LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.recycler_view_item_favorite_box_list, viewGroup, false);
                bbi.a((Object) inflate, "view");
                return new c(inflate);
            }
        }
    }
}