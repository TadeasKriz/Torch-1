import Torch
import CoreData

internal extension Data {

    internal static var torch_name: String {
        return "UserProject_Data"
    }

    internal static let id = Torch.Property<Data, Int?>(name: "id")

    internal init(fromManagedObject object: Torch.NSManagedObjectWrapper) throws {
        id = object.getValue(Data.id)
    }

    internal mutating func torch_updateManagedObject(object: Torch.NSManagedObjectWrapper) throws {
        object.setValue(id, for: Data.id)
    }

    internal static func torch_describeEntity(to registry: Torch.EntityRegistry) {
        registry.description(of: Data.self)
    }

    internal static func torch_describeProperties(to registry: Torch.PropertyRegistry) {
        registry.description(of: Data.id)
    }
}

internal struct UserProjectEntityBundle: Torch.TorchEntityBundle {
    internal let entityTypes: [Torch.TorchEntity.Type] = [
            Data.self,
        ]

    internal init() { }
}
