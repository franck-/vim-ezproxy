" Vim syntax file
" Language: ezproxy_config

if exists("b:current_syntax")
  finish
end

setlocal iskeyword+=-
syn case ignore

syn match ezpComment '#.*$'

syn region ezpRegionGlobalUsageLimit start=/\v^\s*UsageLimit/ end=/$/ contains=ezpGlobalUsageLimitDirective,ezpGlobalUsageLimitOption
syn match ezpGlobalUsageLimitDirective '\v^\s*UsageLimit(\W|$)' contained
syn keyword ezpGlobalUsageLimitOption -End -Enforce -Expires= -IgnoreAutoLoginIP -Interval= -Local -MB= -Transfers= contained
syn match ezpGlobalUsageLimitOption /\v\W\-(Expires|Interval|MB|Transfers)=/ contained

syn region ezpRegionDatabaseTitle start=/\v^\s*T(itle)?/ end=/$/ contains=ezpDatabaseTitleDirective,ezpDatabaseTitleOption
syn match ezpDatabaseTitleDirective '\v^\s*T(itle)?(\W|$)' contained
syn keyword ezpDatabaseTitleOption -hide contained

syn region ezpRegionDatabaseURL start=/\v^\s*U(RL)?/ end=/$/ contains=ezpDatabaseURLDirective,ezpDatabaseURLOption
syn match ezpDatabaseURLDirective '\v^\s*U(RL)?(\W|$)' contained
syn keyword ezpDatabaseURLOption -Append -Encoded -Form -Redirect -Refresh -RewriteHost contained

