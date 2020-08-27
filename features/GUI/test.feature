# encoding: UTF-8
# language: en

@GUI
  Feature: New test 1
    Background: Set timeout
      Given set timeout 10

    Scenario: New test 1
      Given open page http://goolge.com
      When create screenshot
      And input to search line "cucumber ruby"
      And push a keyboard "Enter"
      When create screenshot
      Then click button "Search"
      When create screenshot
      Then block searched is visible
