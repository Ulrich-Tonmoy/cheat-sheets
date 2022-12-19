# **Angular**

## Angular CLI

1. **Setup**

    ```properties
    npm install -g @angular/cli
    ```

2. **New Application**

    ```properties
    ng new <app-name>
    ```

3. **Lint for Formatting**

    The Lint command fixes code smells and corrects improper formatting.

    ```properties
    ng lint my-app --fix
    ```

    This command shows warnings:

    ```properties
    ng lint my-app
    ```

    If you want to format the code, you can use the following command.

    ```properties
    ng lint my-app --format stylish
    ```

4. **Blueprints**

    Generate spec:

    ```properties
    --spec
    ```

    Check whether the template will be a.ts file or not:

    ```properties
    --inline-template (-t)
    ```

    Check whether the style will be in the.ts file or not:

    ```properties
    --inline-style (-s)
    ```

    Create a directive:

    ```properties
    ng g d directive-name
    ```

    Create a pipeline:

    ```properties
    ng g p init-caps
    ```

    Create customer class in the models folder:

    ```properties
    ng g cl models/customer
    ```

    Creates a component without the need for the creation of a new folder.

    ```properties
    ng g c my-component --flat true
    ```

    Assign a prefix:

    ```properties
    --prefix
    ```

    Create an interface in the models folder:

    ```properties
    ng g i models/person
    ```

    Create an ENUM gender in the models folder:

    ```properties
    ng g e models/gender
    ```

    Create a service:

    ```properties
    ng g s <service-name>
    ```

5. **Building Serving**

    Build an app to /dist folder:

    ```properties
    ng build
    ```

    Optimize and build an app without using unnecessary code:

    ```properties
    ng build --aot
    ```

    Create a build for production:

    ```properties
    ng build --prod
    ```

    Specify serve with opening a browser:

    ```properties
    ng serve -o
    ```

    Reload when changes occur:

    ```properties
    ng serve --live-reload
    ```

    Serve using SSL:

    ```properties
    ng serve -ssl
    ```

6. **Add New Capabilities**

    Add angular material to project:

    ```properties
    ng add @angular/material
    ```

    Create a material navigation component:

    ```properties
    ng g @angular/material:material-nav --name nav
    ```

7. **Component Life Cycles**

    **ngOnInit**
    Called once, after the first ngOnChanges()

    **ngOnChanges**
    Called before ngOnInit() and whenever one of the input properties changes.

    **ngOnDestroy**
    Called just before Angular destroys the directive/component.

    **ngDoCheck**
    Called during every change detection run.

    **ngAfterContentChecked**
    Called after the ngAfterContentInit() and every subsequent ngDoCheck()

    **ngAfterViewChecked**
    Called after the ngAfterViewInit() and every subsequent ngAfterContentChecked().

    **ngAfterContentInit**
    Called once after the first ngDoCheck().

    **ngAfterViewInit**
    Called once after the first ngAfterContentChecked().

8. **Template Syntax**

    Interpolation - generates user name.

    ```html
    {{user.name}}
    ```

    property binding - bind image url for user to src attribute

    ```html
    <img [src]="user.imageUrl" />
    ```

    Event - assign function to click event

    ```html
    <button (click)="do()" ... />
    ```

    Show button when user.showSth is true

    ```html
    <button \*ngIf="user.showSth" ... />
    ```

    Iterate through the items list

    ```html
    *ngFor="let item of items"
    ```

    Angular ngClass attribute

    ```html
    <div [ngClass]="{green: isTrue(), bold: itTrue()}" />
    ```

    Angular ngStyle attribute

    ```html
    <div [ngStyle]="{'color': isTrue() ? '#bbb' : '#ccc'}" />
    ```

9. **Input and Output**

    Input() To pass value into child component

    Sample child component implementation:

    ```ts
    export class SampleComponent {
        @Input() value: any/string/object/…;
        ...
    }
    ```

    Sample parent component usage:

    ```ts
    <app-sample-component [value]="myValue"></app-sampe-component>
    Output() Emitting event to parent component
    Sample child component:
    @Output() myEvent: EventEmitter = new EventEmitter();
    onRemoved(item: MyModel) {
    this.myEvent.emit(item);
    }
    ```

    Sample parent component:

    ```html
    <app-my-component (myEvent)="someFunction()"></app-my-component>
    ```

    onRemoved in the child component is calling the someFunction() method in the parent component, as we can see in the above two child and parent components.

