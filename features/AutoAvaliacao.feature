Feature: Self-evaluation
     As a student of the discipline
     I want to assign a concept to each goal
     so that have a personal evaluation of my performance.

     Scenario: submit my self-evaluation
       Given I am logged in as "alunoX"
       And I am on the "Auto-Avaliação"
       When I fill all my goals
       And I submit self-evaluation with all the requirements filled
       Then I see on the screen a message of success in submission.

     Scenario: Stored self-evaluation
       Given the "alunoX" self-evaluation is not in the system
       When I try to submit my self-evaluation
       Then the system saves the self-evaluation of the "alunoX".

     Scenario: Incomplete self-evaluation
        Given I am logged in as "alunoY"
        And I'm on the "Auto-Avaliação" page
        When I fill two of my goals
        (TEST)
        And I submit the self-evaluation
        Then I see on the screen(TEST) an incomplete submission message

     Scenario: Self-evaluation not stored
        Given that the self-assessment of "alunoY" is not in the system
        When I try to submit my incomplete self-assessment(TEST)
        Then the system saves no self-evaluation
        And TODO

     Scenario: Discrepant self-evaluation
        Given the Professor's evaluation of "alunoW" is in the system with the the values: "MPA", "MPA", "MPA", "MPA"
        When "alunoW" submits his self-evaluation as "MA", "MA", "MPA", "MPA"
        And PLACEHOLDER
        Then the system saves the self-evaluation as discrepant

        (TEST)
