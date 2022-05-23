with source as (
    select * from public.t_payment
),

renamed as (
    select id as payment_id,
    order_id,
    payment_method,
    amount,
    gmt_created,
    from source
)

select * from renamed