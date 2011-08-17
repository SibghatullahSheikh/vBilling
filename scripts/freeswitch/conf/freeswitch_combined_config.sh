cat <<EOF > acl.conf.xml
<configuration name="acl.conf" description="Network Lists">
    <network-lists>
        <list name="domains" default="deny">
            <node type="allow" domain="$\${domain}"/>
        </list>
    </network-lists>
</configuration>
EOF
cat <<EOF > console.conf.xml
<configuration name="console.conf" description="Console Logger">
    <mappings>
        <map name="all" value="console,debug,info,notice,warning,err,crit,alert"/>
    </mappings>
    <settings>
        <param name="colorize" value="true"/>
        <param name="loglevel" value="$\${console_loglevel}"/>
    </settings>
</configuration>
EOF
cat <<EOF > event_socket.conf.xml
<configuration name="event_socket.conf" description="Socket Client">
    <settings>
        <param name="nat-map" value="false"/>
        <param name="listen-ip" value="127.0.0.1"/>
        <param name="listen-port" value="8021"/>
        <param name="password" value="ClueCon"/>
    </settings>
</configuration>
EOF
cat <<EOF > modules.conf.xml
<configuration name="modules.conf" description="Modules">
    <modules>                
        <load module="mod_console"/>
        <load module="mod_logfile"/>
        <load module="mod_sofia"/>
        <load module="mod_event_socket"/>
        <load module="mod_loopback"/>
        <load module="mod_commands"/>
        <load module="mod_dptools"/>
        <load module="mod_dialplan_xml"/>
        <load module="mod_g723_1"/>
        <load module="mod_g729"/>
        <load module="mod_xml_cdr"/>
        <!--
<load module="mod_cdr_csv"/>
-->
    </modules>
</configuration>
EOF
cat <<EOF > sofia.conf.xml
<configuration name="sofia.conf" description="sofia Endpoint">
    <global_settings>
        <param name="log-level" value="0"/>
        <param name="debug-presence" value="0"/>
    </global_settings>
    <profiles>
        <profile name="internal">
            <gateways>
                <gateway name="trunk_001">
                    <param name="username" value="FSAPI"/>
                    <param name="password" value="2011"/>
                    <param name="proxy" value="sbc.vbilling.org"/>
                    <param name="register" value="false"/>
                </gateway>
            </gateways>
            
            <settings>
                <param name="inbound-bypass-media" value="false"/>
                <param name="inbound-proxy-media" value="false"/>
                <param name="inbound-codec-negotiation" value="greedy"/>
                <param name="inbound-late-negotiation" value="true"/>
                <param name="disable-transcoding" value="true"/>
                <param name="debug" value="0"/>
                <param name="rfc2833-pt" value="101"/>
                <param name="sip-port" value="5060"/>
                <param name="dialplan" value="XML"/>
                <param name="dtmf-duration" value="100"/>
                <param name="codec-prefs" value="G722,PCMU,PCMA,GSM,G723,G729"/>
                
                <!--
Codec packetization yet to be configured properly
-->
                <!--

<param name="codec-ms" value="20"/>
-->
                <param name="use-rtp-timer" value="true"/>
                <param name="rtp-timer-name" value="soft"/>
                <param name="nonce-ttl" value="60"/>
                <!--
<param name="ext-rtp-ip" value="$\${external_rtp_ip}"/>
-->
            </settings>
        </profile>
    </profiles>
</configuration>
EOF
cat <<EOF > switch.conf.xml
<configuration name="switch.conf" description="Core Configuration">
    <settings>
        <param name="colorize-console" value="true"/>
        <param name="max-db-handles" value="50"/>
        <param name="db-handle-timeout" value="10"/>
        <param name="max-sessions" value="80"/>
        <param name="sessions-per-second" value="25"/>
        <param name="loglevel" value="alert"/>
        <param name="mailer-app" value="sendmail"/>
        <param name="mailer-app-args" value="-t"/>
        <param name="dump-cores" value="no"/>
        <param name="rtp-start-port" value="10384"/>
        <param name="crash-protection" value="false"/>
        <param name="rtp-end-port" value="42768"/>
        <param name="rtp-enable-zrtp" value="true"/>
    </settings>
