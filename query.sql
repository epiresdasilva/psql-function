with payload as (
    select (tabela.coluna->>'branch')::integer as branch, 
            (tabela.coluna->>'number')::integer as number 
    from (select '{}'::json as coluna) as tabela
)
select array_to_json(array_agg(row_to_json(account))) 
from account 
join payload on account.branch = payload.branch and account.number = payload.number;