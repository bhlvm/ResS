<%@ page import="user.AdminUser" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'adminUser.label', default: 'AdminUser')}" />
    <title>Sign Up</title>
</head>
<body>
<div class="nav" role="navigation">
    <ul>
        <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
        <li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
    </ul>
</div>
<div id="#create-adminUser" class="content scaffold-create" role="main">
    <h1>Create User</h1>
    <g:if test="${flash.message}">
        <div class="message" role="status">${flash.message}</div>
    </g:if>
    <g:hasErrors bean="${adminUserInstance}">
        <ul class="errors" role="alert">
            <g:eachError bean="${adminUserInstance}" var="error">
                <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
            </g:eachError>
        </ul>
    </g:hasErrors>
    <g:form action="save" >
        <fieldset class="form">
            <g:render template="form"/>
        </fieldset>
        <fieldset class="buttons">
            <g:submitButton name="submit" class="save" value="${message(code: 'default.button.create.label', default: 'Submit')}" />
        </fieldset>
    </g:form>
</div>
</body>
</html>
