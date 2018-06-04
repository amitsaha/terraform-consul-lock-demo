import consul

MASTER_TOKEN = "Arandom$tring"
client = consul.Consul(token=MASTER_TOKEN)

client.kv.put('terraform/state','')

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
print(token)
