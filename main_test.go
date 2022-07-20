package main

import "testing"

func TestDoubValue(t *testing.T) {
	var expected = 4
	n := DoubleValue(2)
	if n != expected {
		t.Errorf("failed. expected %d, got %d", expected, n)
	}
}
