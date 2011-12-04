

<%@ page import="bog.Account" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'account.label', default: 'Account')}" />
        <title><g:message code="default.create.label" args="[entityName]" /></title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></span>
            <span class="menuButton"><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></span>
        </div>
        <div class="body">
            <h1><g:message code="default.create.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${accountInstance}">
            <div class="errors">
                <g:renderErrors bean="${accountInstance}" as="list" />
            </div>
            </g:hasErrors>
            <g:form action="save" >
                <div class="dialog">
                    <table>
                        <tbody>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="accountNumber"><g:message code="account.accountNumber.label" default="Account Number" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: accountInstance, field: 'accountNumber', 'errors')}">
                                    <g:textField name="accountNumber" value="${accountInstance?.accountNumber}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="balance"><g:message code="account.balance.label" default="Balance" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: accountInstance, field: 'balance', 'errors')}">
                                    <g:textField name="balance" value="${fieldValue(bean: accountInstance, field: 'balance')}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="name"><g:message code="account.name.label" default="Name" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: accountInstance, field: 'name', 'errors')}">
                                    <g:textField name="name" value="${accountInstance?.name}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="status"><g:message code="account.status.label" default="Status" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: accountInstance, field: 'status', 'errors')}">
                                    <g:textField name="status" value="${accountInstance?.status}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="totalIn"><g:message code="account.totalIn.label" default="Total In" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: accountInstance, field: 'totalIn', 'errors')}">
                                    <g:textField name="totalIn" value="${fieldValue(bean: accountInstance, field: 'totalIn')}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="totalOut"><g:message code="account.totalOut.label" default="Total Out" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: accountInstance, field: 'totalOut', 'errors')}">
                                    <g:textField name="totalOut" value="${fieldValue(bean: accountInstance, field: 'totalOut')}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="transfInCount"><g:message code="account.transfInCount.label" default="Transf In Count" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: accountInstance, field: 'transfInCount', 'errors')}">
                                    <g:textField name="transfInCount" value="${fieldValue(bean: accountInstance, field: 'transfInCount')}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="transfOutCount"><g:message code="account.transfOutCount.label" default="Transf Out Count" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: accountInstance, field: 'transfOutCount', 'errors')}">
                                    <g:textField name="transfOutCount" value="${fieldValue(bean: accountInstance, field: 'transfOutCount')}" />
                                </td>
                            </tr>
                        
                        </tbody>
                    </table>
                </div>
                <div class="buttons">
                    <span class="button"><g:submitButton name="create" class="save" value="${message(code: 'default.button.create.label', default: 'Create')}" /></span>
                </div>
            </g:form>
        </div>
    </body>
</html>
