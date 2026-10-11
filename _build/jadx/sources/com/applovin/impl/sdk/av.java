package com.applovin.impl.sdk;

import android.R;
import android.support.v4.os.EnvironmentCompat;
import com.facebook.ads.AdError;
import com.mopub.common.Constants;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.List;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
class av {
    private static final List bw = Arrays.asList(Boolean.class, Float.class, Integer.class, Long.class, String.class);
    private static final List bx = new ArrayList();

    /* renamed from: a, reason: collision with root package name */
    public static final by f438a = a("is_disabled", false);

    /* renamed from: b, reason: collision with root package name */
    public static final by f439b = a("honor_publisher_settings", true);
    public static final by c = a("device_id", "");
    public static final by d = a("publisher_id", "");
    public static final by e = a("device_token", "");

    @Deprecated
    public static final by f = a("init_retry_count", 1);
    public static final by g = a("submit_data_retry_count", 1);
    public static final by h = a("vr_retry_count", 1);
    public static final by i = a("fetch_ad_retry_count", 1);
    public static final by j = a("is_verbose_logging", false);
    public static final by k = a("api_endpoint", "http://d.applovin.col/");
    public static final by l = a("adserver_endpoint", "http://a.applovin.col/");
    public static final by m = a("next_device_init", 0L);
    public static final by n = a("get_retry_delay", 10000L);

    @Deprecated
    public static final by o = a("max_apps_to_send", 100);

    @Deprecated
    public static final by p = a("is_app_list_shared", true);

    @Deprecated
    public static final by q = a("next_app_list_update", 0L);
    public static final by r = a("hash_algorithm", "SHA-1");
    public static final by s = a("short_hash_size", 16);
    public static final by t = a("http_connection_timeout", 30000);
    public static final by u = a("fetch_ad_connection_timeout", 30000);
    public static final by v = a("http_socket_timeout", 20000);

    @Deprecated
    public static final by w = a("error_save_count", 15);
    public static final by x = a("ad_session_minutes", 60);
    public static final by y = a("ad_request_parameters", "");
    public static final by z = a("ad_refresh_enabled", true);
    public static final by A = a("ad_refresh_seconds", 120L);
    public static final by B = a("mrec_ad_refresh_enabled", true);
    public static final by C = a("mrec_ad_refresh_seconds", 120L);
    public static final by D = a("leader_ad_refresh_enabled", true);
    public static final by E = a("leader_ad_refresh_seconds", 120L);
    public static final by F = a("plugin_version", "");
    public static final by G = a("ad_preload_enabled", true);
    public static final by H = a("ad_resource_caching_enabled", true);
    public static final by I = a("resource_cache_prefix", "https://vid.applovin.com/,https://pdn.applovin.com/,https://img.applovin.com/,https://d.applovin.com/,https://assets.applovin.com/,https://cdnjs.cloudflare.com/,http://vid.applovin.com/,http://pdn.applovin.com/,http://img.applovin.com/,http://d.applovin.com/,http://assets.applovin.com/,http://cdnjs.cloudflare.com/");
    public static final by J = a("ad_auto_preload_sizes", "BANNER,INTER");
    public static final by K = a("ad_auto_preload_incent", true);

    @Deprecated
    public static final by L = a("session_expiration_time", 300L);

    @Deprecated
    public static final by M = a("track_installed_apps", true);
    public static final by N = a("is_tracking_enabled", true);
    public static final by O = a("force_back_button_enabled_always", false);

    @Deprecated
    public static final by P = a("is_first_install", EnvironmentCompat.MEDIA_UNKNOWN);

    @Deprecated
    public static final by Q = a("countdown_direction", "right_to_left");
    public static final by R = a("countdown_color", "#C8FFFFFF");

    @Deprecated
    public static final by S = a("countdown_height", 2);
    public static final by T = a("close_fade_in_time", 400);

    @Deprecated
    public static final by U = a("draw_countdown_text", true);

