package com.bilibili.tv;

import android.app.Application;
import android.content.Context;
import android.os.Build;
import android.support.v4.app.FragmentManager;
import android.util.DisplayMetrics;
import bl.abj;
import bl.abk;
import bl.abm;
import bl.abp;
import bl.abu;
import bl.abw;
import bl.aca;
import bl.acb;
import bl.acc;
import bl.acj;
import bl.afr;
import bl.aib;
import bl.avj;
import bl.avk;
import bl.jh;
import bl.js;
import bl.kn;
import bl.kt;
import bl.lm;
import bl.mg;
import bl.mu;
import bl.nv;
import bl.ok;
import bl.p;
import bl.sx;
import bl.wh;
import bl.wm;
import com.bilibili.api.BiliConfig;
import com.bilibili.lib.media.ResolveConfig;
import com.bilibili.lib.media.resolver.resolve.MediaResolveProvider;
import com.tencent.bugly.Bugly;
import com.tencent.bugly.beta.Beta;
import com.tencent.bugly.crashreport.CrashReport;
import com.umeng.analytics.BiliUmeng;

import bl.abd;
import mybl.BiliFilter;
import com.bilibili.tv.player.widget.PlayerMenuRight;

/* compiled from: BL */
/* loaded from: classes.dex */
public class MainApplication extends Application {
    private static MainApplication b;
    private static boolean c;
    public avk a;

    public static MainApplication a() {
        return b;
    }

    @Override // android.app.Application
    public void onCreate() {
        super.onCreate();
        c = !kt.b(lm.a(), 58);
        b();
        jh.a(false);
        abu.a(this);
        kn.a().a(this);
        acj.a(this);
        FragmentManager.enableDebugLogging(false);
        ok.a(this, new abj());
        acc.a(this);
        nv.a().a(this, new aib<Boolean>() { // from class: com.bilibili.tv.MainApplication.1
            /* JADX DEBUG: Method merged with bridge method: a()Ljava/lang/Object; */
            @Override // bl.aib
            /* renamed from: b, reason: merged with bridge method [inline-methods] */
            public Boolean a() {
                return true;
            }
        });
        String a = abk.a(this);
        if (c) {
            wm.a(this);
        }
        a(this);
        a(a);
        b(a);
        js.a();
        if (!avj.a((Context) this)) {
            this.a = avj.a((Application) this);
        }
        registerActivityLifecycleCallbacks(new abp(this));
        mu.a(this);
        sx.a(this, new abm());
        wh.a().a(this);

        init_globals();
    }

    public void init_globals() {
        int danmaku_type = abd.get_danmaku_type(this);
        for(int i=0;i<10;i++)PlayerMenuRight.danmaku_valid_list[i]=((danmaku_type>>i)&1)>0;
        BiliFilter.skip_categories=abd.get_skip_categories(this);
    }

    @Override // android.app.Application, android.content.ComponentCallbacks
    public void onLowMemory() {
        super.onLowMemory();
    }

    @Override // android.app.Application, android.content.ComponentCallbacks2
    public void onTrimMemory(int i) {
        super.onTrimMemory(i);
    }

    private static void a(Context context) {
        MediaResolveProvider.a(context, new ResolveConfig.a().a(false).a(BiliConfig.b()).a(aca.class).b(abw.class).c(acb.class).b());
    }

    private void a(String str) {
        BiliUmeng.a(str);
        BiliUmeng.a = false;
        BiliUmeng.a(this);
    }

    @Override // android.content.ContextWrapper
    protected void attachBaseContext(Context context) {
        super.attachBaseContext(context);
        b = this;
        p.a(this);
        BiliConfig.a(new BiliConfig.Delegate() { // from class: com.bilibili.tv.MainApplication.2
            @Override // com.bilibili.api.BiliConfig.Delegate
            public String getAppDefaultUA() {
                return "Mozilla/5.0 BiliTV/1.6.6 (bbcallen@gmail.com)";
            }

            @Override // com.bilibili.api.BiliConfig.Delegate
            public String getAppKey() {
                return "@Deprecated";
            }

            @Override // com.bilibili.api.BiliConfig.Delegate
            public String getAppSecret() {
                return "@Deprecated";
            }

            @Override // com.bilibili.api.BiliConfig.Delegate
            public int getBiliVersionCode() {
                return 1606;
            }

            @Override // com.bilibili.api.BiliConfig.Delegate
            public String getMobiApp() {
                return "android_tv";
            }

            @Override // com.bilibili.api.BiliConfig.Delegate
            public String getChannel() {
                return abk.a(MainApplication.this.getBaseContext());
            }
        });
    }

    private void b(String str) {
        Beta.E = false;
        Beta.L = afr.a;
        CrashReport.UserStrategy userStrategy = new CrashReport.UserStrategy(null);
        userStrategy.c("com.bilibili.tv");
        userStrategy.b(str);
        userStrategy.b(false);
        userStrategy.a("1.6.6");
        userStrategy.a(20000L);
        userStrategy.a(c);
        DisplayMetrics displayMetrics = getResources().getDisplayMetrics();
        CrashReport.a(this, "resolution", displayMetrics.heightPixels + " / " + displayMetrics.widthPixels);
        Bugly.a(this, "900033619", false, userStrategy);
        CrashReport.a(String.valueOf(mg.a(this).e()));
    }

    private void b() {
        if (Build.VERSION.SDK_INT >= 17) {
            getSystemService("user");
        }
    }
}