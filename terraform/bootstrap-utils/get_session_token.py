import consul
import json
import pprint

MASTER_TOKEN = "Arandom$tring"
client = consul.Consul(token=MASTER_TOKEN)

rules = """
    key "terraform/state" {
        policy = "read"
    }

    key "terraform/state" {
        policy = "write"
    }
    session "" {
        policy = "write"
    }
"""
token = client.acl.create(rules=rules)
print(json.dumps(token, indent=4))
