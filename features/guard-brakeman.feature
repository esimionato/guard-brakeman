@no-clobber @aruba
Feature: Guard brakeman 
	Background:
		Given I cd to "default_app"

	Scenario: Starting guard-brakeman smoke test
		When I run `guard` interactively
		Then I type "e"
		Then the output should contain "Indexing call sites..."
		


	Scenario: Triggering a change event smoke test
		When I run `guard` interactively
    	And I edit a watched file
    	And I type "e"
    	Then the output should contain "Checks finished, collecting results..."
