# curl -X GET --url http://192.168.99.100:8001/services/ 
$server = 'localhost'
$verb = 'GET'
$url  = "http://$($server):8001/services/"

$result = Invoke-RestMethod  -Method $verb -Uri $url

$result.data

<#
tls_verify         :
host               : localhost
id                 : a6d7ebfd-e60a-4a52-9e5b-3a4857c1372b
path               :
created_at         : 1638707961
updated_at         : 1638707961
retries            : 5
protocol           : http
port               : 8080
client_certificate :
name               : my-api
connect_timeout    : 60000
tls_verify_depth   :
read_timeout       : 60000
tags               :
write_timeout      : 60000
ca_certificates    :
#>

$url  = "http://$($server):8001/"
$result = Invoke-RestMethod  -Method $verb -Uri $url
$result

<#
configuration : @{nginx_admin_client_body_buffer_size=10m; pluginserver_names=; worker_consistency=strict; nginx_http_lua_regex_match_limit=100000; go_plugins_dir=off; nginx_upstream_directives=; 
                pg_host=kong-database; nginx_proxy_directives=System.Object[]; go_pluginserver_exe=/usr/local/bin/go-pluginserver; nginx_status_directives=; pg_database=kong; cassandra_timeout=5000;
                role=traditional; nginx_stream_directives=System.Object[]; worker_state_update_frequency=5; nginx_supstream_directives=; pg_user=kong; cluster_v2=False; plugins=System.Object[];
                nginx_http_upstream_directives=; nginx_http_status_directives=; nginx_pid=/usr/local/kong/pids/nginx.pid; nginx_err_logs=/usr/local/kong/logs/error.log;
                nginx_acc_logs=/usr/local/kong/logs/access.log; admin_acc_logs=/usr/local/kong/logs/admin_access.log; nginx_conf=/usr/local/kong/nginx.conf; nginx_kong_conf=/usr/local/kong/nginx-kong.conf;    
                client_ssl=False; nginx_kong_stream_conf=/usr/local/kong/nginx-kong-stream.conf; kong_env=/usr/local/kong/.kong_env; ssl_cert_csr_default=/usr/local/kong/ssl/kong-default.csr;
                cassandra_keyspace=kong; ssl_cert_default=/usr/local/kong/ssl/kong-default.crt; ssl_cert_key_default=/usr/local/kong/ssl/kong-default.key; cassandra_username=kong;
                ssl_cert_key_default_ecdsa=/usr/local/kong/ssl/kong-default-ecdsa.key; client_ssl_cert_default=/usr/local/kong/ssl/kong-default.crt;
                client_ssl_cert_key_default=/usr/local/kong/ssl/kong-default.key; admin_ssl_cert_default=/usr/local/kong/ssl/admin-kong-default.crt;
                admin_ssl_cert_key_default=/usr/local/kong/ssl/admin-kong-default.key; admin_ssl_cert_default_ecdsa=/usr/local/kong/ssl/admin-kong-default-ecdsa.crt; error_default_type=text/plain;
                admin_ssl_cert_key_default_ecdsa=/usr/local/kong/ssl/admin-kong-default-ecdsa.key; status_ssl_cert_default=/usr/local/kong/ssl/status-kong-default.crt; admin_listeners=System.Object[]; 
                proxy_listeners=System.Object[]; stream_listeners=; upstream_keepalive_idle_timeout=60; upstream_keepalive_max_requests=100; db_update_frequency=5; dns_resolver=; db_update_propagation=0;      
                proxy_listen=System.Object[]; db_cache_ttl=0; status_listen=System.Object[]; stream_listen=System.Object[]; cluster_listen=System.Object[]; lua_package_path=./?.lua;./?/init.lua;;
                admin_ssl_cert_key=System.Object[]; status_ssl_cert=; status_ssl_cert_key=; db_resurrect_ttl=30; nginx_user=kong kong; nginx_main_user=kong kong; nginx_daemon=off;
                ssl_cert_key=System.Object[]; nginx_main_daemon=off; nginx_worker_processes=auto; nginx_main_worker_processes=auto; trusted_ips=; real_ip_header=X-Real-IP;
                nginx_proxy_real_ip_header=X-Real-IP; real_ip_recursive=off; nginx_proxy_real_ip_recursive=off; client_max_body_size=0; nginx_http_client_max_body_size=0; client_body_buffer_size=8k;
                nginx_http_client_body_buffer_size=8k; pg_port=5432; pg_password=******; pg_ssl=False; pg_ssl_verify=False; pg_max_concurrent_queries=0; pg_semaphore_timeout=60000; pg_ro_ssl=False;
                pg_ro_ssl_verify=False; cassandra_contact_points=System.Object[]; cassandra_port=9042; host_ports=; anonymous_reports=True; cassandra_ssl_verify=False; cassandra_write_consistency=ONE;
                cassandra_read_consistency=ONE; cassandra_lb_policy=RequestRoundRobin; cassandra_refresh_frequency=60; cassandra_repl_strategy=SimpleStrategy; cassandra_repl_factor=1;
                cassandra_data_centers=System.Object[]; cassandra_schema_consensus_timeout=10000; dns_hostsfile=/etc/hosts; ssl_cert=System.Object[]; ssl_protocols=TLSv1.1 TLSv1.2 TLSv1.3;
                status_ssl_cert_key_default=/usr/local/kong/ssl/status-kong-default.key; nginx_http_ssl_protocols=TLSv1.2 TLSv1.3; nginx_stream_ssl_protocols=TLSv1.2 TLSv1.3; ssl_prefer_server_ciphers=on;     
                nginx_http_ssl_prefer_server_ciphers=off; nginx_stream_ssl_prefer_server_ciphers=off; ssl_dhparam=ffdhe2048; nginx_http_ssl_dhparam=ffdhe2048; nginx_stream_ssl_dhparam=ffdhe2048;
                ssl_session_tickets=on; nginx_http_ssl_session_tickets=on; nginx_stream_ssl_session_tickets=on; ssl_session_timeout=1d; nginx_http_ssl_session_timeout=1d; nginx_stream_ssl_session_timeout=1d;  
                proxy_access_log=/dev/stdout; proxy_error_log=/dev/stderr; proxy_stream_access_log=logs/access.log basic; proxy_stream_error_log=logs/error.log; admin_access_log=/dev/stdout;
                admin_error_log=/dev/stderr; status_access_log=off; status_error_log=logs/status_error.log; log_level=notice; prefix=/usr/local/kong; dns_error_ttl=1; nginx_optimizations=True;
                lua_ssl_trusted_certificate=; lua_ssl_verify_depth=1; lua_ssl_protocols=TLSv1.1 TLSv1.2 TLSv1.3; nginx_http_lua_ssl_protocols=TLSv1.1 TLSv1.2 TLSv1.3; nginx_stream_lua_ssl_protocols=TLSv1.1    
                TLSv1.2 TLSv1.3; lua_socket_pool_size=30; stream_proxy_ssl_enabled=False; cluster_control_plane=127.0.0.1:8005; status_ssl_enabled=False;
                ssl_cert_default_ecdsa=/usr/local/kong/ssl/kong-default-ecdsa.crt; cluster_mtls=shared; port_maps=; admin_listen=System.Object[]; admin_ssl_cert=System.Object[];
                cluster_data_plane_purge_delay=1209600; cluster_ocsp=off; untrusted_lua=sandbox; untrusted_lua_sandbox_requires=; untrusted_lua_sandbox_environment=; dns_not_found_ttl=30; dns_stale_ttl=4;     
                dns_order=System.Object[]; dns_no_sync=False; db_cache_warmup_entities=System.Object[]; pg_timeout=5000; nginx_main_directives=System.Object[]; nginx_main_worker_rlimit_nofile=auto;
                headers=System.Object[]; nginx_events_worker_connections=auto; nginx_sproxy_directives=; nginx_events_multi_accept=on; database=postgres; ssl_cipher_suite=intermediate; cassandra_ssl=False; ss 
                l_ciphers=ECDHE-ECDSA-AES128-GCM-SHA256:ECDHE-RSA-AES128-GCM-SHA256:ECDHE-ECDSA-AES256-GCM-SHA384:ECDHE-RSA-AES256-GCM-SHA384:ECDHE-ECDSA-CHACHA20-POLY1305:ECDHE-RSA-CHACHA20-POLY1305:DHE-RSA- 
                AES128-GCM-SHA256:DHE-RSA-AES256-GCM-SHA384; nginx_events_directives=System.Object[]; nginx_http_directives=System.Object[]; nginx_admin_directives=System.Object[]; mem_cache_size=128m;        
                loaded_plugins=; proxy_ssl_enabled=True; admin_ssl_enabled=True; status_listeners=; cluster_listeners=System.Object[]; enabled_headers=; lua_package_cpath=;
                status_ssl_cert_key_default_ecdsa=/usr/local/kong/ssl/status-kong-default-ecdsa.key; status_ssl_cert_default_ecdsa=/usr/local/kong/ssl/status-kong-default-ecdsa.crt;
                nginx_admin_client_max_body_size=10m; kic=False; upstream_keepalive_pool_size=60}
timers        : @{running=0; pending=10}
pids          : @{workers=System.Object[]; master=1}
hostname      : 29674a2dbfcd
lua_version   : LuaJIT 2.1.0-beta3
plugins       : @{available_on_server=; enabled_in_cluster=System.Object[]}
version       : 2.6.0
tagline       : Welcome to kong
node_id       : ad542bfa-21ed-42d7-974a-463e0489a34e
#>