10. **Content Projection**

    Content projection in Angular is a pattern in which you inject the desired content into a specific component.

    Here’s an example of a parent component template:

    ```html
    <component>
        <div>(some html here)</div>
    </component>
    ```

    Child component template:

    ```html
    <ng-content></ng-content>
    ```

    Let us now inject the following HTML code in the parent component template:

    ```html
    <div well-body>(some html here)</div>
    ```

    It will look like:

    ```html
    <component>
        <div well-title>(some html here)</div>
        <div well-body>(some html here)</div>
    </component>
    ```

    When we combine both the above parent and child template, you get the following result:

    ```html
    <component>
        <div well-title>(some html here)</div>
        <div well-body>(some html here)</div>
    </component>
    <ng-content select="title"></ng-content>
    <ng-content select="body"></ng-content>
    ```

11. **ViewChild Decorator**

    Offers access to child component/directive/element:

    ```ts
    @ViewChild(NumberComponent) private numberComponent: NumberComponent; increase() {
    this.numberComponent.increaseByOne(); //method from child component } decrease() {
    this.numberComponent.decreaseByOne(); //method from child component }
    ```

    Sample for element: html:

    ```html
    <div #myElement></div>
    ```

    component:

    ```ts
    @ViewChild('myElement') myElement: ElementRef
    ```

    Instead ElementRef can be used for specific elements like FormControl for forms.

    Reference to element in html:

    ```html
    <button (click)="doSth(myElement)"></button>
    ```

12. **Routing**

    The Angular Router enables navigation from one view to the next as users perform application tasks.

    Sample routing ts file:

    ```ts
    const appRoutes: Routes = [
        { path: "crisis-center", component: CrisisListComponent },
        { path: "prod/:id", component: HeroDetailComponent },
        {
            path: "products",
            component: ProductListComponent,
            data: { title: "Products List" },
        },
        {
            path: "",
            redirectTo: "/products",
            pathMatch: "full",
        },
        { path: "**", component: PageNotFoundComponent },
    ];
    ```

    Then, this should be added inside Angular.module imports:

    ```ts
    RouterModule.forRoot(appRoutes);
    ```

    You can also turn on console tracking for your routing by adding enableTracing:

    ```ts
    imports: [RouterModule.forRoot(routes,{enableTracing: true})],
    ```

    Usage

    ```html
    <a routerLink="/crisis-center" routerLinkActive="active"> Crisis Center </a>
    ```

    routerLinkActive="active" will add active class to element when the link's route becomes active

    ```ts
    //Navigate from code
    this.router.navigate(["/heroes"]);
    // with parameters
    this.router.navigate(["/heroes", { id: heroId, foo: "foo" }]);
    // Receive parameters without Observable
    let id = this.route.snapshot.paramMap.get("id");
    ```

    CanActivate and CanDeactivate
    In Angular routing, two route guards are CanActivate and CanDeactivate. The former decides whether the route can be activated by the current user, while the latter decides whether the router can be deactivated by the current user.

    CanActivate:

    ```ts
    class UserToken {}
    class Permissions {
        canActivate(user: UserToken, id: string): boolean {
            return true;
        }
    }
    ```

    CanDeactivate:

    ```ts
    class UserToken {}
    class Permissions {
        canDeactivate(user: UserToken, id: string): boolean {
            return true;
        }
    }
    ```

13. **Modules**

    Angular apps are modular and Angular has its own modularity system called NgModules. NgModules are containers for a cohesive block of code dedicated to an application domain, a workflow, or a closely related set of capabilities.

    **Sample Module with Comments**

    ```ts
    import { BrowserModule } from "@angular/platform-browser";
    import { NgModule } from "@angular/core";
    import { AppRoutingModule } from "./app-routing.module";
    import { AppComponent } from "./app.component";
    @NgModule({
        declarations: [AppComponent], // components, pipes, directives
        imports: [BrowserModule, AppRoutingModule], // other modules
        providers: [], // services
        bootstrap: [AppComponent], // top component
    })
    export class AppModule {}
    ```

14. **Services**

    Components shouldn't fetch or save data directly and they certainly shouldn't knowingly present fake data. Instead, they should focus on presenting data and delegate data access to a service.

    Sample service with one function:

    ```ts
    @Injectable()
    export class MyService {
        public items: Item[];
        constructor() {}
        getSth() {
            // some implementation
        }
    }
    ```

    When you create any new instance of the component class, Angular determines the services and other dependencies required by that component by looking at the parameters defines in the constructor as follows:

    ```ts
    constructor(private dogListService: MyService){ }
    ```

    The above constructor requires the service: MyService

    Register MyService in the providers module:

    ```ts
    providers: [MyService];
    ```

