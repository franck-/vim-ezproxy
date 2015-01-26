" Vim syntax file
" Language: ezproxy_user

if exists("b:current_syntax")
  finish
end

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

syn region ezpInlineCmd start=+::\w*[=,]+ end=+$+ contains=ezpInlineCmdSetting,ezpInlineCmdPre oneline
syn match ezpInlineCmdSetting '[^=,]' contained
syn match ezpInlineCmdPre '^::' contained

syn keyword ezpDirective AcceptGroups
syn keyword ezpDirective Banner
syn keyword ezpDirective BindPassword
syn keyword ezpDirective BindUser
syn keyword ezpDirective DBPassword
syn keyword ezpDirective DBUser
syn keyword ezpDirective DS20
syn keyword ezpDirective DSN
syn keyword ezpDirective Date
syn keyword ezpDirective Debug
syn keyword ezpDirective Deny
syn keyword ezpDirective DisableReferralChasing
syn keyword ezpDirective Expect
syn keyword ezpDirective Group
syn keyword ezpDirective Host
syn keyword ezpDirective IDP13
syn keyword ezpDirective IDP20
syn keyword ezpDirective IfMember
syn keyword ezpDirective IfRefused
syn keyword ezpDirective LDAPV2
syn keyword ezpDirective LoginLocation
syn keyword ezpDirective LoginPassword
syn keyword ezpDirective LoginURL
syn keyword ezpDirective LoginUsername
syn keyword ezpDirective MD5
syn keyword ezpDirective MemberAttribute
syn keyword ezpDirective MemberUser
syn keyword ezpDirective OverviewSubmenu
syn keyword ezpDirective Parameter
syn keyword ezpDirective Profile
syn keyword ezpDirective ProfileSubmenu
syn keyword ezpDirective SIP
syn keyword ezpDirective SIP2
syn keyword ezpDirective SQL
syn keyword ezpDirective Send
syn keyword ezpDirective ServiceValidateURL
syn keyword ezpDirective Set
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
syn keyword ezpDirective UseSearchFilterWhenReadingAttributes
syn keyword ezpDirective WAYF13

syn keyword ezpConditional Expired
syn keyword ezpConditional If
syn keyword ezpConditional IfExpired
syn keyword ezpConditional IfMember
syn keyword ezpConditional IfRefused
syn keyword ezpConditional IfTest
syn keyword ezpConditional IfType
syn keyword ezpConditional IfUnauthenticated
syn keyword ezpConditional IfUser
syn keyword ezpConditional NoGroups
syn keyword ezpConditional Test
syn keyword ezpConditional Unauthenticated

syn keyword ezpParameter DSURL
syn keyword ezpParameter EZproxyEntityID
syn keyword ezpParameter IDPEntityID
syn keyword ezpParameter WAYFURL

" == Highlighting ================================ "{{{

hi link ezpComment Comment

hi link ezpBlockBegin Function
hi link ezpBlockEnd Function
hi link ezpDirective Type
hi link ezpParameter Constant

hi link ezpOperator Operator
hi link ezpConditional Conditional
hi link ezpString String

hi link ezpInlineCmd Standard
hi link ezpInlineCmdPre Function
hi link ezpInlineCmdSetting Identifier
" "}}}

let b:current_syntax = "ezproxy_user"
