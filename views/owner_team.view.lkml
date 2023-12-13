view: owner_team {
  sql_table_name: `hubspot.owner_team` ;;

  dimension: _fivetran_deleted {
    type: yesno
    sql: ${TABLE}._fivetran_deleted ;;
  }
  dimension_group: _fivetran_synced {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}._fivetran_synced ;;
  }
  dimension: is_team_primary {
    type: yesno
    sql: ${TABLE}.is_team_primary ;;
  }
  dimension: owner_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.owner_id ;;
  }
  dimension: team_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.team_id ;;
  }
  measure: count {
    type: count
    drill_fields: [owner.owner_id, owner.last_name, owner.first_name, team.name, team.id]
  }
}
