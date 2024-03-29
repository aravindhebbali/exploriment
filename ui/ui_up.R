tabPanel('Upload', value = 'tab_upload', icon = icon('database'),

    navlistPanel(id = 'navlist_up',
        well = FALSE,
        widths = c(2, 10),

        source('ui/ui_upload.R', local = TRUE)[[1]],
        source('ui/ui_excel.R', local = TRUE)[[1]],
        source('ui/ui_json.R', local = TRUE)[[1]],
        source('ui/ui_stata.R', local = TRUE)[[1]],
        source('ui/ui_spss.R', local = TRUE)[[1]],
        source('ui/ui_sas.R', local = TRUE)[[1]]

    )
)
