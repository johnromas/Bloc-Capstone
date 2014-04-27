function stateDropDownEditor(container, options) {
    $('<input required data-text-field="name" data-value-field="id" data-bind="value:' + options.field + '"/>')
        .appendTo(container)
        .kendoDropDownList({
            autoBind: false,
            dataSource: {
                type: "json",
                transport: {
                    read: {
                        url: "/states",
                        dataType: "json"
                    }
                }
            }
        });
}

function projPhaseDropDownEditor(container, options) {
    $('<input required data-text-field="name" data-value-field="id" data-bind="value:' + options.field + '"/>')
        .appendTo(container)
        .kendoDropDownList({
            autoBind: false,
            dataSource: {
                type: "json",
                transport: {
                    read: {
                        url: "/project_phases",
                        dataType: "json"
                    }
                }
            }
        });
}
function projTypeDropDownEditor(container, options) {
    $('<input required data-text-field="name" data-value-field="id" data-bind="value:' + options.field + '"/>')
        .appendTo(container)
        .kendoDropDownList({
            autoBind: false,
            dataSource: {
                type: "json",
                transport: {
                    read: {
                        url: "/project_types",
                        dataType: "json"
                    }
                }
            }
        });
}

function sachseGroupDropDownEditor(container, options) {
    $('<input required data-text-field="name" data-value-field="id" data-bind="value:' + options.field + '"/>')
        .appendTo(container)
        .kendoDropDownList({
            autoBind: false,
            dataSource: {
                type: "json",
                transport: {
                    read: {
                        url: "/sachse_groups",
                        dataType: "json"
                    }
                }
            }
        });
}

function contractTypeDropDownEditor(container, options) {
    $('<input required data-text-field="name" data-value-field="id" data-bind="value:' + options.field + '"/>')
        .appendTo(container)
        .kendoDropDownList({
            autoBind: false,
            dataSource: {
                type: "json",
                transport: {
                    read: {
                        url: "/contract_types",
                        dataType: "json"
                    }
                }
            }
        });
}


function datePickerEditor(container, options) {
    $('<input required data-text-field="name" data-value-field="id" data-bind="value:' + options.field + '"/>')
        .appendTo(container)
        .kendoDatePicker({
            format: "MM/dd"
        });
}

function jobNameAutoFill(container, options) {
    $('<input required data-text-field="name" data-value-field="id" data-bind="value:' + options.field + '"/>')
        .appendTo(container)
        .kendoAutoComplete({
            dataSource: {
                type: "json",
                transport: {
                    read: {
                        url: "/jobs",
                        dataType: "json"
                    }
                }
            }
        });
}

function buildingNameAutoFill(container, options) {
    $('<input required data-text-field="building" data-value-field="id" data-bind="value:' + options.field + '"/>')
        .appendTo(container)
        .kendoAutoComplete({
            dataSource: {
                type: "json",
                transport: {
                    read: {
                        url: "/jobs",
                        dataType: "json"
                    }
                },
                serverGrouping: true,

            }
        });
}