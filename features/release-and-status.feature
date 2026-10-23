
Feature: Release requested items and record visit status

    Rule: An item reserved for another borrower must not be given out

        @GH03 @UC07 @BR04
        Scenario: Reserved item is refused
            Given item B-3001 is reserved for borrower BW-12
            When borrower BW-31 asks to collect item B-3001
            Then item B-3001 is not given out
            And the item stays reserved for borrower BW-12

    
    Rule: Borrowers and the community coordinator are told when a visit is moved or cancelled

        @GH04 @UC05 @FR09 @BR05
        Scenario Outline: Notice for each visit status
            Given borrower BW-77 has item B-1002 linked to stop ST-07
            And community coordinator CC-03 is the contact for stop ST-07
            When the driver records stop ST-07 as <status>
            Then borrower BW-77 is notified that the visit is <status>
            And the community coordinator CC-03 is told the visit is <status>

            Examples:
                status
                moved
                cancelled