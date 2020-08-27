# encoding: UTF-8
# language: en

@GUI
  Feature: New test
    Scenario: New test
      Given open page http://goolge.com
      When create screenshot
      And input to search line "cucumber ruby"
      And push a keyboard "Enter"
      When create screenshot
      Then click button "Search"
      When create screenshot
      Then block searched is visible
