<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="\${message(code: '${propertyName}.label', default: '${className}')}" />
        <title><g:message code="default.list.label" args="[entityName]" /></title>
    </head>
    <body>
    <g:if test="\${flash.message}">
        <div class="alert alert-info" role="status">\${flash.message}</div>
    </g:if>
    <div class="portlet light portlet-fit bordered">
        <div class="portlet-title">
            <div class="caption">
                <i class="icon-bubble font-dark"></i>
                <span class="caption-subject font-dark bold uppercase"><g:message code="default.list.label" args="[entityName]" /></span>
            </div>
        </div>
        <div class="portlet-body">
            <div class="table-scrollable">
                <f:table collection="\${${propertyName}List}" />
            </div>
            <div class="pagination">
                <metronic:paginate total="\${${propertyName}Count ?: 0}" />
            </div>
        </div>
    </div>
    </body>
</html>