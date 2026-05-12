{%macro seasons(x)%}
Case when month({{x}}) in (12, 1, 2) THEN 'WINTER'
     when month({{x}}) in (3, 4, 5) THEN 'SPRING'
     when month({{x}}) in (6, 7, 8) THEN 'SUMMER'
     else 'AUTUMN'
END
{%endmacro%}