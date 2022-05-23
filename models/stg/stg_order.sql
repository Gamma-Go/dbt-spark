with source as (
    select * from public.t_order
),

renamed as (
    select id as order_id,
    member_id,
    real_amount,
    status,
    gmt_created,
    from source
)

select * from renamed