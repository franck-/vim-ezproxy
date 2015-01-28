" Vim syntax file
" Language: ezproxy_user

if exists("b:current_syntax")
  finish
end

setlocal iskeyword+=-
syn case ignore

syn match ezpComment '#.*$'

syn keyword ezpOperator not eq ne gt lt
syn match ezpOperator /!/
syn match ezpOperator /=/
syn match ezpOperator /</
syn match ezpOperator />/
syn match ezpOperator /<=/
syn match ezpOperator />=/

syn region ezpString start=+"+ skip=+\\\\\|\\"+ end=+"+

syn match ezpBlockBegin '^::\w*\s*'
syn match ezpBlockEnd '^/\w*\s*$'


syn region ezpRegionAudit start=/\v\s*Audit/ end=/\v(;|$)/ contains=ezpAuditDirective,ezpAuditOption oneline
syn keyword ezpAuditDirective Audit contained
syn keyword ezpAuditOption -Expr contained

syn region ezpRegionBindPassword start=/\v\s*BindPassword/ end=/\v(;|$)/ contains=ezpBindPasswordDirective,ezpBindPasswordOption oneline
syn keyword ezpBindPasswordDirective BindPassword contained
syn keyword ezpBindPasswordOption -Obscure contained

syn region ezpRegionCourse start=/\v\s*Course/ end=/\v(;|$)/ contains=ezpCourseDirective,ezpCourseOption oneline
syn keyword ezpCourseDirective Course contained
syn keyword ezpCourseOption -Literal contained
syn match ezpCourseOption /\v\W\Role=/ contained

syn region ezpRegionDeny start=/\v\s*Deny/ end=/\v(;|$)/ contains=ezpDenyDirective,ezpDenyOption oneline concealends
syn keyword ezpDenyDirective Deny contained
syn keyword ezpDenyOption -Inline -NoAudit -Redirect contained

syn region ezpRegionIfCS start=/\v\s*If(Auth|City|Country|Header|Language|Password|Referer|Region|URL|User)/ end=/\v(;|$)/ contains=ezpIfCSDirective,ezpIfCSOption oneline
syn keyword ezpIfCSDirective IfAuth IfCity IfCountry IfHeader IfLanguage IfPassword IfReferer IfRegion IfURL IfUser contained
syn keyword ezpIfCSOption -CS -RE contained

syn region ezpRegionIfTest start=/\v\s*IfTest/ end=/\v(;|$)/ contains=ezpIfTestDirective,ezpIfTestOption oneline
syn keyword ezpIfTestDirective IfTest contained
syn keyword ezpIfTestOption -Wild contained

syn region ezpRegionMsg start=/\v\s*Msg/ end=/\v(;|$)/ contains=ezpMsgDirective,ezpMsgOption oneline
syn keyword ezpMsgDirective Msg contained
syn keyword ezpMsgOption -expr contained

syn region ezpRegionPortal start=/\v\s*Portal/ end=/\v(;|$)/ contains=ezpPortalDirective,ezpPortalOption oneline
syn keyword ezpPortalDirective Portal contained
syn match ezpPortalOption /\v\W\Role=/ contained

syn region ezpRegionUser start=/\v\s*User/ end=/\v(;|$)/ contains=ezpUserDirective,ezpUserOption oneline
syn keyword ezpUserDirective User contained
syn keyword ezpUserOption -Literal contained
syn match ezpUserOption /\v\W\Role=/ contained

syn region ezpRegionShibURL start=/\v\s*(DS20|WAYF13)/ end=/\v(;|$)/ contains=ezpShibURLDirective,ezpShibURLOption oneline
syn keyword ezpShibURLDirective DS20 WAYF13 contained
syn match ezpShibURLOption /\v\W\EntityID=/ contained

syn region ezpInlineCmd start=+::\w*[=,]+ end=+$+ contains=ezpInlineCmdSetting,ezpInlineCmdPre oneline
syn match ezpInlineCmdSetting '[^=,]' contained
syn match ezpInlineCmdPre '^::' contained

syn keyword ezpDirective AcceptGroups
syn keyword ezpDirective Admin
syn keyword ezpDirective Allow
syn keyword ezpDirective Banner
syn keyword ezpDirective BindUser
syn keyword ezpDirective DBPassword
syn keyword ezpDirective DBUser
syn keyword ezpDirective DSN
syn keyword ezpDirective Date
syn keyword ezpDirective Debug
syn keyword ezpDirective DisableReferralChasing
syn keyword ezpDirective DocsCustom
syn keyword ezpDirective Expect
syn keyword ezpDirective Group
syn keyword ezpDirective Host
syn keyword ezpDirective IDP13
syn keyword ezpDirective IDP20
syn keyword ezpDirective IfMember
syn keyword ezpDirective IfRefused
syn keyword ezpDirective Ignore
syn keyword ezpDirective LDAPV2
syn keyword ezpDirective LogSPU
syn keyword ezpDirective LoginLocation
syn keyword ezpDirective LoginPassword
syn keyword ezpDirective LoginURL
syn keyword ezpDirective LoginUsername
syn keyword ezpDirective MD5
syn keyword ezpDirective MemberAttribute
syn keyword ezpDirective MemberUser
syn keyword ezpDirective OverviewSubmenu
syn keyword ezpDirective Parameter
syn keyword ezpDirective PartialNameMatch
syn keyword ezpDirective Password
syn keyword ezpDirective Profile
syn keyword ezpDirective ProfileSubmenu
syn keyword ezpDirective SIP
syn keyword ezpDirective SIP2
syn keyword ezpDirective SQL
syn keyword ezpDirective Send
syn keyword ezpDirective ServiceValidateURL
syn keyword ezpDirective Set
syn keyword ezpDirective SourceIP
syn keyword ezpDirective Stop
syn keyword ezpDirective TerminalInstitution
syn keyword ezpDirective TerminalPassword
syn keyword ezpDirective TestWithBind
syn keyword ezpDirective TestWithUser
syn keyword ezpDirective TimeOffset
syn keyword ezpDirective TimeValid
syn keyword ezpDirective Timeout
syn keyword ezpDirective Type
syn keyword ezpDirective URL
syn keyword ezpDirective Unauthenticated
syn keyword ezpDirective Unknown
syn keyword ezpDirective UseSearchFilterWhenReadingAttributes
syn keyword ezpDirective UsrVar

