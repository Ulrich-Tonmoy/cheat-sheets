# Unity

## Coding Convention

```cs
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

// interface name always start with I and then an meaningful name in -> PascalCase
interface IConvention{
    string Convention1 { get; }
    string Convention2 { get; }
    string Convention3 { get; }
}

// enum name -> PascalCase
enum ConventionLevel{
    Easy,
    Normal,
    Hard
}

// Class name in our case "ConventionClass" -> PascalCase
public class ConventionClass : MonoBehavior
{
    // Classes Local static variable in our case "ConventionStaticVariable" -> PascalCase and always written at the top
    public static int ConventionStaticVariable;

    // Classes Local public and protected variable in our case "PublicConventionMember and ProtectedConventionMember" -> PascalCase
    public int PublicConventionMember;
    protected int ProtectedConventionMember;

    // Classes Local private variable in our case "_conventionPrivateMember" -> camelCase with an underscore before
    private int _conventionPrivateMember;

    // Hungarian notation
    private int m_conventionPrivateMember;

    // Methods and Functions name -> PascalCase
    void Start() {}
    void Update() {}

    // Parameter type in our case "ConventionClass"-> PascalCase
    // Parameter name in our case "conventionClass" -> camelCase
    void ConventionMethod(ConventionClass conventionClass)
    {
        // Method's Local variable in our case "conventionVariable" -> camelCase
        float conventionVariable = 1.5f;
    }
}
```

## Fill Arrays With Data

-   ### For simple name text file

    ```cs
    using UnityEngine;

    // to use this utility you will need a text file with names like the following example:

    /*name.txt
    Loui Navarro
    Habiba Conway
    Thea Donaldson
    Xavier Rivers
    Tabitha Barker
    Rupert Lloyd
    Carolyn Merritt
    Alyssia Cisneros
    Fabio Chambers
    David Brennan*/

    // now just drag the file in the _file field in the inspector
    public class People : MonoBehavior
    {
        [Header("Dependencies")]
        [SerializeField,Required]
        TextAsset _file;
        [SerializeField]
        string[] _names;

        void OnValidate()
        {
            _names = _file? _file.text.Split(new [] {Environment.NewLine}, StringSplitOptions.RemoveEmptyEntries):null;
        }
    }
    ```

-   ### For multiple value text file

    ```cs
    using UnityEngine;

    // to use this utility you will need a text file with data like the following example:

    /*item.txt
    table,15,#942e2e
    chair,20,#942e2e
    lamp,30,#942e2e
    */

    // now just drag the file in the _file field in the inspector

    public class Item
    {
        public string Name;
        public int Price;
        public Color Color;
    }
    public class Items : MonoBehavior
    {
        [Header("Dependencies")]
        [SerializeField,Required]
        TextAsset _file;
        [SerializeField]
        Item[] _items;

        void OnValidate()
        {
            _names = _file? _file.text.Split(new [] {Environment.NewLine}, StringSplitOptions.RemoveEmptyEntries):null;
        }

        Item ConvertToItem(string line)
        {
            var parts = line.split(",");
            return new Item
            {
                name = parts[0],
                price = int.TryPrase(parts[1],out var p) ? p : 0,
                color = ColorUtility.TryParseHtmlString(parts[2],out var c)
            }
        }
    }
    ```

## MonoBehaviour Event Execution Order

```cs
private void Awake() { /* Called when the script is being loaded */ }
private void OnEnable() { /* Called every time the object is enabled */ }
private void Start() { /* Called on the frame when the script is enabled */ }
private void Update() { /* Called once per frame */ }
private void LateUpdate() { /* Called every frame after Update */ }
private void FixedUpdate() { /* Called every Fixed Timestep */ }
private void OnBecameVisible() { /* Called when the renderer is visible by any Camera */ }
private void OnBecameInvisible() { /* Called when the renderer is no longer visible by any Camera */ }
private void OnDrawGizmos() { /* Allows you to draw Gizmos in the Scene View */ }
private void OnGUI() { /* Called multiple times per frame in response to GUI events */ }
private void OnApplicationPause() { /* Called at the end of a frame when a pause is detected */ }
private void OnDisable() { /* Called every time the object is disabled */ }
private void OnDestroy() { /* Only called on previously active GameObjects that have been destroyed */ }
```

## GameObject Manipulation

```cs
/* Create a GameObject */
Instantiate(GameObject prefab);
Instantiate(GameObject prefab, Transform parent);
Instantiate(GameObject prefab, Vector3 position, Quaternion rotation);
/* In Practice */
Instantiate(bullet);
Instantiate(bullet, bulletSpawn.transform);
Instantiate(bullet, Vector3.zero, Quaternion.identity);
Instantiate(bullet, new Vector3(0, 0, 10), bullet.transform.rotation);

/* Destroy a GameObject */
Destroy(gameObject);

/* Finding GameObjects */
GameObject myObj = GameObject.Find("NAME IN HIERARCHY");
GameObject myObj = GameObject.FindWithTag("TAG");

/* Accessing Components */
Example myComponent = GetComponent<Example>();
AudioSource audioSource = GetComponent<AudioSource>();
Rigidbody rgbd = GetComponent<Rigidbody>();
```

