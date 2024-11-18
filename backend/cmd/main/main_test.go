package main

import (
	"encoding/json"
	"fmt"
	"net/http"
	"net/http/httptest"
	"testing"
)

func TestGetHandler(t *testing.T) {
	// Create a new HTTP request
	req, err := http.NewRequest("GET", "/path/to/endpoint", nil)
	if err != nil {
		t.Fatal(err)
	}

	// Create a new response recorder to capture the response
	rr := httptest.NewRecorder()

	// Call the getHandler function with the response recorder and request
	getHandler(rr, req)

	// Check the response status code
	if rr.Code != http.StatusOK {
		t.Errorf("expected status code %d but got %d", http.StatusOK, rr.Code)
	}

	// Check the response content type
	expectedContentType := "application/json"
	actualContentType := rr.Header().Get("Content-Type")
	if actualContentType != expectedContentType {
		t.Errorf("expected content type %s but got %s", expectedContentType, actualContentType)
	}

	// Parse the response body
	var response Response
	err = json.Unmarshal(rr.Body.Bytes(), &response)
	if err != nil {
		t.Errorf("error unmarshalling json: %v", err)
	}

	fmt.Println(response)
	// TODO: Add additional assertions for the response body if needed
}
