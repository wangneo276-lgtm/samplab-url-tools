package pro.samplab;
public final class UrlsTest {
    public static void main(String[] args) {
        if (!Urls.homeUrl().equals("https://samplab.pro/")) throw new AssertionError("home");
        if (!Urls.pageUrl("pricing").equals("https://samplab.pro/pricing/")) throw new AssertionError("page");
if (!Urls.toolUrl("audio-to-midi").equals("https://samplab.pro/audio-to-midi/")) throw new AssertionError("extra");
        System.out.println("ok");
    }
}
