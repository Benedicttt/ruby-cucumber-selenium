# encoding: UTF-8
# language: en

@GUI
  Feature: New test 2
    Scenario: New test 2
      Given open page http://goolge.com
      When create screenshot
      And input to search line "cucumber ruby 2"
      And push a keyboard "Enter"
      When create screenshot
      Then click button "Search"
      When create screenshot
      Then block searched is visible
