package main

import (
	"testing"
)

func TestHogeHoge(t *testing.T) {
	if HogeHoge() != "hoge hoge" {
		t.Errorf("not hogehoge!!")
	}
}