15. **HttpClient**

    This command handles and consumes http requests.

    Add import to module:

    ```ts
    import { HttpClientModule } from "@angular/common/http";
    ```

    You can use the above statement in the following way:

    ```ts
    import {HttpClient} from '@angular/common/http';
    ...

    // GET
    public getData(): Observable {
        return this.http.get('api/users/2');
    }

    // POST
    public send(val1: any, val2: any): Observable {
        const object = new SendModel(val1, val2);
        const options = {headers: new HttpHeaders({'Content-type': 'application/json'})};
        return this.http.post(environment.apiUrl + 'api/login', object, options);
    }
    ```

16. **Dependency Injection**

    This injects a class into another class:

    ```ts
    @Injectable({
        providedIn: "root",
    })
    export class SomeService {}
    ```

    It accepts 'root' as a value or any module of your application.

17. **Declare Global Values**

    Class:

    ```ts
    import { InjectionToken } from "@angular/core";
    export const CONTROLS_GLOBAL_CONFIG = new InjectionToken("global-values");
    export interface ControlsConfig {
        firstGlobalValue: string;
    }
    ```

    Module:

    ```ts
    providers: [{provide: CONTROLS_GLOBAL_CONFIG, useValue: {firstGlobalValue : 'Some value' }},
    ```

    Usage (for example in component):

    ```ts
    constructor(@Optional() @Inject(CONTROLS_GLOBAL_CONFIG) globalValues: ControlsConfig) {}
    ```

18. **Pipes**

    Pipes transform data and values to a specific format. For example:

    Show date in shortDate format:

    ```ts
    {{model.birthsDay | date:'shortDate'}}
    ```

    Pipe implementation:

    ```ts
    @Pipe({ name: "uselessPipe" })
    export class uselessPipe implements PipeTransform {
        transform(value: string, before: string, after: string): string {
            let newStr = `${before} ${value} ${after}`;
            return newStr;
        }
    }
    ```

    usage:

    ```ts
    {{ user.name | uselessPipe:"Mr.":"the great" }}
    ```

19. **Directives**

    An Attribute directive changes A DOM element’s appearance or behavior. For example, [ngStyle] is a directive.

    Custom directive:

    ```ts
    import { Directive, ElementRef, HostListener, Input } from "@angular/core";
    @Directive({
        selector: "[appHighlight]",
    })
    export class HighlightDirective {
        constructor(private el: ElementRef) {}
        @Input("appHighlight") highlightColor: string;
        @Input("otherPar") otherPar: any; //it will be taken from other attribute named [otherPar]
        @HostListener("mouseenter") onMouseEnter() {
            this.highlight(this.highlightColor || "red");
        }
        private highlight(color: string) {
            this.el.nativeElement.style.backgroundColor = color;
        }
    }
    ```

    Usage:

    ```html
    <p [appHighlight]="color" [otherPar]="someValue">Highlight me!</p>
    ```

20. **Animations**

    Animations allow you to move from one style state to another before adding BrowserModule and BrowserAnimationsModule to the module.

    Implementation:

    ```ts
    animations: [
        trigger("openClose", [
            state(
                "open",
                style({
                    height: "400px",
                    opacity: 1.5,
                })
            ),
            state(
                "closed",
                style({
                    height: "100px",
                    opacity: 0.5,
                })
            ),
            transition("open => closed", [animate("1s")]),
            transition("closed => open", [animate("1s")]),
        ]),
    ];
    ```

    Usage:

    ```html
    <div [@openClose]="isShowed ? 'open' : 'closed'"></div>
    ```

