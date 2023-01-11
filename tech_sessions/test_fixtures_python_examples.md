
### 1. Tests are written in a single test method, with setup and assertions mixed together. There are many assertions in a single method.
```python
def test_course_class():
    teacher = UserFactory(first_name='John', last_name='Doe', role='teacher')

    student = UserFactory(first_name='Jane', last_name='Doe', role='student')

    course = CourseFactory(title='Python Programming', description='Learn Python Programming', price=0)

    assert isinstance(course, Course)
    assert course.title == "Python Programming"
    assert course.description == "Learn Python Programming"
    assert course.price == 0

    assert course.can_be_saved_by(teacher)
    assert not course.can_be_saved_by(student)

    course.save()

    saved_course = Course.objects.get(id=course.id)
    assert saved_course.title == "Python Programming"
    assert saved_course.description == "Learn Python Programming"
    assert saved_course.price == 0

    saved_course.title = "Python Programming with Django"
    saved_course.save()

    updated_course = Course.objects.get(id=course.id)
    assert updated_course.title == "Python Programming with Django"

    saved_course.delete()
    assert not Course.objects.filter(id=course.id).exists()

```

### 2. Tests are split into several methods reflecting different groupings of assertions with setup included in the methods.
```python

```

### 3. Tests are split into several methods with setup in a `setup` method.
```python

```

### 4. Tests are split into many methods, named for the specific things they are asserting (usually only one or two assertions per method).
```python

```

### 5. Context variables are lazy loaded and extracted from the setup.
```python

```

### 6. Context are nested, to allow minimized duplication, and to allow context variables to be overridden.
```python

```