" == Global ====================================== "{{{

" Global Directives "{{{
syn match ezpDirectiveOption '\v^\s*O(ption)?(\W|$)'

syn match ezpDirectiveGlobal '\v^\s*AnonymousURL(\W|$)'
syn match ezpDirectiveGlobal '\v^\s*Audit(\W|$)'
syn match ezpDirectiveGlobal '\v^\s*AuditPurge(\W|$)'
syn match ezpDirectiveGlobal '\v^\s*A(utoLoginIP)?(\W|$)'
syn match ezpDirectiveGlobal '\v^\s*BinaryTimeout(\W|$)'
syn match ezpDirectiveGlobal '\v^\s*ClientTimeout(\W|$)'
syn match ezpDirectiveGlobal '\v^\s*Cookie(\W|$)'
syn match ezpDirectiveGlobal '\v^\s*CookieFilter(\W|$)'
syn match ezpDirectiveGlobal '\v^\s*CookiePassThrough(\W|$)'
syn match ezpDirectiveGlobal '\v^\s*EbrarySite(\W|$)'
syn match ezpDirectiveGlobal '\v^\s*E(xcludeIP)?(\W|$)'
syn match ezpDirectiveGlobal '\v^\s*ExtraLoginCookie(\W|$)'
syn match ezpDirectiveGlobal '\v^\s*F(irstPort)?(\W|$)'
syn match ezpDirectiveGlobal '\v^\s*Group(\W|$)'
syn match ezpDirectiveGlobal '\v^\s*HTTPHeader(\W|$)'
syn match ezpDirectiveGlobal '\v^\s*HTTPMethod(\W|$)'
syn match ezpDirectiveGlobal '\v^\s*IncludeFile(\W|$)'
syn match ezpDirectiveGlobal '\v^\s*I(ncludeIP)?(\W|$)'
syn match ezpDirectiveGlobal '\v^\s*Interface(\W|$)'
syn match ezpDirectiveGlobal '\v^\s*IntruderIPAttempts(\W|$)'
syn match ezpDirectiveGlobal '\v^\s*IntruderLog(\W|$)'
syn match ezpDirectiveGlobal '\v^\s*IntruderUserAttempts(\W|$)'
syn match ezpDirectiveGlobal '\v^\s*LBPeer(\W|$)'
syn match ezpDirectiveGlobal '\v^\s*LogFile(\W|$)'
syn match ezpDirectiveGlobal '\v^\s*LogFormat(\W|$)'
syn match ezpDirectiveGlobal '\v^\s*LogSPU(\W|$)'
syn match ezpDirectiveGlobal '\v^\s*LoginCookieDomain(\W|$)'
syn match ezpDirectiveGlobal '\v^\s*LoginCookieName(\W|$)'
syn match ezpDirectiveGlobal '\v^\s*LoginPort(\W|$)'
syn match ezpDirectiveGlobal '\v^\s*LoginPortSSL(\W|$)'
syn match ezpDirectiveGlobal '\v^\s*M(L|axLifetime)(\W|$)'
syn match ezpDirectiveGlobal '\v^\s*M(V|axVirtualHosts)(\W|$)'
syn match ezpDirectiveGlobal '\v^\s*MIMEFilter(\W|$)'
syn match ezpDirectiveGlobal '\v^\s*M(C|axConcurrentTransfers)?(\W|$)'
syn match ezpDirectiveGlobal '\v^\s*M(S|axSessions)?(\W|$)'
syn match ezpDirectiveGlobal '\v^\s*N(ame)?(\W|$)'
syn match ezpDirectiveGlobal '\v^\s*NeverProxy(\W|$)'
syn match ezpDirectiveGlobal '\v^\s*PidFile(\W|$)'
syn match ezpDirectiveGlobal '\v^\s*P(roxy)?(\W|$)'
syn match ezpDirectiveGlobal '\v^\s*ProxyHostnameEdit(\W|$)'
syn match ezpDirectiveGlobal '\v^\s*RADIUSRetry(\W|$)'
syn match ezpDirectiveGlobal '\v^\s*RedirectSafe(\W|$)'
syn match ezpDirectiveGlobal '\v^\s*RejectIP(\W|$)'
syn match ezpDirectiveGlobal '\v^\s*RemoteTimeout(\W|$)'
syn match ezpDirectiveGlobal '\v^\s*SSLCipherSuite(\W|$)'
syn match ezpDirectiveGlobal '\v^\s*ShibbolethDisable(\W|$)'
syn match ezpDirectiveGlobal '\v^\s*ShibbolethMetadata(\W|$)'
syn match ezpDirectiveGlobal '\v^\s*UMask(\W|$)'
syn match ezpDirectiveGlobal '\v^\s*XDebug(\W|$)'
" "}}}

" Global Options "{{{
syn keyword ezpDirectiveGlobalOption AcceptX-Forwarded-For
syn keyword ezpDirectiveGlobalOption AllowWebSubdirectories
syn keyword ezpDirectiveGlobalOption AnyDNSHostname
syn keyword ezpDirectiveGlobalOption BlockCountryChange
syn keyword ezpDirectiveGlobalOption Cookie
syn keyword ezpDirectiveGlobalOption DisableSSL40bit
syn keyword ezpDirectiveGlobalOption DisableSSL56bit
syn keyword ezpDirectiveGlobalOption DisableSSLv2
syn keyword ezpDirectiveGlobalOption DisableSSLv3
syn keyword ezpDirectiveGlobalOption DomainCookieOnly
syn keyword ezpDirectiveGlobalOption ExcludeIPMenu
syn keyword ezpDirectiveGlobalOption ForceHTTPSAdmin
syn keyword ezpDirectiveGlobalOption ForceHTTPSLogin
syn keyword ezpDirectiveGlobalOption HideEZProxy
syn keyword ezpDirectiveGlobalOption HttpsHyphens
syn keyword ezpDirectiveGlobalOption IgnoreWildcardCertificate
syn keyword ezpDirectiveGlobalOption LogReferer
syn keyword ezpDirectiveGlobalOption LogSAML
syn keyword ezpDirectiveGlobalOption LogSPUEdit
syn keyword ezpDirectiveGlobalOption LogSession
syn keyword ezpDirectiveGlobalOption LogUser
syn keyword ezpDirectiveGlobalOption LoginReplaceGroups
syn keyword ezpDirectiveGlobalOption MenuByGroups
syn keyword ezpDirectiveGlobalOption MetaEZproxyRewriting
syn keyword ezpDirectiveGlobalOption NoCookie
syn keyword ezpDirectiveGlobalOption NoHideEZProxy
syn keyword ezpDirectiveGlobalOption NoHttpsHyphens
syn keyword ezpDirectiveGlobalOption NoMetaEZproxyRewriting
syn keyword ezpDirectiveGlobalOption NoProxyFTP
syn keyword ezpDirectiveGlobalOption NoUTF16
syn keyword ezpDirectiveGlobalOption NoX-Forwarded-For
syn keyword ezpDirectiveGlobalOption ProxyByHostname
syn keyword ezpDirectiveGlobalOption ProxyFTP
syn keyword ezpDirectiveGlobalOption RecordPeaks
syn keyword ezpDirectiveGlobalOption RefererInHostname
syn keyword ezpDirectiveGlobalOption RelaxedRADIUS
syn keyword ezpDirectiveGlobalOption SafariCookiePatch
syn keyword ezpDirectiveGlobalOption StatusUser
syn keyword ezpDirectiveGlobalOption TicketIgnoreExcludeIP
syn keyword ezpDirectiveGlobalOption UTF16
syn keyword ezpDirectiveGlobalOption UnsafeRedirectUnknown
syn keyword ezpDirectiveGlobalOption UsernameCaretN
syn keyword ezpDirectiveGlobalOption X-Forwarded-For
" "}}}

" "}}}

