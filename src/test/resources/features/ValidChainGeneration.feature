Feature: Valid chain generation
  @wip
  Scenario: Should generate a valid chain of 50 blocks and synchronize
    Given Nodes 1 is running
    Given Nodes 2 is running
    Given Nodes 3 is running

    When I ask connected nodes count on node 1
    Then result should be 2

    When I ask connected nodes count on node 2
    Then result should be 2

    When I ask connected nodes count on node 3
    Then result should be 2

    When I ask height on node 1
    Then result should be more then 1

    When I ask height on node 2
    Then result should be more then 1

    When I ask height on node 3
    Then result should be more then 1