## Vector Quick Reference

```cs
// X = Left/Right   Y = Up/Down   Z = Forward/Back
Vector3.right /* (1, 0, 0) */   Vector2.right /* (1, 0) */
Vector3.left /* (-1, 0, 0) */   Vector2.left /* (-1, 0) */
Vector3.up /* (0, 1, 0) */      Vector2.up /* (0, 1) */
Vector3.down /* (0, -1, 0) */   Vector2.down /* (0, -1) */
Vector3.forward /* (0, 0, 1) */
Vector3.back /* (0, 0, -1) */
Vector3.zero /* (0, 0, 0) */    Vector2.zero /* (0, 0) */
Vector3.one /* (1, 1, 1) */     Vector2.one /* (1, 1) */
float length = myVector.magnitude /* Length of this Vector */
myVector.normalized /* Keeps direction, but reduces length to 1 */
```

## Time Variables

```cs
/* The time in seconds since the start of the game */
float timeSinceStartOfGame = Time.time;

/* The scale at which the time is passing */
float currentTimeScale = Time.timeScale;
/* Pause time */
Time.timeScale = 0;

/* The time in seconds it took to complete the last frame */
/* Use with Update() and LateUpdate() */
float timePassedSinceLastFrame = Time.deltaTime;

/* The interval in seconds at which physics and fixed frame rate updates are performed */
/* Use with FixedUpdate() */
float physicsInterval =  Time.fixedDeltaTime;
```

## Physics Events

```cs
/* Both objects have to have a Collider and one object has to have a Rigidbody for these Events to work */
private void OnCollisionEnter(Collision hit) { Debug.Log(gameObject.name + " just hit " + hit.gameObject.name); }
private void OnCollisionStay(Collision hit) { Debug.Log(gameObject.name + " is hitting " + hit.gameObject.name); }
private void OnCollisionExit(Collision hit) { Debug.Log(gameObject.name + " stopped hitting " + hit.gameObject.name); }

/* Trigger must be checked on one of the Colliders */
private void OnTriggerEnter(Collider hit) { Debug.Log(gameObject.name + " just hit " + hit.name); }
private void OnTriggerStay(Collider hit) { Debug.Log(gameObject.name + " is hitting " + hit.name); }
private void OnTriggerExit(Collider hit) { Debug.Log(gameObject.name + " stopped hitting " + hit.name); }

/* For 2D Colliders just add 2D to the Method name and the Parameter Type */
private void OnCollisionEnter2D(Collision2D hit) { }
private void OnCollisionStay2D(Collision2D hit) { }
private void OnCollisionExit2D(Collision2D hit) { }
private void OnTriggerEnter2D(Collider2D hit) { }
private void OnTriggerStay2D(Collider2D hit) { }
private void OnTriggerExit2D(Collider2D hit) { }
```

## Coroutines

```cs
/* Create a Coroutine */
private IEnumerator CountSeconds(int count = 10)
{
  for (int i = 0; i <= count; i++) {
    Debug.Log(i + " second(s) have passed");
    yield return new WaitForSeconds(1.0f);
  }
}

/* Call a Coroutine */
StartCoroutine(CountSeconds());
StartCoroutine(CountSeconds(10));

/* Call a Coroutine that may need to be stopped */
StartCoroutine("CountSeconds");
StartCoroutine("CountSeconds", 10);

/* Stop a Coroutine */
StopCoroutine("CountSeconds");
StopAllCoroutines();

/* Store and call a Coroutine from a variable */
private IEnumerator countSecondsCoroutine;

countSecondsCoroutine = CountSeconds();
StartCoroutine(countSecondsCoroutine);

/* Stop a stored Coroutine */
StopCoroutine(countSecondsCoroutine);

/* Coroutine Return Types */
yield return null; // Waits until the next Update() call
yield return new WaitForFixedUpdate(); // Waits until the next FixedUpdate() call
yield return new WaitForEndOfFrame(); // Waits until everything this frame has executed
yield return new WaitForSeconds(float seconds); // Waits for game time in seconds
yield return new WaitUntil(() => MY_CONDITION); // Waits until a custom condition is met
yield return new WWW("MY/WEB/REQUEST"); // Waits for a web request
yield return StartCoroutine("MY_COROUTINE"); // Waits until another Coroutine is completed
```

## Input Quick Reference

```cs
if (Input.GetKeyDown(KeyCode.Space)) { Debug.Log("Space key was Pressed"); }
if (Input.GetKeyUp(KeyCode.W)) { Debug.Log("W key was Released"); }
if (Input.GetKey(KeyCode.UpArrow)) { Debug.Log("Up Arrow key is being held down"); }

/* Button Input located under Edit >> Project Settings >> Input */
if (Input.GetButtonDown("ButtonName")) { Debug.Log("Button was pressed"); }
if (Input.GetButtonUp("ButtonName")) { Debug.Log("Button was released"); }
if (Input.GetButton("ButtonName")) { Debug.Log("Button is being held down"); }
```
