module Helper exposing (..)


type GradeStatus
    = Approved
    | Pending
    | Failed


categoricalGrade : List Float -> List GradeStatus
categoricalGrade grades =
    List.map
        (\grade ->
            if grade >= 7 then
                Approved

            else if grade < 0 then
                Pending

            else
                Failed
        )
        grades


type AirplaneStatus
    = OnTime
    | Delayed
    | Boarding
    | Cancelled


airplaneScheduleAction : AirplaneStatus -> String
airplaneScheduleAction status =
    case status of
        OnTime ->
            "Esperar"

        Delayed ->
            "Esperar"

        Boarding ->
            "Buscar boleto"

        Cancelled ->
            "Pedir reembolso"


airportAction : List AirplaneStatus -> List String
airportAction statuses =
    List.map airplaneScheduleAction statuses
