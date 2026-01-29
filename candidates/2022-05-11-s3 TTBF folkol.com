https://speedvitals.com/ttfb-test?url=https://folkol.com/cv.pdf

Europe

Location    Status  DNS Connect TLS TTFB    
 London, UK
200 22 ms   3 ms    20 ms   125 ms  Submit
 Paris, France
200 87 ms   3 ms    19 ms   131 ms  Submit
 Sweden
200 145 ms  4 ms    17 ms   264 ms  Submit
 Finland
200 76 ms   4 ms    23 ms   277 ms  Submit
 Belgium
200 20 ms   6 ms    21 ms   253 ms  Submit
 Oslo, Norway
200 138 ms  2 ms    18 ms   287 ms  Submit
 Netherlands
200 23 ms   4 ms    19 ms   99 ms   Submit
 Warsaw, Poland
200 60 ms   41 ms   59 ms   377 ms  Submit
 Frankfurt, Germany
200 9 ms    2 ms    19 ms   63 ms   Submit
 Ireland
200 57 ms   11 ms   27 ms   111 ms  Submit
 Zurich, Switzerland
200 39 ms   10 ms   24 ms   121 ms  Submit
 Average
61 ms   8 ms    24 ms   192 ms  


America

Location    Status  DNS Connect TLS TTFB    
 Las Vegas, US
200 78 ms   15 ms   33 ms   792 ms  Submit
 Los Angeles, US
200 36 ms   1 ms    17 ms   695 ms  Submit
 Iowa, US
200 56 ms   11 ms   45 ms   573 ms  Submit
 South Carolina, US
200 60 ms   26 ms   41 ms   189 ms  Submit
 Northern Virginia, US
200 15 ms   1 ms    18 ms   49 ms   Submit
 Oregon, US
200 38 ms   7 ms    27 ms   393 ms  Submit
 Montreal, Canada
200 15 ms   1 ms    19 ms   481 ms  Submit
 Toronto, Canada
200 41 ms   1 ms    14 ms   115 ms  Submit
 São Paulo, Brazil
200 10 ms   2 ms    19 ms   885 ms  Submit
 Santiago, Chile
200 206 ms  53 ms   76 ms   445 ms  Submit
 Average
56 ms   12 ms   31 ms   462 ms  


Asia Pacific & Africa

Location    Status  DNS Connect TLS TTFB    
 Mumbai, India
200 12 ms   2 ms    18 ms   523 ms  Submit
 Delhi, India
200 75 ms   2 ms    16 ms   511 ms  Submit
 Chennai, India
200 100 ms  1 ms    14 ms   170 ms  Submit
 Taiwan
200 60 ms   14 ms   32 ms   843 ms  Submit
 Hong Kong
200 147 ms  2 ms    23 ms   845 ms  Submit
 Tokyo, Japan
200 12 ms   1 ms    16 ms   946 ms  Submit
 Osaka, Japan
200 22 ms   3 ms    15 ms   53 ms   Submit
 Seoul, South Korea
200 132 ms  1 ms    22 ms   1.5 sec Submit
 Singapore
200 18 ms   1 ms    20 ms   123 ms  Submit
 Jakarta, Indonesia
200 42 ms   16 ms   33 ms   108 ms  Submit
 Sydney, Australia
200 9 ms    2 ms    18 ms   1 sec   Submit
 Melbourne, Australia
200 167 ms  2 ms    16 ms   783 ms  Submit
 Dubai, UAE
200 71 ms   2 ms    173 ms  324 ms  Submit
 South Africa
200 197 ms  1 ms    175 ms  838 ms  Submit
 Average
76 ms   4 ms    42 ms   614 ms  





CloudFront distribution mapped to a static webside in an s3 bucket.


https://stackoverflow.com/questions/36754094/are-s3-buckets-region-specific




Take 2:

Europe

Location    Status  DNS Connect TLS TTFB    
 London, UK
200 17 ms   3 ms    17 ms   41 ms   Submit
 Paris, France
200 110 ms  3 ms    17 ms   191 ms  Submit
 Sweden
200 39 ms   5 ms    21 ms   105 ms  Submit
 Finland
200 74 ms   4 ms    24 ms   218 ms  Submit
 Belgium
200 40 ms   5 ms    21 ms   123 ms  Submit
 Oslo, Norway
200 21 ms   2 ms    16 ms   173 ms  Submit
 Netherlands
200 22 ms   5 ms    22 ms   105 ms  Submit
 Warsaw, Poland
200 40 ms   21 ms   38 ms   179 ms  Submit
 Frankfurt, Germany
200 6 ms    2 ms    17 ms   61 ms   Submit
 Ireland
200 54 ms   11 ms   25 ms   103 ms  Submit
 Zurich, Switzerland
200 23 ms   9 ms    23 ms   100 ms  Submit
 Average
41 ms   6 ms    22 ms   127 ms  
America

Location    Status  DNS Connect TLS TTFB    
 Las Vegas, US
200 25 ms   15 ms   32 ms   124 ms  Submit
 Los Angeles, US
200 15 ms   1 ms    17 ms   54 ms   Submit
 Iowa, US
200 40 ms   11 ms   30 ms   129 ms  Submit
 South Carolina, US
200 76 ms   23 ms   41 ms   203 ms  Submit
 Northern Virginia, US
200 21 ms   9 ms    26 ms   89 ms   Submit
 Oregon, US
200 46 ms   9 ms    27 ms   94 ms   Submit
 Montreal, Canada
200 60 ms   1 ms    16 ms   107 ms  Submit
 Toronto, Canada
200 39 ms   1 ms    13 ms   55 ms   Submit
 São Paulo, Brazil
200 15 ms   2 ms    20 ms   49 ms   Submit
 Santiago, Chile
200 145 ms  55 ms   71 ms   339 ms  Submit
 Average
48 ms   13 ms   29 ms   124 ms  
Asia Pacific & Africa

Location    Status  DNS Connect TLS TTFB    
 Mumbai, India
200 10 ms   2 ms    19 ms   73 ms   Submit
 Delhi, India
200 96 ms   2 ms    15 ms   117 ms  Submit
 Chennai, India
200 75 ms   1 ms    15 ms   93 ms   Submit
 Taiwan
200 77 ms   14 ms   33 ms   229 ms  Submit
 Hong Kong
200 144 ms  2 ms    22 ms   194 ms  Submit
 Tokyo, Japan
200 12 ms   1 ms    20 ms   40 ms   Submit
 Osaka, Japan
200 23 ms   2 ms    20 ms   59 ms   Submit
 Seoul, South Korea
200 86 ms   2 ms    19 ms   152 ms  Submit
 Singapore
200 11 ms   2 ms    20 ms   44 ms   Submit
 Jakarta, Indonesia
200 212 ms  16 ms   33 ms   280 ms  Submit
 Sydney, Australia
200 11 ms   2 ms    17 ms   35 ms   Submit
 Melbourne, Australia
200 18 ms   2 ms    16 ms   38 ms   Submit
 Dubai, UAE
200 39 ms   2 ms    175 ms  218 ms  Submit
 South Africa
200 176 ms  2 ms    177 ms  591 ms  Submit
 Average
71 ms   4 ms    43 ms   155 ms  


