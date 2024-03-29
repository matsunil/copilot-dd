package main

import (
	"fmt"
	"math/rand"
	"time"
)

func seedRandomNumberGenerator() {
	//rand.Seed(time.Now().UnixNano())

	// Create and seed the generator.
	// Typically a non-fixed seed should be used, such as time.Now().UnixNano().
	// Using a fixed seed will produce the same output on every run.
	r := rand.New(rand.NewSource(99))
}

func main() {
	seedRandomNumberGenerator()
	fmt.Println("Random number generator seeded!")
	// Rest of your code...
}

// Create and seed the generator.
	// Typically a non-fixed seed should be used, such as time.Now().UnixNano().
	// Using a fixed seed will produce the same output on every run.
	r := rand.New(rand.NewSource(99))
	