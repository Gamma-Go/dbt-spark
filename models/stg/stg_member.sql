with source as (
    select * from public.t_member
),

renamed as (
    select id as member_id,
    name,
    address
    from source
)

select * from renamed