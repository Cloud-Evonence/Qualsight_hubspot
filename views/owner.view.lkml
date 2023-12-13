view: owner {
  sql_table_name: `hubspot.owner` ;;
  drill_fields: [owner_id]

  dimension: owner_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.owner_id ;;
  }
  dimension_group: _fivetran_synced {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}._fivetran_synced ;;
  }
  dimension: active_user_id {
    type: number
    sql: ${TABLE}.active_user_id ;;
  }
  dimension_group: created {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.created_at ;;
  }
  dimension: email {
    type: string
    sql: ${TABLE}.email ;;
  }
  dimension: first_name {
    type: string
    sql: ${TABLE}.first_name ;;
  }
  dimension: is_active {
    type: yesno
    sql: ${TABLE}.is_active ;;
  }
  dimension: last_name {
    type: string
    sql: ${TABLE}.last_name ;;
  }
  dimension_group: updated {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.updated_at ;;
  }
  measure: count {
    type: count
    drill_fields: [owner_id, last_name, first_name, deal.count, owner_team.count]
  }
}