" == Database ==================================== "{{{

syn match ezpDatabaseURLDirective '\v^\s*U(AE|RLAppendEncoded)(\W|$)'
syn match ezpDatabaseURLDirective '\v^\s*U(R|RLRedirect)(\W|$)'
syn match ezpDatabaseURLDirective '\v^\s*U(RA|RLRedirectAppend)(\W|$)'
syn match ezpDatabaseURLDirective '\v^\s*U(RAE|RLRedirectAppendEncoded)(\W|$)'

syn match ezpDirectiveDatabase '\v^\s*AllowVars(\W|$)'
syn match ezpDirectiveDatabase '\v^\s*Books24x7Site(\W|$)'
syn match ezpDirectiveDatabase '\v^\s*DenyIfRequestHeader(\W|$)'
syn match ezpDirectiveDatabase '\v^\s*Description(\W|$)'
syn match ezpDirectiveDatabase '\v^\s*D(omain)?(\W|$)'
syn match ezpDirectiveDatabase '\v^\s*D(J|omainJavaScript)(\W|$)'
syn match ezpDirectiveDatabase '\v^\s*EBLSecret(\W|$)'
syn match ezpDirectiveDatabase '\v^\s*EncryptVar(\W|$)'
syn match ezpDirectiveDatabase '\v^\s*Find(\W|$)'
syn match ezpDirectiveDatabase '\v^\s*FormSelect(\W|$)'
syn match ezpDirectiveDatabase '\v^\s*FormSubmit(\W|$)'
syn match ezpDirectiveDatabase '\v^\s*FormVariable(\W|$)'
syn match ezpDirectiveDatabase '\v^\s*H(ost)?(\W|$)'
syn match ezpDirectiveDatabase '\v^\s*H(J|ostJavaScript)(\W|$)'
syn match ezpDirectiveDatabase '\v^\s*MetaFind(\W|$)'
syn match ezpDirectiveDatabase '\v^\s*Replace(\W|$)'
syn match ezpDirectiveDatabase '\v^\s*TokenKey(\W|$)'
syn match ezpDirectiveDatabase '\v^\s*TokenSignatureKey(\W|$)'
syn match ezpDirectiveDatabase '\v^\s*V(alidate)?(\W|$)'
" "}}}

" == Group ======================================= "{{{

syn match ezpDirectiveGroup '\v^\s*OverDriveSite(\W|$)'
" "}}}

" == Deprecated Directives ======================= "{{{

syn match ezpDirectiveDeprecated '\v^\s*CASServiceURL(\W|$)'
syn match ezpDirectiveDeprecated '\v^\s*IntruderAttempts(\W|$)'
syn match ezpDirectiveDeprecated '\v^\s*IntruderReject(\W|$)'
syn match ezpDirectiveDeprecated '\v^\s*IntruderTimeout(\W|$)'

syn keyword ezpDirectiveDeprecatedOption RedirectUnknown
" "}}}

" == Highlighting ================================ "{{{


hi link ezpComment Comment

" Regions
hi link ezpDatabaseTitleDirective Function
hi link ezpDatabaseTitleOption Operator

hi link ezpDatabaseURLDirective Function
hi link ezpDatabaseURLOption Operator

hi link ezpGlobalUsageLimitDirective Identifier
hi link ezpGlobalUsageLimitOption Operator

" Global
hi link ezpDirectiveOption Identifier
hi link ezpDirectiveGlobal Identifier
hi link ezpDirectiveGlobalOption Boolean

" Database
hi link ezpDirectiveDatabaseTitle Function
hi link ezpDirectiveDatabaseURL Function
hi link ezpDirectiveDatabase Type

" Group
hi link ezpDirectiveGroup Identifier

" Deprecated
hi link ezpDirectiveDeprecated Error
hi link ezpDirectiveDeprecatedOption Error
" "}}}

let b:current_syntax = "ezproxy_config"
