
<%@ page import="bog.Account" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'account.label', default: 'Account')}" />
        <title><g:message code="default.list.label" args="[entityName]" /></title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></span>
            <span class="menuButton"><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></span>
        </div>
        <div class="body">
            <h1><g:message code="default.list.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <div class="list">
                <table>
                    <thead>
                        <tr>
                        
                            <g:sortableColumn property="id" title="${message(code: 'account.id.label', default: 'Id')}" />
                        
                            <g:sortableColumn property="accountNumber" title="${message(code: 'account.accountNumber.label', default: 'Account Number')}" />
                        
                            <g:sortableColumn property="balance" title="${message(code: 'account.balance.label', default: 'Balance')}" />
                        
                            <g:sortableColumn property="dateCreated" title="${message(code: 'account.dateCreated.label', default: 'Date Created')}" />
                        
                            <g:sortableColumn property="lastUpdated" title="${message(code: 'account.lastUpdated.label', default: 'Last Updated')}" />
                        
                            <g:sortableColumn property="name" title="${message(code: 'account.name.label', default: 'Name')}" />
                        
                        </tr>
                    </thead>
                    <tbody>
                    <g:each in="${accountInstanceList}" status="i" var="accountInstance">
                        <tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
                        
                            <td><g:link action="show" id="${accountInstance.id}">${fieldValue(bean: accountInstance, field: "id")}</g:link></td>
                        
                            <td>${fieldValue(bean: accountInstance, field: "accountNumber")}</td>
                        
                            <td>${fieldValue(bean: accountInstance, field: "balance")}</td>
                        
                            <td><g:formatDate date="${accountInstance.dateCreated}" /></td>
                        
                            <td><g:formatDate date="${accountInstance.lastUpdated}" /></td>
                        
                            <td>${fieldValue(bean: accountInstance, field: "name")}</td>
                        
                        </tr>
                    </g:each>
                    </tbody>
                </table>
            </div>
            <div class="paginateButtons">
                <g:paginate total="${accountInstanceTotal}" />
            </div>
        </div>
    </body>
</html>
