
Feature: Obol API - System endpoints

  Background:

    Given I save "https://api.obol.tech" as "BASE_URL"
  Scenario: GET - /
  As API user
  I query / endpoint
    When I send "GET" request to "{{.BASE_URL}}/" with body and headers:
    """
    {
        "body": {},
        "headers": {
            "accept": "application/json"
            }
    }
    """
    Then the response status code should be 200
 
 Scenario: GET - /_health
  As API user
  I query /_health endpoint
    When I send "GET" request to "{{.BASE_URL}}/_health" with body and headers:
    """
    {
        "body": {},
        "headers": {
            "accept": "application/json"
            }
    }
    """
    Then the response status code should be 200
    And the response body should have format "JSON"
    And the response body should be valid according to schema:
    """
   {
    "type": "object",
    "properties": {
        "status": {
        "type": "string"
        },
        "info": {
        "type": "object",
        "properties": {
            "database": {
            "type": "object",
            "properties": {
                "status": {
                "type": "string"
                }
            },
            "required": [
                "status"
            ]
            },
            "holesky beacon node health": {
            "type": "object",
            "properties": {
                "status": {
                "type": "string"
                }
            },
            "required": [
                "status"
            ]
            },
            "mainnet beacon node health": {
            "type": "object",
            "properties": {
                "status": {
                "type": "string"
                }
            },
            "required": [
                "status"
            ]
            }
        },
        "required": [
            "database",
            "holesky beacon node health",
            "mainnet beacon node health"
        ]
        },
        "error": {
        "type": "object"
        },
        "details": {
        "type": "object",
        "properties": {
            "database": {
            "type": "object",
            "properties": {
                "status": {
                "type": "string"
                }
            },
            "required": [
                "status"
            ]
            },
            "holesky beacon node health": {
            "type": "object",
            "properties": {
                "status": {
                "type": "string"
                }
            },
            "required": [
                "status"
            ]
            },
            "mainnet beacon node health": {
            "type": "object",
            "properties": {
                "status": {
                "type": "string"
                }
            },
            "required": [
                "status"
            ]
            }
        },
        "required": [
            "database",
            "holesky beacon node health",
            "mainnet beacon node health"
        ]
        }
    },
    "required": [
        "status",
        "info",
        "error",
        "details"
    ]
    }
    """

