with
    owid_energy_data as (
        select
            country,
            year,
            iso_code,
            population,
            gdp,
            biofuel_cons_change_pct,
            biofuel_cons_change_twh,
            biofuel_cons_per_capita,
            biofuel_consumption,
            biofuel_elec_per_capita,
            biofuel_electricity,
            biofuel_share_elec,
            biofuel_share_energy,
            carbon_intensity_elec,
            coal_cons_change_pct,
            coal_cons_change_twh,
            coal_cons_per_capita,
            coal_consumption,
            coal_elec_per_capita,
            coal_electricity,
            coal_prod_change_pct,
            coal_prod_change_twh,
            coal_prod_per_capita,
            coal_production,
            coal_share_elec,
            coal_share_energy,
            electricity_demand,
            electricity_generation,
            electricity_share_energy,
            energy_cons_change_pct,
            energy_cons_change_twh,
            energy_per_capita,
            energy_per_gdp,
            fossil_cons_change_pct,
            fossil_cons_change_twh,
            fossil_elec_per_capita,
            fossil_electricity,
            fossil_energy_per_capita,
            fossil_fuel_consumption,
            fossil_share_elec,
            fossil_share_energy,
            gas_cons_change_pct,
            gas_cons_change_twh,
            gas_consumption,
            gas_elec_per_capita,
            gas_electricity,
            gas_energy_per_capita,
            gas_prod_change_pct,
            gas_prod_change_twh,
            gas_prod_per_capita,
            gas_production,
            gas_share_elec,
            gas_share_energy,
            greenhouse_gas_emissions,
            hydro_cons_change_pct,
            hydro_cons_change_twh,
            hydro_consumption,
            hydro_elec_per_capita,
            hydro_electricity,
            hydro_energy_per_capita,
            hydro_share_elec,
            hydro_share_energy,
            low_carbon_cons_change_pct,
            low_carbon_cons_change_twh,
            low_carbon_consumption,
            low_carbon_elec_per_capita,
            low_carbon_electricity,
            low_carbon_energy_per_capita,
            low_carbon_share_elec,
            low_carbon_share_energy,
            net_elec_imports,
            net_elec_imports_share_demand,
            nuclear_cons_change_pct,
            nuclear_cons_change_twh,
            nuclear_consumption,
            nuclear_elec_per_capita,
            nuclear_electricity,
            nuclear_energy_per_capita,
            nuclear_share_elec,
            nuclear_share_energy,
            oil_cons_change_pct,
            oil_cons_change_twh,
            oil_consumption,
            oil_elec_per_capita,
            oil_electricity,
            oil_energy_per_capita,
            oil_prod_change_pct,
            oil_prod_change_twh,
            oil_prod_per_capita,
            oil_production,
            oil_share_elec,
            oil_share_energy,
            other_renewable_consumption,
            other_renewable_electricity,
            other_renewable_exc_biofuel_electricity,
            other_renewables_cons_change_pct,
            other_renewables_cons_change_twh,
            other_renewables_elec_per_capita,
            other_renewables_elec_per_capita_exc_biofuel,
            other_renewables_energy_per_capita,
            other_renewables_share_elec,
            other_renewables_share_elec_exc_biofuel,
            other_renewables_share_energy,
            per_capita_electricity,
            primary_energy_consumption,
            renewables_cons_change_pct,
            renewables_cons_change_twh,
            renewables_consumption,
            renewables_elec_per_capita,
            renewables_electricity,
            renewables_energy_per_capita,
            renewables_share_elec,
            renewables_share_energy,
            solar_cons_change_pct,
            solar_cons_change_twh,
            solar_consumption,
            solar_elec_per_capita,
            solar_electricity,
            solar_energy_per_capita,
            solar_share_elec,
            solar_share_energy,
            wind_cons_change_pct,
            wind_cons_change_twh,
            wind_consumption,
            wind_elec_per_capita,
            wind_electricity,
            wind_energy_per_capita,
            wind_share_elec,
            wind_share_energy
        from {{ source("main", "owid_energy_data") }}
    ),

    owid_co2_data as (
        select
            country,
            year,
            iso_code,
            population,
            gdp,
            cement_co2,
            cement_co2_per_capita,
            co2,
            co2_growth_abs,
            co2_growth_prct,
            co2_including_luc,
            co2_including_luc_growth_abs,
            co2_including_luc_growth_prct,
            co2_including_luc_per_capita,
            co2_including_luc_per_gdp,
            co2_including_luc_per_unit_energy,
            co2_per_capita,
            co2_per_gdp,
            co2_per_unit_energy,
            coal_co2,
            coal_co2_per_capita,
            consumption_co2,
            consumption_co2_per_capita,
            consumption_co2_per_gdp,
            cumulative_cement_co2,
            cumulative_co2,
            cumulative_co2_including_luc,
            cumulative_coal_co2,
            cumulative_flaring_co2,
            cumulative_gas_co2,
            cumulative_luc_co2,
            cumulative_oil_co2,
            cumulative_other_co2,
            energy_per_capita,
            energy_per_gdp,
            flaring_co2,
            flaring_co2_per_capita,
            gas_co2,
            gas_co2_per_capita,
            ghg_excluding_lucf_per_capita,
            ghg_per_capita,
            land_use_change_co2,
            land_use_change_co2_per_capita,
            methane,
            methane_per_capita,
            nitrous_oxide,
            nitrous_oxide_per_capita,
            oil_co2,
            oil_co2_per_capita,
            other_co2_per_capita,
            other_industry_co2,
            primary_energy_consumption,
            share_global_cement_co2,
            share_global_co2,
            share_global_co2_including_luc,
            share_global_coal_co2,
            share_global_cumulative_cement_co2,
            share_global_cumulative_co2,
            share_global_cumulative_co2_including_luc,
            share_global_cumulative_coal_co2,
            share_global_cumulative_flaring_co2,
            share_global_cumulative_gas_co2,
            share_global_cumulative_luc_co2,
            share_global_cumulative_oil_co2,
            share_global_cumulative_other_co2,
            share_global_flaring_co2,
            share_global_gas_co2,
            share_global_luc_co2,
            share_global_oil_co2,
            share_global_other_co2,
            share_of_temperature_change_from_ghg,
            temperature_change_from_ch4,
            temperature_change_from_co2,
            temperature_change_from_ghg,
            temperature_change_from_n2o,
            total_ghg,
            total_ghg_excluding_lucf,
            trade_co2,
            trade_co2_share
        from {{ source("main", "owid_co2_data") }}
    )

select e.*, c.*
from owid_energy_data as e
join owid_co2_data as c on e.iso_code = c.iso_code and e.year = c.year
