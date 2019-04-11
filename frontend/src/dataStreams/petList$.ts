import {filter, map, tap} from 'rxjs/operators'
import {IPetListData} from './models/ReceivedData/Data-types/IPetListData'
import {trunk$} from './thunk$'

interface IRawInfo {
    pet_id: string,
    name: string,
    description: string,
    image_url: string
}
interface IRawPetListData {
    index: number,
    info_array: IRawInfo[]
}
function format(data: IRawPetListData): IPetListData {
    const imageAry = data.info_array.map((rawInfo) => rawInfo.image_url)
    const descriptionAry = data.info_array.map((rawInfo) => {
        return {
            id: rawInfo.pet_id,
            title: rawInfo.name,
            description: rawInfo.description
        }
    })
    return {
        index: data.index,
        imgURL: imageAry,
        description: descriptionAry,
    }
}

export const petList$ = trunk$.pipe(
    filter(([data, _]) => data.type === 'MasonryList'),
    map(([payload, _]) => format(payload.data as IRawPetListData)),
    tap((t) => console.log('petList, ', t)),
)

