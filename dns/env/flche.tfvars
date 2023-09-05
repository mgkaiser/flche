# Environment
environment             = "prod"
cluster-base-domain     = "flche.net"

a-records               = [
    {name = "@",            ip = "52.226.217.175"},      // Points to the Azure site - Cheaper gateway
    {name = "*",            ip = "52.226.217.175"},      // Points to the Azure site - Cheaper gateway
    {name = "www",          ip = "52.226.217.175"},      // Points to the Azure site - Cheaper gateway
    {name = "rancher",      ip = "52.226.217.175"},      // Points to the Azure site - Cheaper gateway
    
    // Points to the Weebly site
    //{name = "old",          ip = "199.34.228.59"},      
]

cname-records               = [
    {name = "calendar",         record = "ghs.googlehosted.com."},       
    {name = "drive",            record = "ghs.googlehosted.com."},       
    {name = "email",            record = "email.secureserver.net"},    
    {name = "ftp",              record = "flche.net"},       
    {name = "groups",           record = "ghs.googlehosted.com."},       
    {name = "mail",             record = "ghs.googlehosted.com."},       
    {name = "sites",            record = "ghs.googlehosted.com."},       
    {name = "_domainconnect",   record = "_domainconnect.gd.domaincontrol.com."},    
]

mx-records              = [        
    {
        name    = "@"
        records = [
            { preference = 1,   exchange = "aspmx.l.google.com."},
            { preference = 5,   exchange = "alt1.aspmx.l.google.com."},
            { preference = 5,   exchange = "alt2.aspmx.l.google.com."},
            { preference = 10,  exchange = "aspmx2.googlemail.com."},
            { preference = 10,  exchange = "aspmx3.googlemail.com."},
        ]
    }    
]

txt-records               = [
    {
        name = "@",    
        values = [
            "ke8O8Yn5-yQOCVuKfKRbCkjTnt5KH9yQY292zbwEQg8",
            "v=spf1 include:_spf.google.com ~all",
            "google-site-verification=I2Ks04rf3GAwqVimVu4FQM7w-8YUpn-rlUIvPObA-mM"
        ]
    }    
]

// Old SOA
//ns75.domaincontrol.com
//ns76.domaincontrol.com