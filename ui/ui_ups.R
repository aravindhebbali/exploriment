tabPanel("Uploads", value = "tab_uploads",

  fluidPage(
  	
  	fluidRow(
  		column(6, align = "right",
  			br(),
  			h4('File Type:')
  		),
  		column(6, align = "left",
  			selectInput(
  				inputId = "file_type",
  				label = "",
  				choices = c('csv', 'excel', 'json', 'spss', 'stata', 'sas'),
  				selected = 'csv', 
  				width = '100px',
  			)
  		)
  	),

    fluidRow(
    	column(12,
    		uiOutput('file_heading'),
    		uiOutput('file_hr'),
    		uiOutput('file_types'),
    		uiOutput('file_ext1'),
    		uiOutput('file_ext2'),
    		uiOutput('file_ext3')
    	)
    )
  )

)