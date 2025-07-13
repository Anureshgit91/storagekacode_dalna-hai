resource "azurerm_resource_group" "gtre" {
  name     = var.resource_group_name
  location = var.location
}

resource "azurerm_storage_account" "stg432" {
  depends_on = [ azurerm_resource_group.gtre ]
  name                     = var.storage_account_name
  resource_group_name      = azurerm_resource_group.gtre.name
  location                 = azurerm_resource_group.gtre.location
  account_tier             = var.account_tier
  account_replication_type = var.account_replication_type
  public_network_access_enabled = false
}
सीख (Moral):
"ज़िंदगी में कई बार मेहनत का फल जल्दी नहीं मिलता।
लेकिन इसका मतलब ये नहीं कि मेहनत बेकार जा रही है।
हो सकता है कि ज़मीन के नीचे तुम्हारी जड़ें मजबूत हो रही हों –
ताकी तुम एक दिन बहुत ऊँचा उठ सको।
बस, रुको मत – मेहनत करते रहो।"