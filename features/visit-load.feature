
Feature: Prepare and verify visit Load

    @GH01 @UC04 @FR07
    Scenario: All items on the load list are loaded
        Given route visit RV-0412 is assigned to vehicle MLV-1
        And the load list for RV-0412 has items B-1001, B-1002 and B-1003
        When staff record items B-1001, B-1002 and B-1003 as loaded
        Then route visit RV-0412 is recorded as ready

    @GH02 @UC04 @BR03
    Scenario: Item linked to a different route visit is not loaded 
        Given item B-2050 is linked to route visit RV-0415
        When staff identify item B-2050 while loading RV-0412
        Then item B-2050 is not recoreded as loaded for RV-0412
        And staff are told the item belongs to route visit RV-0415