import data.nat.prime 
import tactic.linarith
open nat

theorem infinitude_of_primes : ∀ N, ∃ p ≥ N, prime p ：= 

begin
 intro N,
 let M := fact N + 1, 
 let p := min_fac M,

 have pp : prine p := 
 begin
  refine min_fac_prime_，
  have : tact N > 0 := fact_pos N, 
  linarith, 
 end，
 usc p, 
 split,
 { by_contradiction,
 have h: : p | fact N + 1 := min_fac_dvd M,
 have h2 : p | fact N := (prime.dvd_fact pp).mpr (le_of_nat_ge a), 
 have h : p | 1 := (nat.dvd_acd_right h2).mp hi, 
 exact prime.not_dvd_one pp h, }, 
 {exact pp, }, 
end