" Vim syntax file
" Language: ezproxy_shibuser

if exists("b:current_syntax")
  finish
end

syn case ignore

syn match ezpComment /#.*$/

syn keyword ezpOperator not eq ne gt lt
syn match ezpOperator /!/
syn match ezpOperator /=/
syn match ezpOperator /</
syn match ezpOperator />/
syn match ezpOperator /<=/
syn match ezpOperator />=/

syn region ezpString start=/"/ skip=/\\\\\|\\"/ end=/"/

syn match ezpVariable /auth:[:@A-Z0-9\.\-]*/

syn keyword ezpDirective Admin
syn keyword ezpDirective Audit
syn keyword ezpDirective Debug
syn keyword ezpDirective Deny
syn keyword ezpDirective Group
syn keyword ezpDirective Set
syn keyword ezpDirective Count
syn keyword ezpDirective Any

syn keyword ezpConditional If
syn keyword ezpConditional IfMember
syn keyword ezpConditional IfRefused
syn keyword ezpConditional IfTest
syn keyword ezpConditional IfExpired
syn keyword ezpConditional IfUser
syn keyword ezpConditional IfType
syn keyword ezpConditional IfUnauthenticated
syn keyword ezpConditional Unauthenticated
syn keyword ezpConditional Test
syn keyword ezpConditional NoGroups
syn keyword ezpConditional Expired

" == Highlighting ================================ "{{{

hi link ezpComment Comment

hi link ezpDirective Type
hi link ezpParameter Constant

hi link ezpOperator Operator
hi link ezpConditional Conditional
hi link ezpString String
hi link ezpVariable Identifier
" "}}}

let b:current_syntax = "ezproxy_shibuser"
