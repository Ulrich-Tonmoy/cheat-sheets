# **ASP.NET**

## EF Core ALL Relationships

-   1:1

    Lets say we have two Model Character and Weapon. A Character can only equip one weapon and one weapon can only be equipped by a Character. So, it's a one-to-one relationship.

    Both Model will have references to each other but the one that can't exist without the other Model will have Id references of the other Model.

    Here a Character can exist without a Weapon but the Weapon only exist because theres a Character to equip it so, weapon have one more variable CharacterId.

    If it was other way then there would be one more variable in Character Model as WeaponId and CharacterId from weapons Model will be removed.

    ```cs
    // Character can exist without a weapon
    public class Character
    {
        public Guid Id { get; set; }
        public Weapon Weapon { get; set; }
    }

    // weapon cant exist without a character
    public class Weapon
    {
        public Guid Id { get; set; }
        public Character Character { get; set; }
        public Guid CharacterId { get; set; }
    }
    ```

-   1:n

    Lets say we have two Model User and Character. A User can have many Characters but a Character can only have one User. So, it's a one-to-many relationship.

    Since it's a one-to-many relationship then User will have list reference of Character
    and Character will have only one User reference and UserId.

    ```cs
    // 1 user can have many characters
    public class User
    {
        public Guid Id { get; set; }
        List<Character> Characters { get; set; }
    }

    // character has only one user
    public class Character
    {
        public Guid Id { get; set; }
        public User User { get; set; }
        public Guid UserId { get; set; }
    }
    ```

-   n:n

    Lets say we have two Model Character and Skill. A Character can have many Skills and a Skill can have be used by many Characters. So, it's a many-to-many relationship. So both Model will have list references of each other.

    ```cs
    public class Character
    {
        public Guid Id { get; set; }
        public List<Skill> Skills { get; set; }
    }

    public class Skill
    {
        public Guid Id { get; set; }
        public List<Character> Characters { get; set; }
    }
    ```
