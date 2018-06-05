import consul

MASTER_TOKEN = "Arandom$tring"
# FIXME: We should instead use a token which has a read policy attached
# for the key
client = consul.Consul(token=MASTER_TOKEN)

print(client.kv.get('terraform/state'))
