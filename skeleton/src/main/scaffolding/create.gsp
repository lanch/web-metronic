<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main"/>
    <g:set var="entityName" value="\${message(code: '${propertyName}.label', default: '${className}')}"/>
    <title><g:message code="default.create.label" args="[entityName]"/></title>
</head>

<body>
<h1 class="page-title">
    <g:message code="default.create.label" args="[entityName]"/>
</h1>
<g:if test="\${flash.message}">
    <div class="alert alert-info" role="status">\${flash.message}</div>
</g:if>
<g:hasErrors bean="\${this.${propertyName}}">
    <ul class="alert alert-danger" role="alert">
        <g:eachError bean="\${this.${propertyName}}" var="error">
            <li <g:if test="\${error in org.springframework.validation.FieldError}">data-field-id="\${error.field}"</g:if>>
                <g:message error="\${error}"/>
            </li>
        </g:eachError>
    </ul>
</g:hasErrors>
<div class="portlet light bordered" role="main">
    <div class="portlet-title">
        <div class="caption">
            <i class="icon-book-open font-dark"></i>
            <span class="caption-subject font-dark sbold uppercase">
                <g:message code="default.form.label" args="[entityName]"/></span>
        </div>
    </div>

    <div class="portlet-body form">
        <g:form action="save" class="form-horizontal">
            <div class="form-body">
                <f:all bean="${propertyName}"/>
            </div>

            <div class="form-actions">
                <div class="row">
                    <div class="col-md-offset-3 col-md-9">
                        <g:submitButton name="create" class="btn btn-default" value="\${message(code: 'default.button.create.label', default: 'Create')}"/>
                    </div>
                </div>
            </div>
        </g:form>
    </div>
</div>
</body>
</html>
