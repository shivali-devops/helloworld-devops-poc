# test__app.py

#import app

#def test_import_only():
    #assert app.app is not None

import app

def test_home():
    response = app.app.test_client().get('/')
    assert response.status_code == 200
    assert b"Hello" in response.data