21. **Angular Forms**

    In this section of our Angular 4 cheat sheet, we’ll discuss different types of Angular forms.

    **Template Driven Forms**

    Form logic (validation, properties) are kept in the template.

    sample html:

    ```html
    <form name="form" (ngSubmit)="f.form.valid && onSubmit()" #f="ngForm" novalidate>
        <div class="form-group">
            <label for="firstName">First Name</label>

            <input
                type="text"
                class="form-control"
                name="firstName"
                [(ngModel)]="model.firstName"
                #firstName="ngModel"
                [ngClass]="{ 'is-invalid': f.submitted && firstName.invalid }"
                required
            />
            <div *ngIf="f.submitted && firstName.invalid" class="invalid-feedback">
                <div *ngIf="firstName.errors.required">First Name is required</div>
            </div>
        </div>
        <div class="form-group">
            <button class="btn btn-primary">Register</button>
        </div>
    </form>
    ```

    Sample component:

    ```ts
    @ViewChild("f") form: any;

    firstName: string = "";
    langs: string[] = ["English", "French", "German"];
    onSubmit() {
        if (this.form.valid) {
            console.log("Form Submitted!");
            this.form.reset();
        }
    }
    ```

    **Reactive Forms**

    Form logic (validation, properties) are kept in the component.

    Sample HTML:

    ```html
    <form [formGroup]="registerForm" (ngSubmit)="onSubmit()">
        <div class="form-group">
            <label>Email</label>
            <input
                type="text"
                formControlName="email"
                class="form-control"
                [ngClass]="{ 'is-invalid': submitted && f.email.errors }"
            />
            <div *ngIf="submitted && f.email.errors" class="invalid-feedback">
                <div *ngIf="f.email.errors.required">Email is required</div>
                <div *ngIf="f.email.errors.email">Email must be a valid email address</div>
            </div>
        </div>
        <div class="form-group">
            <button [disabled]="loading" class="btn btn-primary">Register</button>
        </div>
    </form>
    ```

    Sample component:

    ```ts
    registerForm: FormGroup;
    submitted = false;
    constructor(private formBuilder: FormBuilder) { }
    ngOnInit() {
        this.registerForm = this.formBuilder.group({
        firstName: [{{here default value}}, Validators.required],
        lastName: ['', Validators.required],
        email: ['', [Validators.required, Validators.email]],
        password: ['', [Validators.required, Validators.minLength(6)]]
        });
    }

    // convenience getter for easy access to form fields
    get f() { return this.registerForm.controls; }
    onSubmit() {
        this.submitted = true;
        // stop here if form is invalid
        if (this.registerForm.invalid) {
            return;
        }
        alert('SUCCESS!! :-)')
    }
    ```

    **Custom Validator for Reactive Forms**

    Function:

    ```ts
    validateUrl(control: AbstractControl) {
        if (!control.value || control.value.includes('.png') || control.value.includes('.jpg')) {
            return null;
        }
        return { validUrl: true };
    }
    ```

    Usage:

    ```ts
    this.secondFormGroup = this._formBuilder.group({
        imageCtrl: ["", [Validators.required, this.validateUrl]],
    });
    ```

    Multi-field validation:

    ```ts
    validateNameShire(group: FormGroup) {
        if (group) {
            if (group.get('isShireCtrl').value && !group.get('nameCtrl').value.toString().toLowerCase().includes('shire')) {
                return { nameShire : true };
            }
        }
        return null;
    }
    ```

    Multi-field validation usage:\*

    ```ts
    this.firstFormGroup.setValidators(this.validateNameShire);
    ```

    Error handling:

    ```html
    <div *ngIf="firstFormGroup.controls.nameCtrl.errors.maxlength">Name is too long</div>

    <div *ngIf="firstFormGroup.errors.nameShire">Shire dogs should have "shire" in name</div>
    ```

    **Custom Validator Directive for Template-Driven Forms**

    Shortly, we’ll cover how to register our custom validation directive to the NG_VALIDATORS service. Thanks to multi-parameter we won't override NG_VALIDATORS but just add CustomValidator to NG_VALIDATORS).

    Here’s what you use:

    ```ts
    @Directive({
        selector: '[CustomValidator]',
        providers: [{provide: NG_VALIDATORS, useExisting: CustomValidator, multi:true}]
    })
    ```

    Example:

    ```ts
    @Directive({
        selector: '[customValidation]',
        providers: [{provide: NG_VALIDATORS, useExisting: EmailValidationDirective, multi: true}]
    })

    export class CustomValidation implements Validator {
        constructor() { }
        validate(control: AbstractControl): ValidationErrors {
            return (control.value && control.value.length <= 300) ?
            {myValue : true } : null;
        }
    }
    For multiple fields:
    validate(formGroup: FormGroup): ValidationErrors {
        const passwordControl = formGroup.controls["password"];
        const emailControl = formGroup.controls["login"];
        if (!passwordControl || !emailControl || !passwordControl.value || !emailControl.value) {
            return null;
        }
        if (passwordControl.value.length > emailControl.value.length) {
            passwordControl.setErrors({ tooLong: true });
        } else {
            passwordControl.setErrors(null);
        }
        return formGroup;
    }
    ```

    **ngModel in Custom Component**

    Add to module:

    ```ts
    providers: [{
        provide: NG_VALUE_ACCESSOR,
        useExisting: forwardRef(() => TextAreaComponent),
        multi: true
        }]

    Implement ControlValueAccessor interface
    interface ControlValueAccessor {
        writeValue(obj: any): void
        registerOnChange(fn: any): void
        registerOnTouched(fn: any): void
        setDisabledState(isDisabled: boolean)?: void
    }
    ```

    **registerOnChange**

    Register a function to tell Angular when the value of the input changes.

    **registerOnTouched**

    Register a function to tell Angular when the value was touched.

    **writeValue**

    Tell Angular how to write a value to the input.

    Sample implementation:

    ```ts
    @Component({
        selector: "app-text-area",
        templateUrl: "./text-area.component.html",
        styleUrls: ["./text-area.component.less"],
        providers: [
            {
                provide: NG_VALUE_ACCESSOR,
                useExisting: forwardRef(() => TextAreaComponent),
                multi: true,
            },
        ],
    })
    export class TextAreaComponent implements ControlValueAccessor, OnInit {
        @Input() value: string;
        private _onChange = (data: any) => {
            console.log("changed: " + data);
        };
        private _onTouched = (data?: any) => {
            console.log("touched: " + data);
        };
        ngOnInit(): void {
            const self = this;
        }
        constructor() {}
        writeValue(obj: any): void {
            this.value = obj;
        }
        registerOnChange(fn) {
            this._onChange = fn;
        }
        registerOnTouched(fn: any): void {
            this._onTouched = fn;
        }
    }
    ```

