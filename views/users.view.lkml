view: users {
  sql_table_name: `hubspot.users` ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: _fivetran_deleted {
    type: yesno
    sql: ${TABLE}._fivetran_deleted ;;
  }
  dimension_group: _fivetran_synced {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}._fivetran_synced ;;
  }
  dimension: email {
    type: string
    sql: ${TABLE}.email ;;
  }
  dimension: primary_team_id {
    type: number
    sql: ${TABLE}.primary_team_id ;;
  }
  dimension: role_id {
    type: number
    sql: ${TABLE}.role_id ;;
  }
  measure: count {
    type: count
    drill_fields: [id, team_user.count]
  }
}
