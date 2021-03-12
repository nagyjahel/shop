package nagyjahel.shop

import android.os.Bundle
import android.os.PersistableBundle
import com.microsoft.appcenter.AppCenter
import com.microsoft.appcenter.analytics.Analytics
import com.microsoft.appcenter.crashes.Crashes
import io.flutter.embedding.android.FlutterActivity

class MainActivity: FlutterActivity() {

    override fun onCreate(savedInstanceState: Bundle?, persistentState: PersistableBundle?) {
        AppCenter.start(application, "a81d96e2-c802-4ed8-b833-54aba9587397",
                Analytics::class.java, Crashes::class.java)
        super.onCreate(savedInstanceState, persistentState)
    }
}
