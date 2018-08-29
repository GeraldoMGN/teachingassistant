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
