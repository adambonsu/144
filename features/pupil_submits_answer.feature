Feature: Pupil Submits Answer

  Pupil is presented with mental math questions
  Have 5 minutes to provide all answers
  If you get all answers correct => you pass
  If you get one or more answers incorrect => you fail

  Scenario Outline: Pupil Submits Answer
    Given the Question is <question>
    When I answer <answer>
    Then my answer is marked as <mark>

    Examples: Correct Answer
      | question | answer | mark    |
      | 1x8      | 8      | CORRECT |

    Examples: Incorrect Answer
      | question | answer | mark      |
      | 1x8      | 1      | INCORRECT |