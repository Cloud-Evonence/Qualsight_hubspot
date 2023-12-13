view: association_type {
  sql_table_name: `hubspot.association_type` ;;
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
  dimension: category {
    type: string
    sql: ${TABLE}.category ;;
  }
  dimension: from_object_type {
    type: string
    sql: ${TABLE}.from_object_type ;;
  }
  dimension: label {
    type: string
    sql: ${TABLE}.label ;;
  }
  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }
  dimension: to_object_type {
    type: string
    sql: ${TABLE}.to_object_type ;;
  }
  measure: count {
    type: count
    drill_fields: [id, name]
  }
}
