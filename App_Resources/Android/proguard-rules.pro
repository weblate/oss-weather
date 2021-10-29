#-dontobfuscate
-dontwarn **
#-keepattributes *Annotation*, EnclosingMethod, Exceptions, InnerClasses
-keepattributes EnclosingMethod, InnerClasses

-keep,includedescriptorclasses        class     com.tns.** { *; }
-keep,includedescriptorclasses public interface com.tns.** { *; }

-keep,allowoptimization public class java.lang.String** { public  *; }
-keep,allowoptimization public class java.lang.Integer** { public  *; }
-keep,allowoptimization public class java.lang.Number** { public  *; }
-keep,allowoptimization public class java.lang.Float** { public  *; }
-keep,allowoptimization public class java.lang.Class** { public  *; }
-keep,allowoptimization public class java.lang.ClassLoader** { public  *; }
-keep,allowoptimization public class java.lang.Exception** { public  *; }
-keep,allowoptimization public class java.lang.CharSequence** { public  *; }
-keep,allowoptimization public class java.lang.System** { public  *; }
-keep,allowoptimization public class java.lang.Runnable** { public  *; }
-keep,allowoptimization public class java.lang.reflect.Field** { public  *; }
-keep,allowoptimization public class java.io.File** { public  *; }
-keep,allowoptimization public class java.io.InputStream** { public  *; }
-keep,allowoptimization public class java.io.FileInputStream** { public  *; }
-keep,allowoptimization public class java.io.DataInputStream** { public  *; }
-keep,allowoptimization public class java.io.InputStreamReader** { public  *; }
-keep,allowoptimization public class java.io.BufferedReader** { public  *; }
-keep,allowoptimization public class java.io.OutputStreamWriter** { public  *; }
-keep,allowoptimization public class java.io.BufferedOutputStream** { public  *; }
-keep,allowoptimization public class java.io.ByteArrayOutputStream** { public  *; }
-keep,allowoptimization public class java.io.IOException** { public  *; }
-keep,allowoptimization public class java.io.FileNotFoundException** { public  *; }
-keep,allowoptimization public class java.nio.ByteBuffer** { public  *; }
-keep,allowoptimization public class java.util.Locale** { public  *; }
-keep,allowoptimization public class java.util.Calendar** { public  *; }
-keep,allowoptimization public class java.util.HashSet** { public  *; }
-keep,allowoptimization public class java.util.Arrays** { public  *; }
-keep,allowoptimization public class java.util.List** { public  *; }
-keep,allowoptimization public class java.util.ArrayList** { public  *; }
-keep,allowoptimization public class java.util.Set** { public  *; }
-keep,allowoptimization public class java.util.HashMap** { public  *; }
-keep,allowoptimization public class com.tns.NativeScriptApplication** { public  *; }
-keep,allowoptimization public class com.tns.NativeScriptActivity** { public  *; }
-keep,allowoptimization public class com.tns.FragmentClass** { public  *; }
-keep,allowoptimization public class com.tns.NativeScriptException** { public  *; }
-keep,allowoptimization public class com.nativescript.** { public protected *; }
-keep,allowoptimization public class org.nativescript.** { public protected *; }
-keep,allowoptimization public class android.content.Context** { public  *; }
-keep,allowoptimization public class android.content.ComponentCallbacks2** { public  *; }
-keep,allowoptimization public class android.content.res.Configuration** { public  *; }
-keep,allowoptimization public class android.content.res.Resources** { public  *; }
-keep,allowoptimization public class android.content.res.ColorStateList** { public  *; }
-keep,allowoptimization public class android.content.res.AssetManager** { public  *; }
-keep,allowoptimization public class android.content.BroadcastReceiver** { public  *; }
-keep,allowoptimization public class android.content.ComponentName** { public  *; }
-keep,allowoptimization public class android.content.Intent** { public  *; }
-keep,allowoptimization public class android.content.IntentFilter** { public  *; }
-keep,allowoptimization public class android.content.pm.PackageManager** { public  *; }
-keep,allowoptimization public class android.content.pm.PackageItemInfo** { public  *; }
-keep,allowoptimization public class android.content.pm.ComponentInfo** { public  *; }
-keep,allowoptimization public class android.content.pm.ActivityInfo** { public  *; }
-keep,allowoptimization public class android.content.pm.ApplicationInfo** { public  *; }
-keep,allowoptimization public class android.content.DialogInterface** { public  *; }
-keep,allowoptimization public class android.content.DialogInterface.OnCancelListener** { public  *; }
-keep,allowoptimization public class android.content.DialogInterface.OnDismissListener** { public  *; }
-keep,allowoptimization public class android.app.Dialog** { public  *; }
-keep,allowoptimization public class android.app.AlertDialog** { public  *; }
-keep,allowoptimization public class android.app.AlertDialog.Builder** { public  *; }
-keep,allowoptimization public class android.app.Menu** { public  *; }
-keep,allowoptimization public class android.app.Application** { public  *; }
-keep,allowoptimization public class android.app.Activity** { public  *; }
-keep,allowoptimization public class android.app.ActivityThread** { public  *; }
-keep,allowoptimization public class android.app.ActionBar** { public  *; }
-keep,allowoptimization public class android.os.Build** { public  *; }
-keep,allowoptimization public class android.os.BaseBundle** { public  *; }
-keep,allowoptimization public class android.os.Bundle** { public  *; }
-keep,allowoptimization public class android.os.Looper** { public  *; }
-keep,allowoptimization public class android.os.Handler** { public  *; }
-keep,allowoptimization public class android.os.Parcelable** { public  *; }
-keep,allowoptimization public class android.os.Environment** { public  *; }
-keep,allowoptimization public class android.os.IBinder** { public  *; }
-keep,allowoptimization public class android.view.Window** { public  *; }
-keep,allowoptimization public class android.view.View** { public  *; }
-keep,allowoptimization public class android.view.View.OnClickListener** { public  *; }
-keep,allowoptimization public class android.view.View.OnLayoutChangeListener** { public  *; }
-keep,allowoptimization public class android.view.View.OnAttachStateChangeListener** { public  *; }
-keep,allowoptimization public class android.view.View.OnFocusChangeListener** { public  *; }
-keep,allowoptimization public class android.view.ViewConfiguration** { public  *; }
-keep,allowoptimization public class android.view.ViewGroup** { public  *; }
-keep,allowoptimization public class android.view.ViewGroup.LayoutParams** { public  *; }
-keep,allowoptimization public class android.view.GestureDetector** { public  *; }
-keep,allowoptimization public class android.view.GestureDetector.SimpleOnGestureListener** { public  *; }
-keep,allowoptimization public class android.view.ScaleGestureDetector** { public  *; }
-keep,allowoptimization public class android.view.ScaleGestureDetector.SimpleOnScaleGestureListener** { public  *; }
-keep,allowoptimization public class android.view.Gravity** { public  *; }
-keep,allowoptimization public class android.view.KeyEvent** { public  *; }
-keep,allowoptimization public class android.view.MotionEvent** { public  *; }
-keep,allowoptimization public class android.view.LayoutInflater** { public  *; }
-keep,allowoptimization public class android.view.Menu** { public  *; }
-keep,allowoptimization public class android.view.MenuItem** { public  *; }
-keep,allowoptimization public class android.view.ViewTreeObserver** { public  *; }
-keep,allowoptimization public class android.view.ViewTreeObserver.OnGlobalLayoutListener** { public  *; }
-keep,allowoptimization public class android.view.ViewTreeObserver.OnScrollChangedListener** { public  *; }
-keep,allowoptimization public class android.view.Choreographer** { public  *; }
-keep,allowoptimization public class android.view.Choreographer.FrameCallback** { public  *; }
-keep,allowoptimization public class android.view.AccessibilityDelegate** { public  *; }
-keep,allowoptimization public class android.view.accessibility.AccessibilityManager** { public  *; }
-keep,allowoptimization public class android.view.accessibility.AccessibilityEvent** { public  *; }
-keep,allowoptimization public class android.view.accessibility.AccessibilityNodeInfo** { public  *; }
-keep,allowoptimization public class android.view.animation.Interpolator** { public  *; }
-keep,allowoptimization public class android.view.animation.AccelerateInterpolator** { public  *; }
-keep,allowoptimization public class android.view.animation.DecelerateInterpolator** { public  *; }
-keep,allowoptimization public class android.view.animation.AccelerateDecelerateInterpolator** { public  *; }
-keep,allowoptimization public class android.view.animation.LinearInterpolator** { public  *; }
-keep,allowoptimization public class android.view.animation.BounceInterpolator** { public  *; }
-keep,allowoptimization public class android.view.animation.Animation** { public  *; }
-keep,allowoptimization public class android.view.inputmethod.EditorInfo** { public  *; }
-keep,allowoptimization public class android.view.inputmethod.InputMethodManager** { public  *; }
-keep,allowoptimization public class android.net.ConnectivityManager** { public  *; }
-keep,allowoptimization public class android.net.NetworkInfo** { public  *; }
-keep,allowoptimization public class android.net.Uri** { public  *; }
-keep,allowoptimization public class android.net.Network** { public  *; }
-keep,allowoptimization public class android.net.NetworkCapabilities** { public  *; }
-keep,allowoptimization public class android.graphics.Bitmap** { public  *; }
-keep,allowoptimization public class android.graphics.Bitmap.Config** { public  *; }
-keep,allowoptimization public class android.graphics.Bitmap.CompressFormat** { public  *; }
-keep,allowoptimization public class android.graphics.BitmapFactory** { public  *; }
-keep,allowoptimization public class android.graphics.Canvas** { public  *; }
-keep,allowoptimization public class android.graphics.Paint** { public  *; }
-keep,allowoptimization public class android.graphics.Color** { public  *; }
-keep,allowoptimization public class android.graphics.Rect** { public  *; }
-keep,allowoptimization public class android.graphics.Typeface** { public  *; }
-keep,allowoptimization public class android.graphics.Matrix** { public  *; }
-keep,allowoptimization public class android.graphics.PorterDuff** { public  *; }
-keep,allowoptimization public class android.graphics.PorterDuff.Mode** { public  *; }
-keep,allowoptimization public class android.graphics.drawable.Drawable** { public  *; }
-keep,allowoptimization public class android.graphics.drawable.ColorDrawable** { public  *; }
-keep,allowoptimization public class android.graphics.drawable.LayerDrawable** { public  *; }
-keep,allowoptimization public class android.graphics.drawable.BitmapDrawable** { public  *; }
-keep,allowoptimization public class android.util.Base64** { public  *; }
-keep,allowoptimization public class android.util.Base64OutputStream** { public  *; }
-keep,allowoptimization public class android.util.DisplayMetrics** { public  *; }
-keep,allowoptimization public class android.util.SparseArray** { public  *; }
-keep,allowoptimization public class android.util.LruCache** { public  *; }
-keep,allowoptimization public class android.util.TypedValue** { public  *; }
-keep,allowoptimization public class android.util.AttributeSet** { public  *; }
-keep,allowoptimization public class android.media.ExifInterface** { public  *; }
-keep,allowoptimization public class android.widget.LinearLayout** { public  *; }
-keep,allowoptimization public class android.widget.FrameLayout** { public  *; }
-keep,allowoptimization public class android.widget.Button** { public  *; }
-keep,allowoptimization public class android.widget.TextView** { public  *; }
-keep,allowoptimization public class android.widget.TextView.BufferType** { public  *; }
-keep,allowoptimization public class android.widget.TextView.OnEditorActionListener** { public  *; }
-keep,allowoptimization public class android.widget.ImageView** { public  *; }
-keep,allowoptimization public class android.widget.ImageView.ScaleType** { public  *; }
-keep,allowoptimization public class android.widget.ImageButton** { public  *; }
-keep,allowoptimization public class android.widget.SeekBar** { public  *; }
-keep,allowoptimization public class android.widget.SeekBar.OnSeekBarChangeListener** { public  *; }
-keep,allowoptimization public class android.widget.CheckBox** { public  *; }
-keep,allowoptimization public class android.widget.CompoundButton** { public  *; }
-keep,allowoptimization public class android.widget.CompoundButton.OnCheckedChangeListener** { public  *; }
-keep,allowoptimization public class android.widget.RadioButton** { public  *; }
-keep,allowoptimization public class android.widget.Spinner** { public  *; }
-keep,allowoptimization public class android.widget.Switch** { public  *; }
-keep,allowoptimization public class android.widget.ProgressBar** { public  *; }
-keep,allowoptimization public class android.widget.EditText** { public  *; }
-keep,allowoptimization public class android.widget.DatePicker** { public  *; }
-keep,allowoptimization public class android.widget.DatePicker.OnDateChangedListener** { public  *; }
-keep,allowoptimization public class android.widget.TimePicker** { public  *; }
-keep,allowoptimization public class android.widget.TimePicker.OnTimeChangedListener** { public  *; }
-keep,allowoptimization public class android.widget.NumberPicker** { public  *; }
-keep,allowoptimization public class android.widget.NumberPicker.Formatter** { public  *; }
-keep,allowoptimization public class android.widget.NumberPicker.OnValueChangeListener** { public  *; }
-keep,allowoptimization public class android.widget.ListView** { public  *; }
-keep,allowoptimization public class android.widget.BaseAdapter** { public  *; }
-keep,allowoptimization public class android.widget.AdapterView** { public  *; }
-keep,allowoptimization public class android.widget.AdapterView.OnItemClickListener** { public  *; }
-keep,allowoptimization public class android.widget.TabWidget** { public  *; }
-keep,allowoptimization public class android.widget.TabHost** { public  *; }
-keep,allowoptimization public class android.widget.TabHost.OnTabChangeListener** { public  *; }
-keep,allowoptimization public class android.widget.TabHost.TabContentFactory** { public  *; }
-keep,allowoptimization public class android.animation.ArgbEvaluator** { public  *; }
-keep,allowoptimization public class android.animation.ObjectAnimator** { public  *; }
-keep,allowoptimization public class android.animation.TypeEvaluator** { public  *; }
-keep,allowoptimization public class android.animation.ValueAnimator** { public  *; }
-keep,allowoptimization public class android.animation.ValueAnimator.AnimatorUpdateListener** { public  *; }
-keep,allowoptimization public class android.animation.AnimatorSet** { public  *; }
-keep,allowoptimization public class android.animation.Animator** { public  *; }
-keep,allowoptimization public class android.animation.StateListAnimator** { public  *; }
-keep,allowoptimization public class android.animation.TimeInterpolator** { public  *; }
-keep,allowoptimization public class android.animation.Animator.AnimatorListener** { public  *; }
-keep,allowoptimization public class android.provider.Settings** { public  *; }
-keep,allowoptimization public class android.provider.Settings.Secure** { public  *; }
-keep,allowoptimization public class android.text.style.MetricAffectingSpan** { public  *; }
-keep,allowoptimization public class android.text.style.ClickableSpan** { public  *; }
-keep,allowoptimization public class android.text.style.AbsoluteSizeSpan** { public  *; }
-keep,allowoptimization public class android.text.style.ForegroundColorSpan** { public  *; }
-keep,allowoptimization public class android.text.style.BackgroundColorSpan** { public  *; }
-keep,allowoptimization public class android.text.style.UnderlineSpan** { public  *; }
-keep,allowoptimization public class android.text.style.StrikethroughSpan** { public  *; }
-keep,allowoptimization public class android.text.style.ScaleXSpan** { public  *; }
-keep,allowoptimization public class android.text.style.StyleSpan** { public  *; }
-keep,allowoptimization public class android.text.TextUtils** { public  *; }
-keep,allowoptimization public class android.text.TextUtils.TruncateAt** { public  *; }
-keep,allowoptimization public class android.text.InputFilter** { public  *; }
-keep,allowoptimization public class android.text.InputFilter.LengthFilter** { public  *; }
-keep,allowoptimization public class android.text.InputType** { public  *; }
-keep,allowoptimization public class android.text.TextPaint** { public  *; }
-keep,allowoptimization public class android.text.TextWatcher** { public  *; }
-keep,allowoptimization public class android.text.SpannableStringBuilder** { public  *; }
-keep,allowoptimization public class android.text.Spanned** { public  *; }
-keep,allowoptimization public class android.text.Editable** { public  *; }
-keep,allowoptimization public class android.text.Html** { public  *; }
-keep,allowoptimization public class android.text.Layout** { public  *; }
-keep,allowoptimization public class android.text.method.KeyListener** { public  *; }
-keep,allowoptimization public class android.text.method.TransformationMethod** { public  *; }
-keep,allowoptimization public class android.text.method.LinkMovementMethod** { public  *; }
-keep,allowoptimization public class android.text.method.MovementMethod** { public  *; }
-keep,allowoptimization public class android.webkit.WebViewClient** { public  *; }
-keep,allowoptimization public class android.webkit.WebView** { public  *; }
-keep,allowoptimization public class android.webkit.WebSettings** { public  *; }
-keep,allowoptimization public class android.webkit.WebResourceRequest** { public  *; }
-keep,allowoptimization public class android.webkit.WebResourceError** { public  *; }
-keep,allowoptimization public class android.webkit.MimeTypeMap** { public  *; }
-keep,allowoptimization public class androidx.appcompat.widget.Toolbar** { public  *; }
-keep,allowoptimization public class androidx.appcompat.widget.Toolbar.OnMenuItemClickListener** { public  *; }
-keep,allowoptimization public class androidx.appcompat.widget.AppCompatTextView** { public  *; }
-keep,allowoptimization public class androidx.appcompat.app.AppCompatActivity** { public  *; }
-keep,allowoptimization public class androidx.appcompat.widget.SearchView** { public  *; }
-keep,allowoptimization public class androidx.appcompat.widget.SearchView.OnCloseListener** { public  *; }
-keep,allowoptimization public class androidx.appcompat.widget.SearchView.OnQueryTextListener** { public  *; }
-keep,allowoptimization public class androidx.appcompat.R.att** { public  *; }
-keep,allowoptimization public class androidx.core.view.accessibility.AccessibilityManagerCompat** { public  *; }
-keep,allowoptimization public class androidx.core.view.accessibility.AccessibilityManagerCompat.AccessibilityStateChangeListener** { public  *; }
-keep,allowoptimization public class androidx.core.view.accessibility.AccessibilityManagerCompat.TouchExplorationStateChangeListener** { public  *; }
-keep,allowoptimization public class androidx.core.view.ViewCompat** { public  *; }
-keep,allowoptimization public class androidx.core.view.GestureDetectorCompat** { public  *; }
-keep,allowoptimization public class androidx.core.view.NestedScrollView** { public  *; }
-keep,allowoptimization public class androidx.core.view.NestedScrollView.OnScrollChangeListener** { public  *; }
-keep,allowoptimization public class androidx.core.view.animation.PathInterpolatorCompat** { public  *; }
-keep,allowoptimization public class androidx.core.content.FileProvider** { public  *; }
-keep,allowoptimization public class androidx.viewpager.widget.ViewPager** { public  *; }
-keep,allowoptimization public class androidx.viewpager.widget.PagerAdapter** { public  *; }
-keep,allowoptimization public class androidx.fragment.app.DialogFragment** { public  *; }
-keep,allowoptimization public class androidx.fragment.app.FragmentManager** { public  *; }
-keep,allowoptimization public class androidx.fragment.app.FragmentActivity** { public  *; }
-keep,allowoptimization public class androidx.fragment.app.FragmentTransaction** { public  *; }
-keep,allowoptimization public class androidx.fragment.app.Fragment** { public  *; }
-keep,allowoptimization public class androidx.transition.Transition** { public  *; }
-keep,allowoptimization public class androidx.transition.Slide** { public  *; }
-keep,allowoptimization public class androidx.transition.Fade** { public  *; }
-keep,allowoptimization public class androidx.transition.Transition.TransitionListener** { public  *; }
-keep,allowoptimization public class androidx.lifecycle.Lifecycle** { public  *; }
-keep,allowoptimization public class androidx.lifecycle.Lifecycle.State** { public  *; }
-keep,allowoptimization public class android.inputmethodservice.Keyboard** { public  *; }
-keep,allowoptimization public class android.inputmethodservice.Keyboard.Key** { public  *; }
-keep,allowoptimization public class android.content.pm.PackageInfo** { public  *; }
-keep,allowoptimization public class android.location.Address** { public  *; }
-keep,allowoptimization public class android.location.Geocoder** { public  *; }
-keep,allowoptimization public class com.swmansion.gesturehandler.** { public protected *; }
-keep,allowoptimization public class android.location.GpsStatus.** { public protected *; }
-keep,allowoptimization public class android.location.Location** { public  *; }
-keep,allowoptimization public class android.location.LocationManager** { public  *; }
-keep,allowoptimization public class android.location.LocationProvider** { public  *; }
-keep,allowoptimization public class android.location.OnNmeaMessageListener** { public  *; }
-keep,allowoptimization public class android.location.LocationListener** { public  *; }
-keep,allowoptimization public class android.location.Criteria** { public  *; }
-keep,allowoptimization public class android.os.SystemClock** { public  *; }
-keep,allowoptimization public class android.os.StrictMode** { public  *; }
-keep,allowoptimization public class android.os.StrictMode.ThreadPolicy** { public  *; }
-keep,allowoptimization public class okhttp3.Call** { public  *; }
-keep,allowoptimization public class okhttp3.RequestBody** { public  *; }
-keep,allowoptimization public class okhttp3.MediaType** { public  *; }
-keep,allowoptimization public class okhttp3.MultipartBody** { public  *; }
-keep,allowoptimization public class okhttp3.Response** { public  *; }
-keep,allowoptimization public class okhttp3.ResponseBody** { public  *; }
-keep,allowoptimization public class okhttp3.Headers** { public  *; }
-keep,allowoptimization public class okhttp3.MultipartBody.Builder** { public  *; }
-keep,allowoptimization public class okhttp3.CacheControl** { public  *; }
-keep,allowoptimization public class okhttp3.CacheControl.Builder** { public  *; }
-keep,allowoptimization public class okhttp3.Request** { public  *; }
-keep,allowoptimization public class okhttp3.Request.Builder** { public  *; }
-keep,allowoptimization public class okhttp3.OkHttpClient** { public  *; }
-keep,allowoptimization public class okhttp3.OkHttpClient.Builder** { public  *; }
-keep,allowoptimization public class okhttp3.CertificatePinner** { public  *; }
-keep,allowoptimization public class okhttp3.CertificatePinner.Builder** { public  *; }
-keep,allowoptimization public class okhttp3.ConnectionSpec** { public  *; }
-keep,allowoptimization public class okhttp3.Cache** { public  *; }
-keep,allowoptimization public class okhttp3.Callback** { public  *; }
-keep,allowoptimization public class okhttp3.FormBody** { public  *; }
-keep,allowoptimization public class okhttp3.FormBody.Builder** { public  *; }
-keep,allowoptimization public class okhttp3.CookieJar** { public  *; }
-keep,allowoptimization public class java.net.CookieManager** { public  *; }
-keep,allowoptimization public class java.net.CookiePolicy** { public  *; }
-keep,allowoptimization public class com.nativescript.https.QuotePreservingCookieJar** { public  *; }
-keep,allowoptimization public class com.nativescript.https.CacheInterceptor** { public  *; }
-keep,allowoptimization public class com.nativescript.https.OkHttpResponse** { public  *; }
-keep,allowoptimization public class java.util.Collections** { public  *; }
-keep,allowoptimization public class java.security.cert.CertificateFactory** { public  *; }
-keep,allowoptimization public class java.security.KeyStore** { public  *; }
-keep,allowoptimization public class java.security.Security** { public  *; }
-keep,allowoptimization public class javax.net.ssl.TrustManagerFactory** { public  *; }
-keep,allowoptimization public class javax.net.ssl.SSLContext** { public  *; }
-keep,allowoptimization public class javax.net.ssl.HttpsURLConnection** { public  *; }
-keep,allowoptimization public class java.util.concurrent.TimeUnit** { public  *; }
-keep,allowoptimization public class org.conscrypt.Conscrypt** { public  *; }
-keep,allowoptimization public class android.Manifest.permission.** { public protected *; }
-keep,allowoptimization public class android.os.Process** { public  *; }
-keep,allowoptimization public class android.Manifest** { public  *; }
-keep,allowoptimization public class com.nativescript.preferences.NativescriptSettingsActivity** { public  *; }
-keep,allowoptimization public class android.content.SharedPreferences** { public  *; }
-keep,allowoptimization public class android.content.SharedPreferences.OnSharedPreferenceChangeListener** { public  *; }
-keep,allowoptimization public class java.nio.ByteOrder** { public  *; }
-keep,allowoptimization public class com.akylas.canvas.** { public protected *; }
-keep,allowoptimization public class android.graphics.DashPathEffect** { public  *; }
-keep,allowoptimization public class android.graphics.LinearGradient** { public  *; }
-keep,allowoptimization public class android.graphics.RadialGradient** { public  *; }
-keep,allowoptimization public class android.graphics.PorterDuffColorFilter** { public  *; }
-keep,allowoptimization public class android.graphics.PorterDuffXfermode** { public  *; }
-keep,allowoptimization public class android.graphics.PointF** { public  *; }
-keep,allowoptimization public class android.text.Layout.Alignment** { public  *; }
-keep,allowoptimization public class android.graphics.PathEffect** { public  *; }
-keep,allowoptimization public class android.graphics.DrawFilter** { public  *; }
-keep,allowoptimization public class android.graphics.Paint.** { public protected *; }
-keep,allowoptimization public class android.graphics.RecordingCanvas** { public  *; }
-keep,allowoptimization public class android.graphics.Path** { public  *; }
-keep,allowoptimization public class android.graphics.Path** { public  *; }
-keep,allowoptimization public class android.graphics.RectF** { public  *; }
-keep,allowoptimization public class android.graphics.Shader** { public  *; }
-keep,allowoptimization public class android.graphics.Shader.** { public protected *; }
-keep,allowoptimization public class android.graphics.Region** { public  *; }
-keep,allowoptimization public class android.graphics.Region.Op** { public  *; }
-keep,allowoptimization public class java.nio.FloatBuffer** { public  *; }
-keep,allowoptimization public class com.nativescript.collectionview.** { public protected *; }
-keep,allowoptimization public class androidx.recyclerview.widget.RecyclerView** { public  *; }
-keep,allowoptimization public class androidx.recyclerview.widget.RecyclerView.ViewHolder** { public  *; }
-keep,allowoptimization public class androidx.recyclerview.widget.RecyclerView.Adapter** { public  *; }
-keep,allowoptimization public class androidx.recyclerview.widget.RecyclerView.OnItemTouchListener** { public  *; }
-keep,allowoptimization public class androidx.recyclerview.widget.RecyclerView.OnScrollListener** { public  *; }
-keep,allowoptimization public class androidx.recyclerview.widget.ItemTouchHelper** { public  *; }
-keep,allowoptimization public class androidx.recyclerview.widget.ItemTouchHelper.SimpleCallback** { public  *; }
-keep,allowoptimization public class androidx.recyclerview.widget.SimpleItemAnimato** { public  *; }
-keep,allowoptimization public class com.h6ah4i.android.widget.advrecyclerview.animator.BaseItemAnimator** { public  *; }
-keep,allowoptimization public class com.h6ah4i.android.widget.advrecyclerview.animator.GeneralItemAnimator** { public  *; }
-keep,allowoptimization public class com.h6ah4i.android.widget.advrecyclerview.animator.RefactoredDefaultItemAnimator** { public  *; }
-keep,allowoptimization public class androidx.recyclerview.widget.RecyclerView.LayoutManager** { public  *; }
-keep,allowoptimization public class androidx.recyclerview.widget.LinearLayoutManager** { public  *; }
-keep,allowoptimization public class androidx.recyclerview.widget.GridLayoutManager** { public  *; }
-keep,allowoptimization public class androidx.recyclerview.widget.GridLayoutManager.SpanSizeLookup** { public  *; }
-keep,allowoptimization public class com.facebook.drawee.drawable.ScalingUtils** { public  *; }
-keep,allowoptimization public class com.facebook.drawee.drawable.ScalingUtils.ScaleType** { public  *; }
-keep,allowoptimization public class com.facebook.drawee.generic.RoundingParams** { public  *; }
-keep,allowoptimization public class com.facebook.drawee.drawable.ProgressBarDrawable** { public  *; }
-keep,allowoptimization public class com.facebook.drawee.view.DraweeView** { public  *; }
-keep,allowoptimization public class com.facebook.drawee.interfaces.DraweeHierarchy** { public  *; }
-keep,allowoptimization public class com.facebook.drawee.interfaces.SettableDraweeHierarchy** { public  *; }
-keep,allowoptimization public class com.facebook.drawee.interfaces.SimpleDraweeControllerBuilder** { public  *; }
-keep,allowoptimization public class com.facebook.drawee.interfaces.DraweeController** { public  *; }
-keep,allowoptimization public class com.facebook.drawee.generic.GenericDraweeHierarchyBuilder** { public  *; }
-keep,allowoptimization public class com.facebook.drawee.generic.GenericDraweeHierarchy** { public  *; }
-keep,allowoptimization public class com.facebook.imagepipeline.request.ImageRequestBuilder** { public  *; }
-keep,allowoptimization public class com.facebook.imagepipeline.request.ImageRequest** { public  *; }
-keep,allowoptimization public class com.facebook.imagepipeline.core.ImagePipelineConfig** { public  *; }
-keep,allowoptimization public class com.facebook.imagepipeline.common.RotationOptions** { public  *; }
-keep,allowoptimization public class com.facebook.imagepipeline.common.ResizeOptions** { public  *; }
-keep,allowoptimization public class com.facebook.drawee.backends.pipeline.Fresco** { public  *; }
-keep,allowoptimization public class com.facebook.drawee.backends.pipeline.PipelineDraweeControllerBuilder** { public  *; }
-keep,allowoptimization public class com.facebook.drawee.backends.pipeline.PipelineDraweeController** { public  *; }
-keep,allowoptimization public class com.facebook.drawee.controller.AbstractDraweeControllerBuilder** { public  *; }
-keep,allowoptimization public class com.facebook.drawee.controller.AbstractDraweeController** { public  *; }
-keep,allowoptimization public class com.facebook.drawee.backends.pipeline.info.ImagePerfDataListener** { public  *; }
-keep,allowoptimization public class com.facebook.drawee.backends.pipeline.info.ImagePerfData** { public  *; }
-keep,allowoptimization public class com.facebook.drawee.controller.ControllerListener** { public  *; }
-keep,allowoptimization public class com.nativescript.image.DraweeView** { public  *; }
-keep,allowoptimization public class com.nativescript.image.ScalingBlurPostprocessor** { public  *; }
-keep,allowoptimization public class android.graphics.drawable.Animatabl** { public  *; }
-keep,allowoptimization public class com.facebook.imagepipeline.image.ImageInfo** { public  *; }
-keep,allowoptimization public class android.text.style.URLSpan** { public  *; }
-keep,allowoptimization public class androidx.core.widget.TextViewCompat** { public  *; }
-keep,allowoptimization public class com.airbnb.lottie.LottieAnimationView** { public  *; }
-keep,allowoptimization public class com.airbnb.lottie.model.KeyPath** { public  *; }
-keep,allowoptimization public class com.airbnb.lottie.value.LottieValueCallback** { public  *; }
-keep,allowoptimization public class com.airbnb.lottie.LottieProperty** { public  *; }
-keep,allowoptimization public class com.airbnb.lottie.RenderMode** { public  *; }
-keep,allowoptimization public class android.animation.Animato** { public  *; }
-keep,allowoptimization public class com.google.android.material.progressindicator.CircularProgressIndicator** { public  *; }
-keep,allowoptimization public class com.google.android.material.bottomsheet.BottomSheetBehavior** { public  *; }
-keep,allowoptimization public class com.google.android.material.bottomsheet.BottomSheetBehavior.BottomSheetCallback** { public  *; }
-keep,allowoptimization public class com.google.android.material.button.MaterialButton** { public  *; }
-keep,allowoptimization public class com.google.android.material.dialog.MaterialAlertDialogBuilder** { public  *; }
-keep,allowoptimization public class androidx.appcompat.app.AlertDialog** { public  *; }
-keep,allowoptimization public class androidx.appcompat.app.AlertDialog.Builder** { public  *; }
-keep,allowoptimization public class com.google.android.material.snackbar.BaseTransientBottomBar.BaseCallback** { public  *; }
-keep,allowoptimization public class androidx.coordinatorlayout.widget.CoordinatorLayout** { public  *; }
-keep,allowoptimization public class android.widget.FrameLayout.LayoutParams** { public  *; }
-keep,allowoptimization public class com.google.android.material.snackbar.Snackbar** { public  *; }
-keep,allowoptimization public class com.nativescript.material.snackbar.SnackCallback** { public  *; }
-keep,allowoptimization public class com.nativescript.material.snackbar.SnackCallback.SnackCallbackListener** { public  *; }
-keep,allowoptimization public class android.widget.LinearLayout.LayoutParams** { public  *; }
-keep,allowoptimization public class android.text.method.DigitsKeyListener** { public  *; }
-keep,allowoptimization public class com.nativescript.material.textfield.TextInputLayout** { public  *; }
-keep,allowoptimization public class com.nativescript.material.textfield.TextInputEditText** { public  *; }
-keep,allowoptimization public class com.nativescript.swiperefreshlayout.CarouselFriendlySwipeRefreshLayout** { public  *; }
-keep,allowoptimization public class androidx.swiperefreshlayout.widget.SwipeRefreshLayout** { public  *; }
-keep,allowoptimization public class androidx.swiperefreshlayout.widget.SwipeRefreshLayout.OnRefreshListener** { public  *; }
-keep,allowoptimization public class com.nativescript.material.core.Utils** { public  *; }
-keep,allowoptimization public class com.google.android.material.shape.ShapeAppearanceModel** { public  *; }
-keep,allowoptimization public class com.google.android.material.shape.MaterialShapeDrawable** { public  *; }
-keep,allowoptimization public class com.google.android.material.shape.CornerTreatment** { public  *; }
-keep,allowoptimization public class com.google.android.material.shape.CutCornerTreatment** { public  *; }
-keep,allowoptimization public class com.google.android.material.shape.RelativeCornerSize** { public  *; }
-keep,allowoptimization public class com.google.android.material.shape.RoundedCornerTreatment** { public  *; }
-keep,allowoptimization public class android.content.res.TypedArray** { public  *; }
-keep,allowoptimization public class androidx.appcompat.app.AppCompatDelegate** { public  *; }
-keep,allowoptimization public class android.widget.Toast** { public  *; }