import consul
import json
import pprint

MASTER_TOKEN = "Arandom$tring"
client = consul.Consul(token=MASTER_TOKEN)

rules = """
    key "app1/" {
        policy = "read"
    }

    key "app1/" {
        policy = "write"
    }
"""
token = client.acl.create(rules=rules)
print(json.dumps(token, indent=4))
