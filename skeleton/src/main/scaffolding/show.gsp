<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="\${message(code: '${propertyName}.label', default: '${className}')}" />
        <title><g:message code="default.show.label" args="[entityName]" /></title>
    </head>
    <body>
    <g:if test="\${flash.message}">
        <div class="alert alert-info" role="status">\${flash.message}</div>
    </g:if>
    <div class="portlet light bordered">
        <div class="portlet-title">
            <div class="caption">
                <i class="icon-social-dribbble font-blue-sharp"></i>
                <span class="caption-subject font-blue-sharp bold uppercase"><g:message code="default.show.label" args="[entityName]" /></span>
            </div>
        </div>
        <div class="portlet-body">
            <f:display bean="${propertyName}" />
            <div class="form-actions">
                <g:form resource="\${this.${propertyName}}" method="DELETE">
                    <g:link class="btn btn-default" action="edit" resource="\${this.${propertyName}}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
                    <input class="btn btn-danger" type="submit" value="\${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('\${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
                </g:form>
            </div>
        </div>

    </div>
    </body>
</html>
