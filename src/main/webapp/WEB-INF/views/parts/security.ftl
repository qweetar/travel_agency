<#assign
    known = Session.SPRING_SECURITY_CONTEXT??
>

<#if known>
    <#assign
    user = Session.SPRING_SECURITY_CONTEXT.authentication.principal
    name = user.getUsername()
    isAdmin = user.getAuthorities()?seq_contains('ADMIN')
    isUser = user.getAuthorities()?seq_contains('USER')
    >
<#else >
        <#assign
            name = "unkonwn"
            isAdmin = false
            isUser = false
        >
</#if>