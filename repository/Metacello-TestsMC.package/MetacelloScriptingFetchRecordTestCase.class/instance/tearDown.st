running
tearDown
    super tearDown.
    (Metacello registry
        project: [ :spec | spec className beginsWith: 'MetacelloTest' ];
        list) do: [ :spec | spec unregisterProject ]