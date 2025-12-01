"""
Test routes for /version 
"""
# pylint: disable=redefined-outer-name,unused-argument

def test_version_route_returns_version(client, login_user_response, monkeypatch):
    """
    test /version returns correctly
    """
    test_version = "1.0.0"
    monkeypatch.setenv("DEPLOYMENT_TAG", test_version)
    
    response = client.get("/version")
    assert response.status_code == 200
    
    assert str.encode(test_version) in response.data
