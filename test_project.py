from project import make_url, google_search, clean_data


def test_make_url():
    assert make_url("test") == "https://www.google.com/search?hl=en&num=10&q=test"
    assert make_url("What is Google?") == "https://www.google.com/search?hl=en&num=10&q=What%20is%20Google%3F"


def test_google_search():
    url = make_url("What is Google?")
    elements = google_search(url)
    assert len(elements) > 10
    assert isinstance(elements, list)


def test_clean_data():
    url = make_url("What is Google?")
    elements = google_search(url)
    results = clean_data(elements)
    assert results.count("\n\n") == 9
    assert results.count("http") == 10
