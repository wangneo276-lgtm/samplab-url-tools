import unittest
from samplab_url_tools import home_url, metadata, page_url
from samplab_url_tools import tool_url

class UrlTests(unittest.TestCase):
    def test_metadata(self):
        data = metadata()
        self.assertEqual(data["name"], "SampLab Pro")
        self.assertTrue(data["homepage"].startswith("https://"))
        self.assertEqual(data["homepage"], "https://samplab.pro/")
        self.assertNotIn(' ', data['homepage'])

    def test_home(self):
        self.assertEqual(home_url(), "https://samplab.pro/")

    def test_pages(self):
        self.assertEqual(page_url("features"), "https://samplab.pro/features/")
        self.assertEqual(page_url("pricing"), "https://samplab.pro/pricing/")
        self.assertEqual(page_url("faq"), "https://samplab.pro/faq/")
        self.assertEqual(page_url("about"), "https://samplab.pro/about/")

    def test_unknown_page(self):
        with self.assertRaises(ValueError):
            page_url("not-a-page")

    def test_tool_url(self):
        self.assertEqual(tool_url("audio-to-midi"), "https://samplab.pro/audio-to-midi/")
        self.assertEqual(tool_url("bpm-key-finder"), "https://samplab.pro/bpm-key-finder/")
        self.assertEqual(tool_url("chord-recognition"), "https://samplab.pro/chord-recognition/")
        self.assertEqual(tool_url("frequency-band-splitter"), "https://samplab.pro/frequency-band-splitter/")
        self.assertEqual(tool_url("midi-to-audio"), "https://samplab.pro/midi-to-audio/")
        self.assertEqual(tool_url("lead-sheet-generator"), "https://samplab.pro/lead-sheet-generator/")
        with self.assertRaises(ValueError):
            tool_url("not-listed")

if __name__ == '__main__':
    unittest.main()
