*** Settings ***
Suite Teardown    Run Keyword If Any Tests Failed    Log Collection
Library           TBoxLibrary
