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

 कहानी: "बांस और फर्न की सीख"
एक बार की बात है, एक आदमी बहुत परेशान था। वो रोज़ मेहनत करता था, पर उसे कोई सफलता नहीं मिल रही थी। वो थक गया था।

वो एक संत के पास गया और बोला:

"गुरुजी, मैं सबकुछ कर रहा हूँ – मेहनत, लगन, पर फिर भी मेरी ज़िंदगी में कोई बदलाव नहीं आ रहा। मैं अब हार मानना चाहता हूँ।"

++++++++++
