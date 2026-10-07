# prevents crash in fresco on android 7
-keep public class com.facebook.imageutils.** {
   public *;
}

# merge all classes into a single package to shrink dex names
-repackageclasses ''
-allowaccessmodification