22. **Tests**

    Every software application under development needs to be tested to verify its correctness, and so do the Angular applications. Testing implies executing various tests or test cases on an application to validate it functionality and correctness.

    **Unit tests**

    Unit testing, in general, is a type of software testing level that checks various components of an application separately. In Angular, the default unit testing framework is Jasmine. It is widely utilized while developing an Angular project using CLI.

    Service:

    ```ts
    describe('MyService', () => {
        let service: MyService;
        beforeEach(() => service = new MyService();
        it('#fetch should update data', () => {
        service.fetchData();
        expect(service.data.length).toBe(4);
        expect(service.data[0].id).toBe(1);
        });
    });
    ```

    For async functions:

    ```ts
    it("#fetch should update data", (done: DoneFn) => {
        // some code
        done(); // we need 'done' to avoid test finishing before date was received
        // some code
    });
    ```

    example async test:

    ```ts
    it("http client works", (done: DoneFn) => {
        service.getUser().subscribe((data) => {
            expect(data).toBe("test");
            done();
        });
    });
    ```

23. **Spy and stub**

    When you make calls during the testing process, a stub provides canned answers to all those calls. It does not respond to anything outside the program under test.

    A spy is a stub that records the information based on the calls you make during the test.

    **Spy:**

    ```ts
    // create spied object by copy getDataAsync from HttpService
    const valueServiceSpy = jasmine.createSpyObj("HttpService", ["getDataAsync"]);
    ```

    **Stub:**

    ```ts
    const stubValue = of("StubValue");
    valueServiceSpy.getDataAsync.and.returnValue(stubValue);
    ```

    **TestBed Mock whole module/environment for unit tests:**

    ```ts
    beforeEach(() => {
        let httpClientMock = TestBed.configureTestingModule({
            providers: [{ provide: MyService, useValue: new MyService(httpClientMock) }],
        });
    });
    ```

    Then use tested object (for example service) like this:

    ```ts
    service = TestBed.get(MyService);
    ```

    We can add schemas: [NO_ERRORS_SCHEMA]. This means that we don’t have to mock child component dependencies of this component because Angular won’t yell if we don’t include them!

24. **Miscellaneous**

    **Http Interceptor**
    An HTTP interceptor can handle any given HTTP request.

    Class:

    ```ts
    @Injectable()
    export class MyInterceptor implements HttpInterceptor {
        constructor() { }
        intercept(request: HttpRequest, next: HttpHandler): Observable> {
            // do sth (like check and throw error)
            return next.handle(request); //if want continue
        }
    }
    ```

    Parameters:

    - req: HttpRequest\<any> - It is the object that handles outgoing requests.
      next: HttpHandler
    - next: HttpHandler - It indicates the next interceptor in the line or the backend in case there are no interceptors.

    Returns:

    An HTTP interceptor returns the observable of the event stream.

    Observable<HttpEvent\<any>>