</configuration>
EOF
cat <<EOF > timezones.conf.xml
<configuration name="timezones.conf" description="Timezones">
    <timezones>
        <zone name="Africa/Abidjan" value="GMT0" />
        <zone name="Africa/Accra" value="GMT0" />
        <zone name="Africa/Addis_Ababa" value="EAT-3" />
        <zone name="Africa/Algiers" value="CET-1" />
        <zone name="Africa/Asmara" value="EAT-3" />
        <zone name="Africa/Asmera" value="EAT-3" />
        <zone name="Africa/Bamako" value="GMT0" />
        <zone name="Africa/Bangui" value="WAT-1" />
        <zone name="Africa/Banjul" value="GMT0" />
        <zone name="Africa/Bissau" value="GMT0" />
        <zone name="Africa/Blantyre" value="CAT-2" />
        <zone name="Africa/Brazzaville" value="WAT-1" />
        <zone name="Africa/Bujumbura" value="CAT-2" />
        <zone name="Africa/Cairo" value="EEST" />
        <zone name="Africa/Casablanca" value="WET0" />
        <zone name="Africa/Ceuta" value="CET-1CEST,M3.5.0,M10.5.0/3" />
        <zone name="Africa/Conakry" value="GMT0" />
        <zone name="Africa/Dakar" value="GMT0" />
        <zone name="Africa/Dar_es_Salaam" value="EAT-3" />
        <zone name="Africa/Djibouti" value="EAT-3" />
        <zone name="Africa/Douala" value="WAT-1" />
        <zone name="Africa/El_Aaiun" value="WET0" />
        <zone name="Africa/Freetown" value="GMT0" />
        <zone name="Africa/Gaborone" value="CAT-2" />
        <zone name="Africa/Harare" value="CAT-2" />
        <zone name="Africa/Johannesburg" value="SAST-2" />
        <zone name="Africa/Kampala" value="EAT-3" />
        <zone name="Africa/Khartoum" value="EAT-3" />
        <zone name="Africa/Kigali" value="CAT-2" />
        <zone name="Africa/Kinshasa" value="WAT-1" />
        <zone name="Africa/Lagos" value="WAT-1" />
        <zone name="Africa/Libreville" value="WAT-1" />
        <zone name="Africa/Lome" value="GMT0" />
        <zone name="Africa/Luanda" value="WAT-1" />
        <zone name="Africa/Lubumbashi" value="CAT-2" />
        <zone name="Africa/Lusaka" value="CAT-2" />
        <zone name="Africa/Malabo" value="WAT-1" />
        <zone name="Africa/Maputo" value="CAT-2" />
        <zone name="Africa/Maseru" value="SAST-2" />
        <zone name="Africa/Mbabane" value="SAST-2" />
        <zone name="Africa/Mogadishu" value="EAT-3" />
        <zone name="Africa/Monrovia" value="GMT0" />
        <zone name="Africa/Nairobi" value="EAT-3" />
        <zone name="Africa/Ndjamena" value="WAT-1" />
        <zone name="Africa/Niamey" value="WAT-1" />
        <zone name="Africa/Nouakchott" value="GMT0" />
        <zone name="Africa/Ouagadougou" value="GMT0" />
        <zone name="Africa/Porto-Novo" value="WAT-1" />
        <zone name="Africa/Sao_Tome" value="GMT0" />
        <zone name="Africa/Timbuktu" value="GMT0" />
        <zone name="Africa/Tripoli" value="EET-2" />
        <zone name="Africa/Tunis" value="CET-1CEST,M3.5.0,M10.5.0/3" />
        <zone name="Africa/Windhoek" value="WAT-1WAST,M9.1.0,M4.1.0" />
        <zone name="America/Adak" value="HAST10HADT,M3.2.0,M11.1.0" />
        <zone name="America/Anchorage" value="AKST9AKDT,M3.2.0,M11.1.0" />
        <zone name="America/Anguilla" value="AST4" />
        <zone name="America/Antigua" value="AST4" />
        <zone name="America/Araguaina" value="BRT3" />
        <zone name="America/Argentina/Buenos_Aires" value="ART3ARST,M10.1.0/0,M3.3.0/0" />
        <zone name="America/Argentina/Catamarca" value="ART3ARST,M10.1.0/0,M3.3.0/0" />
        <zone name="America/Argentina/ComodRivadavia" value="ART3ARST,M10.1.0/0,M3.3.0/0" />
        <zone name="America/Argentina/Cordoba" value="ART3ARST,M10.1.0/0,M3.3.0/0" />
        <zone name="America/Argentina/Jujuy" value="ART3ARST,M10.1.0/0,M3.3.0/0" />
        <zone name="America/Argentina/La_Rioja" value="ART3ARST,M10.1.0/0,M3.3.0/0" />
        <zone name="America/Argentina/Mendoza" value="ART3ARST,M10.1.0/0,M3.3.0/0" />
        <zone name="America/Argentina/Rio_Gallegos" value="ART3ARST,M10.1.0/0,M3.3.0/0" />
        <zone name="America/Argentina/San_Juan" value="ART3ARST,M10.1.0/0,M3.3.0/0" />
        <zone name="America/Argentina/San_Luis" value="ART3" />
        <zone name="America/Argentina/Tucuman" value="ART3ARST,M10.1.0/0,M3.3.0/0" />
        <zone name="America/Argentina/Ushuaia" value="ART3ARST,M10.1.0/0,M3.3.0/0" />
        <zone name="America/Aruba" value="AST4" />
        <zone name="America/Asuncion" value="PYT4PYST,M10.3.0/0,M3.2.0/0" />
        <zone name="America/Atikokan" value="EST5" />
        <zone name="America/Atka" value="HAST10HADT,M3.2.0,M11.1.0" />
        <zone name="America/Bahia" value="BRT3" />
        <zone name="America/Barbados" value="AST4" />
        <zone name="America/Belem" value="BRT3" />
        <zone name="America/Belize" value="CST6" />
        <zone name="America/Blanc-Sablon" value="AST4" />
        <zone name="America/Boa_Vista" value="AMT4" />
        <zone name="America/Bogota" value="COT5" />
        <zone name="America/Boise" value="MST7MDT,M3.2.0,M11.1.0" />
        <zone name="America/Buenos_Aires" value="ART3ARST,M10.1.0/0,M3.3.0/0" />
        <zone name="America/Cambridge_Bay" value="MST7MDT,M3.2.0,M11.1.0" />
        <zone name="America/Campo_Grande" value="AMT4AMST,M10.2.0/0,M2.3.0/0" />
        <zone name="America/Cancun" value="CST6CDT,M4.1.0,M10.5.0" />
        <zone name="America/Caracas" value="VET4:30" />
        <zone name="America/Catamarca" value="ART3ARST,M10.1.0/0,M3.3.0/0" />
        <zone name="America/Cayenne" value="GFT3" />
        <zone name="America/Cayman" value="EST5" />
        <zone name="America/Chicago" value="CST6CDT,M3.2.0,M11.1.0" />
        <zone name="America/Chihuahua" value="MST7MDT,M4.1.0,M10.5.0" />
        <zone name="America/Coral_Harbour" value="EST5" />
        <zone name="America/Cordoba" value="ART3ARST,M10.1.0/0,M3.3.0/0" />
        <zone name="America/Costa_Rica" value="CST6" />
        <zone name="America/Cuiaba" value="AMT4AMST,M10.2.0/0,M2.3.0/0" />
        <zone name="America/Curacao" value="AST4" />
        <zone name="America/Danmarkshavn" value="GMT0" />
        <zone name="America/Dawson" value="PST8PDT,M3.2.0,M11.1.0" />
        <zone name="America/Dawson_Creek" value="MST7" />
        <zone name="America/Denver" value="MST7MDT,M3.2.0,M11.1.0" />
        <zone name="America/Detroit" value="EST5EDT,M3.2.0,M11.1.0" />
        <zone name="America/Dominica" value="AST4" />
        <zone name="America/Edmonton" value="MST7MDT,M3.2.0,M11.1.0" />
        <zone name="America/Eirunepe" value="ACT5" />
        <zone name="America/El_Salvador" value="CST6" />
        <zone name="America/Ensenada" value="PST8PDT,M4.1.0,M10.5.0" />
        <zone name="America/Fortaleza" value="BRT3" />
        <zone name="America/Fort_Wayne" value="EST5EDT,M3.2.0,M11.1.0" />
        <zone name="America/Glace_Bay" value="AST4ADT,M3.2.0,M11.1.0" />
        <zone name="America/Godthab" value="WGST" />
        <zone name="America/Goose_Bay" value="AST4ADT,M3.2.0/0:01,M11.1.0/0:01" />
        <zone name="America/Grand_Turk" value="EST5EDT,M3.2.0,M11.1.0" />
        <zone name="America/Grenada" value="AST4" />
        <zone name="America/Guadeloupe" value="AST4" />
        <zone name="America/Guatemala" value="CST6" />
        <zone name="America/Guayaquil" value="ECT5" />
        <zone name="America/Guyana" value="GYT4" />
        <zone name="America/Halifax" value="AST4ADT,M3.2.0,M11.1.0" />
        <zone name="America/Havana" value="CST5CDT,M3.3.0/0,M10.5.0/1" />
        <zone name="America/Hermosillo" value="MST7" />
        <zone name="America/Indiana/Indianapolis" value="EST5EDT,M3.2.0,M11.1.0" />
        <zone name="America/Indiana/Knox" value="CST6CDT,M3.2.0,M11.1.0" />
        <zone name="America/Indiana/Marengo" value="EST5EDT,M3.2.0,M11.1.0" />
        <zone name="America/Indiana/Petersburg" value="EST5EDT,M3.2.0,M11.1.0" />
        <zone name="America/Indianapolis" value="EST5EDT,M3.2.0,M11.1.0" />
        <zone name="America/Indiana/Tell_City" value="CST6CDT,M3.2.0,M11.1.0" />
        <zone name="America/Indiana/Vevay" value="EST5EDT,M3.2.0,M11.1.0" />
        <zone name="America/Indiana/Vincennes" value="EST5EDT,M3.2.0,M11.1.0" />
        <zone name="America/Indiana/Winamac" value="EST5EDT,M3.2.0,M11.1.0" />
        <zone name="America/Inuvik" value="MST7MDT,M3.2.0,M11.1.0" />
        <zone name="America/Iqaluit" value="EST5EDT,M3.2.0,M11.1.0" />
        <zone name="America/Jamaica" value="EST5" />
        <zone name="America/Jujuy" value="ART3ARST,M10.1.0/0,M3.3.0/0" />
        <zone name="America/Juneau" value="AKST9AKDT,M3.2.0,M11.1.0" />
        <zone name="America/Kentucky/Louisville" value="EST5EDT,M3.2.0,M11.1.0" />
        <zone name="America/Kentucky/Monticello" value="EST5EDT,M3.2.0,M11.1.0" />
        <zone name="America/Knox_IN" value="CST6CDT,M3.2.0,M11.1.0" />
        <zone name="America/La_Paz" value="BOT4" />
        <zone name="America/Lima" value="PET5" />
        <zone name="America/Los_Angeles" value="PST8PDT,M3.2.0,M11.1.0" />
        <zone name="America/Louisville" value="EST5EDT,M3.2.0,M11.1.0" />
        <zone name="America/Maceio" value="BRT3" />
        <zone name="America/Managua" value="CST6" />
        <zone name="America/Manaus" value="AMT4" />
        <zone name="America/Marigot" value="AST4" />
        <zone name="America/Martinique" value="AST4" />
        <zone name="America/Mazatlan" value="MST7MDT,M4.1.0,M10.5.0" />
        <zone name="America/Mendoza" value="ART3ARST,M10.1.0/0,M3.3.0/0" />
        <zone name="America/Menominee" value="CST6CDT,M3.2.0,M11.1.0" />
        <zone name="America/Merida" value="CST6CDT,M4.1.0,M10.5.0" />
        <zone name="America/Mexico_City" value="CST6CDT,M4.1.0,M10.5.0" />
        <zone name="America/Miquelon" value="PMST3PMDT,M3.2.0,M11.1.0" />
        <zone name="America/Moncton" value="AST4ADT,M3.2.0,M11.1.0" />
        <zone name="America/Monterrey" value="CST6CDT,M4.1.0,M10.5.0" />
        <zone name="America/Montevideo" value="UYT3UYST,M10.1.0,M3.2.0" />
        <zone name="America/Montreal" value="EST5EDT,M3.2.0,M11.1.0" />
        <zone name="America/Montserrat" value="AST4" />
        <zone name="America/Nassau" value="EST5EDT,M3.2.0,M11.1.0" />
        <zone name="America/New_York" value="EST5EDT,M3.2.0,M11.1.0" />
        <zone name="America/Nipigon" value="EST5EDT,M3.2.0,M11.1.0" />
        <zone name="America/Nome" value="AKST9AKDT,M3.2.0,M11.1.0" />
        <zone name="America/Noronha" value="FNT2" />
        <zone name="America/North_Dakota/Center" value="CST6CDT,M3.2.0,M11.1.0" />
        <zone name="America/North_Dakota/New_Salem" value="CST6CDT,M3.2.0,M11.1.0" />
        <zone name="America/Panama" value="EST5" />
        <zone name="America/Pangnirtung" value="EST5EDT,M3.2.0,M11.1.0" />
        <zone name="America/Paramaribo" value="SRT3" />
        <zone name="America/Phoenix" value="MST7" />
        <zone name="America/Port-au-Prince" value="EST5" />
        <zone name="America/Porto_Acre" value="ACT5" />
        <zone name="America/Port_of_Spain" value="AST4" />
        <zone name="America/Porto_Velho" value="AMT4" />
        <zone name="America/Puerto_Rico" value="AST4" />
        <zone name="America/Rainy_River" value="CST6CDT,M3.2.0,M11.1.0" />
        <zone name="America/Rankin_Inlet" value="CST6CDT,M3.2.0,M11.1.0" />
        <zone name="America/Recife" value="BRT3" />
        <zone name="America/Regina" value="CST6" />
        <zone name="America/Resolute" value="EST5" />
        <zone name="America/Rio_Branco" value="ACT5" />
        <zone name="America/Rosario" value="ART3ARST,M10.1.0/0,M3.3.0/0" />
        <zone name="America/Santiago" value="CLST" />
        <zone name="America/Santo_Domingo" value="AST4" />
        <zone name="America/Sao_Paulo" value="BRT3BRST,M10.2.0/0,M2.3.0/0" />
        <zone name="America/Scoresbysund" value="EGT1EGST,M3.5.0/0,M10.5.0/1" />
        <zone name="America/Shiprock" value="MST7MDT,M3.2.0,M11.1.0" />
        <zone name="America/St_Barthelemy" value="AST4" />
        <zone name="America/St_Johns" value="NST3:30NDT,M3.2.0/0:01,M11.1.0/0:01" />
        <zone name="America/St_Kitts" value="AST4" />
        <zone name="America/St_Lucia" value="AST4" />
        <zone name="America/St_Thomas" value="AST4" />
        <zone name="America/St_Vincent" value="AST4" />
        <zone name="America/Swift_Current" value="CST6" />
        <zone name="America/Tegucigalpa" value="CST6" />
        <zone name="America/Thule" value="AST4ADT,M3.2.0,M11.1.0" />
        <zone name="America/Thunder_Bay" value="EST5EDT,M3.2.0,M11.1.0" />
        <zone name="America/Tijuana" value="PST8PDT,M4.1.0,M10.5.0" />
        <zone name="America/Toronto" value="EST5EDT,M3.2.0,M11.1.0" />
        <zone name="America/Tortola" value="AST4" />
        <zone name="America/Vancouver" value="PST8PDT,M3.2.0,M11.1.0" />
        <zone name="America/Virgin" value="AST4" />
        <zone name="America/Whitehorse" value="PST8PDT,M3.2.0,M11.1.0" />
        <zone name="America/Winnipeg" value="CST6CDT,M3.2.0,M11.1.0" />
        <zone name="America/Yakutat" value="AKST9AKDT,M3.2.0,M11.1.0" />
        <zone name="America/Yellowknife" value="MST7MDT,M3.2.0,M11.1.0" />
        <zone name="Antarctica/Casey" value="WST-8" />
        <zone name="Antarctica/Davis" value="DAVT-7" />
        <zone name="Antarctica/DumontDUrville" value="DDUT-10" />
        <zone name="Antarctica/Mawson" value="MAWT-6" />
        <zone name="Antarctica/McMurdo" value="NZST-12NZDT,M9.5.0,M4.1.0/3" />
        <zone name="Antarctica/Palmer" value="CLST" />
        <zone name="Antarctica/Rothera" value="ROTT3" />
        <zone name="Antarctica/South_Pole" value="NZST-12NZDT,M9.5.0,M4.1.0/3" />
        <zone name="Antarctica/Syowa" value="SYOT-3" />
        <zone name="Antarctica/Vostok" value="VOST-6" />
        <zone name="Arctic/Longyearbyen" value="CET-1CEST,M3.5.0,M10.5.0/3" />
        <zone name="Asia/Aden" value="AST-3" />
        <zone name="Asia/Almaty" value="ALMT-6" />
        <zone name="Asia/Amman" value="EET-2EEST,M3.5.4/0,M10.5.5/1" />
        <zone name="Asia/Anadyr" value="ANAT-12ANAST,M3.5.0,M10.5.0/3" />
        <zone name="Asia/Aqtau" value="AQTT-5" />
        <zone name="Asia/Aqtobe" value="AQTT-5" />
        <zone name="Asia/Ashgabat" value="TMT-5" />
        <zone name="Asia/Ashkhabad" value="TMT-5" />
        <zone name="Asia/Baghdad" value="AST-3" />
        <zone name="Asia/Bahrain" value="AST-3" />
        <zone name="Asia/Baku" value="AZT-4AZST,M3.5.0/4,M10.5.0/5" />
        <zone name="Asia/Bangkok" value="ICT-7" />
        <zone name="Asia/Beirut" value="EET-2EEST,M3.5.0/0,M10.5.0/0" />
        <zone name="Asia/Bishkek" value="KGT-6" />
        <zone name="Asia/Brunei" value="BNT-8" />
        <zone name="Asia/Calcutta" value="IST-5:30" />
        <zone name="Asia/Choibalsan" value="CHOT-9" />
        <zone name="Asia/Chongqing" value="CST-8" />
        <zone name="Asia/Chungking" value="CST-8" />
        <zone name="Asia/Colombo" value="IST-5:30" />
        <zone name="Asia/Dacca" value="BDT-6" />
        <zone name="Asia/Damascus" value="EET-2EEST,M4.1.5/0,J274/0" />
        <zone name="Asia/Dhaka" value="BDT-6" />
        <zone name="Asia/Dili" value="TLT-9" />
        <zone name="Asia/Dubai" value="GST-4" />
        <zone name="Asia/Dushanbe" value="TJT-5" />
        <zone name="Asia/Gaza" value="EET-2EEST,J91/0,M9.2.4" />
        <zone name="Asia/Harbin" value="CST-8" />
        <zone name="Asia/Ho_Chi_Minh" value="ICT-7" />
        <zone name="Asia/Hong_Kong" value="HKT-8" />
        <zone name="Asia/Hovd" value="HOVT-7" />
        <zone name="Asia/Irkutsk" value="IRKT-8IRKST,M3.5.0,M10.5.0/3" />
        <zone name="Asia/Istanbul" value="EET-2EEST,M3.5.0/3,M10.5.0/4" />
        <zone name="Asia/Jakarta" value="WIT-7" />
        <zone name="Asia/Jayapura" value="EIT-9" />
        <zone name="Asia/Jerusalem" value="IDDT" />
        <zone name="Asia/Kabul" value="AFT-4:30" />
        <zone name="Asia/Kamchatka" value="PETT-12PETST,M3.5.0,M10.5.0/3" />
        <zone name="Asia/Karachi" value="PKT-5" />
        <zone name="Asia/Kashgar" value="CST-8" />
        <zone name="Asia/Katmandu" value="NPT-5:45" />
        <zone name="Asia/Kolkata" value="IST-5:30" />
        <zone name="Asia/Krasnoyarsk" value="KRAT-7KRAST,M3.5.0,M10.5.0/3" />
        <zone name="Asia/Kuala_Lumpur" value="MYT-8" />
        <zone name="Asia/Kuching" value="MYT-8" />
        <zone name="Asia/Kuwait" value="AST-3" />
        <zone name="Asia/Macao" value="CST-8" />
        <zone name="Asia/Macau" value="CST-8" />
        <zone name="Asia/Magadan" value="MAGT-11MAGST,M3.5.0,M10.5.0/3" />
        <zone name="Asia/Makassar" value="CIT-8" />
        <zone name="Asia/Manila" value="PHT-8" />
        <zone name="Asia/Muscat" value="GST-4" />
        <zone name="Asia/Nicosia" value="EET-2EEST,M3.5.0/3,M10.5.0/4" />
        <zone name="Asia/Novosibirsk" value="NOVT-6NOVST,M3.5.0,M10.5.0/3" />
        <zone name="Asia/Omsk" value="OMST-6OMSST,M3.5.0,M10.5.0/3" />
        <zone name="Asia/Oral" value="ORAT-5" />
        <zone name="Asia/Phnom_Penh" value="ICT-7" />
        <zone name="Asia/Pontianak" value="WIT-7" />
        <zone name="Asia/Pyongyang" value="KST-9" />
        <zone name="Asia/Qatar" value="AST-3" />
        <zone name="Asia/Qyzylorda" value="QYZT-6" />
        <zone name="Asia/Rangoon" value="MMT-6:30" />
        <zone name="Asia/Riyadh" value="AST-3" />
        <zone name="Asia/Riyadh87" value="zzz-3:07:04" />
        <zone name="Asia/Riyadh88" value="zzz-3:07:04" />
        <zone name="Asia/Riyadh89" value="zzz-3:07:04" />
        <zone name="Asia/Saigon" value="ICT-7" />
        <zone name="Asia/Sakhalin" value="SAKT-10SAKST,M3.5.0,M10.5.0/3" />
        <zone name="Asia/Samarkand" value="UZT-5" />
        <zone name="Asia/Seoul" value="KST-9" />
        <zone name="Asia/Shanghai" value="CST-8" />
        <zone name="Asia/Singapore" value="SGT-8" />
        <zone name="Asia/Taipei" value="CST-8" />
        <zone name="Asia/Tashkent" value="UZT-5" />
        <zone name="Asia/Tbilisi" value="GET-4" />
        <zone name="Asia/Tehran" value="IRDT" />
        <zone name="Asia/Tel_Aviv" value="IDDT" />
        <zone name="Asia/Thimbu" value="BTT-6" />
        <zone name="Asia/Thimphu" value="BTT-6" />
        <zone name="Asia/Tokyo" value="JST-9" />
        <zone name="Asia/Ujung_Pandang" value="CIT-8" />
        <zone name="Asia/Ulaanbaatar" value="ULAT-8" />
        <zone name="Asia/Ulan_Bator" value="ULAT-8" />
        <zone name="Asia/Urumqi" value="CST-8" />
        <zone name="Asia/Vientiane" value="ICT-7" />
        <zone name="Asia/Vladivostok" value="VLAT-10VLAST,M3.5.0,M10.5.0/3" />
        <zone name="Asia/Yakutsk" value="YAKT-9YAKST,M3.5.0,M10.5.0/3" />
        <zone name="Asia/Yekaterinburg" value="YEKT-5YEKST,M3.5.0,M10.5.0/3" />
        <zone name="Asia/Yerevan" value="AMT-4AMST,M3.5.0,M10.5.0/3" />
        <zone name="Atlantic/Azores" value="AZOT1AZOST,M3.5.0/0,M10.5.0/1" />
        <zone name="Atlantic/Bermuda" value="AST4ADT,M3.2.0,M11.1.0" />
        <zone name="Atlantic/Canary" value="WET0WEST,M3.5.0/1,M10.5.0" />
        <zone name="Atlantic/Cape_Verde" value="CVT1" />
        <zone name="Atlantic/Faeroe" value="WET0WEST,M3.5.0/1,M10.5.0" />
        <zone name="Atlantic/Faroe" value="WET0WEST,M3.5.0/1,M10.5.0" />
        <zone name="Atlantic/Jan_Mayen" value="CET-1CEST,M3.5.0,M10.5.0/3" />
        <zone name="Atlantic/Madeira" value="WET0WEST,M3.5.0/1,M10.5.0" />
        <zone name="Atlantic/Reykjavik" value="GMT0" />
        <zone name="Atlantic/South_Georgia" value="GST2" />
        <zone name="Atlantic/Stanley" value="FKT4FKST,M9.1.0,M4.3.0" />
        <zone name="Atlantic/St_Helena" value="GMT0" />
        <zone name="Australia/ACT" value="EST-10EST,M10.1.0,M4.1.0/3" />
        <zone name="Australia/Adelaide" value="CST-9:30CST,M10.1.0,M4.1.0/3" />
        <zone name="Australia/Brisbane" value="EST-10" />
        <zone name="Australia/Broken_Hill" value="CST-9:30CST,M10.1.0,M4.1.0/3" />
        <zone name="Australia/Canberra" value="EST-10EST,M10.1.0,M4.1.0/3" />
        <zone name="Australia/Currie" value="EST-10EST,M10.1.0,M4.1.0/3" />
        <zone name="Australia/Darwin" value="CST-9:30" />
        <zone name="Australia/Eucla" value="CWST-8:45" />
        <zone name="Australia/Hobart" value="EST-10EST,M10.1.0,M4.1.0/3" />
        <zone name="Australia/LHI" value="LHST-10:30LHST-11,M10.1.0,M4.1.0" />
        <zone name="Australia/Lindeman" value="EST-10" />
        <zone name="Australia/Lord_Howe" value="LHST-10:30LHST-11,M10.1.0,M4.1.0" />
        <zone name="Australia/Melbourne" value="EST-10EST,M10.1.0,M4.1.0/3" />
        <zone name="Australia/North" value="CST-9:30" />
        <zone name="Australia/NSW" value="EST-10EST,M10.1.0,M4.1.0/3" />
        <zone name="Australia/Perth" value="WST-8" />
        <zone name="Australia/Queensland" value="EST-10" />
        <zone name="Australia/South" value="CST-9:30CST,M10.1.0,M4.1.0/3" />
        <zone name="Australia/Sydney" value="EST-10EST,M10.1.0,M4.1.0/3" />
        <zone name="Australia/Tasmania" value="EST-10EST,M10.1.0,M4.1.0/3" />
        <zone name="Australia/Victoria" value="EST-10EST,M10.1.0,M4.1.0/3" />
        <zone name="Australia/West" value="WST-8" />
        <zone name="Australia/Yancowinna" value="CST-9:30CST,M10.1.0,M4.1.0/3" />
        <zone name="Brazil/Acre" value="ACT5" />
        <zone name="Brazil/DeNoronha" value="FNT2" />
        <zone name="Brazil/East" value="BRT3BRST,M10.2.0/0,M2.3.0/0" />
        <zone name="Brazil/West" value="AMT4" />
        <zone name="Canada/Atlantic" value="AST4ADT,M3.2.0,M11.1.0" />
        <zone name="Canada/Central" value="CST6CDT,M3.2.0,M11.1.0" />
        <zone name="Canada/Eastern" value="EST5EDT,M3.2.0,M11.1.0" />
        <zone name="Canada/East-Saskatchewan" value="CST6" />
        <zone name="Canada/Mountain" value="MST7MDT,M3.2.0,M11.1.0" />
        <zone name="Canada/Newfoundland" value="NST3:30NDT,M3.2.0/0:01,M11.1.0/0:01" />
        <zone name="Canada/Pacific" value="PST8PDT,M3.2.0,M11.1.0" />
        <zone name="Canada/Saskatchewan" value="CST6" />
        <zone name="Canada/Yukon" value="PST8PDT,M3.2.0,M11.1.0" />
        <zone name="Chile/Continental" value="CLST" />
        <zone name="Chile/EasterIsland" value="EASST" />
        <zone name="Etc/GMT" value="GMT0" />
        <zone name="Etc/GMT0" value="GMT0" />
        <zone name="Etc/GMT-0" value="GMT0" />
        <zone name="Etc/GMT+0" value="GMT0" />
        <zone name="Etc/GMT-1" value="GMT-1" />
        <zone name="Etc/GMT+1" value="GMT+1" />
        <zone name="Etc/GMT-10" value="GMT-10" />
        <zone name="Etc/GMT+10" value="GMT+10" />
        <zone name="Etc/GMT-11" value="GMT-11" />
        <zone name="Etc/GMT+11" value="GMT+11" />
        <zone name="Etc/GMT-12" value="GMT-12" />
        <zone name="Etc/GMT+12" value="GMT+12" />
        <zone name="Etc/GMT-13" value="GMT-13" />
        <zone name="Etc/GMT-14" value="GMT-14" />
        <zone name="Etc/GMT-2" value="GMT-2" />
        <zone name="Etc/GMT+2" value="GMT+2" />
        <zone name="Etc/GMT-3" value="GMT-3" />
        <zone name="Etc/GMT+3" value="GMT+3" />
        <zone name="Etc/GMT-4" value="GMT-4" />
        <zone name="Etc/GMT+4" value="GMT+4" />
        <zone name="Etc/GMT-5" value="GMT-5" />
        <zone name="Etc/GMT+5" value="GMT+5" />
        <zone name="Etc/GMT-6" value="GMT-6" />
        <zone name="Etc/GMT+6" value="GMT+6" />
        <zone name="Etc/GMT-7" value="GMT-7" />
        <zone name="Etc/GMT+7" value="GMT+7" />
        <zone name="Etc/GMT-8" value="GMT-8" />
        <zone name="Etc/GMT+8" value="GMT+8" />
        <zone name="Etc/GMT-9" value="GMT-9" />
        <zone name="Etc/GMT+9" value="GMT+9" />
        <zone name="Etc/Greenwich" value="GMT0" />
        <zone name="Etc/UCT" value="UCT0" />
        <zone name="Etc/Universal" value="UTC0" />
        <zone name="Etc/UTC" value="UTC0" />
        <zone name="Etc/Zulu" value="UTC0" />
        <zone name="Europe/Amsterdam" value="CET-1CEST,M3.5.0,M10.5.0/3" />
        <zone name="Europe/Andorra" value="CET-1CEST,M3.5.0,M10.5.0/3" />
        <zone name="Europe/Athens" value="EET-2EEST,M3.5.0/3,M10.5.0/4" />
        <zone name="Europe/Belfast" value="GMT0BST,M3.5.0/1,M10.5.0" />
        <zone name="Europe/Belgrade" value="CET-1CEST,M3.5.0,M10.5.0/3" />
        <zone name="Europe/Berlin" value="CET-1CEST,M3.5.0,M10.5.0/3" />
        <zone name="Europe/Bratislava" value="CET-1CEST,M3.5.0,M10.5.0/3" />
        <zone name="Europe/Brussels" value="CET-1CEST,M3.5.0,M10.5.0/3" />
        <zone name="Europe/Bucharest" value="EET-2EEST,M3.5.0/3,M10.5.0/4" />
        <zone name="Europe/Budapest" value="CET-1CEST,M3.5.0,M10.5.0/3" />
        <zone name="Europe/Chisinau" value="EET-2EEST,M3.5.0/3,M10.5.0/4" />
        <zone name="Europe/Copenhagen" value="CET-1CEST,M3.5.0,M10.5.0/3" />
        <zone name="Europe/Dublin" value="GMT0IST,M3.5.0/1,M10.5.0" />
        <zone name="Europe/Gibraltar" value="CET-1CEST,M3.5.0,M10.5.0/3" />
        <zone name="Europe/Guernsey" value="GMT0BST,M3.5.0/1,M10.5.0" />
        <zone name="Europe/Helsinki" value="EET-2EEST,M3.5.0/3,M10.5.0/4" />
        <zone name="Europe/Isle_of_Man" value="GMT0BST,M3.5.0/1,M10.5.0" />
        <zone name="Europe/Istanbul" value="EET-2EEST,M3.5.0/3,M10.5.0/4" />
        <zone name="Europe/Jersey" value="GMT0BST,M3.5.0/1,M10.5.0" />
        <zone name="Europe/Kaliningrad" value="EET-2EEST,M3.5.0,M10.5.0/3" />
        <zone name="Europe/Kiev" value="EET-2EEST,M3.5.0/3,M10.5.0/4" />
        <zone name="Europe/Lisbon" value="WET0WEST,M3.5.0/1,M10.5.0" />
        <zone name="Europe/Ljubljana" value="CET-1CEST,M3.5.0,M10.5.0/3" />
        <zone name="Europe/London" value="GMT0BST,M3.5.0/1,M10.5.0" />
        <zone name="Europe/Luxembourg" value="CET-1CEST,M3.5.0,M10.5.0/3" />
        <zone name="Europe/Madrid" value="CET-1CEST,M3.5.0,M10.5.0/3" />
        <zone name="Europe/Malta" value="CET-1CEST,M3.5.0,M10.5.0/3" />
        <zone name="Europe/Mariehamn" value="EET-2EEST,M3.5.0/3,M10.5.0/4" />
        <zone name="Europe/Minsk" value="EET-2EEST,M3.5.0,M10.5.0/3" />
        <zone name="Europe/Monaco" value="CET-1CEST,M3.5.0,M10.5.0/3" />
        <zone name="Europe/Moscow" value="MSK-3MSD,M3.5.0,M10.5.0/3" />
        <zone name="Europe/Nicosia" value="EET-2EEST,M3.5.0/3,M10.5.0/4" />
        <zone name="Europe/Oslo" value="CET-1CEST,M3.5.0,M10.5.0/3" />
        <zone name="Europe/Paris" value="CET-1CEST,M3.5.0,M10.5.0/3" />
        <zone name="Europe/Podgorica" value="CET-1CEST,M3.5.0,M10.5.0/3" />
        <zone name="Europe/Prague" value="CET-1CEST,M3.5.0,M10.5.0/3" />
        <zone name="Europe/Riga" value="EET-2EEST,M3.5.0/3,M10.5.0/4" />
        <zone name="Europe/Rome" value="CET-1CEST,M3.5.0,M10.5.0/3" />
        <zone name="Europe/Samara" value="SAMT-4SAMST,M3.5.0,M10.5.0/3" />
        <zone name="Europe/San_Marino" value="CET-1CEST,M3.5.0,M10.5.0/3" />
        <zone name="Europe/Sarajevo" value="CET-1CEST,M3.5.0,M10.5.0/3" />
        <zone name="Europe/Simferopol" value="EET-2EEST,M3.5.0/3,M10.5.0/4" />
        <zone name="Europe/Skopje" value="CET-1CEST,M3.5.0,M10.5.0/3" />
        <zone name="Europe/Sofia" value="EET-2EEST,M3.5.0/3,M10.5.0/4" />
        <zone name="Europe/Stockholm" value="CET-1CEST,M3.5.0,M10.5.0/3" />
        <zone name="Europe/Tallinn" value="EET-2EEST,M3.5.0/3,M10.5.0/4" />
        <zone name="Europe/Tirane" value="CET-1CEST,M3.5.0,M10.5.0/3" />
        <zone name="Europe/Tiraspol" value="EET-2EEST,M3.5.0/3,M10.5.0/4" />
        <zone name="Europe/Uzhgorod" value="EET-2EEST,M3.5.0/3,M10.5.0/4" />
        <zone name="Europe/Vaduz" value="CET-1CEST,M3.5.0,M10.5.0/3" />
        <zone name="Europe/Vatican" value="CET-1CEST,M3.5.0,M10.5.0/3" />
        <zone name="Europe/Vienna" value="CET-1CEST,M3.5.0,M10.5.0/3" />
        <zone name="Europe/Vilnius" value="EET-2EEST,M3.5.0/3,M10.5.0/4" />
        <zone name="Europe/Volgograd" value="VOLT-3VOLST,M3.5.0,M10.5.0/3" />
        <zone name="Europe/Warsaw" value="CET-1CEST,M3.5.0,M10.5.0/3" />
        <zone name="Europe/Zagreb" value="CET-1CEST,M3.5.0,M10.5.0/3" />
        <zone name="Europe/Zaporozhye" value="EET-2EEST,M3.5.0/3,M10.5.0/4" />
        <zone name="Europe/Zurich" value="CET-1CEST,M3.5.0,M10.5.0/3" />
        <zone name="Indian/Antananarivo" value="EAT-3" />
        <zone name="Indian/Chagos" value="IOT-6" />
        <zone name="Indian/Christmas" value="CXT-7" />
        <zone name="Indian/Cocos" value="CCT-6:30" />
        <zone name="Indian/Comoro" value="EAT-3" />
        <zone name="Indian/Kerguelen" value="TFT-5" />
        <zone name="Indian/Mahe" value="SCT-4" />
        <zone name="Indian/Maldives" value="MVT-5" />
        <zone name="Indian/Mauritius" value="MUT-4" />
        <zone name="Indian/Mayotte" value="EAT-3" />
        <zone name="Indian/Reunion" value="RET-4" />
        <zone name="Mexico/BajaNorte" value="PST8PDT,M4.1.0,M10.5.0" />
        <zone name="Mexico/BajaSur" value="MST7MDT,M4.1.0,M10.5.0" />
        <zone name="Mexico/General" value="CST6CDT,M4.1.0,M10.5.0" />
        <zone name="Mideast/Riyadh87" value="zzz-3:07:04" />
        <zone name="Mideast/Riyadh88" value="zzz-3:07:04" />
        <zone name="Mideast/Riyadh89" value="zzz-3:07:04" />
        <zone name="Pacific/Apia" value="WST11" />
        <zone name="Pacific/Auckland" value="NZST-12NZDT,M9.5.0,M4.1.0/3" />
        <zone name="Pacific/Chatham" value="CHAST-12:45CHADT,M9.5.0/2:45,M4.1.0/3:45" />
        <zone name="Pacific/Easter" value="EASST" />
        <zone name="Pacific/Efate" value="VUT-11" />
        <zone name="Pacific/Enderbury" value="PHOT-13" />
        <zone name="Pacific/Fakaofo" value="TKT10" />
        <zone name="Pacific/Fiji" value="FJT-12" />
        <zone name="Pacific/Funafuti" value="TVT-12" />
        <zone name="Pacific/Galapagos" value="GALT6" />
        <zone name="Pacific/Gambier" value="GAMT9" />
        <zone name="Pacific/Guadalcanal" value="SBT-11" />
        <zone name="Pacific/Guam" value="ChST-10" />
        <zone name="Pacific/Honolulu" value="HST10" />
        <zone name="Pacific/Johnston" value="HST10" />
        <zone name="Pacific/Kiritimati" value="LINT-14" />
        <zone name="Pacific/Kosrae" value="KOST-11" />
        <zone name="Pacific/Kwajalein" value="MHT-12" />
        <zone name="Pacific/Majuro" value="MHT-12" />
        <zone name="Pacific/Marquesas" value="MART9:30" />
        <zone name="Pacific/Midway" value="SST11" />
        <zone name="Pacific/Nauru" value="NRT-12" />
        <zone name="Pacific/Niue" value="NUT11" />
        <zone name="Pacific/Norfolk" value="NFT-11:30" />
        <zone name="Pacific/Noumea" value="NCT-11" />
        <zone name="Pacific/Pago_Pago" value="SST11" />
        <zone name="Pacific/Palau" value="PWT-9" />
        <zone name="Pacific/Pitcairn" value="PST8" />
        <zone name="Pacific/Ponape" value="PONT-11" />
        <zone name="Pacific/Port_Moresby" value="PGT-10" />
        <zone name="Pacific/Rarotonga" value="CKT10" />
        <zone name="Pacific/Saipan" value="ChST-10" />
        <zone name="Pacific/Samoa" value="SST11" />
        <zone name="Pacific/Tahiti" value="TAHT10" />
        <zone name="Pacific/Tarawa" value="GILT-12" />
        <zone name="Pacific/Tongatapu" value="TOT-13" />
        <zone name="Pacific/Truk" value="TRUT-10" />
        <zone name="Pacific/Wake" value="WAKT-12" />
        <zone name="Pacific/Wallis" value="WFT-12" />
        <zone name="Pacific/Yap" value="TRUT-10" />
        <zone name="SystemV/AST4" value="AST4" />
        <zone name="SystemV/AST4ADT" value="AST4ADT,M3.2.0,M11.1.0" />
        <zone name="SystemV/CST6" value="CST6" />
        <zone name="SystemV/CST6CDT" value="CST6CDT,M3.2.0,M11.1.0" />
        <zone name="SystemV/EST5" value="EST5" />
        <zone name="SystemV/EST5EDT" value="EST5EDT,M3.2.0,M11.1.0" />
        <zone name="SystemV/HST10" value="HST10" />
        <zone name="SystemV/MST7" value="MST7" />
        <zone name="SystemV/MST7MDT" value="MST7MDT,M3.2.0,M11.1.0" />
        <zone name="SystemV/PST8" value="PST8" />
        <zone name="SystemV/PST8PDT" value="PST8PDT,M3.2.0,M11.1.0" />
        <zone name="SystemV/YST9" value="GAMT9" />
        <zone name="SystemV/YST9YDT" value="AKST9AKDT,M3.2.0,M11.1.0" />
        <zone name="US/Alaska" value="AKST9AKDT,M3.2.0,M11.1.0" />
        <zone name="US/Aleutian" value="HAST10HADT,M3.2.0,M11.1.0" />
        <zone name="US/Arizona" value="MST7" />
        <zone name="US/Central" value="CST6CDT,M3.2.0,M11.1.0" />
        <zone name="US/Eastern" value="EST5EDT,M3.2.0,M11.1.0" />
        <zone name="US/East-Indiana" value="EST5EDT,M3.2.0,M11.1.0" />
        <zone name="US/Hawaii" value="HST10" />
        <zone name="US/Indiana-Starke" value="CST6CDT,M3.2.0,M11.1.0" />
        <zone name="US/Michigan" value="EST5EDT,M3.2.0,M11.1.0" />
        <zone name="US/Mountain" value="MST7MDT,M3.2.0,M11.1.0" />
        <zone name="US/Pacific" value="PST8PDT,M3.2.0,M11.1.0" />
        <zone name="US/Samoa" value="SST11" />
    </timezones>
</configuration>
EOF
cat <<EOF > xml_cdr.conf.xml
<configuration name="xml_cdr.conf" description="XML CDR CURL logger">
    <settings>
        <param name="url" value="http://localhost/conf/billing-cdr.php"/>
        <param name="retries" value="2"/>
        <param name="delay" value="10"/>
        <param name="log-http-and-disk" value="true"/>
        <param name="log-dir" value=""/>
        <param name="log-b-leg" value="true"/>
        <param name="prefix-a-leg" value="true"/>
        <param name="encode" value="true"/>
    </settings>
</configuration>
EOF
cat <<EOF > logfile.conf.xml
<configuration name="logfile.conf" description="File Logging">
    <settings>
        <param name="rotate-on-hup" value="true"/>
    </settings>
    <profiles>
        <profile name="default">
            <settings>
                <param name="rollover" value="100485760"/>
                <param name="uuid" value="true" />
            </settings>
            <mappings>
                <map name="all" value="debug,info,notice,warning,err,crit,alert"/>
            </mappings>
        </profile>
    </profiles>
</configuration>
EOF
