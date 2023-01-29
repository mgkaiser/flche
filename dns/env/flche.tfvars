# Environment
environment             = "prod"
cluster-base-domain     = "flche.net"

a-records               = [
    {name = "@",            ip = "199.34.228.59"},      // Points to the Weebly site
    {name = "*",            ip = "20.81.29.167"},       // Points to the Azure site
    {name = "www",          ip = "199.34.228.59"},      // Points to the Weebly site
]

mx-records              = [
    
    /*
    {
        name    = "*"
        records = [
            { preference = 5,   exchange = "ALT2.ASPMX.L.GOOGLE.COM"},
            { preference = 10,  exchange = "ALT3.ASPMX.L.GOOGLE.COM"},
            { preference = 10,  exchange = "ALT4.ASPMX.L.GOOGLE.COM"},
            { preference = 15,  exchange = "vmphfcsx4oh5xbhxyovzmwszg5wykd2eejua2iw4ucnvwui4ifuq.mx-verification.google.com."},
            { preference = 1,   exchange = "ASPMX.L.GOOGLE.COM"}
        ]
    },
    {
        name    = "@"
        records = [
            { preference = 5,   exchange = "ms14873141.msv1.invalid"}
        ]
    }
    */
]

txt-records               = [
    // {name = "@",                value = "google-site-verification=qx5yilfjj9uE98OrllpZN22FD0QiaA0i3KCbW1EcQWk"},
    // {name = "_acme-challenge",  value = "WM1PjfJ871RkXWc3tNyhJA2JHVkpH7bhDullFjacqk4"},    
]
