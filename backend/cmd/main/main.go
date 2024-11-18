package main

// backend server that takes get requests and returns a json response
import (
	"database/sql"
	"encoding/json"
	"fmt"
	"net/http"
	"os"
	"time"

	_ "github.com/go-sql-driver/mysql"
	"github.com/rs/cors"
)

type Teleport struct {
	Name      string `json:"name"`
	Image     string `json:"image"`
	Latitude  int    `json:"latitude"`
	Longitude int    `json:"longitude"`
	Map_id    int    `json:"map_id"`
}

type Response struct {
	Locations []Teleport `json:"locations"`
}

func getLocations(map_id int) []Teleport {
	// get the location from the database
	// return the location as a json response
	db, err := sql.Open("mysql", "db_user:db_user_passwd@/runescape")
	if err != nil {
		panic(err)
	}
	defer db.Close()
	rows, err := db.Query("SELECT name, image, latitude, longitude, map_id FROM teleports WHERE map_id = ?", map_id)
	if err != nil {
		panic(err)
	}
	defer rows.Close() // unintended behavior if closed after db?
	var locations []Teleport
	for rows.Next() {
		var location Teleport
		err := rows.Scan(&location.Name, &location.Image, &location.Latitude, &location.Longitude, &location.Map_id)
		if err != nil {
			panic(err)
		}
		locations = append(locations, location)
	}
	return locations
}

func getHandler(w http.ResponseWriter, r *http.Request) {
	// get the location from the database
	locations := getLocations(0)
	// return the location as a json response
	response := Response{locations}
	w.Header().Set("Content-Type", "application/json")
	w.WriteHeader(http.StatusOK)
	jsonresponse, err := json.Marshal(response)
	if err != nil {
		http.Error(w, err.Error(), http.StatusInternalServerError)
		fmt.Println("Error marshalling json")
		fmt.Print(err)
		return
	}
	w.Write(jsonresponse)
}

func main() {
	// remember to change this to your environment variables
	os.Setenv("DB_USER", "db_user")
	os.Setenv("DB_USER_PASSWD", "db_user_passwd")
	os.Setenv("DB_NAME", "runescape")

	db, err := sql.Open("mysql", os.Getenv("DB_USER")+":"+os.Getenv("DB_USER_PASSWD")+"@/"+os.Getenv("DB_NAME"))
	if err != nil {
		panic(err)
	}
	// See "Important settings" section.
	db.SetConnMaxLifetime(time.Minute * 1)
	db.SetMaxOpenConns(10)
	db.SetMaxIdleConns(10)
	fmt.Print("Connected to database")
	defer db.Close()

	// create a new mux
	mux := http.NewServeMux()
	// add the get handler to the mux

	mux.Handle("/get", http.HandlerFunc(getHandler))

	handler := cors.Default().Handler(mux)
	http.ListenAndServe(":8080", handler)
}
