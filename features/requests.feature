
Feature: Record request decisions

    @GH05 @UC03 @FR10
    Scenario: Borrower accepts an alternative but keeps the original request
        Given borrower BW-31 has an open request for title T-221, 3rd edition
        And the requested edition is on loan
        When the borrower accepts title T-221, 2nd edition as an alternative
        And chooses to keep the original request open
        Then the alternative is recorded as a loan to BW-31
        And the request for the 3rd edition stays open
