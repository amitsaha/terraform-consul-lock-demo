~\work> $result=Invoke-WebRequest -Uri http://127.0.0.1:8500/v1/acl/bootstrap -Method PUT                          
~\work> $result                                                                                                    
                                                                                                                   
                                                                                                                   
StatusCode        : 200                                                                                            
StatusDescription : OK                                                                                             
Content           : {                                                                                              
                        "ID": "e0c476e2-5e61-99ff-cacc-04ad5f0e64a7"                                               
                    }                                                                                              
                                                                                                                   
RawContent        : HTTP/1.1 200 OK                                                                                
                    Vary: Accept-Encoding                                                                          
                    Content-Length: 53                                                                             
                    Content-Type: application/json                                                                 
                    Date: Thu, 24 May 2018 04:48:26 GMT                                                            
                                                                                                                   
                    {                                                                                              
                        "ID": "e0c476e2-5e61-99ff-cacc-04ad5f0e64a7"                                               
                    }                                                                                              
                                                                                                                   
Forms             : {}                                                                                             
Headers           : {[Vary, Accept-Encoding], [Content-Length, 53], [Content-Type, application/json], [Date, Thu,  
                    24 May 2018 04:48:26 GMT]}                                                                     
Images            : {}                                                                                             
InputFields       : {}                                                                                             
Links             : {}                                                                                             
ParsedHtml        : mshtml.HTMLDocumentClass                                                                       
RawContentLength  : 53                                                                                             
                                                                                                                   
                                                                                                                   
                                                                                                                   
~\work> $result.Content                                                                                            
{                                                                                                                  
    "ID": "e0c476e2-5e61-99ff-cacc-04ad5f0e64a7"                                                                   
}                                                                                                                  
                                                                                                                   
~\work> $result.Content["ID"]                                                                                      
~\work> $result.Content                                                                                            
{                                                                                                                  
    "ID": "e0c476e2-5e61-99ff-cacc-04ad5f0e64a7"                                                                   
}                                                                                              

$result=Invoke-WebRequest -Uri http://127.0.0.1:8500/v1/acl/create -Method PUT -InFile .\payload_session_token.json -Headers @{"X-Consul-Token"="e0c476e2-5e61-99ff-cacc-04ad5f0e64a7"}
~\work\github.com\amitsaha\tf_consul> $result


StatusCode        : 200
StatusDescription : OK
Content           : {
                        "ID": "21c1d0a5-5aa4-f926-eccc-5976c33f634a"
                    }

~\work\github.com\amitsaha\tf_consul> $result=Invoke-WebRequest -Uri http://127.0.0.1:8500/v1/acl/info/21c1d0a5-5aa4-f926-eccc-5976c33f634a

~\work\github.com\amitsaha\tf_consul> $result


StatusCode        : 200
StatusDescription : OK
Content           : [
                        {
                            "ID": "21c1d0a5-5aa4-f926-eccc-5976c33f634a",
                            "Name": "tf-session-create",
                            "Type": "client",
                            "Rules": "session \"\" {  policy = \"write\" }",
                            "CreateInd...
RawContent        : HTTP/1.1 200 OK
                    Vary: Accept-Encoding
                    X-Consul-Index: 34
                    X-Consul-Knownleader: true
                    X-Consul-Lastcontact: 0
                    Content-Length: 243
                    Content-Type: application/json
                    Date: Thu, 24 May 2018 05:15:03 GM...
Forms             : {}
Headers           : {[Vary, Accept-Encoding], [X-Consul-Index, 34], [X-Consul-Knownleader, true],
                    [X-Consul-Lastcontact, 0]...}
Images            : {}
InputFields       : {}
Links             : {}
ParsedHtml        : mshtml.HTMLDocumentClass
RawContentLength  : 243


                    