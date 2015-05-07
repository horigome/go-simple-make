package main

import (
	"testing"
)

func TestBarBar(t *testing.T) {
	if BarBar() != "bar bar" {
		t.Errorf("not barbar!")
	}
}
