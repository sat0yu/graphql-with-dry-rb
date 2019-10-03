# graphql-with-dry-rb

## Setup

```sh
% bundle install
```

## Launch

```sh
% bundle exec ruby app.rb
```

```sh
# in another terminal
% echo "query={hoges {hop step jump}}" | xargs -I{} curl -d {} http://localhost:4567/graphql | jq
  % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
                                 Dload  Upload   Total   Spent    Left  Speed
100   219  100   190  100    29   5925    904 --:--:-- --:--:-- --:--:--  5937
{
  "data": {
    "hoges": [
      {
        "hop": "1",
        "step": 1,
        "jump": [
          "1"
        ]
      },
      {
        "hop": "2",
        "step": 2,
        "jump": [
          "2"
        ]
      },
      {
        "hop": "3",
        "step": 3,
        "jump": [
          "3"
        ]
      },
      {
        "hop": "4",
        "step": 4,
        "jump": [
          "4"
        ]
      },
      {
        "hop": "5",
        "step": 5,
        "jump": [
          "5"
        ]
      }
    ]
  }
}
```
