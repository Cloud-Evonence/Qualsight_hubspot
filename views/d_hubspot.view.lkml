
view: d_hubspot {
  derived_table: {
    sql: (With Event as (Select 
      date(created) as Date,
      email_campaign_id,
      id as Emaileventid,
      recipient,
      Case 
      when type = "SENT" and filtered_event is null then "SENT"
      when type = "DELIVERED" and filtered_event is null then "DELIVERED"
      when type = "OPEN" and filtered_event is true then "OPEN"
      when type = "CLICK" and filtered_event is true then "CLICK"
      when type = "BOUNCE" and filtered_event is null then "BOUNCE"
      when type = "DROPPED" and filtered_event is null then "NOT SENT"
      when type = "STATUSCHANGE" and filtered_event is null then "UNSUBSCRIBE"
      End as Status,
      from `cohesive-feat-403618.hubspot.email_event`
      ),
      
      
      Campaign as (Select distinct id as campaignid,name, subject, type as Campaigntype,   
        case when lower(name) like "%ebook%" then "Ebook"
      when lower(name) like "%newsletter%" then "Newsletter"
      when lower(name) like "%survey%" then "Survey"
      when lower(name) like "%webinar%" then "Webinar"
      when lower(name) like "%review%" then "Review"
      when lower(name) like "%event%" then "Event"
      when lower(name) like "%thank%" then "Thank You"
      when lower(name) like "%product launch%" then "Product Launch"
      when lower(name) like "%automated%" then "Automated"
      when lower(name) like "%case study%" then "Case Study"
      when lower(name) like "%guide%" then "Guide"
      when lower(name) like "%follow up%" then "Follow Up"
      Else "Others"
      end as EmailGroup
        from `cohesive-feat-403618.hubspot.email_campaign`)
      
      Select A.*,B.*
      from Event A
      left join Campaign B
      on A.email_campaign_id = B.campaignid) ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: date {
    type: date
    datatype: date
    sql: ${TABLE}.Date ;;
  }

  dimension: email_campaign_id {
    type: number
    sql: ${TABLE}.email_campaign_id ;;
  }

  dimension: emaileventid {
    type: string
    sql: ${TABLE}.Emaileventid ;;
  }

  dimension: recipient {
    type: string
    sql: ${TABLE}.recipient ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.Status ;;
  }

  dimension: campaignid {
    type: number
    sql: ${TABLE}.campaignid ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: subject {
    type: string
    sql: ${TABLE}.subject ;;
  }

  dimension: campaigntype {
    type: string
    sql: ${TABLE}.Campaigntype ;;
  }

  dimension: email_group {
    type: string
    sql: ${TABLE}.EmailGroup ;;
  }

  set: detail {
    fields: [
        date,
	email_campaign_id,
	emaileventid,
	recipient,
	status,
	campaignid,
	name,
	subject,
	campaigntype,
	email_group
    ]
  }
}
