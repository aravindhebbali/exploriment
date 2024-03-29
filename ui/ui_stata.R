tabPanel('STATA', value = 'tab_stata',

    fluidPage(

        fluidRow(
          column(8, align = 'left',
            h4('Upload Data'),
            p('Upload data from a .json file.')
          ),
          column(4, align = 'right',
            actionButton(inputId='uploadstata1', label="Help", icon = icon("question-circle")),
            actionButton(inputId='uploadstata2', label="Demo", icon = icon("video-camera"),
              onclick ="window.open('http://google.com', '_blank')")
          )
        ),
        hr(),

            fluidRow(
                column(12, align = 'center',
                    fileInput(
                      inputId = 'file6',
                      label = 'Choose file:',
                      accept = '.dta'
                    )
                )
            )

        )

)
