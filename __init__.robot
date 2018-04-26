*** Settings ***
Suite Setup       Log Cleanup
Suite Teardown    Run Keyword If Any Tests Failed    Log Collection
Library           TBoxLibrary
