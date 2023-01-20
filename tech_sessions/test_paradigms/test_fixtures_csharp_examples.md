### Explanation of Document Paradigm ###
[text_fixtures.md](./test_fixtures.md)

### 1. Tests are written in a single test method, with setup and assertions mixed together. There are many assertions in a single method.
```csharp

```

### 2. Tests are split into several methods reflecting different groupings of assertions with setup included in the methods.
```csharp

```

### 3. Tests are split into several methods with setup in a `setup` method.
```csharp

```

### 4. Tests are split into many methods, named for the specific things they are asserting (usually only one or two assertions per method).
```csharp

```

### 5. Context variables are lazy loaded and extracted from the setup.
```csharp

```

### 6. Context are nested, to allow minimized duplication, and to allow context variables to be overridden.
```csharp

```