syn keyword ezpConditional If
syn keyword ezpConditional IfAfter
syn keyword ezpConditional IfAuthenticated
syn keyword ezpConditional IfBefore
syn keyword ezpConditional IfDay
syn keyword ezpConditional IfExpired
syn keyword ezpConditional IfGroupMember
syn keyword ezpConditional IfHttp
syn keyword ezpConditional IfHttps
syn keyword ezpConditional IfIP
syn keyword ezpConditional IfInvalid
syn keyword ezpConditional IfMember
syn keyword ezpConditional IfMonth
syn keyword ezpConditional IfNoGroups
syn keyword ezpConditional IfRefused
syn keyword ezpConditional IfTime
syn keyword ezpConditional IfType
syn keyword ezpConditional IfUnauthenticated
syn keyword ezpConditional IfUsrVar
syn keyword ezpConditional IfYear

syn keyword ezpFunction ActiveGroupMember
syn keyword ezpFunction ActiveSession
syn keyword ezpFunction All
syn keyword ezpFunction AllRE
syn keyword ezpFunction AllWild
syn keyword ezpFunction Any
syn keyword ezpFunction AnyRE
syn keyword ezpFunction AnyWild
syn keyword ezpFunction Authenticated
syn keyword ezpFunction Chr
syn keyword ezpFunction City
syn keyword ezpFunction Coalesce
syn keyword ezpFunction Count
syn keyword ezpFunction Country
syn keyword ezpFunction CountryName
syn keyword ezpFunction DateTime
syn keyword ezpFunction Expired
syn keyword ezpFunction FormatDateTime
syn keyword ezpFunction GroupMember
syn keyword ezpFunction HTMLEncode
syn keyword ezpFunction Hash
syn keyword ezpFunction IP
syn keyword ezpFunction Index
syn keyword ezpFunction Invalid
syn keyword ezpFunction Join
syn keyword ezpFunction LTrim
syn keyword ezpFunction Left
syn keyword ezpFunction Length
syn keyword ezpFunction Lower
syn keyword ezpFunction Mid
syn keyword ezpFunction NoActiveGroups
syn keyword ezpFunction NoGroups
syn keyword ezpFunction Null
syn keyword ezpFunction Ord
syn keyword ezpFunction ParseName
syn keyword ezpFunction QueryStringPass
syn keyword ezpFunction REReplace
syn keyword ezpFunction RTrim
syn keyword ezpFunction Refused
syn keyword ezpFunction Region
syn keyword ezpFunction Right
syn keyword ezpFunction Test
syn keyword ezpFunction URLEncode
syn keyword ezpFunction Unauthenticated
syn keyword ezpFunction Upper
syn keyword ezpFunction UserFile
syn keyword ezpFunction UserString

" == Highlighting ================================ "{{{

hi link ezpComment Comment

hi link ezpAuditDirective Identifier
hi link ezpAuditOption Constant

hi link ezpBindPasswordDirective Identifier
hi link ezpBindPasswordOption Constant

hi link ezpCourseDirective Identifier
hi link ezpCourseOption Constant

hi link ezpDenyDirective Identifier
hi link ezpDenyOption Constant

hi link ezpIfCSDirective Conditional
hi link ezpIfCSOption Constant

hi link ezpIfTestDirective Conditional
hi link ezpIfTestOption Constant

hi link ezpMsgDirective Identifier
hi link ezpMsgOption Constant

hi link ezpPortalDirective Identifier
hi link ezpPortalOption Constant

hi link ezpShibURLDirective Identifier
hi link ezpShibURLOption Constant

hi link ezpUserDirective Identifier
hi link ezpUserOption Constant


hi link ezpBlockBegin Structure
hi link ezpBlockEnd Structure
hi link ezpDirective Identifier

hi link ezpOperator Operator
hi link ezpConditional Conditional
hi link ezpString String
hi link ezpFunction Function

hi link ezpInlineCmd Standard
hi link ezpInlineCmdPre Function
hi link ezpInlineCmdSetting Identifier
" "}}}

let b:current_syntax = "ezproxy_user"
