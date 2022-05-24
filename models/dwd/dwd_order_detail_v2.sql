with orders as (
    select * from {{ref('stg_order')}}
),

member as (
    select * from {{ref('stg_member')}}
),

payment as (
    select * from {{ref('stg_payment')}}
),

dwd_order_detail as (
    select
        o.order_id,
        o.member_id,
        o.gmt_created,
        m.name,
        m.address,
        p.payment_id,
        o.real_amount,
        p.amount as payment_amount,
        p.gmt_created as payment_gmt_created
    from orders o
    left join member m on o.member_id = m.member_id
    left join payment p on o.order_id = p.order_id
)

select * from dwd_order_detail