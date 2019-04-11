import {trunk$} from './thunk$'
import {filter, map} from 'rxjs/operators'
import {IPetDescription} from '../interfaces/IPetDescription'

interface IRawPetSearchData {
    pet_id: string,
    pet_type: string,
    name: string,
    age: number,
    breed: string,
    gender: string,
    color: string,
    maturity_size: string,
    fur_length: string,
    vaccinated: string,
    sterillized: string,
    health: string,
    quantity: string,
    fee: string,
    shop: string,
    description: string,
    image_url: string
}
function format(data: IRawPetSearchData):IPetDescription {
    return {
        id: data.pet_id,
        type: data.pet_type,
        name: data.name,
        age: data.age,
        breed: data.breed,
        color: data.color,
        maturitySize: data.maturity_size,
        furLength: data.fur_length,
        isVaccinated: data.vaccinated,
        isSterilized: data.sterillized,
        health: data.health,
        quantity: data.quantity,
        fee: data.fee,
        shop: data.shop,
        description: data.description,
        imageURL: data.image_url
    }
}
export const petDescription$ = trunk$.pipe(
    filter(([data, _]) => data.type === 'PetSearch'),
    map(([payload, _]) => format(payload.data as IRawPetSearchData)),
)