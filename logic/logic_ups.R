output$file_heading <- renderUI({

	if (input$file_type == 'csv') {

		fluidRow(

      column(8, align = 'left',
        h4('Upload Delimited Files'),
        p('Upload data from a comma or tab separated file.')
      ),

      column(4, align = 'right',
        actionButton(inputId='uploadlink1', label="Help", icon = icon("question-circle")),
        actionButton(inputId='uploadlink2', label="Demo", icon = icon("video-camera"),
          onclick ="window.open('http://google.com', '_blank')")
      )
    )

  } else if (input$file_type == 'excel') {

  	fluidRow(
      column(8, align = 'left',
        h4('Upload Excel Files'),
        p('Upload data from a .xls or .xlsx file.')
      ),
      column(4, align = 'right',
        actionButton(inputId='uploadexcel1', label="Help", icon = icon("question-circle")),
        actionButton(inputId='uploadexcel2', label="Demo", icon = icon("video-camera"),
              onclick ="window.open('http://google.com', '_blank')")
      )
    )

  } else if (input$file_type == 'json') {

  	fluidRow(
      column(8, align = 'left',
        h4('Upload JSON Files'),
        p('Upload data from a .json file.')
      ),
      column(4, align = 'right',
        actionButton(inputId='uploadjson1', label="Help", icon = icon("question-circle")),
        actionButton(inputId='uploadjson2', label="Demo", icon = icon("video-camera"),
              onclick ="window.open('http://google.com', '_blank')")
      )
    )

  } else if (input$file_type == 'spss') {

  	fluidRow(
      column(8, align = 'left',
        h4('Upload SPSS Files'),
        p('Upload data from a .sav file.')
      ),
      column(4, align = 'right',
        actionButton(inputId='uploadspss1', label="Help", icon = icon("question-circle")),
        actionButton(inputId='uploadspss2', label="Demo", icon = icon("video-camera"),
              onclick ="window.open('http://google.com', '_blank')")
      )
    )

  } else if (input$file_type == 'stata') {

  	fluidRow(
      column(8, align = 'left',
        h4('Upload STATA Files'),
        p('Upload data from a .dta file.')
      ),
      column(4, align = 'right',
        actionButton(inputId='uploadstata1', label="Help", icon = icon("question-circle")),
        actionButton(inputId='uploadstata2', label="Demo", icon = icon("video-camera"),
              onclick ="window.open('http://google.com', '_blank')")
      )
    )

  } else if (input$file_type == 'sas') {

  	fluidRow(
      column(8, align = 'left',
        h4('Upload SAS Files'),
        p('Upload data from a .sas7bdat file.')
      ),
      column(4, align = 'right',
        actionButton(inputId='uploadsas1', label="Help", icon = icon("question-circle")),
        actionButton(inputId='uploadsas2', label="Demo", icon = icon("video-camera"),
              onclick ="window.open('http://google.com', '_blank')")
      )
    )

  }

})

output$file_hr <- renderUI({

	hr()

})

output$file_types <- renderUI({

	if (input$file_type == 'csv') {

		fluidRow(
      column(12, align = 'center',
        fileInput('file', 'Data Set:',
                        accept = c('text/csv', '.csv',
                            'text/comma-separated-values,text/plain')
        )
      )
    )

	} else if (input$file_type == 'excel') {

		fluidRow(
      column(12, align = 'center',
        fileInput(
          inputId = 'file',
          label = 'Choose file:',
          accept = c('.xls', '.xlsx')
        )
      )
    )

	} else if (input$file_type == 'json') {

		fluidRow(
      column(12, align = 'center',
        fileInput(
          inputId = 'file',
          label = 'Choose file:',
          accept = '.json'
        )
      )
    )
		
	} else if (input$file_type == 'spss') {

		fluidRow(
      column(12, align = 'center',
        fileInput(
          inputId = 'file',
          label = 'Choose file:',
          accept = '.sav'
        )
      )
    )
		
	} else if (input$file_type == 'stata') {
		
		fluidRow(
      column(12, align = 'center',
        fileInput(
          inputId = 'file',
          label = 'Choose file:',
          accept = '.dta'
        )
      )
    )

	} else if (input$file_type == 'sas') {
		
		fluidRow(
      column(12, align = 'center',
        fileInput(
          inputId = 'file',
          label = 'Choose file:',
          accept = '.sas7bdat'
        )
      )
    )

	}


})

output$file_ext1 <- renderUI({

	if (input$file_type == 'csv') {

		fluidRow(
      column(12, align = 'center',  checkboxInput('header', 'Header', TRUE))
    )

	} else if (input$file_type == 'excel') {

		 fluidRow(
      column(12, align = 'center',  
        numericInput(
          inputId = 'sheet_n',
          label = 'Sheet',
          value = 1,
          min = 1,
          step = 1
        )  
      )
    )

	} else {

		NULL
	}

})
    
    
output$file_ext2 <- renderUI({

	if (input$file_type == 'csv') {

		fluidRow(
      column(12, align = 'center',
        selectInput('sep', 'Separator',
          choices = c('Comma' = ',', 'Semicolon' = ';', 'Tab' = '\t'), 
          selected = ','
        )
      )
    )

	} else {

		NULL

	}

})

output$file_ext3 <- renderUI({

	if (input$file_type == 'csv') {

		fluidRow(
      column(12, align = 'center',
        selectInput('quote', 'Quote',
          choices = c('None' = '', 'Double Quote' = '"', 'Single Quote' = "'"), 
          selected = ''
        )
      )
    )
		
	}

})
    

