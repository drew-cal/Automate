@test123
Feature: Use the Github website to find open-source projects
    As a software developer
    I want to search for open-source repositories
    So I can locate projects I can contribute to
    
 
Scenario: My First Scenario
    Given that a secure endpoint is up at api.github.com
    Given I set Content-Type header to application/json
    When I GET /search/repositories?q=tetris+language:assembly&sort=stars&order=desc    
    Then I expect response data schema complies to "./features/api-schema.json"

Scenario: My 2nd Scenario
    Given that a secure endpoint is up at api.github.com
    Given I set Content-Type header to application/json
    When I GET /search/repositories?q=has_issues=false+open_issues=0+language:javascript&sort=stars&order=desc+        
    Then response status code should be 200 
    Then I expect response data schema complies to "./features/api-schema 2.json"

