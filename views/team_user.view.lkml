view: team_user {
  sql_table_name: `hubspot.team_user` ;;

  dimension: _fivetran_deleted {
    type: yesno
    sql: ${TABLE}._fivetran_deleted ;;
  }
  dimension_group: _fivetran_synced {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}._fivetran_synced ;;
  }
  dimension: is_secondary_user {
    type: yesno
    sql: ${TABLE}.is_secondary_user ;;
  }
  dimension: team_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.team_id ;;
  }
  dimension: user_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.user_id ;;
  }
  measure: count {
    type: count
    drill_fields: [users.id, team.name, team.id]
  }
}
