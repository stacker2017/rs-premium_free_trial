name "LIB - Common mappings"
rs_ca_ver 20160622
short_description "Mappings that are commonly used across CATs."

package "pft/mappings"

mapping "map_cloud" do {
  "AWS" => {
    "cloud" => "EC2 us-west-2",
    "zone" => null, # We don't care which az AWS decides to use.
    "instance_type" => "m3.medium",
    "sg" => '@sec_group',  
    "ssh_key" => "@ssh_key",
    "pg" => null,
    "network" => null,
    "subnet" => null,
    "mci_mapping" => "Public",
    "tag_prefix" => "ec2"
  },
  "Azure" => {   
    "cloud" => "Azure East US",
    "zone" => null,
    "instance_type" => "D1",
    "sg" => null, 
    "ssh_key" => null,
    "pg" => "@placement_group",
    "network" => null,
    "subnet" => null,
    "mci_mapping" => "Public",
    "tag_prefix" => "azure"
  },
  "AzureRM" => {   
    "cloud" => "AzureRM East US",
    "zone" => null,
    "instance_type" => "D1",
    "sg" =>  "@sec_group", 
    "ssh_key" => null,
    "pg" => null,
    "network" => "pft_arm_network",
    "subnet" => "default",
    "mci_mapping" => "Public",
    "tag_prefix" => "azure"
  },
  "Google" => {
    "cloud" => "Google",
    "zone" => "us-central1-c", # launches in Google require a zone
    "instance_type" => "n1-standard-2",
    "sg" => '@sec_group',  
    "ssh_key" => null,
    "pg" => null,
    "network" => null,
    "subnet" => null,
    "mci_mapping" => "Public",
    "tag_prefix" => "google"
  },
  "VMware" => {
    "cloud" => "VMware Private Cloud",
    "zone" => "VMware_Zone_1", # launches in vSphere require a zone being specified  
    "instance_type" => "large",
    "sg" => null, 
    "ssh_key" => "@ssh_key",
    "pg" => null,
    "network" => null,
    "subnet" => null,
    "mci_mapping" => "VMware",
    "tag_prefix" => "vmware"
  }
}
end

mapping "map_instancetype" do {
  "Standard Performance" => {
    "AWS" => "m3.medium",
    "Azure" => "D1",
    "AzureRM" => "D1",
    "Google" => "n1-standard-1",
    "VMware" => "small",
  },
  "High Performance" => {
    "AWS" => "m3.large",
    "Azure" => "D2",
    "AzureRM" => "D1",
    "Google" => "n1-standard-2",
    "VMware" => "large",
  }
} end