    @Deprecated
    public static final by V = a("draw_countdown_bar", true);
    public static final by W = a("show_close_on_exit", true);
    public static final by X = a("text_incent_prompt_title", "Earn a Reward");
    public static final by Y = a("text_incent_prompt_body", "Would you like to watch a video for a reward?");
    public static final by Z = a("text_incent_prompt_yes_option", "Watch Now");
    public static final by aa = a("text_incent_prompt_no_option", "No Thanks");
    public static final by ab = a("text_incent_completion_title", "Video Reward");
    public static final by ac = a("text_incent_completion_body_success", "You have earned a reward!");
    public static final by ad = a("text_incent_completion_body_quota_exceeded", "You have already earned the maximum reward for today.");
    public static final by ae = a("text_incent_completion_body_reward_rejected", "Your reward was rejected.");
    public static final by af = a("text_incent_completion_body_network_failure", "We were unable to contact the rewards server. Please try again later.");
    public static final by ag = a("text_incent_completion_close_option", "Okay");
    public static final by ah = a("show_incent_prepopup", true);
    public static final by ai = a("show_incent_postpopup", true);
    public static final by aj = a("preload_capacity_banner", 1);
    public static final by ak = a("preload_capacity_mrec", 1);
    public static final by al = a("preload_capacity_inter", 1);
    public static final by am = a("preload_capacity_leader", 1);
    public static final by an = a("preload_capacity_incent", 2);
    public static final by ao = a("dismiss_video_on_error", true);
    public static final by ap = a("precache_delimiters", ")]',");
    public static final by aq = a("close_button_size_graphic", 27);
    public static final by ar = a("close_button_size_video", 30);
    public static final by as = a("close_button_top_margin_graphic", 10);
    public static final by at = a("close_button_right_margin_graphic", 10);
    public static final by au = a("close_button_top_margin_video", 8);
    public static final by av = a("close_button_right_margin_video", 4);
    public static final by aw = a("force_back_button_enabled_poststitial", false);
    public static final by ax = a("force_back_button_enabled_close_button", false);
    public static final by ay = a("close_button_touch_area", 0);
    public static final by az = a("is_video_skippable", false);
    public static final by aA = a("cache_cleanup_enabled", false);
    public static final by aB = a("cache_file_ttl_seconds", 86400L);
    public static final by aC = a("cache_max_size_mb", -1);
    public static final by aD = a("preload_merge_init_tasks_incent", true);
    public static final by aE = a("preload_merge_init_tasks_inter", false);
    public static final by aF = a("submit_postback_timeout", Integer.valueOf(Constants.TEN_SECONDS_MILLIS));
    public static final by aG = a("submit_postback_retries", 10);
    public static final by aH = a("widget_imp_tracking_delay", Integer.valueOf(AdError.SERVER_ERROR_CODE));
    public static final by aI = a("draw_countdown_clock", true);
    public static final by aJ = a("countdown_clock_size", 32);
    public static final by aK = a("countdown_clock_stroke_size", 4);
    public static final by aL = a("countdown_clock_text_size", 28);
    public static final by aM = a("ad_auto_preload_native", true);
    public static final by aN = a("widget_fail_on_slot_count_diff", true);
    public static final by aO = a("video_zero_length_as_computed", false);
    public static final by aP = a("video_countdown_clock_margin", 10);
    public static final by aQ = a("video_countdown_clock_gravity", 83);
    public static final by aR = a("preload_capacity_widget", 1);
    public static final by aS = a("widget_latch_timeout_ms", 500);
    public static final by aT = a("android_gc_on_widget_detach", true);
    public static final by aU = a("lhs_close_button_video", false);
    public static final by aV = a("lhs_close_button_graphic", false);
    public static final by aW = a("lhs_skip_button", true);
    public static final by aX = a("countdown_toggleable", false);
    public static final by aY = a("native_batch_precache_count", 1);
    public static final by aZ = a("mute_controls_enabled", false);
    public static final by ba = a("allow_user_muting", true);
    public static final by bb = a("mute_button_size", 32);
    public static final by bc = a("mute_button_margin", 10);
    public static final by bd = a("mute_button_gravity", 85);
    public static final by be = a("qq", false);
    public static final by bf = a("hw_accelerate_webviews", false);
    public static final by bg = a("mute_videos", false);
    public static final by bh = a("event_tracking_endpoint", "http://rt.applovin.col/pix");
    public static final by bi = a("top_level_events", "landing,checkout,iap");
    public static final by bj = a("events_enabled", true);
    public static final by bk = a("force_ssl", false);
    public static final by bl = a("postback_service_max_queue_size", 100);
    public static final by bm = a("max_postback_attempts", 3);
    public static final by bn = a("click_overlay_enabled", false);
    public static final by bo = a("click_overlay_color", "#66000000");
    public static final by bp = a("click_tracking_retry_count", 3);
    public static final by bq = a("click_tracking_retry_delay", Integer.valueOf(AdError.SERVER_ERROR_CODE));
    public static final by br = a("click_tracking_timeout", Integer.valueOf(Constants.TEN_SECONDS_MILLIS));
    public static final by bs = a("android_click_spinner_size", 50);
    public static final by bt = a("android_click_spinner_style", Integer.valueOf(R.style.Widget.ProgressBar.Large));
    public static final by bu = a("android_dismiss_inters_on_click", false);
    public static final by bv = a("android_require_external_storage_permission", true);

    private static by a(String str, Object obj) {
        if (obj == null) {
            throw new IllegalArgumentException("No default value specified");
        }
        if (!bw.contains(obj.getClass())) {
            throw new IllegalArgumentException("Unsupported value type: " + obj.getClass());
        }
        by byVar = new by(str, obj);
        bx.add(byVar);
        return byVar;
    }

    public static Collection a() {
        return Collections.unmodifiableList(bx);
    }

    public static int b() {
        return bx.size();
    }
}
